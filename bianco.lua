IPlist =
    {
        {"Bianco Modding Test Server", "88.224.208.98"},  --Bianco  
    }

objeler = { [5418]="O ses objesi", [6205]="GTAVC OceanView"}
logsuzobjeler = { [5419]=true, [1111]=true}
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
                        sendMessage("paketlog","➤**OBJE LİSANSI:  BM V1**\n➤**OBJE ADI:** "..objeler[objid].."\n➤**SUNUCU IP:** "..ip.."\n➤**SUNUCU ADI:** "..data1.."\n➤**OBJE LİSANSI: Onaylandı!** :white_check_mark:\n➤ Orjinal model kullandığınız için teşekkür ederiz!\n
--------------------------------------------------------------------")
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
                       sendMessage("paketlog","➤**OBJE LİSANSI:  BM V1**\n➤**OBJE ADI:** "..objeler[objid].."\n➤**SUNUCU IP:** "..ip.."\n➤**SUNUCU ADI:** "..name.."\n➤**OBJE LİSANSI: Onaylanmadı!** :x:\n➤ İzinsiz/Lisanssız obje kullanımı. Sunucu 10 saniye içerisinde kapatılacak!\n
--------------------------------------------------------------------" )
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
        link = "https://discord.com/api/webhooks/925042825240903751/351Wyy4OB4FWIRDcYAwINh1FobcovSWPuxgCQv2FlmGqwr-h3CNMkEhbbPcy_vCMWviB",
        avatar = "https://i.hizliresim.com/fte7ahz.png", -- if u want to empty, enter nil
        username = "Bianco License V1 ©"
    }
    
}
