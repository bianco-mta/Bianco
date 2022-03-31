IPlist =
    {
        {"Bianco Test Sunucusu", "192.168.1.33"},
        {"Rosse Roleplay", "217.195.207.165"},
        {"99 Roleplay", "217.195.207.167"},
        {"Forset Roleplay", "185.148.242.85"},
        {"Vira Roleplay", "213.226.119.26"},
        {"Always Roleplay", "45.131.3.156"},
    }

objeler = { [5418]="PizzaStack Modellemesi", [5409]="Petrol Modellemesi", [4550]="LS Gökdelen Exterior", [1952]="Vercetti Estate", [1612]="Vercetti Estate 2"}
logsuzobjeler = { [1612]=true, [0000]=true}
bulundu = false
function Magic(res)
    name = getServerConfigSetting("servername")
    fetchRemote("https://api.my-ip.io/ip", function(ip)
        --print("IP Kontrol ediliyor....")
        serverip = ip 
    print(ip)
    if tostring(ip) then 
            for i, data in ipairs(IPlist) do
                if data[2] == ip then 
                    data1 = data[1]
                    data2 = data[2]
        print(data2)
                 bulundu = true
                end
            end
                if data2 == ip then 
                     setElementData(root, "biancoguardv22", 1)
                    print ("Bianco Model orjinal model kullandiginiz icin tesekkurler.")
             setTimer(function()
             if logsuzobjeler[objid] then return end
                        sendMessage("paketlog",objeler[objid].." adlı objeyi kullanan server ip :   "  ..ip.." Lisans:  **Var!  ** Server Name : " ..data1.. " **Obje Aktif!**" )
             end, 5000, 1)
              else 
                   print ("Bianco Model çalıntı obje tespit edildi, 10 saniye sonra shutdown atılacak.")
             setTimer(function() 
             shutdown("Bianco Model çalıntı obje tespit edildi.")
                         setTimer(function()    
                 setTimer(function()
                    print("calinti obje tespit edildi")
                    outputChatBox("Bianco Modding İzinsiz Obje Kullanımı!")
                end, 0, 0)
             end, 5000, 1)
             end, 10000, 1)
             setElementData(root, "biancoguardv22", 0)
             setTimer(function()
                 if logsuzobjeler[objid] then return end
                       sendMessage("paketlog",objeler[objid].." adlı objeyi kullanan server ip :   "  ..ip.." Lisans:  **Yok!  ** Server Name : " ..name.. " **Sunucu Kapatıldı!**" )
            end, 5000, 1)
              end
    else 
         print("Baglantı sorunu, birazdan sisteme restart atın!")
    end
    end)    
end
addEventHandler("onResourceStart", resourceRoot, Magic)
Webhooks = {
    ["paketlog"] = {
        link = "https://discord.com/api/webhooks/956649631033471086/IzggNKO2IaeXvU51rxlv4d9nfFqADgtOO4Nfc2hptx-NP3eOCK8yMYgGw1Ke37CPBFEc",
        avatar = "https://i.hizliresim.com/ahtuzy9.png", -- if u want to empty, enter nil
        username = "Bianco Object Licence"
    }
    
}
