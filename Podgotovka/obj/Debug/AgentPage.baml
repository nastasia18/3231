   M S B A M L   `   `   `  ����E  APodgotovka, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Podgotovka
Podgotovka  5          Podgotovka.AgentPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      *localclr-namespace:Podgotovka     5        N� Title$  	AgentPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $��* �6   6)   �� 5      $	��100 �6   6+   .+�5   
   �  � Orientation$ 
Horizontal=�6   $��0��6-   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $9��3Введите название для поиска��6   $	��175��6?    �� TextAlignment$ Center=�6K   6d   �� 5      -   5        $��
TBoxSearch��5   &   $	��225��6   6_   5      �� 5      $ 
Horizontal=�6   .+�5      �� $��Сортировка��6   $	��175��6.   $ Center=�6:   6S   �� 5      -   5        $��TypeSort��5   '   $	��224��6    �� DisplayMemberPath$
 Name��6d   6   5      �� 5      $ 
Horizontal=�6   .+�5      �� $��Фильтрация��6   $	��175��6.   $ Center=�6:   6S   �� 5      -   5        $��ComboFilter��5   '   $	��224��6   $
 Name��6j   6�   5      5      �� 5   
   -   5        $��	LViewPage��5       $��1��6   ��5       �� 5!      .R�5"      � $��20q�6   $	��400��6'    5#      �� 5$      $��* �6,   69   �� 5%      $��* �6,   69   �� 5&      $��* �6,   69   �� 5'      $��* �6,   69    � ColumnDefinitions 5)      �� 5*      $	��100 �6/   6=   �� 5+      $	��200 �6/   6=   �� 5,      $��* �6/   6;   .+�5.      �� $	��100��6    $��0��6-   $��0��6:   $��4��6J   $��0 0 20 0q�6[   $��Uniform=�6m   $��Center=�6   ��5/      �� 50   "    �� Path$ AgentLogoImage�6*    �� TargetNullValue 51   &   ��52   *   Resources/picture.png��6M   54   #   56      �� 57      $��0��6?   $��1��6L   $��Right=�6\   ��6$   �� *	AgentName+6z   �� 58      $��0��6?   $��1��6L   $
��Left=�6\   ��6$   �� *	AgentType+6y   �� 59      $��1��6@   $��1��6M   ��6$   �� *
AgentPhone+6_   �� 5:      $��2��6?   $��1��6L   ��6$   �� *	AgentMail+6^   �� 5;      $��3��6h   $��1��6u   $
��Left=�6�   ��6$   �� *AgetntPriority+	 �� StringFormat$'	 !Приоритетность: {0}��6�   5=      5>      5@      � 5A   
   $ 
Horizontal=�6   $��Center=�6-   $��2��6H   .+�5B      �� -   5        
 ��Name$
 btn_Add��5B      $��Добавить��6&   $	��100��69   $��50��6E   $��Center=�6Q   $��Center=�6n   6�   5C      5D      5E      