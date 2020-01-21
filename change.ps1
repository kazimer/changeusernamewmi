$oldName = 'Administrator'
$newName = 'Changed'
$user = Get-WMIObject Win32_UserAccount -Filter "Name='$oldName'"
$result = $user.Rename($newName)

if ($result.ReturnValue -eq 0) {
return $user
return $result
}