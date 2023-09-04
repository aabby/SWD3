-- 測試煉妖壺中的妮可
GameData.Char[8246] = {
    ENABLE = true ,
    Name = 'NAME2' ,
    MapID = 22, x = 12, y = 36 ,
    ACT = 2,    QQ = 0, DIR = 5 ,
    Script = 'test_newText' ,
    SHADOW = true , FACE = true ,
    PIC_CYCLE = true ,  Penetrate = true ,
}
function Scene.test_newText()
    local select
    Scene.Print_W(1,9007,10*2,4*2,StringDB('ESS972')) -- ESS=魔鬼的密碼是：%N%B　(1) ⅨⅨⅨ....
    ESC.WaitDLG(1)
    select = ESC.GetBTNSelect()
    log('select='..tostring(select))
    ESC.Menu("List",{"A1","B2","C3","D4","E5","F6","G7","H8","I9","J0"})
    select = ESC.GetMENUSelect()
    log('select='..tostring(select))

    if true then return end
    ESC.DLGNoPass()
    ESC.DLGNoFrame()
    Scene.Print_LF ( 1,9009,180,5,18,6,'%C6'..StringDB('ESS1393')) -- ESS=哈哈哈！%N賽特呀，你可終於來啦！
    ESC.WaitDLG(1)

    Scene.GetItem(824, '%T824.')

    Scene.RoadFlag(StringDB('ESS6986')) -- ESS= DOMO工作室
    -- 超長
    Scene.MAIN_TALKS_3(2, 9,39, StringDB('ESStest6'))
    Scene.M_PrintW_C(1, 9, 4, StringDB('ESS7089')) -- ESS=我記得失傳的是：%N%B詩經.／%B書經...
    ESC.MBOn(15, 11, 1, 140-10, 390-30, 32*11+30, 6*11+45)
    ESC.AddHead(10015, 0, 560, 460)
    ESC.DLGNoFrame()
    ESC.DLGHoldTime(-1)
    ESC.DLGNoPass()
    Scene.Print_SL(1,9007,140-10,390-20,32,8,'%S0%C5%C3'..StringDB('ESS4360')) -- ESS=（阿拉伯語）%C5%N　　賽特，%N　　...
    ESC.WaitDLG(1)
    ESC.MBOff(15, 0)
    ESC.DelHead(10015, 0)

    ESC.DLGNoPass()
    ESC.DLGHoldTime(10)
    ESC.DLGNoCloseKey()
    ESC.DLGNoFrame()
    Scene.Print_SL(300,9009,240,200,2*8,6,'%S0%C5'..StringDB('ESS6751')) -- ESS=孤燈不眠思欲絕，卷帷望月空長嘆美人如花隔...

    ESC.Caption(-1)
    Scene.Print_W(-1,9007,6*2,2*2,StringDB('ESS472')) -- ESS=對…對不起，%N沒有茶了…
    ESC.WaitDLG(-1)
    ESC.DLGClose(300)

    Scene.MAIN_TALKS_3(2, 9,39, StringDB('ESStest4'))
    Scene.Print_W(-1,9005,10*2,5*2,StringDB('ESS5394')) -- ESS=對了，我瞧你的一身打扮，想必是一個俠客，...
    ESC.WaitDLG(-1)
    Scene.Print_W(-1,9005,9*2,4*2,StringDB('ESS5395')) -- ESS=順帶提點你些，聽說四把太皇刀的其中一把在...
    ESC.WaitDLG(-1)



    ESC.Caption(1)
    Scene.Print_W(1,9007,8*2,4*2,StringDB('ESS731')) -- ESS=有了！%N就這一塊墓碑最詭異，上頭一個字...
    ESC.WaitDLG(1)


    Scene.Question(1, StringDB('ESS732')) -- ESS=背後還有一個拉環，拉起來看看？
    select = ESC.GetBTNSelect()
    log('select='..tostring(select))
    if select==2 then return end

    -- 多選題
    Scene.KeyInNumber(1, StringDB('ESS3647')) -- ESS=兒子得到其中的幾份？
    select = ESC.GetBTNSelect()
    log('select='..tostring(select))
    -- 時間超長
    ESC.Caption(-1)
    ESC.DLGHoldTime(30)
    ESC.DLGNoCloseKey()
    Scene.Print_W(-1,9005,10*2,3*2,StringDB('ESS5271')) -- ESS=這位小兄弟，要不買點肉啊？告訴你喔！我豬...
    ESC.WaitDLG(-1)

    Scene.RoadFlag(StringDB('ESS3988')) -- ESS=　石國民房

    -- 換行排版
    ESC.Caption(-1)
     Scene.Print_W(-1,9005,22,8,StringDB('ESS5157')) -- ESS=茂陵柏森森　劉徹葬於斯有幸得良將　功勳震...
    ESC.WaitDLG(-1)


    Scene.AutoPrint_C(-1, StringDB('ESS5156')) -- ESS=老朽真不希望皇上會像埋在西南方的漢武帝劉...


    Scene.MAIN_TALKS_3(2, 9,39, StringDB('ESStest4'),1)
    --Scene.MAIN_TALKS_4(1, 11, 10, StringDB('ESS6639'))
    Scene.MAIN_TALKS_3(2, 9, 1, StringDB('ESStest1'),3)
    Scene.MAIN_TALKS_3(2, 9, 3, StringDB('ESStest5'),3)

    Scene.MAIN_TALKS_3(2, 9,25, StringDB('ESStest3'),3)

    Scene.MAIN_TALKS_3(2, 9, 9, StringDB('ESStest2'),2)
end
