   M S B A M L   `   `   `  ����C  ?EtalonFM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:EtalonFMEtalonFM  5          EtalonFM.EditClientPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a:md1http://materialdesigninxaml.net/winfx/xaml/themes  5      "localclr-namespace:EtalonFM  5        N� Title$  EditClientPage��5
      .��5      ��  �� Orientation$ Vertical=�6   $��Center=�6(   $��Center=�6E   $	��250��6`   .+�5   
   �� $��20(�6   $��Клиент��6"   �� 5   
   -   5        $��surname��5   -    �� 	MaxLength$	 100��6<   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Фамилия��6L      
IsFloating . ��6   �� *	c_surname+6�   �� 5   
   -   5        $
��name��5   *   $	 100��66   $ Имя��6F    . ��6   �� *c_name+6�   �� 5   
   -   5        $��
patronymic��5   0   $	 100��6B   $ Отчество��6R    . ��6   �� *c_patronymic+6�   �� 5   
   -   5        $��phone��5   +   $ 10��68   $ Телефон��6G    . /  )MaterialDesignThemes.Wpf.TransitionAssist   DisableTransitions . .  (MaterialDesignThemes.Wpf.TextFieldAssist   
PrefixText$ +7��6�   ��6   �� *	c_phone+6  �� 5   
   -   5        $��email��5   +   $ Эл. почта��68    . ��6   �� *	c_email+6y   �� 5   
   -   5        $��BtnSave��5   %   $��Сохранить��6   $��0 10 0 5q�6J       MaterialDesignFlatDarkButton#��[  6\   5      5      