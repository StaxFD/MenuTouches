function OpenMenuTouches()
    ---- // ## Crée par Stax ## \\ ----
    local touches = RageUI.CreateMenu("Touches", "Touches du serveur")
    RageUI.Visible(touches, true)
    while touches do
        Citizen.Wait(0)
        RageUI.IsVisible(touches, function()
            for k,v in ipairs(config.touches) do
                RageUI.Button(v.description, nil, {RightLabel = v.button}, true, {
                })
            end
        end)
        if not RageUI.Visible(touches) then 
            touches = RMenu:DeleteType("touches", true)
        end
    end
end

RegisterCommand(config.commande, function()
    OpenMenuTouches()
    ---- // ## Crée par Stax ## \\ ----
end)