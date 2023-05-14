
document.write ("<div  id='colorPopup'  style=' position:absolute; z-index:100;  display:none; '></div>  ");

var oColorPopup=document.getElementById("colorPopup");
var oColorPicker=document.getElementById("colorPicker");

function  showColorPicker()
{

	if(oColorPopup.style.display=="none")   {

		window.document.onclick=function(evt){
			//evt=evt || window.event;
			evt = evt ? evt : (window.event ? window.event : null);
			oColorPopup.style.left=evt.clientX+"px";
			oColorPopup.style.top=evt.clientY+"px";
			window.document.onclick=null;
		}
	   oColorPopup.style.display="block";
	}
	else {
       oColorPopup.style.display="none";
	}

	 initColor();
}


function initColor(){
	var baseColorHex=new Array('00','33','66','99','CC','FF');	 //256ɫ����ɫ����00,33,66,99,cc,ff���
	var SpColorHex=new Array('000000','333333','666666','999999','cccccc','FFFFFF', 'FF0000','00FF00','0000FF','FFFF00','00FFFF','FF00FF' );
	var    colorRGB ="";
	var    sColorPopup;
	sColorPopup="<table  width='260'  border='1'  cellPadding=1  cellSpacing=0   bordercolordark='#ffffff'  bordercolorlight='#000000'  bgcolor='#cccccc'  title='��ɫѡ����' ><tr><td>";
	sColorPopup+="<input   id='colorDis'  style='width:50px;border:solid 1px #000000;background-color:#ffff00;margin-left:3px' disabled title='��ǰ��ɫ' />";
	sColorPopup+=" <input id='colorHexDis'  style='width:70px;border:inset 1px;font-family:Arial;' type='text' value='#FFFF00' readonly title='��ǰ��ɫ16����ֵ'/>";

	sColorPopup+="</td></tr><tr><td>";
	sColorPopup+="<table  border='0' cellpadding='0' cellspacing='0' align='center' ><tr><td bgcolor='#000000' width='30'>";//1��2��
	//�� start
	sColorPopup+="<table  border='0' cellpadding='0'  cellspacing='1' bgcolor='#000000' align='center' >";		//��1��
	for(i=0;i<12;i++)
	{
		sColorPopup+="<tr  height='12'>";
		colorRGB=SpColorHex[i];
		sColorPopup+="<td width='12' onmouseover='currentColor(this.bgColor)' onclick='clickColor(this.bgColor)'  bgColor='"+colorRGB+"' style='cursor:pointer;' title='���ѡ����ɫ"+colorRGB+"'></td>";
		sColorPopup+="</tr>";
	}
    sColorPopup+="</table>";
    //�� end
	sColorPopup+="</td><td>";
	sColorPopup+="<table  border='0'    cellpadding='0'    cellspacing='1'    bgcolor=#000000 align='center' >";	//��2��

	for(n=0;n<2;n++){	//ѭ��2��
		for(i=0;i<6;i++) {  //ÿ��6��
			sColorPopup+="<tr    height=12>";
			for(j=0+3*n;j<3+3*n;j++)
			{
				for(k=0;k<6;k++)
				{
					colorRGB=baseColorHex[j]+baseColorHex[k]+baseColorHex[i];
					sColorPopup+="<td  width='12' onmouseover='currentColor(this.bgColor)' onclick='clickColor(this.bgColor)'  bgColor='"+colorRGB+"' style='cursor:pointer;'  title='���ѡ����ɫ"+colorRGB+"'></td>";
				}
			}
			sColorPopup+="</tr>";
		}
	}

	sColorPopup+="</table>";

	sColorPopup+="</td></tr></table>";
	sColorPopup+="</td></tr></table>";
	oColorPopup.innerHTML=sColorPopup;
}

//��ǰ��ɫ�麯��
function   currentColor(colorStr)  {
	document.getElementById("colorDis").style.backgroundColor=colorStr;
	document.getElementById("colorHexDis").value=colorStr.toUpperCase();    //toUpperCase()��������ɫֵ��д
}

//���ѡ����ɫ����
function clickColor(colorStr) {
	oColorPicker.style.backgroundColor=colorStr;
	oColorPicker.value=colorStr;
	oColorPopup.style.display="none";
}

//�ر���ɫѡ��������
function doClose() {
	  oColorPopup.style.display="none";
}

//oColorPicker���� ���¼�������
oColorPicker.onclick=showColorPicker;