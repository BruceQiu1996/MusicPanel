   M S B A M L   `   `   `  ����O  KBruceMusicDownloader, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:BruceMusicDownloader.PagesBruceMusicDownloader.Pages  5      G CHandyControl, Version=3.0.0.0, Culture=neutral, PublicKeyToken=nullS9clr-namespace:HandyControl.Controls;assembly=HandyControlHandyControl.Controls 5      )    #BruceMusicDownloader.Pages.MusicHub   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :local(clr-namespace:BruceMusicDownloader.Pages     5      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      Bhc9clr-namespace:HandyControl.Controls;assembly=HandyControl  5      b ^GalaSoft.MvvmLight.Platform, Version=5.4.1.0, Culture=neutral, PublicKeyToken=5f873c45e98af8a1.command http://www.galasoft.ch/mvvmlight  5	        N� Title$  MusicHub��5      ��5
      Z� .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      /  )GalaSoft.MvvmLight.Command.EventToCommand     Command 6%   �� *LoadCommand+6G   5      .��5      �  � RowDefinitions 5   
   �� 5      $	��200 �6   6+   �� 5      $��* �6   6)   .+�5   
   $  HandyControl.Controls.Carousel     AutoRun . $��0��6%      Interval$ 1h�62      IsCenter . {�. $��0q�6`   $��0q�6t   .  (HandyControl.Controls.SimpleItemsControl	   ItemsSource	 5      �� *RecommandBannder+
 �� UpdateSourceTrigger$
 PropertyChanged=�   ItemTemplate 5      �� 5      .R�5      � .+�5      �� $
��Fill=�6_   ��6    �� *PicUrl+$
 PropertyChanged=�6p   5      5       5"      %  HandyControl.Controls.CoverView  5$   
   $��27q�6   /  )HandyControl.Controls.RegularItemsControl   
ItemHeight$	 160Q�6#   $��1��64   	 6A   �� *
SingerType+$
 PropertyChanged=�   ItemHeaderTemplate 5%      �� 5&      .R�5'      �� ��6   �� *
Singer_pic+$
 PropertyChanged=�5(       5*      �� 5+      .R�5,      �� $��10q�6   $	��300��6)   ._�5-      �� $��Center=�6e   $��Center=�6�   
���������6$   �� *Singer_name+$
 PropertyChanged=�6�   5.      5/      51      52      53      