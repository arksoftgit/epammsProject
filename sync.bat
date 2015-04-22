@call copynew \workspace\NetBeansProjects\epammsApp\web WebContent /s 
@call copynew \workspace\NetBeansProjects\epammsApp\src\java src /s 

@del WebContent\wSPLDGraphicalView.jsp.dks
@del WebContent\wSPLDGraphicalView.jsp.hld
@del WebContent\wSystemDragDropSort.jsp.0
@del WebContent\wSystemDragDropSort.jsp.1
@del WebContent\wSystemDragDropSort.jsp.2
    
@del WebContent\js\bootstrap-colorselector.js.hld
@del WebContent\genjs\wStartUpUserLogin.js.hld

@del src\com\ajax\GraphicalLabelDesignerServlet.java.hold
@del src\com\ajax\GraphicalLabelDesignerServlet.java.hold2
@del src\com\ajax\GraphicalLabelDesignerServlet.java.hold3
@del src\com\ajax\GraphicalLabelDesignerServlet.java.hold4

@call qadcmpr \workspace\NetBeansProjects\epammsApp\web WebContent /s 
@ren ad.rpt ad.1st
@call qadcmpr \workspace\NetBeansProjects\epammsApp\src\java src /s 
@ren ad.rpt ad.2nd
@type ad.1st >ad.rpt
@type ad.2nd >>ad.rpt
qrw ad.rpt /re=S~.hold~.hld~.dks~.jsp.1~.jsp.2~.jsp.0
type ad.rpt
