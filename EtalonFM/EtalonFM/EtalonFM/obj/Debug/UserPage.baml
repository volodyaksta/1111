   M S B A M L   `   `   `  ����C  ?EtalonFM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:EtalonFMEtalonFM  5          EtalonFM.UserPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:EtalonFM     5      -   5          N� Title$  UserPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $
��350* �6   �� 5      $��50 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 	DGridUser��5      $��1��6&      
IsReadOnly .    AutoGenerateColumns .  ���#edf5fc   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6%      Header$ 
Логин��6/   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   �� *	u_login+  5      $ * 6%   $ Пароль��6/    6?   �� *
u_password+  5      $ * 6%   $E ?Роль (0 - менеджер, 1 - администратор)��6/    6_   �� *u_role+4  .System.Windows.Controls.DataGridTemplateColumn  5      	   CellTemplate	 5      �� 5      .R�5      �� $��BtnEd��68   -   5        $��Изменить��5   %       MaterialDesignFlatDarkButton#��[  6Y   5      5      5      �� 5    
   
 �� Orientation$
 
Horizontal=�6   $��2��6.   .+�5!      �� -   5        $��BtnAdd��5!   (   $��Добавить��6   $��
10 0 10 10q�6K     MaterialDesignPaperButton#���  6_   �� 5"      -   5        $��BtnDel��5"   '   $��Удалить��6   $��
10 0 10 10q�6J   #���  6^   5#      5$      5%      