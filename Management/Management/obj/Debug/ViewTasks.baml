   M S B A M L   `   `   `  ����E  AManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Management
Management  5          Management.ViewTasks   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      *localclr-namespace:Management     5        N� Title$  Log_In��5	      .��5      �  � ShowGridLines .  � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� $��Capture.png��6   $��2��6%   $��2��69   �� 5   
   $��Welcome��6   $��50(�6"      
LabelStyle#��[  60   $��0��6T   $	��Top=�6d   $��288,-2,288,0q�6|   $��2��6�   �� 5   
   $��Pending / In Progress��6   
����  �#��[  6F   $��0��6j   $	��Top=�6z   $��	97,68,0,0q�6�   �� 5   
   $��Task:��6   #��[  6    $��0��6D   $	��Top=�6T   $��97,37,200,0q�6l   $��1��6�   �� 5   
   -   5         ��Name$ IDTask��5      $��194,45,152,145q�6"   $��1��6:   �� 5   
   $��	Completed��6   
���  ��#��[  69   $��0��6]   $	��Top=�6m   $��	97,96,0,0q�6�   $��1��6�   �� 5   
   -   5         ��Name$ Status��5      $��5,43,200,147q�6#   $��1��69   $��1��6I   .@�5      �� 
 � Tag$ 	Completed��6   �� 5      $ Pending��6   �� 5      $ In Progress��6   5      �� 5   
   $��Status:��6   #��[  6"   $��0��6F   $	��Top=�6V   $��
297,37,0,0q�6n   $��1��6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$	 dt1��5      $	��100��6    $��2��6-   $��97,139,200,211q�6A   $��2��6Y     5    
   -   5        $	 dt2��5       $��2��6    $��97,151,200,12q�64   $��1��6K   �� 5"   
   $
��Save��6    
 Button#��[ 6    $
��Left=�6@   $��
243,12,0,0q�6[   $��1��6o   $	��Top=�6|   $��50��6�   $	��115��6�   $��1��6�    � RowDefinitions 5%   
   �� 5&      $	��37* �6   �� 5'      $	��38* �6   5-      5.      