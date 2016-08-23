$words = @( "test","test1", "test2")
foreach($word in $words) { 
Write-Host $word.Insert(0, "'").Insert($word.Length +1, "'")
}
