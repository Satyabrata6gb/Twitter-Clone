<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 18-09-2022
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<!DOCTYPE html>
<html>
<link rel="SHORTCUT ICON" href="static/images/favicon.ico" />
<link rel="icon" href="static/images/favicon.ico" type="image/ico" />
<head>
    <script
            src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
            crossorigin="anonymous">
    </script>

    <style>
        input:-webkit-autofill,
        input:-webkit-autofill:hover,
        input:-webkit-autofill:focus,
        textarea:-webkit-autofill,
        textarea:-webkit-autofill:hover,
        textarea:-webkit-autofill:focus,
        select:-webkit-autofill,
        select:-webkit-autofill:hover,
        select:-webkit-autofill:focus {
            -webkit-transition-delay: 99999s;
        }

        html {
            height: 100%;
        }
        body {
            margin:0;
            padding:0;
            font-family: sans-serif;
            background: linear-gradient(#141e30, #243b55);
        }

        .login-box {
            position: fixed;
            top: 50%;
            left: 50%;
            width: 400px;
            padding: 40px;
            transform: translate(-50%, -50%);
            background: rgba(0,0,0,.5);
            box-sizing: border-box;
            box-shadow: 0 15px 25px rgba(0,0,0,.6);
            border-radius: 10px;
        }

        .login-box h2 {
            margin: 0 0 30px;
            padding: 0;
            color: #fff;
            text-align: center;
        }

        .login-box .user-box {
            position: relative;
        }

        .login-box .user-box input {
            width: 100%;
            padding: 10px 0;
            font-size: 16px;
            color: #fff;
            margin-bottom: 30px;
            border: none;
            border-bottom: 1px solid #fff;
            outline: none;
            background: transparent;
        }
        .login-box .user-box label {
            position: absolute;
            top:0;
            left: 0;
            padding: 10px 0;
            font-size: 16px;
            color: #fff;
            pointer-events: none;
            transition: .5s;
        }

        .login-box .user-box input:focus ~ label,
        .login-box .user-box input:valid ~ label {
            top: -20px;
            left: 0;
            color: #03e9f4;
            font-size: 12px;
        }

        .login-box form a {
            position: relative;
            display: inline-block;
            padding: 10px 20px;
            color: #03e9f4;
            font-size: 16px;
            text-decoration: none;
            text-transform: uppercase;
            overflow: hidden;
            transition: .5s;
            margin-top: 40px;
            letter-spacing: 4px
        }

        .login-box a:hover {
            background: #03e9f4;
            color: #fff !important;
            border-radius: 5px;
            box-shadow: 0 0 5px #03e9f4,
            0 0 25px #03e9f4,
            0 0 50px #03e9f4,
            0 0 100px #03e9f4;
        }

        .login-box a span {
            position: absolute;
            display: block;
        }

        .login-box a span:nth-child(1) {
            top: 0;
            left: -100%;
            width: 100%;
            height: 2px;
            background: linear-gradient(90deg, transparent, #03e9f4);
            animation: btn-anim1 1s linear infinite;
        }

        @keyframes btn-anim1 {
            0% {
                left: -100%;
            }
            50%,100% {
                left: 100%;
            }
        }

        .login-box a span:nth-child(2) {
            top: -100%;
            right: 0;
            width: 2px;
            height: 100%;
            background: linear-gradient(180deg, transparent, #03e9f4);
            animation: btn-anim2 1s linear infinite;
            animation-delay: .25s
        }

        @keyframes btn-anim2 {
            0% {
                top: -100%;
            }
            50%,100% {
                top: 100%;
            }
        }

        .login-box a span:nth-child(3) {
            bottom: 0;
            right: -100%;
            width: 100%;
            height: 2px;
            background: linear-gradient(270deg, transparent, #03e9f4);
            animation: btn-anim3 1s linear infinite;
            animation-delay: .5s
        }

        @keyframes btn-anim3 {
            0% {
                right: -100%;
            }
            50%,100% {
                right: 100%;
            }
        }

        .login-box a span:nth-child(4) {
            bottom: -100%;
            left: 0;
            width: 2px;
            height: 100%;
            background: linear-gradient(360deg, transparent, #03e9f4);
            animation: btn-anim4 1s linear infinite;
            animation-delay: .75s
        }

        @keyframes btn-anim4 {
            0% {
                bottom: -100%;
            }
            50%,100% {
                bottom: 100%;
            }
        }
        html {
            height: 100%;
            background: radial-gradient( #1b2735 0%, #090a0f 100%);
            overflow: hidden;
        }

        #stars {
            width: 1px;
            height: 1px;
            background: transparent;
            box-shadow: 967px 771px #FFF , 1025px 1684px #FFF , 1632px 1779px #FFF , 79px 1694px #FFF , 1535px 1122px #FFF , 1971px 976px #FFF , 783px 426px #FFF , 1043px 1879px #FFF , 1831px 3px #FFF , 378px 205px #FFF , 724px 1714px #FFF , 1333px 1283px #FFF , 999px 1866px #FFF , 1347px 1218px #FFF , 1674px 636px #FFF , 506px 756px #FFF , 1966px 1088px #FFF , 384px 1151px #FFF , 293px 1318px #FFF , 1021px 868px #FFF , 952px 429px #FFF , 796px 1698px #FFF , 1870px 694px #FFF , 1293px 639px #FFF , 1516px 945px #FFF , 815px 160px #FFF , 1793px 117px #FFF , 424px 544px #FFF , 1528px 1542px #FFF , 602px 1771px #FFF , 158px 1661px #FFF , 675px 1148px #FFF , 1987px 1593px #FFF , 1619px 1545px #FFF , 162px 659px #FFF , 1363px 1932px #FFF , 1211px 1276px #FFF , 1746px 521px #FFF , 1359px 1253px #FFF , 440px 240px #FFF , 1215px 242px #FFF , 1128px 441px #FFF , 1693px 1823px #FFF , 1320px 1941px #FFF , 255px 909px #FFF , 1228px 456px #FFF , 871px 1240px #FFF , 1484px 1192px #FFF , 467px 1247px #FFF , 1709px 1535px #FFF , 601px 1622px #FFF , 1727px 598px #FFF , 660px 1774px #FFF , 977px 1490px #FFF , 1581px 1643px #FFF , 1039px 300px #FFF , 971px 1892px #FFF , 348px 767px #FFF , 739px 966px #FFF , 1848px 236px #FFF , 423px 1152px #FFF , 1870px 1181px #FFF , 705px 462px #FFF , 1266px 1217px #FFF , 1812px 808px #FFF , 1583px 712px #FFF , 1098px 532px #FFF , 1878px 312px #FFF , 135px 167px #FFF , 1854px 1937px #FFF , 141px 1907px #FFF , 323px 491px #FFF , 660px 576px #FFF , 967px 1970px #FFF , 241px 9px #FFF , 17px 590px #FFF , 1249px 1098px #FFF , 1078px 756px #FFF , 1355px 1980px #FFF , 173px 13px #FFF , 525px 1610px #FFF , 903px 1247px #FFF , 566px 1844px #FFF , 1053px 851px #FFF , 423px 1601px #FFF , 1886px 65px #FFF , 883px 1862px #FFF , 997px 1078px #FFF , 1371px 1253px #FFF , 1584px 441px #FFF , 1660px 11px #FFF , 1384px 52px #FFF , 1060px 339px #FFF , 24px 652px #FFF , 1155px 1650px #FFF , 420px 1041px #FFF , 498px 548px #FFF , 1531px 1704px #FFF , 785px 497px #FFF , 863px 1980px #FFF , 1243px 1943px #FFF , 1677px 21px #FFF , 1413px 1506px #FFF , 1005px 403px #FFF , 1831px 792px #FFF , 1848px 141px #FFF , 911px 112px #FFF , 581px 1714px #FFF , 67px 790px #FFF , 1135px 355px #FFF , 569px 664px #FFF , 307px 933px #FFF , 101px 690px #FFF , 1471px 717px #FFF , 1072px 1261px #FFF , 1146px 204px #FFF , 532px 1627px #FFF , 84px 1456px #FFF , 1532px 1232px #FFF , 256px 1800px #FFF , 777px 1496px #FFF , 397px 542px #FFF , 1170px 1340px #FFF , 369px 109px #FFF , 488px 215px #FFF , 1820px 1347px #FFF , 50px 1792px #FFF , 1574px 610px #FFF , 745px 629px #FFF , 621px 626px #FFF , 1490px 377px #FFF , 799px 1458px #FFF , 1600px 708px #FFF , 1563px 1999px #FFF , 1880px 1811px #FFF , 1593px 280px #FFF , 1839px 793px #FFF , 1650px 349px #FFF , 335px 539px #FFF , 800px 1430px #FFF , 920px 187px #FFF , 82px 1959px #FFF , 1139px 1531px #FFF , 984px 1468px #FFF , 309px 840px #FFF , 886px 1396px #FFF , 1586px 1163px #FFF , 709px 726px #FFF , 590px 1919px #FFF , 1680px 1870px #FFF , 399px 372px #FFF , 4px 340px #FFF , 1103px 392px #FFF , 100px 495px #FFF , 68px 1841px #FFF , 1182px 339px #FFF , 992px 1854px #FFF , 657px 640px #FFF , 994px 856px #FFF , 972px 46px #FFF , 742px 264px #FFF , 438px 1093px #FFF , 1709px 108px #FFF , 472px 401px #FFF , 792px 23px #FFF , 107px 622px #FFF , 911px 1378px #FFF , 1645px 1864px #FFF , 1871px 158px #FFF , 880px 63px #FFF , 345px 1015px #FFF , 1226px 301px #FFF , 1352px 1648px #FFF , 707px 728px #FFF , 1845px 241px #FFF , 1757px 1004px #FFF , 1033px 289px #FFF , 1321px 1046px #FFF , 1821px 790px #FFF , 253px 1891px #FFF , 1079px 1187px #FFF , 1898px 1448px #FFF , 475px 324px #FFF , 1994px 1215px #FFF , 485px 158px #FFF , 1035px 1338px #FFF , 1878px 56px #FFF , 1927px 1271px #FFF , 1416px 375px #FFF , 170px 1739px #FFF , 1264px 401px #FFF , 1241px 1479px #FFF , 1789px 1737px #FFF , 769px 1424px #FFF , 1889px 436px #FFF , 727px 444px #FFF , 184px 1151px #FFF , 404px 1623px #FFF , 1553px 929px #FFF , 1260px 1007px #FFF , 784px 44px #FFF , 330px 1218px #FFF , 190px 1908px #FFF , 460px 1582px #FFF , 1784px 1488px #FFF , 452px 559px #FFF , 566px 896px #FFF , 1735px 593px #FFF , 941px 1034px #FFF , 301px 1042px #FFF , 1763px 1030px #FFF , 1277px 669px #FFF , 1745px 1196px #FFF , 1346px 220px #FFF , 1152px 1716px #FFF , 1703px 25px #FFF , 220px 120px #FFF , 1372px 130px #FFF , 647px 517px #FFF , 128px 575px #FFF , 1109px 1763px #FFF , 1480px 1528px #FFF , 1229px 265px #FFF , 1409px 769px #FFF , 1061px 1804px #FFF , 7px 1984px #FFF , 504px 285px #FFF , 984px 1855px #FFF , 1233px 1566px #FFF , 1607px 116px #FFF , 255px 299px #FFF , 441px 796px #FFF , 370px 101px #FFF , 158px 154px #FFF , 1832px 908px #FFF , 1454px 1269px #FFF , 1611px 1020px #FFF , 467px 1709px #FFF , 1817px 1811px #FFF , 273px 346px #FFF , 1249px 1316px #FFF , 483px 1542px #FFF , 1213px 539px #FFF , 1414px 1773px #FFF , 1293px 872px #FFF , 952px 1826px #FFF , 30px 1146px #FFF , 1976px 1394px #FFF , 360px 1514px #FFF , 940px 1539px #FFF , 471px 889px #FFF , 1753px 405px #FFF , 470px 502px #FFF , 579px 1725px #FFF , 935px 1261px #FFF , 1442px 859px #FFF , 393px 1196px #FFF , 98px 1293px #FFF , 1614px 875px #FFF , 125px 849px #FFF , 301px 674px #FFF , 1205px 233px #FFF , 1706px 1601px #FFF , 1662px 651px #FFF , 1238px 1209px #FFF , 784px 1357px #FFF , 674px 1080px #FFF , 1504px 1782px #FFF , 1076px 229px #FFF , 1217px 673px #FFF , 938px 134px #FFF , 46px 286px #FFF , 662px 1631px #FFF , 1715px 615px #FFF , 777px 866px #FFF , 1849px 1557px #FFF , 1581px 1512px #FFF , 1939px 678px #FFF , 1984px 552px #FFF , 599px 1243px #FFF , 365px 855px #FFF , 199px 1416px #FFF , 1480px 167px #FFF , 1433px 930px #FFF , 987px 89px #FFF , 1847px 1201px #FFF , 379px 1222px #FFF , 33px 738px #FFF , 459px 1547px #FFF , 1783px 720px #FFF , 1548px 1470px #FFF , 1738px 1247px #FFF , 92px 895px #FFF , 1202px 907px #FFF , 460px 1221px #FFF , 610px 360px #FFF , 812px 885px #FFF , 1754px 845px #FFF , 688px 781px #FFF , 237px 1333px #FFF , 325px 523px #FFF , 492px 191px #FFF , 280px 196px #FFF , 31px 1160px #FFF , 1623px 62px #FFF , 1299px 1906px #FFF , 1449px 1587px #FFF , 1853px 1083px #FFF , 206px 466px #FFF , 710px 1809px #FFF , 975px 691px #FFF , 891px 1789px #FFF , 363px 1947px #FFF , 691px 1714px #FFF , 190px 173px #FFF , 243px 1917px #FFF , 1325px 904px #FFF , 19px 1581px #FFF , 1583px 1170px #FFF , 51px 817px #FFF , 319px 1345px #FFF , 1737px 960px #FFF , 1090px 1527px #FFF , 256px 1241px #FFF , 866px 1655px #FFF , 1667px 785px #FFF , 890px 568px #FFF , 301px 1166px #FFF , 1048px 819px #FFF , 287px 1120px #FFF , 617px 1318px #FFF , 53px 1337px #FFF , 231px 1172px #FFF , 1179px 478px #FFF , 1127px 129px #FFF , 1388px 668px #FFF , 1706px 1756px #FFF , 619px 1927px #FFF , 1181px 261px #FFF , 1265px 1688px #FFF , 623px 1712px #FFF , 846px 1017px #FFF , 1314px 614px #FFF , 275px 1507px #FFF , 443px 628px #FFF , 1084px 680px #FFF , 1406px 1735px #FFF , 1159px 64px #FFF , 1018px 1725px #FFF , 1766px 380px #FFF , 1691px 1665px #FFF , 1236px 23px #FFF , 404px 1271px #FFF , 466px 671px #FFF , 1898px 1935px #FFF , 231px 1224px #FFF , 1248px 769px #FFF , 1678px 532px #FFF , 1188px 1478px #FFF , 290px 1623px #FFF , 1984px 723px #FFF , 1343px 1987px #FFF , 1722px 702px #FFF , 233px 697px #FFF , 1415px 1900px #FFF , 1538px 30px #FFF , 837px 1118px #FFF , 242px 732px #FFF , 98px 1163px #FFF , 1724px 1234px #FFF , 664px 1740px #FFF , 1048px 1693px #FFF , 422px 1740px #FFF , 1983px 136px #FFF , 1516px 1928px #FFF , 734px 334px #FFF , 781px 1026px #FFF , 513px 90px #FFF , 1410px 1674px #FFF , 1952px 837px #FFF , 1852px 1692px #FFF , 1768px 1778px #FFF , 1844px 1753px #FFF , 1831px 1418px #FFF , 91px 91px #FFF , 180px 1847px #FFF , 573px 1179px #FFF , 912px 515px #FFF , 510px 93px #FFF , 1088px 1031px #FFF , 1765px 1224px #FFF , 1816px 668px #FFF , 1597px 247px #FFF , 1397px 722px #FFF , 825px 1346px #FFF , 1929px 1914px #FFF , 759px 952px #FFF , 9px 91px #FFF , 360px 158px #FFF , 1623px 1148px #FFF , 633px 595px #FFF , 394px 869px #FFF , 955px 1859px #FFF , 222px 1303px #FFF , 708px 576px #FFF , 1127px 935px #FFF , 106px 1957px #FFF , 1978px 1640px #FFF , 1480px 926px #FFF , 1681px 1636px #FFF , 1628px 1672px #FFF , 609px 1874px #FFF , 1767px 1080px #FFF , 1625px 1077px #FFF , 993px 578px #FFF , 15px 423px #FFF , 1268px 1759px #FFF , 1721px 1930px #FFF , 1831px 1332px #FFF , 1932px 1205px #FFF , 856px 733px #FFF , 350px 1709px #FFF , 1451px 826px #FFF , 1432px 728px #FFF , 593px 387px #FFF , 1124px 568px #FFF , 1410px 990px #FFF , 1719px 1190px #FFF , 1880px 884px #FFF , 805px 1832px #FFF , 1692px 589px #FFF , 603px 576px #FFF , 923px 1613px #FFF , 528px 303px #FFF , 1248px 1361px #FFF , 1817px 1340px #FFF , 1710px 774px #FFF , 1820px 1109px #FFF , 136px 1884px #FFF , 599px 640px #FFF , 1436px 1653px #FFF , 1138px 240px #FFF , 1543px 1870px #FFF , 1196px 1944px #FFF , 1721px 949px #FFF , 576px 1018px #FFF , 52px 76px #FFF , 429px 1880px #FFF , 1241px 1296px #FFF , 174px 1040px #FFF , 849px 604px #FFF , 521px 1134px #FFF , 1661px 217px #FFF , 1320px 1660px #FFF , 1414px 1302px #FFF , 1223px 232px #FFF , 1018px 1117px #FFF , 588px 1166px #FFF , 742px 1018px #FFF , 1542px 285px #FFF , 894px 264px #FFF , 1376px 1302px #FFF , 1431px 1000px #FFF , 502px 1201px #FFF , 392px 1452px #FFF , 2000px 249px #FFF , 1773px 1550px #FFF , 1791px 1284px #FFF , 9px 182px #FFF , 1770px 80px #FFF , 492px 1049px #FFF , 271px 1988px #FFF , 9px 485px #FFF , 51px 1227px #FFF , 1471px 614px #FFF , 369px 1244px #FFF , 1863px 619px #FFF , 934px 13px #FFF , 1185px 634px #FFF , 1229px 1336px #FFF , 909px 1344px #FFF , 258px 188px #FFF , 316px 596px #FFF , 1547px 1780px #FFF , 1843px 1538px #FFF , 1715px 606px #FFF , 1471px 1649px #FFF , 612px 1409px #FFF , 405px 260px #FFF , 619px 33px #FFF , 898px 799px #FFF , 1034px 1261px #FFF , 941px 158px #FFF , 524px 334px #FFF , 1598px 180px #FFF , 853px 1205px #FFF , 354px 1922px #FFF , 1455px 919px #FFF , 1950px 1447px #FFF , 783px 1447px #FFF , 1467px 1913px #FFF , 1010px 497px #FFF , 1962px 1082px #FFF , 1905px 548px #FFF , 1447px 1274px #FFF , 716px 1301px #FFF , 1960px 840px #FFF , 1430px 1266px #FFF , 236px 1966px #FFF , 517px 1995px #FFF , 495px 1564px #FFF , 211px 1787px #FFF , 1062px 1841px #FFF , 1127px 331px #FFF , 1884px 961px #FFF , 1528px 1796px #FFF , 821px 406px #FFF , 1046px 722px #FFF , 157px 1094px #FFF , 501px 1519px #FFF , 329px 440px #FFF , 1556px 1557px #FFF , 1945px 1108px #FFF , 1642px 1457px #FFF , 101px 1015px #FFF , 317px 163px #FFF , 1966px 358px #FFF , 95px 493px #FFF , 711px 1435px #FFF , 645px 25px #FFF , 686px 847px #FFF , 1295px 730px #FFF , 11px 1443px #FFF , 869px 225px #FFF , 1745px 128px #FFF , 1861px 1932px #FFF , 342px 1747px #FFF , 794px 807px #FFF , 394px 1817px #FFF , 1317px 1121px #FFF , 1210px 439px #FFF , 1783px 1324px #FFF , 752px 259px #FFF , 678px 694px #FFF , 782px 88px #FFF , 966px 1707px #FFF , 1603px 1642px #FFF , 1076px 1267px #FFF , 1300px 19px #FFF , 1323px 1596px #FFF , 1100px 1714px #FFF , 1734px 878px #FFF , 642px 1843px #FFF , 1868px 1006px #FFF , 671px 328px #FFF , 1731px 698px #FFF , 1757px 638px #FFF , 1057px 513px #FFF , 1867px 398px #FFF , 1728px 699px #FFF , 394px 1091px #FFF , 860px 1426px #FFF , 1270px 17px #FFF , 430px 475px #FFF , 1115px 486px #FFF , 1089px 1658px #FFF , 1305px 1964px #FFF , 1848px 330px #FFF , 1127px 1690px #FFF , 1540px 43px #FFF , 587px 331px #FFF , 1916px 646px #FFF , 927px 1719px #FFF , 1281px 1175px #FFF , 1983px 334px #FFF , 654px 60px #FFF , 1404px 797px #FFF , 975px 1448px #FFF , 1213px 1437px #FFF , 132px 1000px #FFF , 1909px 1712px #FFF , 282px 365px #FFF , 914px 366px #FFF , 666px 1858px #FFF , 880px 132px #FFF , 1590px 683px #FFF , 176px 1290px #FFF , 1541px 905px #FFF , 839px 386px #FFF , 591px 467px #FFF , 903px 318px #FFF , 844px 884px #FFF , 1517px 420px #FFF , 1050px 1900px #FFF , 1783px 1898px #FFF , 811px 841px #FFF , 882px 525px #FFF , 1109px 178px #FFF , 1703px 325px #FFF , 841px 361px #FFF , 147px 331px #FFF , 1857px 1090px #FFF , 80px 1734px #FFF , 1941px 61px #FFF , 352px 562px #FFF , 1672px 439px #FFF , 1630px 1342px #FFF , 1607px 197px #FFF , 1529px 1188px #FFF , 523px 1239px #FFF , 1196px 1632px #FFF , 1389px 1235px #FFF , 931px 1022px #FFF , 469px 899px #FFF , 1836px 542px #FFF , 1544px 310px #FFF , 1606px 1160px #FFF , 1828px 437px #FFF , 715px 387px #FFF , 1440px 1590px #FFF , 779px 1319px #FFF , 628px 1882px #FFF , 671px 662px #FFF , 652px 1894px #FFF , 1922px 159px #FFF , 1481px 420px #FFF , 1163px 1559px #FFF , 101px 979px #FFF , 530px 54px #FFF , 1241px 1390px #FFF , 784px 1799px #FFF , 1621px 485px #FFF , 1087px 389px #FFF , 1100px 1089px #FFF , 1976px 49px #FFF , 36px 279px #FFF , 1413px 182px #FFF , 459px 1510px #FFF , 82px 665px #FFF , 972px 550px #FFF , 767px 395px #FFF , 473px 1728px #FFF , 1973px 1592px #FFF , 992px 731px #FFF , 322px 605px #FFF , 794px 431px #FFF , 1837px 269px #FFF , 1083px 177px #FFF , 882px 1335px #FFF , 97px 1126px #FFF , 1118px 1401px #FFF , 1398px 400px #FFF , 1122px 1750px #FFF , 1380px 929px #FFF , 509px 1417px #FFF , 151px 49px #FFF , 1558px 318px #FFF , 1703px 948px #FFF , 671px 1258px #FFF , 849px 1466px #FFF , 118px 1867px #FFF , 98px 381px #FFF , 564px 1427px #FFF , 411px 378px #FFF , 1631px 955px #FFF , 1086px 1270px #FFF , 699px 1877px #FFF , 19px 810px #FFF , 940px 366px #FFF , 1904px 1699px #FFF , 936px 1804px #FFF , 1287px 345px #FFF , 1725px 226px #FFF , 641px 757px #FFF , 1888px 1277px #FFF , 1718px 329px #FFF , 830px 634px #FFF , 1661px 846px #FFF , 470px 1718px #FFF , 1092px 978px #FFF , 1318px 1741px #FFF , 1230px 1557px #FFF , 336px 788px #FFF , 557px 1032px #FFF , 1163px 988px #FFF , 241px 303px #FFF , 619px 249px #FFF , 1897px 1105px #FFF , 773px 1559px #FFF , 157px 456px #FFF , 1745px 1347px #FFF , 910px 1639px #FFF , 1142px 1750px #FFF , 963px 74px #FFF , 1807px 607px #FFF , 800px 1065px #FFF , 308px 1481px #FFF , 1048px 1649px #FFF , 870px 436px #FFF , 1934px 108px #FFF;
            animation: animStar 50s linear infinite;
        }
        #stars:after {
            content: " ";
            position: absolute;
            top: 2000px;
            width: 1px;
            height: 1px;
            background: transparent;
            box-shadow: 967px 771px #FFF , 1025px 1684px #FFF , 1632px 1779px #FFF , 79px 1694px #FFF , 1535px 1122px #FFF , 1971px 976px #FFF , 783px 426px #FFF , 1043px 1879px #FFF , 1831px 3px #FFF , 378px 205px #FFF , 724px 1714px #FFF , 1333px 1283px #FFF , 999px 1866px #FFF , 1347px 1218px #FFF , 1674px 636px #FFF , 506px 756px #FFF , 1966px 1088px #FFF , 384px 1151px #FFF , 293px 1318px #FFF , 1021px 868px #FFF , 952px 429px #FFF , 796px 1698px #FFF , 1870px 694px #FFF , 1293px 639px #FFF , 1516px 945px #FFF , 815px 160px #FFF , 1793px 117px #FFF , 424px 544px #FFF , 1528px 1542px #FFF , 602px 1771px #FFF , 158px 1661px #FFF , 675px 1148px #FFF , 1987px 1593px #FFF , 1619px 1545px #FFF , 162px 659px #FFF , 1363px 1932px #FFF , 1211px 1276px #FFF , 1746px 521px #FFF , 1359px 1253px #FFF , 440px 240px #FFF , 1215px 242px #FFF , 1128px 441px #FFF , 1693px 1823px #FFF , 1320px 1941px #FFF , 255px 909px #FFF , 1228px 456px #FFF , 871px 1240px #FFF , 1484px 1192px #FFF , 467px 1247px #FFF , 1709px 1535px #FFF , 601px 1622px #FFF , 1727px 598px #FFF , 660px 1774px #FFF , 977px 1490px #FFF , 1581px 1643px #FFF , 1039px 300px #FFF , 971px 1892px #FFF , 348px 767px #FFF , 739px 966px #FFF , 1848px 236px #FFF , 423px 1152px #FFF , 1870px 1181px #FFF , 705px 462px #FFF , 1266px 1217px #FFF , 1812px 808px #FFF , 1583px 712px #FFF , 1098px 532px #FFF , 1878px 312px #FFF , 135px 167px #FFF , 1854px 1937px #FFF , 141px 1907px #FFF , 323px 491px #FFF , 660px 576px #FFF , 967px 1970px #FFF , 241px 9px #FFF , 17px 590px #FFF , 1249px 1098px #FFF , 1078px 756px #FFF , 1355px 1980px #FFF , 173px 13px #FFF , 525px 1610px #FFF , 903px 1247px #FFF , 566px 1844px #FFF , 1053px 851px #FFF , 423px 1601px #FFF , 1886px 65px #FFF , 883px 1862px #FFF , 997px 1078px #FFF , 1371px 1253px #FFF , 1584px 441px #FFF , 1660px 11px #FFF , 1384px 52px #FFF , 1060px 339px #FFF , 24px 652px #FFF , 1155px 1650px #FFF , 420px 1041px #FFF , 498px 548px #FFF , 1531px 1704px #FFF , 785px 497px #FFF , 863px 1980px #FFF , 1243px 1943px #FFF , 1677px 21px #FFF , 1413px 1506px #FFF , 1005px 403px #FFF , 1831px 792px #FFF , 1848px 141px #FFF , 911px 112px #FFF , 581px 1714px #FFF , 67px 790px #FFF , 1135px 355px #FFF , 569px 664px #FFF , 307px 933px #FFF , 101px 690px #FFF , 1471px 717px #FFF , 1072px 1261px #FFF , 1146px 204px #FFF , 532px 1627px #FFF , 84px 1456px #FFF , 1532px 1232px #FFF , 256px 1800px #FFF , 777px 1496px #FFF , 397px 542px #FFF , 1170px 1340px #FFF , 369px 109px #FFF , 488px 215px #FFF , 1820px 1347px #FFF , 50px 1792px #FFF , 1574px 610px #FFF , 745px 629px #FFF , 621px 626px #FFF , 1490px 377px #FFF , 799px 1458px #FFF , 1600px 708px #FFF , 1563px 1999px #FFF , 1880px 1811px #FFF , 1593px 280px #FFF , 1839px 793px #FFF , 1650px 349px #FFF , 335px 539px #FFF , 800px 1430px #FFF , 920px 187px #FFF , 82px 1959px #FFF , 1139px 1531px #FFF , 984px 1468px #FFF , 309px 840px #FFF , 886px 1396px #FFF , 1586px 1163px #FFF , 709px 726px #FFF , 590px 1919px #FFF , 1680px 1870px #FFF , 399px 372px #FFF , 4px 340px #FFF , 1103px 392px #FFF , 100px 495px #FFF , 68px 1841px #FFF , 1182px 339px #FFF , 992px 1854px #FFF , 657px 640px #FFF , 994px 856px #FFF , 972px 46px #FFF , 742px 264px #FFF , 438px 1093px #FFF , 1709px 108px #FFF , 472px 401px #FFF , 792px 23px #FFF , 107px 622px #FFF , 911px 1378px #FFF , 1645px 1864px #FFF , 1871px 158px #FFF , 880px 63px #FFF , 345px 1015px #FFF , 1226px 301px #FFF , 1352px 1648px #FFF , 707px 728px #FFF , 1845px 241px #FFF , 1757px 1004px #FFF , 1033px 289px #FFF , 1321px 1046px #FFF , 1821px 790px #FFF , 253px 1891px #FFF , 1079px 1187px #FFF , 1898px 1448px #FFF , 475px 324px #FFF , 1994px 1215px #FFF , 485px 158px #FFF , 1035px 1338px #FFF , 1878px 56px #FFF , 1927px 1271px #FFF , 1416px 375px #FFF , 170px 1739px #FFF , 1264px 401px #FFF , 1241px 1479px #FFF , 1789px 1737px #FFF , 769px 1424px #FFF , 1889px 436px #FFF , 727px 444px #FFF , 184px 1151px #FFF , 404px 1623px #FFF , 1553px 929px #FFF , 1260px 1007px #FFF , 784px 44px #FFF , 330px 1218px #FFF , 190px 1908px #FFF , 460px 1582px #FFF , 1784px 1488px #FFF , 452px 559px #FFF , 566px 896px #FFF , 1735px 593px #FFF , 941px 1034px #FFF , 301px 1042px #FFF , 1763px 1030px #FFF , 1277px 669px #FFF , 1745px 1196px #FFF , 1346px 220px #FFF , 1152px 1716px #FFF , 1703px 25px #FFF , 220px 120px #FFF , 1372px 130px #FFF , 647px 517px #FFF , 128px 575px #FFF , 1109px 1763px #FFF , 1480px 1528px #FFF , 1229px 265px #FFF , 1409px 769px #FFF , 1061px 1804px #FFF , 7px 1984px #FFF , 504px 285px #FFF , 984px 1855px #FFF , 1233px 1566px #FFF , 1607px 116px #FFF , 255px 299px #FFF , 441px 796px #FFF , 370px 101px #FFF , 158px 154px #FFF , 1832px 908px #FFF , 1454px 1269px #FFF , 1611px 1020px #FFF , 467px 1709px #FFF , 1817px 1811px #FFF , 273px 346px #FFF , 1249px 1316px #FFF , 483px 1542px #FFF , 1213px 539px #FFF , 1414px 1773px #FFF , 1293px 872px #FFF , 952px 1826px #FFF , 30px 1146px #FFF , 1976px 1394px #FFF , 360px 1514px #FFF , 940px 1539px #FFF , 471px 889px #FFF , 1753px 405px #FFF , 470px 502px #FFF , 579px 1725px #FFF , 935px 1261px #FFF , 1442px 859px #FFF , 393px 1196px #FFF , 98px 1293px #FFF , 1614px 875px #FFF , 125px 849px #FFF , 301px 674px #FFF , 1205px 233px #FFF , 1706px 1601px #FFF , 1662px 651px #FFF , 1238px 1209px #FFF , 784px 1357px #FFF , 674px 1080px #FFF , 1504px 1782px #FFF , 1076px 229px #FFF , 1217px 673px #FFF , 938px 134px #FFF , 46px 286px #FFF , 662px 1631px #FFF , 1715px 615px #FFF , 777px 866px #FFF , 1849px 1557px #FFF , 1581px 1512px #FFF , 1939px 678px #FFF , 1984px 552px #FFF , 599px 1243px #FFF , 365px 855px #FFF , 199px 1416px #FFF , 1480px 167px #FFF , 1433px 930px #FFF , 987px 89px #FFF , 1847px 1201px #FFF , 379px 1222px #FFF , 33px 738px #FFF , 459px 1547px #FFF , 1783px 720px #FFF , 1548px 1470px #FFF , 1738px 1247px #FFF , 92px 895px #FFF , 1202px 907px #FFF , 460px 1221px #FFF , 610px 360px #FFF , 812px 885px #FFF , 1754px 845px #FFF , 688px 781px #FFF , 237px 1333px #FFF , 325px 523px #FFF , 492px 191px #FFF , 280px 196px #FFF , 31px 1160px #FFF , 1623px 62px #FFF , 1299px 1906px #FFF , 1449px 1587px #FFF , 1853px 1083px #FFF , 206px 466px #FFF , 710px 1809px #FFF , 975px 691px #FFF , 891px 1789px #FFF , 363px 1947px #FFF , 691px 1714px #FFF , 190px 173px #FFF , 243px 1917px #FFF , 1325px 904px #FFF , 19px 1581px #FFF , 1583px 1170px #FFF , 51px 817px #FFF , 319px 1345px #FFF , 1737px 960px #FFF , 1090px 1527px #FFF , 256px 1241px #FFF , 866px 1655px #FFF , 1667px 785px #FFF , 890px 568px #FFF , 301px 1166px #FFF , 1048px 819px #FFF , 287px 1120px #FFF , 617px 1318px #FFF , 53px 1337px #FFF , 231px 1172px #FFF , 1179px 478px #FFF , 1127px 129px #FFF , 1388px 668px #FFF , 1706px 1756px #FFF , 619px 1927px #FFF , 1181px 261px #FFF , 1265px 1688px #FFF , 623px 1712px #FFF , 846px 1017px #FFF , 1314px 614px #FFF , 275px 1507px #FFF , 443px 628px #FFF , 1084px 680px #FFF , 1406px 1735px #FFF , 1159px 64px #FFF , 1018px 1725px #FFF , 1766px 380px #FFF , 1691px 1665px #FFF , 1236px 23px #FFF , 404px 1271px #FFF , 466px 671px #FFF , 1898px 1935px #FFF , 231px 1224px #FFF , 1248px 769px #FFF , 1678px 532px #FFF , 1188px 1478px #FFF , 290px 1623px #FFF , 1984px 723px #FFF , 1343px 1987px #FFF , 1722px 702px #FFF , 233px 697px #FFF , 1415px 1900px #FFF , 1538px 30px #FFF , 837px 1118px #FFF , 242px 732px #FFF , 98px 1163px #FFF , 1724px 1234px #FFF , 664px 1740px #FFF , 1048px 1693px #FFF , 422px 1740px #FFF , 1983px 136px #FFF , 1516px 1928px #FFF , 734px 334px #FFF , 781px 1026px #FFF , 513px 90px #FFF , 1410px 1674px #FFF , 1952px 837px #FFF , 1852px 1692px #FFF , 1768px 1778px #FFF , 1844px 1753px #FFF , 1831px 1418px #FFF , 91px 91px #FFF , 180px 1847px #FFF , 573px 1179px #FFF , 912px 515px #FFF , 510px 93px #FFF , 1088px 1031px #FFF , 1765px 1224px #FFF , 1816px 668px #FFF , 1597px 247px #FFF , 1397px 722px #FFF , 825px 1346px #FFF , 1929px 1914px #FFF , 759px 952px #FFF , 9px 91px #FFF , 360px 158px #FFF , 1623px 1148px #FFF , 633px 595px #FFF , 394px 869px #FFF , 955px 1859px #FFF , 222px 1303px #FFF , 708px 576px #FFF , 1127px 935px #FFF , 106px 1957px #FFF , 1978px 1640px #FFF , 1480px 926px #FFF , 1681px 1636px #FFF , 1628px 1672px #FFF , 609px 1874px #FFF , 1767px 1080px #FFF , 1625px 1077px #FFF , 993px 578px #FFF , 15px 423px #FFF , 1268px 1759px #FFF , 1721px 1930px #FFF , 1831px 1332px #FFF , 1932px 1205px #FFF , 856px 733px #FFF , 350px 1709px #FFF , 1451px 826px #FFF , 1432px 728px #FFF , 593px 387px #FFF , 1124px 568px #FFF , 1410px 990px #FFF , 1719px 1190px #FFF , 1880px 884px #FFF , 805px 1832px #FFF , 1692px 589px #FFF , 603px 576px #FFF , 923px 1613px #FFF , 528px 303px #FFF , 1248px 1361px #FFF , 1817px 1340px #FFF , 1710px 774px #FFF , 1820px 1109px #FFF , 136px 1884px #FFF , 599px 640px #FFF , 1436px 1653px #FFF , 1138px 240px #FFF , 1543px 1870px #FFF , 1196px 1944px #FFF , 1721px 949px #FFF , 576px 1018px #FFF , 52px 76px #FFF , 429px 1880px #FFF , 1241px 1296px #FFF , 174px 1040px #FFF , 849px 604px #FFF , 521px 1134px #FFF , 1661px 217px #FFF , 1320px 1660px #FFF , 1414px 1302px #FFF , 1223px 232px #FFF , 1018px 1117px #FFF , 588px 1166px #FFF , 742px 1018px #FFF , 1542px 285px #FFF , 894px 264px #FFF , 1376px 1302px #FFF , 1431px 1000px #FFF , 502px 1201px #FFF , 392px 1452px #FFF , 2000px 249px #FFF , 1773px 1550px #FFF , 1791px 1284px #FFF , 9px 182px #FFF , 1770px 80px #FFF , 492px 1049px #FFF , 271px 1988px #FFF , 9px 485px #FFF , 51px 1227px #FFF , 1471px 614px #FFF , 369px 1244px #FFF , 1863px 619px #FFF , 934px 13px #FFF , 1185px 634px #FFF , 1229px 1336px #FFF , 909px 1344px #FFF , 258px 188px #FFF , 316px 596px #FFF , 1547px 1780px #FFF , 1843px 1538px #FFF , 1715px 606px #FFF , 1471px 1649px #FFF , 612px 1409px #FFF , 405px 260px #FFF , 619px 33px #FFF , 898px 799px #FFF , 1034px 1261px #FFF , 941px 158px #FFF , 524px 334px #FFF , 1598px 180px #FFF , 853px 1205px #FFF , 354px 1922px #FFF , 1455px 919px #FFF , 1950px 1447px #FFF , 783px 1447px #FFF , 1467px 1913px #FFF , 1010px 497px #FFF , 1962px 1082px #FFF , 1905px 548px #FFF , 1447px 1274px #FFF , 716px 1301px #FFF , 1960px 840px #FFF , 1430px 1266px #FFF , 236px 1966px #FFF , 517px 1995px #FFF , 495px 1564px #FFF , 211px 1787px #FFF , 1062px 1841px #FFF , 1127px 331px #FFF , 1884px 961px #FFF , 1528px 1796px #FFF , 821px 406px #FFF , 1046px 722px #FFF , 157px 1094px #FFF , 501px 1519px #FFF , 329px 440px #FFF , 1556px 1557px #FFF , 1945px 1108px #FFF , 1642px 1457px #FFF , 101px 1015px #FFF , 317px 163px #FFF , 1966px 358px #FFF , 95px 493px #FFF , 711px 1435px #FFF , 645px 25px #FFF , 686px 847px #FFF , 1295px 730px #FFF , 11px 1443px #FFF , 869px 225px #FFF , 1745px 128px #FFF , 1861px 1932px #FFF , 342px 1747px #FFF , 794px 807px #FFF , 394px 1817px #FFF , 1317px 1121px #FFF , 1210px 439px #FFF , 1783px 1324px #FFF , 752px 259px #FFF , 678px 694px #FFF , 782px 88px #FFF , 966px 1707px #FFF , 1603px 1642px #FFF , 1076px 1267px #FFF , 1300px 19px #FFF , 1323px 1596px #FFF , 1100px 1714px #FFF , 1734px 878px #FFF , 642px 1843px #FFF , 1868px 1006px #FFF , 671px 328px #FFF , 1731px 698px #FFF , 1757px 638px #FFF , 1057px 513px #FFF , 1867px 398px #FFF , 1728px 699px #FFF , 394px 1091px #FFF , 860px 1426px #FFF , 1270px 17px #FFF , 430px 475px #FFF , 1115px 486px #FFF , 1089px 1658px #FFF , 1305px 1964px #FFF , 1848px 330px #FFF , 1127px 1690px #FFF , 1540px 43px #FFF , 587px 331px #FFF , 1916px 646px #FFF , 927px 1719px #FFF , 1281px 1175px #FFF , 1983px 334px #FFF , 654px 60px #FFF , 1404px 797px #FFF , 975px 1448px #FFF , 1213px 1437px #FFF , 132px 1000px #FFF , 1909px 1712px #FFF , 282px 365px #FFF , 914px 366px #FFF , 666px 1858px #FFF , 880px 132px #FFF , 1590px 683px #FFF , 176px 1290px #FFF , 1541px 905px #FFF , 839px 386px #FFF , 591px 467px #FFF , 903px 318px #FFF , 844px 884px #FFF , 1517px 420px #FFF , 1050px 1900px #FFF , 1783px 1898px #FFF , 811px 841px #FFF , 882px 525px #FFF , 1109px 178px #FFF , 1703px 325px #FFF , 841px 361px #FFF , 147px 331px #FFF , 1857px 1090px #FFF , 80px 1734px #FFF , 1941px 61px #FFF , 352px 562px #FFF , 1672px 439px #FFF , 1630px 1342px #FFF , 1607px 197px #FFF , 1529px 1188px #FFF , 523px 1239px #FFF , 1196px 1632px #FFF , 1389px 1235px #FFF , 931px 1022px #FFF , 469px 899px #FFF , 1836px 542px #FFF , 1544px 310px #FFF , 1606px 1160px #FFF , 1828px 437px #FFF , 715px 387px #FFF , 1440px 1590px #FFF , 779px 1319px #FFF , 628px 1882px #FFF , 671px 662px #FFF , 652px 1894px #FFF , 1922px 159px #FFF , 1481px 420px #FFF , 1163px 1559px #FFF , 101px 979px #FFF , 530px 54px #FFF , 1241px 1390px #FFF , 784px 1799px #FFF , 1621px 485px #FFF , 1087px 389px #FFF , 1100px 1089px #FFF , 1976px 49px #FFF , 36px 279px #FFF , 1413px 182px #FFF , 459px 1510px #FFF , 82px 665px #FFF , 972px 550px #FFF , 767px 395px #FFF , 473px 1728px #FFF , 1973px 1592px #FFF , 992px 731px #FFF , 322px 605px #FFF , 794px 431px #FFF , 1837px 269px #FFF , 1083px 177px #FFF , 882px 1335px #FFF , 97px 1126px #FFF , 1118px 1401px #FFF , 1398px 400px #FFF , 1122px 1750px #FFF , 1380px 929px #FFF , 509px 1417px #FFF , 151px 49px #FFF , 1558px 318px #FFF , 1703px 948px #FFF , 671px 1258px #FFF , 849px 1466px #FFF , 118px 1867px #FFF , 98px 381px #FFF , 564px 1427px #FFF , 411px 378px #FFF , 1631px 955px #FFF , 1086px 1270px #FFF , 699px 1877px #FFF , 19px 810px #FFF , 940px 366px #FFF , 1904px 1699px #FFF , 936px 1804px #FFF , 1287px 345px #FFF , 1725px 226px #FFF , 641px 757px #FFF , 1888px 1277px #FFF , 1718px 329px #FFF , 830px 634px #FFF , 1661px 846px #FFF , 470px 1718px #FFF , 1092px 978px #FFF , 1318px 1741px #FFF , 1230px 1557px #FFF , 336px 788px #FFF , 557px 1032px #FFF , 1163px 988px #FFF , 241px 303px #FFF , 619px 249px #FFF , 1897px 1105px #FFF , 773px 1559px #FFF , 157px 456px #FFF , 1745px 1347px #FFF , 910px 1639px #FFF , 1142px 1750px #FFF , 963px 74px #FFF , 1807px 607px #FFF , 800px 1065px #FFF , 308px 1481px #FFF , 1048px 1649px #FFF , 870px 436px #FFF , 1934px 108px #FFF;
        }

        #stars2 {
            width: 2px;
            height: 2px;
            background: transparent;
            box-shadow: 1016px 1086px #FFF , 730px 738px #FFF , 896px 1971px #FFF , 1252px 1537px #FFF , 671px 1134px #FFF , 1533px 529px #FFF , 1397px 1143px #FFF , 1162px 253px #FFF , 613px 311px #FFF , 847px 721px #FFF , 1334px 838px #FFF , 1024px 210px #FFF , 859px 1441px #FFF , 1855px 891px #FFF , 972px 1130px #FFF , 1789px 1014px #FFF , 1151px 1919px #FFF , 710px 1786px #FFF , 396px 1618px #FFF , 1036px 1142px #FFF , 154px 1237px #FFF , 682px 567px #FFF , 1799px 499px #FFF , 1229px 1082px #FFF , 100px 120px #FFF , 1677px 611px #FFF , 1484px 1482px #FFF , 1507px 209px #FFF , 590px 552px #FFF , 368px 495px #FFF , 1146px 533px #FFF , 30px 69px #FFF , 876px 1300px #FFF , 1856px 695px #FFF , 1598px 1601px #FFF , 1785px 1042px #FFF , 1111px 256px #FFF , 879px 733px #FFF , 413px 1978px #FFF , 1934px 559px #FFF , 576px 1921px #FFF , 251px 1025px #FFF , 1385px 1905px #FFF , 1560px 1824px #FFF , 1139px 1086px #FFF , 1393px 1602px #FFF , 1125px 10px #FFF , 1076px 478px #FFF , 841px 843px #FFF , 612px 1720px #FFF , 305px 1723px #FFF , 947px 579px #FFF , 1394px 1376px #FFF , 1926px 517px #FFF , 1300px 1871px #FFF , 544px 690px #FFF , 46px 155px #FFF , 1225px 333px #FFF , 1949px 421px #FFF , 1644px 233px #FFF , 343px 967px #FFF , 347px 1498px #FFF , 1750px 1945px #FFF , 777px 1229px #FFF , 291px 1588px #FFF , 1936px 1322px #FFF , 505px 1637px #FFF , 26px 1344px #FFF , 760px 933px #FFF , 28px 18px #FFF , 1009px 933px #FFF , 1698px 1219px #FFF , 170px 926px #FFF , 1523px 1318px #FFF , 1574px 44px #FFF , 1418px 476px #FFF , 1785px 972px #FFF , 1845px 606px #FFF , 1325px 422px #FFF , 1551px 425px #FFF , 176px 1120px #FFF , 456px 959px #FFF , 1599px 64px #FFF , 522px 1999px #FFF , 1016px 1020px #FFF , 1975px 1549px #FFF , 26px 1969px #FFF , 993px 991px #FFF , 1834px 414px #FFF , 1205px 208px #FFF , 1267px 1083px #FFF , 576px 945px #FFF , 912px 1645px #FFF , 1209px 1182px #FFF , 684px 425px #FFF , 1324px 305px #FFF , 1854px 834px #FFF , 862px 559px #FFF , 1037px 49px #FFF , 1248px 178px #FFF , 809px 489px #FFF , 1907px 372px #FFF , 1248px 1206px #FFF , 1312px 1582px #FFF , 359px 1598px #FFF , 19px 95px #FFF , 43px 1660px #FFF , 43px 1795px #FFF , 1809px 570px #FFF , 335px 1416px #FFF , 681px 1864px #FFF , 1715px 379px #FFF , 1239px 1977px #FFF , 743px 1263px #FFF , 153px 671px #FFF , 111px 450px #FFF , 837px 1612px #FFF , 1627px 1298px #FFF , 120px 934px #FFF , 1345px 914px #FFF , 1427px 1933px #FFF , 1069px 1452px #FFF , 632px 126px #FFF , 719px 342px #FFF , 604px 339px #FFF , 799px 1220px #FFF , 517px 1307px #FFF , 1532px 1407px #FFF , 298px 274px #FFF , 422px 1373px #FFF , 1754px 1421px #FFF , 322px 825px #FFF , 105px 932px #FFF , 872px 1266px #FFF , 1993px 990px #FFF , 791px 1242px #FFF , 892px 1646px #FFF , 317px 1134px #FFF , 254px 264px #FFF , 1927px 1099px #FFF , 767px 1632px #FFF , 72px 1071px #FFF , 1463px 254px #FFF , 1281px 1289px #FFF , 124px 631px #FFF , 1232px 1347px #FFF , 1061px 1656px #FFF , 908px 909px #FFF , 973px 1502px #FFF , 532px 685px #FFF , 1152px 1966px #FFF , 534px 497px #FFF , 1241px 1651px #FFF , 53px 1622px #FFF , 37px 1450px #FFF , 732px 1937px #FFF , 1703px 1162px #FFF , 1977px 551px #FFF , 1577px 65px #FFF , 247px 478px #FFF , 1997px 965px #FFF , 1030px 1172px #FFF , 1936px 1906px #FFF , 820px 1738px #FFF , 1790px 1280px #FFF , 1222px 372px #FFF , 778px 794px #FFF , 1267px 837px #FFF , 1416px 1854px #FFF , 1898px 1121px #FFF , 828px 1465px #FFF , 378px 620px #FFF , 1645px 1959px #FFF , 149px 589px #FFF , 662px 1527px #FFF , 1837px 1418px #FFF , 917px 769px #FFF , 278px 1618px #FFF , 1164px 1687px #FFF , 180px 301px #FFF , 593px 1344px #FFF , 304px 1032px #FFF , 501px 1320px #FFF , 1311px 1608px #FFF , 1371px 1343px #FFF , 1967px 222px #FFF , 538px 1644px #FFF , 1795px 1801px #FFF , 343px 1296px #FFF , 1679px 162px #FFF , 19px 1569px #FFF , 664px 515px #FFF , 818px 879px #FFF , 83px 105px #FFF , 1971px 1111px #FFF , 1286px 1903px #FFF , 130px 1195px #FFF , 1986px 1997px #FFF , 1101px 198px #FFF , 1832px 1759px #FFF;
            animation: animStar 100s linear infinite;
        }
        #stars2:after {
            content: " ";
            position: absolute;
            top: 2000px;
            width: 2px;
            height: 2px;
            background: transparent;
            box-shadow: 1016px 1086px #FFF , 730px 738px #FFF , 896px 1971px #FFF , 1252px 1537px #FFF , 671px 1134px #FFF , 1533px 529px #FFF , 1397px 1143px #FFF , 1162px 253px #FFF , 613px 311px #FFF , 847px 721px #FFF , 1334px 838px #FFF , 1024px 210px #FFF , 859px 1441px #FFF , 1855px 891px #FFF , 972px 1130px #FFF , 1789px 1014px #FFF , 1151px 1919px #FFF , 710px 1786px #FFF , 396px 1618px #FFF , 1036px 1142px #FFF , 154px 1237px #FFF , 682px 567px #FFF , 1799px 499px #FFF , 1229px 1082px #FFF , 100px 120px #FFF , 1677px 611px #FFF , 1484px 1482px #FFF , 1507px 209px #FFF , 590px 552px #FFF , 368px 495px #FFF , 1146px 533px #FFF , 30px 69px #FFF , 876px 1300px #FFF , 1856px 695px #FFF , 1598px 1601px #FFF , 1785px 1042px #FFF , 1111px 256px #FFF , 879px 733px #FFF , 413px 1978px #FFF , 1934px 559px #FFF , 576px 1921px #FFF , 251px 1025px #FFF , 1385px 1905px #FFF , 1560px 1824px #FFF , 1139px 1086px #FFF , 1393px 1602px #FFF , 1125px 10px #FFF , 1076px 478px #FFF , 841px 843px #FFF , 612px 1720px #FFF , 305px 1723px #FFF , 947px 579px #FFF , 1394px 1376px #FFF , 1926px 517px #FFF , 1300px 1871px #FFF , 544px 690px #FFF , 46px 155px #FFF , 1225px 333px #FFF , 1949px 421px #FFF , 1644px 233px #FFF , 343px 967px #FFF , 347px 1498px #FFF , 1750px 1945px #FFF , 777px 1229px #FFF , 291px 1588px #FFF , 1936px 1322px #FFF , 505px 1637px #FFF , 26px 1344px #FFF , 760px 933px #FFF , 28px 18px #FFF , 1009px 933px #FFF , 1698px 1219px #FFF , 170px 926px #FFF , 1523px 1318px #FFF , 1574px 44px #FFF , 1418px 476px #FFF , 1785px 972px #FFF , 1845px 606px #FFF , 1325px 422px #FFF , 1551px 425px #FFF , 176px 1120px #FFF , 456px 959px #FFF , 1599px 64px #FFF , 522px 1999px #FFF , 1016px 1020px #FFF , 1975px 1549px #FFF , 26px 1969px #FFF , 993px 991px #FFF , 1834px 414px #FFF , 1205px 208px #FFF , 1267px 1083px #FFF , 576px 945px #FFF , 912px 1645px #FFF , 1209px 1182px #FFF , 684px 425px #FFF , 1324px 305px #FFF , 1854px 834px #FFF , 862px 559px #FFF , 1037px 49px #FFF , 1248px 178px #FFF , 809px 489px #FFF , 1907px 372px #FFF , 1248px 1206px #FFF , 1312px 1582px #FFF , 359px 1598px #FFF , 19px 95px #FFF , 43px 1660px #FFF , 43px 1795px #FFF , 1809px 570px #FFF , 335px 1416px #FFF , 681px 1864px #FFF , 1715px 379px #FFF , 1239px 1977px #FFF , 743px 1263px #FFF , 153px 671px #FFF , 111px 450px #FFF , 837px 1612px #FFF , 1627px 1298px #FFF , 120px 934px #FFF , 1345px 914px #FFF , 1427px 1933px #FFF , 1069px 1452px #FFF , 632px 126px #FFF , 719px 342px #FFF , 604px 339px #FFF , 799px 1220px #FFF , 517px 1307px #FFF , 1532px 1407px #FFF , 298px 274px #FFF , 422px 1373px #FFF , 1754px 1421px #FFF , 322px 825px #FFF , 105px 932px #FFF , 872px 1266px #FFF , 1993px 990px #FFF , 791px 1242px #FFF , 892px 1646px #FFF , 317px 1134px #FFF , 254px 264px #FFF , 1927px 1099px #FFF , 767px 1632px #FFF , 72px 1071px #FFF , 1463px 254px #FFF , 1281px 1289px #FFF , 124px 631px #FFF , 1232px 1347px #FFF , 1061px 1656px #FFF , 908px 909px #FFF , 973px 1502px #FFF , 532px 685px #FFF , 1152px 1966px #FFF , 534px 497px #FFF , 1241px 1651px #FFF , 53px 1622px #FFF , 37px 1450px #FFF , 732px 1937px #FFF , 1703px 1162px #FFF , 1977px 551px #FFF , 1577px 65px #FFF , 247px 478px #FFF , 1997px 965px #FFF , 1030px 1172px #FFF , 1936px 1906px #FFF , 820px 1738px #FFF , 1790px 1280px #FFF , 1222px 372px #FFF , 778px 794px #FFF , 1267px 837px #FFF , 1416px 1854px #FFF , 1898px 1121px #FFF , 828px 1465px #FFF , 378px 620px #FFF , 1645px 1959px #FFF , 149px 589px #FFF , 662px 1527px #FFF , 1837px 1418px #FFF , 917px 769px #FFF , 278px 1618px #FFF , 1164px 1687px #FFF , 180px 301px #FFF , 593px 1344px #FFF , 304px 1032px #FFF , 501px 1320px #FFF , 1311px 1608px #FFF , 1371px 1343px #FFF , 1967px 222px #FFF , 538px 1644px #FFF , 1795px 1801px #FFF , 343px 1296px #FFF , 1679px 162px #FFF , 19px 1569px #FFF , 664px 515px #FFF , 818px 879px #FFF , 83px 105px #FFF , 1971px 1111px #FFF , 1286px 1903px #FFF , 130px 1195px #FFF , 1986px 1997px #FFF , 1101px 198px #FFF , 1832px 1759px #FFF;
        }

        #stars3 {
            width: 3px;
            height: 3px;
            background: transparent;
            box-shadow: 1279px 764px #FFF , 647px 1634px #FFF , 1040px 733px #FFF , 1982px 11px #FFF , 1792px 535px #FFF , 1863px 1026px #FFF , 69px 271px #FFF , 449px 223px #FFF , 1178px 199px #FFF , 602px 1280px #FFF , 1538px 1602px #FFF , 789px 1235px #FFF , 595px 544px #FFF , 1396px 83px #FFF , 1590px 914px #FFF , 1162px 1889px #FFF , 1032px 1728px #FFF , 1216px 1693px #FFF , 1521px 296px #FFF , 855px 866px #FFF , 1334px 497px #FFF , 535px 516px #FFF , 1363px 1391px #FFF , 1987px 1246px #FFF , 550px 1504px #FFF , 656px 640px #FFF , 876px 1583px #FFF , 793px 488px #FFF , 82px 1186px #FFF , 577px 630px #FFF , 952px 755px #FFF , 384px 674px #FFF , 1249px 1752px #FFF , 916px 750px #FFF , 1696px 1145px #FFF , 1468px 790px #FFF , 1204px 229px #FFF , 1078px 1947px #FFF , 1734px 1079px #FFF , 705px 290px #FFF , 2px 318px #FFF , 923px 300px #FFF , 419px 1139px #FFF , 1070px 1615px #FFF , 23px 203px #FFF , 52px 464px #FFF , 13px 1800px #FFF , 1527px 39px #FFF , 184px 1037px #FFF , 752px 1510px #FFF , 1519px 1529px #FFF , 471px 393px #FFF , 49px 1057px #FFF , 717px 682px #FFF , 855px 680px #FFF , 1780px 1776px #FFF , 527px 802px #FFF , 278px 1240px #FFF , 283px 1949px #FFF , 1058px 1752px #FFF , 1806px 1845px #FFF , 1909px 1405px #FFF , 1750px 700px #FFF , 1250px 137px #FFF , 1587px 521px #FFF , 1151px 1980px #FFF , 406px 1439px #FFF , 1599px 1139px #FFF , 1746px 676px #FFF , 826px 547px #FFF , 1599px 186px #FFF , 1713px 1182px #FFF , 1445px 710px #FFF , 1941px 1140px #FFF , 1205px 1509px #FFF , 467px 1566px #FFF , 109px 1840px #FFF , 1552px 1742px #FFF , 443px 895px #FFF , 1920px 982px #FFF , 857px 390px #FFF , 227px 691px #FFF , 1353px 1068px #FFF , 985px 1513px #FFF , 1216px 1399px #FFF , 941px 332px #FFF , 1802px 1962px #FFF , 145px 1427px #FFF , 1349px 1772px #FFF , 651px 844px #FFF , 1593px 995px #FFF , 1651px 1859px #FFF , 648px 1014px #FFF , 678px 611px #FFF , 309px 490px #FFF , 465px 785px #FFF , 1934px 648px #FFF , 1296px 923px #FFF , 1952px 1645px #FFF , 1488px 1875px #FFF;
            animation: animStar 150s linear infinite;
        }
        #stars3:after {
            content: " ";
            position: absolute;
            top: 2000px;
            width: 3px;
            height: 3px;
            background: transparent;
            box-shadow: 1279px 764px #FFF , 647px 1634px #FFF , 1040px 733px #FFF , 1982px 11px #FFF , 1792px 535px #FFF , 1863px 1026px #FFF , 69px 271px #FFF , 449px 223px #FFF , 1178px 199px #FFF , 602px 1280px #FFF , 1538px 1602px #FFF , 789px 1235px #FFF , 595px 544px #FFF , 1396px 83px #FFF , 1590px 914px #FFF , 1162px 1889px #FFF , 1032px 1728px #FFF , 1216px 1693px #FFF , 1521px 296px #FFF , 855px 866px #FFF , 1334px 497px #FFF , 535px 516px #FFF , 1363px 1391px #FFF , 1987px 1246px #FFF , 550px 1504px #FFF , 656px 640px #FFF , 876px 1583px #FFF , 793px 488px #FFF , 82px 1186px #FFF , 577px 630px #FFF , 952px 755px #FFF , 384px 674px #FFF , 1249px 1752px #FFF , 916px 750px #FFF , 1696px 1145px #FFF , 1468px 790px #FFF , 1204px 229px #FFF , 1078px 1947px #FFF , 1734px 1079px #FFF , 705px 290px #FFF , 2px 318px #FFF , 923px 300px #FFF , 419px 1139px #FFF , 1070px 1615px #FFF , 23px 203px #FFF , 52px 464px #FFF , 13px 1800px #FFF , 1527px 39px #FFF , 184px 1037px #FFF , 752px 1510px #FFF , 1519px 1529px #FFF , 471px 393px #FFF , 49px 1057px #FFF , 717px 682px #FFF , 855px 680px #FFF , 1780px 1776px #FFF , 527px 802px #FFF , 278px 1240px #FFF , 283px 1949px #FFF , 1058px 1752px #FFF , 1806px 1845px #FFF , 1909px 1405px #FFF , 1750px 700px #FFF , 1250px 137px #FFF , 1587px 521px #FFF , 1151px 1980px #FFF , 406px 1439px #FFF , 1599px 1139px #FFF , 1746px 676px #FFF , 826px 547px #FFF , 1599px 186px #FFF , 1713px 1182px #FFF , 1445px 710px #FFF , 1941px 1140px #FFF , 1205px 1509px #FFF , 467px 1566px #FFF , 109px 1840px #FFF , 1552px 1742px #FFF , 443px 895px #FFF , 1920px 982px #FFF , 857px 390px #FFF , 227px 691px #FFF , 1353px 1068px #FFF , 985px 1513px #FFF , 1216px 1399px #FFF , 941px 332px #FFF , 1802px 1962px #FFF , 145px 1427px #FFF , 1349px 1772px #FFF , 651px 844px #FFF , 1593px 995px #FFF , 1651px 1859px #FFF , 648px 1014px #FFF , 678px 611px #FFF , 309px 490px #FFF , 465px 785px #FFF , 1934px 648px #FFF , 1296px 923px #FFF , 1952px 1645px #FFF , 1488px 1875px #FFF;
        }
        @keyframes animStar {
            from {
                transform: translateY(0px);
            }
            to {
                transform: translateY(-2000px);
            }
        }


    </style>

