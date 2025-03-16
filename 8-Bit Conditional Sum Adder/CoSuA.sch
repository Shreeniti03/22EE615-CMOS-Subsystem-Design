# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new ConditionalSumAdder8Bit work:ConditionalSumAdder8Bit:NOFILE -nosplit
load symbol RTL_ADD work RTL(+) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [17:0] fillcolor 1
load symbol RTL_ADD0 work RTL(+) pin I1 input.left pinBus I0 input.left [8:0] pinBus O output.right [8:0] fillcolor 1
load symbol RTL_MUX work MUX pin S input.bot pinBus I0 input.left [8:0] pinBus I1 input.left [8:0] pinBus O output.right [8:0] fillcolor 1
load port Cin input -pg 1 -lvl 0 -x 0 -y 130
load port Cout output -pg 1 -lvl 4 -x 690 -y 40
load portBus A input [7:0] -attr @name A[7:0] -pg 1 -lvl 0 -x 0 -y 40
load portBus B input [7:0] -attr @name B[7:0] -pg 1 -lvl 0 -x 0 -y 70
load portBus Sum output [7:0] -attr @name Sum[7:0] -pg 1 -lvl 4 -x 690 -y 70
load inst Carry00_i RTL_ADD work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[17:0] -pg 1 -lvl 1 -x 90 -y 50
load inst Carry10_i RTL_ADD0 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[8:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 2 -x 300 -y 80
load inst Sum0_i RTL_MUX work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[8:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[8:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[8:0] -pg 1 -lvl 3 -x 530 -y 70
load net <const1> -power -pin Carry10_i I1
load net A[0] -attr @rip A[0] -port A[0] -pin Carry00_i I0[0]
load net A[1] -attr @rip A[1] -port A[1] -pin Carry00_i I0[1]
load net A[2] -attr @rip A[2] -port A[2] -pin Carry00_i I0[2]
load net A[3] -attr @rip A[3] -port A[3] -pin Carry00_i I0[3]
load net A[4] -attr @rip A[4] -port A[4] -pin Carry00_i I0[4]
load net A[5] -attr @rip A[5] -port A[5] -pin Carry00_i I0[5]
load net A[6] -attr @rip A[6] -port A[6] -pin Carry00_i I0[6]
load net A[7] -attr @rip A[7] -port A[7] -pin Carry00_i I0[7]
load net B[0] -attr @rip B[0] -port B[0] -pin Carry00_i I1[0]
load net B[1] -attr @rip B[1] -port B[1] -pin Carry00_i I1[1]
load net B[2] -attr @rip B[2] -port B[2] -pin Carry00_i I1[2]
load net B[3] -attr @rip B[3] -port B[3] -pin Carry00_i I1[3]
load net B[4] -attr @rip B[4] -port B[4] -pin Carry00_i I1[4]
load net B[5] -attr @rip B[5] -port B[5] -pin Carry00_i I1[5]
load net B[6] -attr @rip B[6] -port B[6] -pin Carry00_i I1[6]
load net B[7] -attr @rip B[7] -port B[7] -pin Carry00_i I1[7]
load net Carry0 -attr @rip O[8] -pin Carry00_i O[8] -pin Carry10_i I0[8] -pin Sum0_i I0[8]
load net Carry1 -attr @rip O[8] -pin Carry10_i O[8] -pin Sum0_i I1[8]
load net Cin -port Cin -pin Sum0_i S
netloc Cin 1 0 3 NJ 130 NJ 130 NJ
load net Cout -attr @rip O[8] -port Cout -pin Sum0_i O[8]
netloc Cout 1 3 1 650J 40n
load net Sum0[0] -attr @rip O[0] -pin Carry00_i O[0] -pin Carry10_i I0[0] -pin Sum0_i I0[0]
load net Sum0[1] -attr @rip O[1] -pin Carry00_i O[1] -pin Carry10_i I0[1] -pin Sum0_i I0[1]
load net Sum0[2] -attr @rip O[2] -pin Carry00_i O[2] -pin Carry10_i I0[2] -pin Sum0_i I0[2]
load net Sum0[3] -attr @rip O[3] -pin Carry00_i O[3] -pin Carry10_i I0[3] -pin Sum0_i I0[3]
load net Sum0[4] -attr @rip O[4] -pin Carry00_i O[4] -pin Carry10_i I0[4] -pin Sum0_i I0[4]
load net Sum0[5] -attr @rip O[5] -pin Carry00_i O[5] -pin Carry10_i I0[5] -pin Sum0_i I0[5]
load net Sum0[6] -attr @rip O[6] -pin Carry00_i O[6] -pin Carry10_i I0[6] -pin Sum0_i I0[6]
load net Sum0[7] -attr @rip O[7] -pin Carry00_i O[7] -pin Carry10_i I0[7] -pin Sum0_i I0[7]
load net Sum1[0] -attr @rip O[0] -pin Carry10_i O[0] -pin Sum0_i I1[0]
load net Sum1[1] -attr @rip O[1] -pin Carry10_i O[1] -pin Sum0_i I1[1]
load net Sum1[2] -attr @rip O[2] -pin Carry10_i O[2] -pin Sum0_i I1[2]
load net Sum1[3] -attr @rip O[3] -pin Carry10_i O[3] -pin Sum0_i I1[3]
load net Sum1[4] -attr @rip O[4] -pin Carry10_i O[4] -pin Sum0_i I1[4]
load net Sum1[5] -attr @rip O[5] -pin Carry10_i O[5] -pin Sum0_i I1[5]
load net Sum1[6] -attr @rip O[6] -pin Carry10_i O[6] -pin Sum0_i I1[6]
load net Sum1[7] -attr @rip O[7] -pin Carry10_i O[7] -pin Sum0_i I1[7]
load net Sum[0] -attr @rip O[0] -port Sum[0] -pin Sum0_i O[0]
load net Sum[1] -attr @rip O[1] -port Sum[1] -pin Sum0_i O[1]
load net Sum[2] -attr @rip O[2] -port Sum[2] -pin Sum0_i O[2]
load net Sum[3] -attr @rip O[3] -port Sum[3] -pin Sum0_i O[3]
load net Sum[4] -attr @rip O[4] -port Sum[4] -pin Sum0_i O[4]
load net Sum[5] -attr @rip O[5] -port Sum[5] -pin Sum0_i O[5]
load net Sum[6] -attr @rip O[6] -port Sum[6] -pin Sum0_i O[6]
load net Sum[7] -attr @rip O[7] -port Sum[7] -pin Sum0_i O[7]
load netBundle @A 8 A[7] A[6] A[5] A[4] A[3] A[2] A[1] A[0] -autobundled
netbloc @A 1 0 1 NJ 40
load netBundle @B 8 B[7] B[6] B[5] B[4] B[3] B[2] B[1] B[0] -autobundled
netbloc @B 1 0 1 20J 60n
load netBundle @Sum 8 Sum[7] Sum[6] Sum[5] Sum[4] Sum[3] Sum[2] Sum[1] Sum[0] -autobundled
netbloc @Sum 1 3 1 670J 70
load netBundle @Sum0,Carry 9 Carry0 Sum0[7] Sum0[6] Sum0[5] Sum0[4] Sum0[3] Sum0[2] Sum0[1] Sum0[0] -autobundled
netbloc @Sum0,Carry 1 1 2 210 10 410J
load netBundle @Sum1,Carry 9 Carry1 Sum1[7] Sum1[6] Sum1[5] Sum1[4] Sum1[3] Sum1[2] Sum1[1] Sum1[0] -autobundled
netbloc @Sum1,Carry 1 2 1 NJ 80
levelinfo -pg 1 0 90 300 530 690
pagesize -pg 1 -db -bbox -sgen -90 0 800 150
show
fullfit
#
# initialize ictrl to current module ConditionalSumAdder8Bit work:ConditionalSumAdder8Bit:NOFILE
ictrl init topinfo |
