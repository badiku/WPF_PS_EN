[System.Reflection.Assembly]::LoadWithPartialName('presentationframework') | out-null
[System.Reflection.Assembly]::LoadFrom('assembly\MahApps.Metro.dll')       				| out-null

function LoadXml ($global:filename)
{
    $XamlLoader=(New-Object System.Xml.XmlDocument)
    $XamlLoader.Load($filename)
    return $XamlLoader
}

# Load MainWindow
$XamlMainWindow=LoadXml("First_controls.xaml")
$Reader=(New-Object System.Xml.XmlNodeReader $XamlMainWindow)
$Form=[Windows.Markup.XamlReader]::Load($Reader)

$Visible = $Form.findname("Visible") 
$Hidden = $Form.findname("Hidden") 
$Collapsed = $Form.findname("Collapsed") 
$Label1 = $Form.findname("Label1") 
$Label2 = $Form.findname("Label2") 
$Button1 = $Form.findname("Button1") 
$TextBox1 = $Form.findname("TextBox1") 
$Button2 = $Form.findname("Button2") 
$TextBox2 = $Form.findname("TextBox2") 

$First = $Form.findname("First") 
$Second = $Form.findname("Second") 
$Third = $Form.findname("Third") 




$Visible.IsChecked = $true


$Visible.Add_Click({	
	# $Label1.Visibility = "Visible"	
	# $Label2.Visibility = "Visible"	
	# $Button1.Visibility = "Visible"	
	# $TextBox1.Visibility = "Visible"	
	# $Button2.Visibility = "Visible"	
	# $TextBox2.Visibility = "Visible"

	$First.Visibility = "Visible"	
	$Second.Visibility = "Visible"	
	$Third.Visibility = "Visible"	
})

$Hidden.Add_Click({	
	# $Label1.Visibility = "Hidden"	
	# $Label2.Visibility = "Hidden"	
	# $Button1.Visibility = "Hidden"	
	# $TextBox1.Visibility = "Hidden"	
	# $Button2.Visibility = "Visible"	
	# $TextBox2.Visibility = "Visible"	

	$First.Visibility = "Hidden"	
	$Second.Visibility = "Hidden"	
	$Third.Visibility = "Visible"	
})

$Collapsed.Add_Click({	
	# $Label1.Visibility = "Collapsed"	
	# $Label2.Visibility = "Collapsed"	
	# $Button1.Visibility = "Collapsed"	
	# $TextBox1.Visibility = "Collapsed"	
	# $Button2.Visibility = "Visible"	
	# $TextBox2.Visibility = "Visible"	

	$First.Visibility = "Collapsed"	
	$Second.Visibility = "Collapsed"	
	$Third.Visibility = "Visible"	
})









# $Visible.Add_Click({	


	# $First.Visibility = "Visible"	
	# $Second.Visibility = "Visible"	
	# $Third.Visibility = "Visible"	
# })

# $Hidden.Add_Click({	


	# $First.Visibility = "Hidden"	
	# $Second.Visibility = "Hidden"	
	# $Third.Visibility = "Visible"	
# })

# $Collapsed.Add_Click({	


	# $First.Visibility = "Collapsed"	
	# $Second.Visibility = "Collapsed"	
	# $Third.Visibility = "Visible"	
# })












	
		
$Form.ShowDialog() | Out-Null