</head>
<body>

<div id='stars'></div>
<div id='stars2'></div>
<div id='stars3'></div>

<div class="login-box">
    <h2>Login</h2>
    <form>
        <div class="user-box">
            <input id="signup-email" type="email" name="email" required="">
            <label>Email</label>
        </div>
        <div class="user-box">
            <input id="signup-password" type="password" name="pswd" required="">
            <label>Password</label>
        </div>
        <a id="btn-signup" href="#">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            Submit
        </a>
    </form>
</div>

<script type = text/javascript>
    function validateSignUpForm() {
        var email = $("#signup-email").val();
        var password = $("#signup-password").val();

        var error = "";
        if (!email) {
            error += "Email is Empty";
        }
        if (!password) {
            error += "Password is empty";
        }

        if (password.length <= 3) {
            error += "Password Length Must Be Greater Than 3 Characters";
        }

        $("#signup-error").html(error);

        if (error.length > 0) {
            return false;
        }

        return true;
    }

    $("#btn-signup").click(function () {
        var isFormValid = validateSignUpForm();
        if (isFormValid) {
            $("#signup-error").hide();
            var email = $("#signup-email").val();
            var password = $("#signup-password").val();

            var user = {
                "email": email,
                "password": password
            };

            $.ajax({
                type: "post",
                url: "/login/welcome",
                data: JSON.stringify(user),
                success: function (response) {
                    if (!!response) {
                        if (response.is_Loggedin === true) {
                            location.href = "/user/welcome";
                            alert(response.message);
                        } else {
                            $("#signup-error").html(response.message);
                            alert(response.message);
                        }
                    }
                },
                contentType: 'application/json'
            });

        } else {
            $("#signup-error").show();
        }

    });
</script>


</body>
</html>
