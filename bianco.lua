IPlist =
    {
        {"Hypnos Test Sunucusu", "95.70.165.222"},  --Hypnos   
    }

objeler = { [5418]="O ses objesi", [5417]="Test"}
logsuzobjeler = { [5419]=true, [5420]=true}

function Magic(res)
    name = getServerConfigSetting("servername")
    fetchRemote("https://api.my-ip.io/ip", function(ip)
        --print("IP Kontrol ediliyor....")
        serverip = ip 
    if tostring(ip) then 
            for i, data in ipairs(IPlist) do
                if data[2] == ip then 
                data1 = data[1]
                data2 = data[2]
                end
            end
                if tonumber(data2) == tonumber(ip) then 
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
                    outputChatBox("calinti obje tespit edildi.")
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
        link = "https://discord.com/api/webhooks/924017888405377094/XFh6FVdIYlRpXhWIyxqOoyp-W04xaTvXMfbsG3cG0xvHEPQDabernfvbdTi4GaQeOfCN",
        avatar = "https://i.resimyukle.xyz/O1zJST.png", -- if u want to empty, enter nil
        username = "LİSANS"
    }
    
}
