   M S B A M L   `   `   `  ����O  KBruceMusicDownloader, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:BruceMusicDownloaderBruceMusicDownloader  5   	   %    BruceMusicDownloader.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:BruceMusicDownloader     5   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   b ^GalaSoft.MvvmLight.Platform, Version=5.4.1.0, Culture=neutral, PublicKeyToken=5f873c45e98af8a1.command http://www.galasoft.ch/mvvmlight  5   	     � WindowStyle$
  None=�5
   	      WindowChromeKey'  !System.Windows.Shell.WindowChrome   WindowChrome# �   5   	    � Title$ 
MainWindow��5   	   $	��680��6   $
��1000��6)   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      /  )GalaSoft.MvvmLight.Command.EventToCommand     Command 6%   �� *LoadCommand+6G   5       � 	Resources 5         ResizeBorderThickness	   CaptionHeight  IndicatorStyle
 �� 
TargetType �� Property �� Value �� RelativeSource �� Mode �� AncestorType �� Triggers �� Binding �� Value  	PathStyle  TxtStyle  
StackStyle �� UpdateSourceTrigger �� 
TargetType ��Name �� Padding J� SnapsToDevicePixels �� Orientation �� Triggers��%�  &	        &	 N     &	 �    &	 �    &	 �    '�� R    7  7  7  7  '�� 1      5   
    5      u�5      5q�6   $	 0Q�5   G   5      �� 5   
   "
 ��6'   .�5      ��  � �� �#C62F2F6+   �� 5       � y�$ Hidden=�6+   �� 5       � �� 6'   �� *Height+ �� $ FindAncestor=�$ BorderL��� 5       � ��$ 4��6&   �� 5        � |� .  6*   �� 5!       � ��$
 Left=�64    5&      �� 5'       6   �� *IsMouseOver+ �� $ FindAncestor=�$ ListBoxItemL� True6�   .a�5(      ��  � y�$ Visible=�63   5)      �� 5*       6   �� *
IsSelected+ �� $ FindAncestor=�$ ListBoxItemL� True6�   .a�5+      ��  � y�$ Visible=�63   5,      5.      �� 52   
   "
 F�6"   .�53      ��  � �� �#686D836%   �� 54       � ��$ 16��6&   �� 55       �@��Stretch$ Uniform=�6(    56      �� 57       6   �� *IsMouseOver+ �� $ FindAncestor=�" �� True6�   .a�58      ��  � �� �#3336-   59      �� 5:       6   �� *
IsSelected+ �� $ FindAncestor=�" �� True6�   .a�5;      ��  � �� �#3336-   5<      5>      �� 5@   
   "
 ��6!   .�5A      ��  � ��$ 13(�6)    5B      �� 5C       6   �� *IsMouseOver+ �� $ FindAncestor=�" �� True6�   .a�5D      ��  � �� �#33363   5E      �� 5F       6   �� *IsMouseOver+ �� $ FindAncestor=�" ��	 False6�   .a�5G      ��  � �� �#aaa63   5H      �� 5I       6   �� *
IsSelected+ �� $ FindAncestor=�" �� True6�   .a�5J      ��  � �� �#33363   5K      5M      �� 5O   
   "
 ��6#    5P      �� 5Q       6   �� *
IsSelected+ �� $ FindAncestor=�" �� True6�   .a�5R      ��  � �� �#ddd63   5S      5U      �� 5Y   
   "
 ��6   .�5Z      ��  � ��$ 34��6'   �� 5[       � ��$	 160��6&   �� 5\       �@�Cursor$
 Hand��6'   66   �� 5^       �@��
IsSelected 6+   �� *IsItemSelected+$ PropertyChanged=��� 5_       �@�ToolTip 6(   �� *	ToolTip+$ PropertyChanged=��� 5`       � ��
 ���� 6+   �� 5a       � ��$ 0q�60   �� 5b       � �� 5c      �� 5d      " ��6&   .R�5e      �� $ border��6!   #��z��61   # z��6[   #��z��6   #��z��6�    . ._�5g      �� 8��  $ 
Horizontal=�6M   $��-4,0,0,0q�6g   .+�5j   "   �� 8�� 6)   F� 5n   "   $��20 0 0 0q�6=   8�� ��6'   �� *Path+6O   �� 5p   "   $��10 0 0 0q�6,   8�� $��Center=�6~   ��6a   �� *DisplayName+6�   5q      5r       5s      �� 5t      $	 130��6M    6*   �� *ListItemHeight+.a�5u   "   ��  � ��$	 130��6;   �� 5v   "    � {� .  6>   5w      5y      5{      5|      �� 5~   
   "
 ��6   .�5      ��  � ��$ 0q�60   �� 5�       � ��
 ���� 6+   �� 5�       � ��$ Stretch=�62   �� 5�       � ��$ Stretch=�64   �� 5�       �@��SelectionMode$ Single=�6.   �� 5�       � |� .  6*   5�      5�      .��5�      �  � RowDefinitions 5�   
   �� 5�      $��50 �6   �� 5�      $��* �6   �� 5�      $��50 �6    � ColumnDefinitions 5�   
   �� 5�      $	��150 �6   �� 5�      $��* �6   .+�5�   
   �� $��UniformToFill=�6   $��/Images/background.jpg��6(   $��2��6I   $��3��6]    J� Opacity$	 0.1Q�6n   6~   � 5�   
   -   5        $��0��5�      $��2��6   
������ 5�      �� 5�   
   $��0 0 1 0q�6   ���#eee$��0��6>   $��3��6N   $��0��6`   ._�5�      �� $��0 80 0 0q�6   .+�5�      �� $��在线音乐��6   $��12(�6(   $��	30 0 0 15q�66   ���#aaa6I   �� 5�      -   5        $	��tab��5�   �   $��Hidden=�6   $��Hidden=�6L    �� SelectionMode$ Single=�6�   $��-2 0 0 0q�6�   ��5�      �� *OnlineMenuItems+ 5�        5�      $ SelectionChanged��6)   . 5�           PassEventArgsToCommand .  65   �� *MenuItemChangeCommand+6   5�      5�      �� 5�      $��我的音乐��6   $��
30 40 0 15q�6(   $��12(�6<   ���#aaa6J   �� 5�      -   5        $
��tab1��5�   �   $��Hidden=�6   $��Hidden=�6L   $ Single=�6�   $��-2 0 0 0q�6�   ��5�      �� *MyMenuItems+ 5�        5�      $ SelectionChanged��6)   . 5�         .  65   �� *MenuItemChangeCommand+6   5�      5�      5�      5�       � 5�   
   -   5        $��	mainframe��5�   M   $��1��6   $��1��6     � NavigationUIVisibility$ Hidden=�6-   5�      5�      5�      