   M S B A M L   `   `   `  ����K  GAutomobileWPFApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:AutomobileWPFAppAutomobileWPFApp  5   	   !    AutomobileWPFApp.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:AutomobileWPFApp     5   	     � Title$  
MainWindow��5   	   $	��650��6   $	��800��6)   .��5	      � .+�5
   
   ]� $	��Top=�6   $��10q�6,   .+�5      � $	��346��6    � RowDefinitions 5      �� 5      $
��Auto �6$   64   �� 5      $��* �6$   61   �� 5      $��4* �6$   62   �� 5      $��* �6$   61   .+�5      �� 
����ح� �� Orientation$ Vertical=�64   .+�5      �� -   5        $��lbTitle��5      $��Car Infomation��6+   $��20(�6D   
���  ��$��DemiBold"�6c   �� 5      -   5        $��lbCarId��5      $��Car Id��6+   �� 5      -   5        $��txtCarId��5   �   $��Stretch=�6�   $��25��6�    � DataContext 6   ��  �� ElementName$ lvCars�� �� Path$ SelectedItem���6[   �� $ CarId� �� Mode$ OneWay=�6�   �� 5      -   5        $��	lbCarName��5      $��Car name��6-   �� 5      -   5        $��
txtCarName��5   �   $��25��6�    6   �� $ lvCars��$ SelectedItem���6[   �� $ CarName�$ OneWay=�6�   �� 5      -   5        $��lbManufacturer��5      $��Manufacturer��62   �� 5      -   5         ��Name$ txtManufacturer��5   �   $��25��6�    6   �� $ lvCars��$ SelectedItem���6[   �� $ Manufacturer�$ OneWay=�6�   �� 5      -   5        $��lbPrice��5      $��Price��6+   �� 5       -	   5        $ txtPrice��5    �   $��25��6�    6   �� $ lvCars��$ SelectedItem���6[   �� $ Price�$ OneWay=�6�   �� 5"      -
   5        $��lbReleasedYear��5"      $��ReleasedYear��62   �� 5#      -   5        $ txtReleaseYear��5#   �   $��25��6�    6   �� $ lvCars��$ SelectedItem���6[   �� $ ReleasedYear�$ OneWay=�6�   5$      �� 5&      $��0��6   $ 
Horizontal=�6*   $��Center=�6C   $
��Auto��6`   $��0,291,0,-35q�6n   .+�5'      �� -   5         ��Name$ btn_load��5'   ,   $
��Load��6   $��80��6>   $��10q�6I   6U   �� 5(      -   5        $ 
btn_insert��5(   .   $��Insert��6   $��80��6B   $��10q�6M   6Y   �� 5)      -   5        $ 
btn_update��5)   .   $��Update��6   $��80��6B   $��10q�6M   6Y   �� 5*      -   5        $ 
btn_delete��5*   .   $��Delete��6   $��80��6B   $��10q�6M   6Y   5+      �� 5-      -   5        $��lvCars��5-   (   $��3��6   $
��Auto��66   $
��Auto��6C   $��0,10,0,-215q�6|   	 �� View	 5.      �� 5/      .P�50      �� $��Car Id��6Y   
 �� Width$	
 100��6i    �� DisplayMemberBinding 6-   �� $ CarId�6i   �� 51      $��Car Name��6[   $	
 100��6m    6-   �� $ CarName�6m   �� 52      $��Manufacturer��6`   $	
 100��6v    6-   �� $ Manufacturer�6v   �� 53      $��Price��6p   $	
 100��6    6-   �� $ Price� �� StringFormat$ {0:N3}��6   �� 54      $��ReleasedYear��6`   $	
 100��6v    6-   �� $ ReleasedYear�6v   55      59      �� 5;      -   5        $ btnClose��5;      $��0,0,28,-256q�6+   $��Right=�5<      $��Bottom=�6   $��80��5=      $��Close��6   $��3��6    J� RenderTransformOrigin$ 0.696,-1.069&�6*   6O   5@      5B      5C      5D      