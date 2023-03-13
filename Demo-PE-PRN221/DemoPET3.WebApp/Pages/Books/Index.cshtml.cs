using System;
using System.Collections.Generic;
using System.Linq;
using DemoPET3.Repository.Models;
using DemoPET3.Repository.Repositories;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace DemoPET3.WebApp.Pages.Books
{
    public class IndexModel : PageModel
    {
        private readonly IRepository<Book> _repository;

        public IndexModel(IRepository<Book> repository)
        {
            _repository = repository;
        }

        public string CurrentSearchValue { get; set; } = "";
        public int CurrentPage { get; set; } = 1;
        public int TotalPages { get; set; }
        public int PageSize { get; set; } = 3;

        public IEnumerable<Book> Books { get; set; }

        public void OnGet(string searchValue, int pageNumber)
        {
            pageNumber = pageNumber == 0 ? 1 : pageNumber;
            var bookList = _repository.GetAll();

            if (!String.IsNullOrEmpty(searchValue))
            {
                CurrentSearchValue = searchValue;
                bookList = bookList
                    .Where(b => b.BookName.ToLower().Contains(searchValue.ToLower()));
            }

            bookList = bookList.ToList();
            TotalPages = (int) Math.Ceiling(bookList.Count() / (double) PageSize);
            CurrentPage = pageNumber > TotalPages ? TotalPages : pageNumber;
            var skip = (CurrentPage - 1) * PageSize;
            Books = bookList.Skip(skip)
                .Take(PageSize);
        }
    }
}