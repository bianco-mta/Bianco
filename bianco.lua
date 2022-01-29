IPlist =
    {
        {"Bianco Test Sunucusu", "95.15.209.45"},
        {"UNT Roleplay", "213.226.119.48"},
        {"99 Roleplay", "217.195.202.178"},
    }

objeler = { [5418]="PizzaStack Güncellemesi", [5409]="Petrol Modellemesi", [4550]="LS Gökdelen Exterior", [1952]="Vercetti Estate", [1612]="Vercetti Estate 2"}
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
        link = "https://discordapp.com/api/webhooks/929770738074939393/WIBhpHlvCF-IoWcKrTXN31Daj_fQda_qcOesBv6btofQt_v15NCeRVyjNX0TR5J1-gTo",
        avatar = "https://i.hizliresim.com/ahtuzy9.png", -- if u want to empty, enter nil
        username = "Bianco Object Licence"
    }
    
}
