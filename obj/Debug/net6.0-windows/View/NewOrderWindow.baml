   M S B A M L   `   `   `  ����B  >УП2.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:УП2._0.ViewУП2._0.View  5   	   9!clr-namespace:УП2._0.ViewModelsУП2._0.ViewModels  5   	   "    УП2._0.View.NewOrderWindow   5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:УП2._0.View     5   	   7	viewModel!clr-namespace:УП2._0.ViewModels     5   	     � Title$  NewOrderWindow��5
   	   $	��700��6    $	��700��60   $	��900��6=   $	��900��6L   .��5      #  MaterialDesignThemes.Wpf.Card  $��5q�6   $��7q�6&      MaterialDesignPaper#���   61   .��5   
   �  � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      �� 5      $
��Auto �6     � ColumnDefinitions 5      �� 5      �� 5      .+�5   
   ��  �� Orientation$ Vertical=�6   $��2��6,   $��Center=�6@   $��Center=�6]   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Barley=�6&   $��50��5   &   $��50��62   $��Center=�5   &   $	��Top=�6C   �� 5      $'��!Добавление Заказа��5       �� TextAlignment$ Center=�5      $��32(�5      5      &   System.Windows.Controls.DataGrid  5      $��1��5       $	��Top=�5!      $
��Left=�6)   $
��Auto��5"      $
��Auto��6      AutoGenerateColumns$ False��5#       �� SelectedItem 5$      �� *Dish+��6/   �� *Dishes+   Columns 5%      0  *System.Windows.Controls.DataGridTextColumn  5&        DefaultHeader,  &System.Windows.Controls.DataGridColumn	   HeaderStyle#	 [ 5'      
   Header$"
 Блюда в Наличии��5(         Width5  /System.Windows.Controls.DataGridLengthConverter$ * 5)         
IsReadOnly$
 True��5*   6   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6   �� *
DishName+5+      5-        5.      -   5        $��inOrder��5/      $��1��50      $	��Top=�51      $
��Left=�6)   $
��Auto��52      $
��Auto��6   $ False��54      $��1��6-   ��53      �� *DishInOrder+ 55        56      #	 [ 57      $ 
 Блюда в Заказе��58      $ * 59      $
 True��5:   6    6   �� *
DishName+5;      5=      �� 5>      $��Добавить��5A      $��50��5B      $	��175��6   $��Center=�5C      $��Bottom=�5D      $��2��6,   $��10q�69   $��2��6F   ��5?      �� *AddOrderCommand+��5@      ��  �� ElementName$ inOrder��5D   F   5E      5F      5G      