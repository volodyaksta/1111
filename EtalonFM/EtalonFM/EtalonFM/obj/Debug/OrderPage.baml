   M S B A M L   `   `   `  ����C  ?EtalonFM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:EtalonFMEtalonFM  5          EtalonFM.OrderPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a:md1http://materialdesigninxaml.net/winfx/xaml/themes  5      "localclr-namespace:EtalonFM  5      -   5          N� Title$  	OrderPage��5
      .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $
��350* �6   �� 5      $��50 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 
DGridOrder��5      $��1��6'      
IsReadOnly .    AutoGenerateColumns .  ���#edf5fc   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 6%      Header$ Клиент��61   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6A   �� *Client.c_fullname+  5      $ * 6%   $ Менеджер��6/    6A   �� *Manag.m_fullname+  5      $ * 6%   $ Тип��6/    6<   �� *AdType.a_type+  5      $ * 6%   $ Длительность��6/    6E   �� *
o_duration+	 �� StringFormat$	 
0 дней��  5      $ * 6%   $ Расположение��6/    6E   �� *Location.loc+  5      $ * 6%   $ Цена��6/    6=   �� *o_cost+$	 0 ₽��  5      $ * 6%   $ Дата начала��6/    6D   �� *o_dateStart+$	 
dd.MM.yyyy��  5      $ * 6%   $! Дата окончания��6/    6G   �� *	o_dateEnd+$	 
dd.MM.yyyy��4  .System.Windows.Controls.DataGridTemplateColumn  5      $ 80 6)   
   CellTemplate
 5      �� 5      .R�5       ��  ��Name$ BtnEd��6%   -   5            MaterialDesignFlatDarkButton#��[  5    H   .��5!   "   '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Pencil=�6.   5"      5#      5%      5'      �� 5(   
    �� Orientation$ 
Horizontal=�6   $��Right=�6.   $��0��6J   .+�5)      �� -   5         ��Name$ OrFilter��5)      $	��100��6)   $��	10 0 10 0q�65   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Фильтрация��6u   �� 5*      -   5        $ 	OrSorting��5*      $	��100��6*   $��	10 0 10 0q�66   $ Сортировка��6w   5+      �� 5,   
   -   5         ��Name$ OrFind��5,      $	��200��6"   $��200 12 0 12q�6.   $
��Left=�6C   $��0��6^   $ 
Поиск��6k   �� 5-   
   $ 
Horizontal=�6   $��Bottom=�6.   $��2��6I   .+�5.      �� -   5        $ BtnAdd��5.   (   $��Добавить��6   $��
10 0 10 10q�6M     MaterialDesignPaperButton#���  6a   �� 5/      -   5        $ BtnDel��5/   '   $��Удалить��6   $��
10 0 10 10q�6L   #���  6`   50      51      52      