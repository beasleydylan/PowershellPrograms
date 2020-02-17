$xml = "443"
$sourceXml=New-Object System.Xml.XmlDocument
$sourceXml.LoadXml($xml)
Add-VpnConnection -Name Name -ServerAddress "IP Here" -SplitTunneling $True -PluginApplicationID SonicWALL.MobileConnect_cw5n1h2txyewy -CustomConfiguration $sourceXml