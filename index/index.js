if (navigator.platform.indexOf("Win") != -1)
{
$(".windows-show").show();
}
if (navigator.platform.indexOf("Mac") != -1)
{
$(".mac-show").show();
}
if (navigator.platform.indexOf("Mac")==-1 && navigator.platform.indexOf("Win") ==-1)
{
$(".others-show").show();
}
