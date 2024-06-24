Config = {
    Key = 'F1',
    Items = {
       {
            id = 'phone',
            label = 'Telefon',
            icon = 'phone',
            item = {
                name = 'phone',
                count = 1
            },
         --   onClick = function()
            --    TriggerEvent("sf-phone:open", false, false, true)
           -- end,
            canAdd = function()
                return true
            end,
            closeMenu = true
        },
      --[[  {
            id = 'crimemdt',
            label = 'Tablet Crime',
            icon = 'far fa-tablet',
            onClick = function()
                -- exports['w_organizationsmdt']:open()
                exports["w_organizationsmdt"]:openTablet()
            end,
            canAdd = function()
                return string.find(ESX.PlayerData.hiddenjob.name, 'org') or string.find(ESX.PlayerData.hiddenjob.name, 'gang')
            end,
            closeMenu = true
        },--]]
        {
            id = 'animations',
            label = 'Animacje',
            icon = 'far fa-face-smile',
            --onClick = function()
            --    exports['w_animations']:OpenAnimations()
          --  end,
            canAdd = function()
                return true
            end,
            closeMenu = true
        },
        {
            id = 'stats',
            label = 'Statystyki',
            icon = 'fas fa-medal',
        --    onClick = function()
         --       exports['w_skills']:Open()
         --   end,
            canAdd = function()
                return true
            end,
            closeMenu = true
        },
        {
            id = 'achivements',
            label = 'Osiągnięcia',
            icon = 'fas fa-medal',
          --  onClick = function()
            --    exports['w_achivements']:OpenAchivements()
           -- end,
            canAdd = function()
                return true
            end,
            closeMenu = true
        },
        {
            id = 'identificators',
            label = 'Identyfikatory',
            icon = 'far fa-envelope',
            items = {
                {
                    id = "identificators-dowod",
                    label = 'Dowód',
                    icon = "fas fa-id-card",
                   -- onClick = function()
                  --      exports['w_rpchat']:ShowDocument('idcard')
                  --  end,
                    closeMenu = true,
                },
                {
                    id = "identificators-wizytowka",
                    label = 'Wizytówka',
                    icon = "fas fa-id-card",
                  --  onClick = function()
                  --      exports['w_rpchat']:ShowDocument('wiz')
                 --   end,
                    closeMenu = true,
                },
                {
                    id = "identificators-odznaka",
                    label = 'Odznaka',
                    icon = "fas fa-id-card",
               --    onClick = function()
                --       exports['w_rpchat']:ShowDocument('odznaka')
                --    end,
                    canAdd = function()
                        return ESX.PlayerData.job.name == 'police' or ESX.PlayerData.job.name == 'ambulance' or ESX.PlayerData.job.name == 'doj' or ESX.PlayerData.job.name == 'usms'
                    end,
                    closeMenu = true,
                },
            }
        },
        {
            id = 'clothing-menu',
            label = 'Menu ubrań',
            icon = 'far fa-shirt',
            items = {
                {
                    id = "clothing-menu-mask",
                    -- label = 'Maska',
                    icon = "fas fa-mask",
                --     onClick = function()
                --         exports['w_clothing']:TakeOff('mask')
                --     end,
                    closeMenu = false,
                },
                {
                    id = "clothing-menu-hat",
                    -- label = 'Czapka',
                    icon = "fas fa-hat-cowboy",
               --      onClick = function()
                 --        exports['w_clothing']:TakeOff('hat')
                 --    end,
                    closeMenu = false,
                },
                {
                    id = "clothing-menu-glasses",
                    -- label = 'Okulary',
                    icon = "fas fa-glasses",
                --     onClick = function()
                --         exports['w_clothing']:TakeOff('glasses')
                 --    end,
                    closeMenu = false,
                },
                {
                    id = "clothing-menu-chain",
                    -- label = 'Łańcuch',
                    icon = "fas fa-link",
                 --    onClick = function()
                  --       exports['w_clothing']:TakeOff('chain')
                  --   end,
                    closeMenu = false,
                },
                {
                    id = "clothing-menu-zegarek",
                    -- label = 'Lewa Ręka',
                    icon = "fas fa-watch",
                  --   onClick = function()
                 --        exports['w_clothing']:TakeOff('zegarek')
                 --    end,
                    closeMenu = false,
                },
                {
                    id = "clothing-menu-branzoleta",
                    -- label = 'Prawa Ręka',
                    icon = "far fa-circle",
                 --    onClick = function()
                 --        exports['w_clothing']:TakeOff('branzoleta')
                 --    end,
                    closeMenu = false,
                },
                {
                    id = "clothing-menu-tshirt",
                    -- label = 'Tshirt',
                    icon = "fas fa-shirt",
                --     onClick = function()
                 --        exports['w_clothing']:TakeOff('tshirt')
                 --    end,
                    closeMenu = false,
                },
                {
                    id = "clothing-menu-coat",
                    -- label = 'Tułów',
                    icon = "coat",
                 --    onClick = function()
                 --        exports['w_clothing']:TakeOff('coat')
                  --   end,
                    closeMenu = false,
                },
                {
                    id = "clothing-menu-legs",
                    -- label = 'Spodnie',
                    icon = "pants",
                 --    onClick = function()
                 --        exports['w_clothing']:TakeOff('legs')
                 --    end,
                    closeMenu = false,
                },
                {
                    id = "clothing-menu-shoes",
                    -- label = 'Buty',
                    icon = "fas fa-boot",
                --     onClick = function()
                --         exports['w_clothing']:TakeOff('shoes')
                --     end,
                    closeMenu = false,
                },
                {
                    id = "clothing-menu-bag",
                    -- label = 'Plecak/Torba',
                    icon = "fas fa-backpack",
              --       onClick = function()
              --           exports['w_clothing']:TakeOff('bag')
               --      end,
                    closeMenu = false,
                },
                {
                    id = "clothing-menu-kamizelka",
                    -- label = 'Kamizelka',
                    icon = "fas fa-shield",
               --      onClick = function()
                --         exports['w_clothing']:TakeOff('kamizelka')
               --      end,
                    closeMenu = false,
                },
                {
                    id = "clothing-menu-hairunderhat",
                    -- label = 'Schowaj włosy pod czapkę',
                    icon = "hairunderhat",
               --      onClick = function()
               --          exports['w_clothing']:TakeOff('hairunderhat')
              --       end,
                    closeMenu = false,
                },
                {
                    id = "clothing-menu-faceundermask",
                    -- label = 'Schowaj twarz pod maskę',
                    icon = "fas fa-face-smile",
                 --   onClick = function()
                  --       exports['w_clothing']:TakeOff('faceundermask')
                  --   end,
                    closeMenu = false,
                },
            }
        },
    --[[    {
            id = 'job-menu-ambulance',
            label = 'Menu Pracy (EMS)',
            icon = 'far fa-user-doctor',
            job = {
                name = 'ambulance',
                grade = 0
            },
            canAdd = function()
                return ESX.PlayerData.metadata['duty'] == 1
            end,
            items = {
                {
                    id = 'job-menu-ambulance-tablet',
                    label = 'Tablet',
                    icon = 'far fa-tablet',
                    onClick = function()
                        exports['w_emsmdt']:open()
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
                {
                    id = 'job-menu-ambulance-heal',
                    label = 'Ulecz',
                    icon = 'far fa-bandage',
                    canAdd = function()
                        return true
                    end,
                    items = {
                        {
                            id = 'job-menu-ambulance-heal-small',
                            label = 'Małe rany',
                            icon = 'far fa-suitcase-medical',
                            canAdd = function()
                                return true
                            end,
                            onClick = function()
                                exports['w_ambulancejob']:HealClosestPlayer('small')
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-ambulance-heal-big',
                            label = 'Duże rany',
                            icon = 'far fa-suitcase-medical',
                            canAdd = function()
                                return true
                            end,
                            onClick = function()
                                exports['w_ambulancejob']:HealClosestPlayer('big')
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-ambulance-heal-revive',
                            label = 'RKO',
                            icon = 'far fa-suitcase-medical',
                            canAdd = function()
                                return true
                            end,
                            onClick = function()
                                exports['w_ambulancejob']:HealClosestPlayer('revive')
                            end,
                            closeMenu = true
                        }
                    }
                },
                {
                    id = 'job-menu-ambulance-examine',
                    label = 'Zbadaj',
                    icon = 'far fa-magnifying-glass',
                    onClick = function()
                        exports['w_ambulancejob']:ExamineClosestPlayer()
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
                {
                    id = "job-menu-ambulance-vehicle-interactions",
                    label = "Interakcje z pojazdem",
                    icon = "fas fa-car",
                    items = {
                        {
                            id = 'job-menu-ambulance-vehicle-interactions-impound',
                            label = 'Odholuj',
                            icon = 'fas fa-truck-tow',
                            onClick = function()
                                exports['w_mechanicjob']:ImpoundVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                    }
                },
                {
                    id = "job-menu-ems-radio",
                    label = "Radio",
                    icon = "fas fa-walkie-talkie",
                    item = {
                        name = 'radio',
                        count = 1
                    },
                    items = {
                        {
                            id = 'job-menu-ems-radio-1',
                            label = 'EMS #1',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("9")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-ems-radio-2',
                            label = 'EMS #2',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("10")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-ems-radio-3',
                            label = 'EMS #3',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("11")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-ems-radio-4',
                            label = 'EMS #4',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("12")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                    },
                    canAdd = function()
                        return true
                    end
                }
            }
        },
        {
            id = 'job-menu-police',
            label = 'Menu Pracy (LSPD)',
            icon = 'far fa-user-police',
            job = {
                name = 'police',
                grade = 0
            },
            canAdd = function()
                return ESX.PlayerData.metadata['duty'] == 1
            end,
            items = {
                {
                    id = 'job-menu-police-tablet',
                    label = 'Tablet',
                    icon = 'far fa-tablet',
                    onClick = function()
                        exports['w_lspdmdt']:OpenMDT()
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
                {
                    id = "job-menu-police-objects",
                    label = "Przedmioty do postawienia",
                    icon = "fas fa-boxes-stacked",
                    items = {
                        {
                            id = 'job-menu-police-objects-roadcone',
                            label = 'Pachołek',
                            icon = 'fas fa-traffic-cone',
                            onClick = function()
                                exports['w_core']:SpawnObject('prop_roadcone02a')
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-police-objects-stinger',
                            label = 'Kolczatka',
                            icon = 'fas fa-ruler',
                            onClick = function()
                                exports['w_core']:SpawnObject('p_ld_stinger_s')
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-police-objects-barrier',
                            label = 'Barierka',
                            icon = 'barrier',
                            onClick = function()
                                exports['w_core']:SpawnObject('prop_barrier_work06a')
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        }
                    },
                    canAdd = function()
                        return not IsPedSittingInAnyVehicle(PlayerPedId())
                    end
                },
                {
                    id = "job-menu-police-vehicle-interactions",
                    label = "Interakcje z pojazdem",
                    icon = "fas fa-car",
                    items = {
                        {
                            id = 'job-menu-police-vehicle-interactions-unlock',
                            label = 'Odblokuj',
                            icon = 'fas fa-key',
                            onClick = function()
                                exports['w_policejob']:UnlockVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-police-vehicle-interactions-impound',
                            label = 'Odholuj',
                            icon = 'fas fa-truck-tow',
                            onClick = function()
                                exports['w_policejob']:ImpoundVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-police-vehicle-interactions-impoundpoliceparking',
                            label = 'Odholuj na parking policyjny',
                            icon = 'fas fa-truck-tow',
                            onClick = function()
                                exports['w_policejob']:ImpoundVehiclePoliceParking()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-police-vehicle-interactions-checkvin',
                            label = 'Sprawdź numer VIN pojazdu',
                            icon = 'fas fa-language',
                            onClick = function()
                                exports['w_policejob']:CheckVehicleVIN()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        }
                    },
                    canAdd = function()
                        return not IsPedSittingInAnyVehicle(PlayerPedId())
                    end
                },
                {
                    id = "job-menu-police-radio",
                    label = "Radio",
                    icon = "fas fa-walkie-talkie",
                    item = {
                        name = 'radio',
                        count = 1
                    },
                    items = {
                        {
                            id = 'job-menu-police-radio-1',
                            label = 'LSPD #1',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("1")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-police-radio-2',
                            label = 'LSPD #2',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("2")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-police-radio-3',
                            label = 'LSPD #3',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("3")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-police-radio-4',
                            label = 'LSPD #4',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("4")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-police-radio-5',
                            label = 'LSPD #5',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("5")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-police-radio-6',
                            label = 'LSPD #6',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("6")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-police-radio-7',
                            label = 'LSPD #7',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("7")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-police-radio-8',
                            label = 'LSPD #8',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("8")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                    },
                    canAdd = function()
                        return true
                    end
                }
            }
        },
        {
            id = 'job-menu-bennys',
            label = 'Menu Pracy (BENNYS)',
            icon = 'far fa-wrench',
            job = {
                name = 'bennys',
                grade = 0
            },
            canAdd = function()
                return ESX.PlayerData.metadata['duty'] == 1
            end,
            items = {
                {
                    id = 'job-menu-bennys-tablet',
                    label = 'Tablet',
                    icon = 'far fa-tablet',
                    onClick = function()
                        exports["w_mechanicmdt"]:open()
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
                {
                    id = "job-menu-bennys-vehicle-interactions",
                    label = "Interakcje z pojazdem",
                    icon = "fas fa-car",
                    items = {
                        {
                            id = 'job-menu-bennys-vehicle-interactions-fix-engine',
                            label = 'Napraw silnik pojazdu',
                            icon = 'fas fa-engine',
                            onClick = function()
                                exports['w_mechanicjob']:FixVehicle(nil, 'Engine')
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-bennys-vehicle-interactions-fix-body',
                            label = 'Napraw karoserie pojazdu',
                            icon = 'fas fa-car',
                            onClick = function()
                                exports['w_mechanicjob']:FixVehicle(nil, 'Body')
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-bennys-vehicle-interactions-install-antilag',
                            label = 'Zamontuj aktywny wydech [$75000]',
                            icon = 'fas fa-engine',
                            onClick = function()
                                exports['w_antilag']:InstallAntiLag()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-bennys-vehicle-interactions-uninstall-antilag',
                            label = 'Zdemontuj aktywny wydech',
                            icon = 'fas fa-engine',
                            onClick = function()
                                exports['w_antilag']:UninstallAntiLag()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-bennys-vehicle-interactions-impound',
                            label = 'Odholuj',
                            icon = 'fas fa-truck-tow',
                            onClick = function()
                                exports['w_mechanicjob']:ImpoundVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-bennys-vehicle-interactions-unlock',
                            label = 'Odblokuj',
                            icon = 'fas fa-unlock',
                            onClick = function()
                                exports['w_mechanicjob']:UnlockVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-bennys-vehicle-interactions-clean',
                            label = 'Umyj pojazd',
                            icon = 'fas fa-car-wash',
                            onClick = function()
                                exports['w_mechanicjob']:CleanVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                    },
                    canAdd = function()
                        return not IsPedSittingInAnyVehicle(PlayerPedId())
                    end
                },
                {
                    id = "job-menu-bennys-vehicle-interactions-tuningmenu",
                    label = "Tuning Menu",
                    icon = "fas fa-hammer",
                    onClick = function()
                        TriggerEvent('w_tuning:OpenTuningMenu')
                    end,
                    canAdd = function()
                        return IsPedSittingInAnyVehicle(PlayerPedId()) and exports['w_mechanicjob']:IsInsideTuningZone()
                    end,
                    closeMenu = true
                },
                {
                    id = 'job-menu-bennys-vehicle-interactions-checkvin',
                    label = 'Sprawdź numer VIN pojazdu',
                    icon = 'fas fa-language',
                    onClick = function()
                        exports['w_policejob']:CheckVehicleVIN()
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
                {
                    id = 'job-menu-bennys-vehicle-interactions-cancelmission',
                    label = 'Anuluj zlecenie',
                    icon = 'fas fa-user',
                    onClick = function()
                        exports['w_mechanicjob']:CancelMission()
                    end,
                    canAdd = function()
                        return exports['w_mechanicjob']:ActiveMission()
                    end,
                    closeMenu = true
                },
                {
                    id = "job-menu-bennys-radio",
                    label = "Radio",
                    icon = "fas fa-walkie-talkie",
                    item = {
                        name = 'radio',
                        count = 1
                    },
                    items = {
                        {
                            id = 'job-menu-bennys-radio-1',
                            label = 'BENNYS #1',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("15")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-bennys-radio-2',
                            label = 'BENNYS #2',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("16")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                    },
                    canAdd = function()
                        return true
                    end
                }
            }
        },
        {
            id = 'job-menu-lsc',
            label = 'Menu Pracy (LSC)',
            icon = 'far fa-wrench',
            job = {
                name = 'lsc',
                grade = 0
            },
            canAdd = function()
                return ESX.PlayerData.metadata['duty'] == 1
            end,
            items = {
                {
                    id = 'job-menu-lsc-tablet',
                    label = 'Tablet',
                    icon = 'far fa-tablet',
                    onClick = function()
                        exports["w_mechanicmdt"]:open()
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
                {
                    id = "job-menu-lsc-vehicle-interactions",
                    label = "Interakcje z pojazdem",
                    icon = "fas fa-car",
                    items = {
                        {
                            id = 'job-menu-lsc-vehicle-interactions-fix-engine',
                            label = 'Napraw silnik pojazdu',
                            icon = 'fas fa-engine',
                            onClick = function()
                                exports['w_mechanicjob']:FixVehicle(nil, 'Engine')
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-lsc-vehicle-interactions-fix-body',
                            label = 'Napraw karoserie pojazdu',
                            icon = 'fas fa-car',
                            onClick = function()
                                exports['w_mechanicjob']:FixVehicle(nil, 'Body')
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-lsc-vehicle-interactions-install-antilag',
                            label = 'Zamontuj aktywny wydech [$75000]',
                            icon = 'fas fa-engine',
                            onClick = function()
                                exports['w_antilag']:InstallAntiLag()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-lsc-vehicle-interactions-uninstall-antilag',
                            label = 'Zdemontuj aktywny wydech',
                            icon = 'fas fa-engine',
                            onClick = function()
                                exports['w_antilag']:UninstallAntiLag()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-lsc-vehicle-interactions-impound',
                            label = 'Odholuj',
                            icon = 'fas fa-truck-tow',
                            onClick = function()
                                exports['w_mechanicjob']:ImpoundVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-lsc-vehicle-interactions-unlock',
                            label = 'Odblokuj',
                            icon = 'fas fa-unlock',
                            onClick = function()
                                exports['w_mechanicjob']:UnlockVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-lsc-vehicle-interactions-clean',
                            label = 'Umyj pojazd',
                            icon = 'fas fa-car-wash',
                            onClick = function()
                                exports['w_mechanicjob']:CleanVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                    },
                    canAdd = function()
                        return not IsPedSittingInAnyVehicle(PlayerPedId())
                    end
                },
                {
                    id = "job-menu-lsc-vehicle-interactions-tuningmenu",
                    label = "Tuning Menu",
                    icon = "fas fa-hammer",
                    onClick = function()
                        TriggerEvent('w_tuning:OpenTuningMenu')
                    end,
                    canAdd = function()
                        return IsPedSittingInAnyVehicle(PlayerPedId()) and exports['w_mechanicjob']:IsInsideTuningZone()
                    end,
                    closeMenu = true
                },
                {
                    id = 'job-menu-lsc-vehicle-interactions-checkvin',
                    label = 'Sprawdź numer VIN pojazdu',
                    icon = 'fas fa-language',
                    onClick = function()
                        exports['w_policejob']:CheckVehicleVIN()
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
                {
                    id = 'job-menu-lsc-vehicle-interactions-cancelmission',
                    label = 'Anuluj zlecenie',
                    icon = 'fas fa-user',
                    onClick = function()
                        exports['w_mechanicjob']:CancelMission()
                    end,
                    canAdd = function()
                        return exports['w_mechanicjob']:ActiveMission()
                    end,
                    closeMenu = true
                },
                {
                    id = "job-menu-lsc-radio",
                    label = "Radio",
                    icon = "fas fa-walkie-talkie",
                    item = {
                        name = 'radio',
                        count = 1
                    },
                    items = {
                        {
                            id = 'job-menu-lsc-radio-1',
                            label = 'LSC #1',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("13")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-lsc-radio-2',
                            label = 'LSC #2',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("14")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                    },
                    canAdd = function()
                        return true
                    end
                }
            }
        },
        {
            id = 'job-menu-furios',
            label = 'Menu Pracy (FURIOS)',
            icon = 'far fa-wrench',
            job = {
                name = 'furios',
                grade = 0
            },
            canAdd = function()
                return ESX.PlayerData.metadata['duty'] == 1
            end,
            items = {
                {
                    id = 'job-menu-furios-tablet',
                    label = 'Tablet',
                    icon = 'far fa-tablet',
                    onClick = function()
                        exports["w_mechanicmdt"]:open()
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
                {
                    id = "job-menu-furios-vehicle-interactions",
                    label = "Interakcje z pojazdem",
                    icon = "fas fa-car",
                    items = {
                        {
                            id = 'job-menu-furios-vehicle-interactions-fix-engine',
                            label = 'Napraw silnik pojazdu',
                            icon = 'fas fa-engine',
                            onClick = function()
                                exports['w_mechanicjob']:FixVehicle(nil, 'Engine')
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-furios-vehicle-interactions-fix-body',
                            label = 'Napraw karoserie pojazdu',
                            icon = 'fas fa-car',
                            onClick = function()
                                exports['w_mechanicjob']:FixVehicle(nil, 'Body')
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-furios-vehicle-interactions-install-antilag',
                            label = 'Zamontuj aktywny wydech [$75000]',
                            icon = 'fas fa-engine',
                            onClick = function()
                                exports['w_antilag']:InstallAntiLag()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-furios-vehicle-interactions-uninstall-antilag',
                            label = 'Zdemontuj aktywny wydech',
                            icon = 'fas fa-engine',
                            onClick = function()
                                exports['w_antilag']:UninstallAntiLag()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-furios-vehicle-interactions-impound',
                            label = 'Odholuj',
                            icon = 'fas fa-truck-tow',
                            onClick = function()
                                exports['w_mechanicjob']:ImpoundVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-furios-vehicle-interactions-unlock',
                            label = 'Odblokuj',
                            icon = 'fas fa-unlock',
                            onClick = function()
                                exports['w_mechanicjob']:UnlockVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-furios-vehicle-interactions-clean',
                            label = 'Umyj pojazd',
                            icon = 'fas fa-car-wash',
                            onClick = function()
                                exports['w_mechanicjob']:CleanVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                    },
                    canAdd = function()
                        return not IsPedSittingInAnyVehicle(PlayerPedId())
                    end
                },
                {
                    id = "job-menu-furios-vehicle-interactions-tuningmenu",
                    label = "Tuning Menu",
                    icon = "fas fa-hammer",
                    onClick = function()
                        TriggerEvent('w_tuning:OpenTuningMenu')
                    end,
                    canAdd = function()
                        return IsPedSittingInAnyVehicle(PlayerPedId()) and exports['w_mechanicjob']:IsInsideTuningZone()
                    end,
                    closeMenu = true
                },
                {
                    id = 'job-menu-furios-vehicle-interactions-checkvin',
                    label = 'Sprawdź numer VIN pojazdu',
                    icon = 'fas fa-language',
                    onClick = function()
                        exports['w_policejob']:CheckVehicleVIN()
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
                {
                    id = 'job-menu-furios-vehicle-interactions-cancelmission',
                    label = 'Anuluj zlecenie',
                    icon = 'fas fa-user',
                    onClick = function()
                        exports['w_mechanicjob']:CancelMission()
                    end,
                    canAdd = function()
                        return exports['w_mechanicjob']:ActiveMission()
                    end,
                    closeMenu = true
                },
                {
                    id = "job-menu-furios-radio",
                    label = "Radio",
                    icon = "fas fa-walkie-talkie",
                    item = {
                        name = 'radio',
                        count = 1
                    },
                    items = {
                        {
                            id = 'job-menu-furios-radio-1',
                            label = 'FURIOS #1',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("21")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-furios-radio-2',
                            label = 'FURIOS #2',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("22")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                    },
                    canAdd = function()
                        return true
                    end
                }
            }
        },
        {
            id = 'job-menu-eastc',
            label = 'Menu Pracy (EAST Customs)',
            icon = 'far fa-wrench',
            job = {
                name = 'eastc',
                grade = 0
            },
            canAdd = function()
                return ESX.PlayerData.metadata['duty'] == 1
            end,
            items = {
                {
                    id = 'job-menu-eastc-tablet',
                    label = 'Tablet',
                    icon = 'far fa-tablet',
                    onClick = function()
                        exports["w_mechanicmdt"]:open()
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
                {
                    id = "job-menu-eastc-vehicle-interactions",
                    label = "Interakcje z pojazdem",
                    icon = "fas fa-car",
                    items = {
                        {
                            id = 'job-menu-eastc-vehicle-interactions-fix-engine',
                            label = 'Napraw silnik pojazdu',
                            icon = 'fas fa-engine',
                            onClick = function()
                                exports['w_mechanicjob']:FixVehicle(nil, 'Engine')
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-eastc-vehicle-interactions-fix-body',
                            label = 'Napraw karoserie pojazdu',
                            icon = 'fas fa-car',
                            onClick = function()
                                exports['w_mechanicjob']:FixVehicle(nil, 'Body')
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-eastc-vehicle-interactions-install-antilag',
                            label = 'Zamontuj aktywny wydech [$75000]',
                            icon = 'fas fa-engine',
                            onClick = function()
                                exports['w_antilag']:InstallAntiLag()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-eastc-vehicle-interactions-uninstall-antilag',
                            label = 'Zdemontuj aktywny wydech',
                            icon = 'fas fa-engine',
                            onClick = function()
                                exports['w_antilag']:UninstallAntiLag()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-eastc-vehicle-interactions-impound',
                            label = 'Odholuj',
                            icon = 'fas fa-truck-tow',
                            onClick = function()
                                exports['w_mechanicjob']:ImpoundVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-eastc-vehicle-interactions-unlock',
                            label = 'Odblokuj',
                            icon = 'fas fa-unlock',
                            onClick = function()
                                exports['w_mechanicjob']:UnlockVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-eastc-vehicle-interactions-clean',
                            label = 'Umyj pojazd',
                            icon = 'fas fa-car-wash',
                            onClick = function()
                                exports['w_mechanicjob']:CleanVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                    },
                    canAdd = function()
                        return not IsPedSittingInAnyVehicle(PlayerPedId())
                    end
                },
                {
                    id = "job-menu-eastc-vehicle-interactions-tuningmenu",
                    label = "Tuning Menu",
                    icon = "fas fa-hammer",
                    onClick = function()
                        TriggerEvent('w_tuning:OpenTuningMenu')
                    end,
                    canAdd = function()
                        return IsPedSittingInAnyVehicle(PlayerPedId()) and exports['w_mechanicjob']:IsInsideTuningZone()
                    end,
                    closeMenu = true
                },
                {
                    id = 'job-menu-eastc-vehicle-interactions-checkvin',
                    label = 'Sprawdź numer VIN pojazdu',
                    icon = 'fas fa-language',
                    onClick = function()
                        exports['w_policejob']:CheckVehicleVIN()
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
                {
                    id = 'job-menu-eastc-vehicle-interactions-cancelmission',
                    label = 'Anuluj zlecenie',
                    icon = 'fas fa-user',
                    onClick = function()
                        exports['w_mechanicjob']:CancelMission()
                    end,
                    canAdd = function()
                        return exports['w_mechanicjob']:ActiveMission()
                    end,
                    closeMenu = true
                },
                {
                    id = "job-menu-eastc-radio",
                    label = "Radio",
                    icon = "fas fa-walkie-talkie",
                    item = {
                        name = 'radio',
                        count = 1
                    },
                    items = {
                        {
                            id = 'job-menu-eastc-radio-1',
                            label = 'EASTC #1',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("23")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-eastc-radio-2',
                            label = 'EASTC #2',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("24")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                    },
                    canAdd = function()
                        return true
                    end
                }
            }
        },
        {
            id = 'job-menu-redline',
            label = 'Menu Pracy (Redline)',
            icon = 'far fa-wrench',
            job = {
                name = 'redline',
                grade = 0
            },
            canAdd = function()
                return ESX.PlayerData.metadata['duty'] == 1
            end,
            items = {
                {
                    id = 'job-menu-redline-tablet',
                    label = 'Tablet',
                    icon = 'far fa-tablet',
                    onClick = function()
                        exports["w_mechanicmdt"]:open()
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
                {
                    id = "job-menu-redline-vehicle-interactions",
                    label = "Interakcje z pojazdem",
                    icon = "fas fa-car",
                    items = {
                        {
                            id = 'job-menu-redline-vehicle-interactions-fix-engine',
                            label = 'Napraw silnik pojazdu',
                            icon = 'fas fa-engine',
                            onClick = function()
                                exports['w_mechanicjob']:FixVehicle(nil, 'Engine')
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-redline-vehicle-interactions-fix-body',
                            label = 'Napraw karoserie pojazdu',
                            icon = 'fas fa-car',
                            onClick = function()
                                exports['w_mechanicjob']:FixVehicle(nil, 'Body')
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-redline-vehicle-interactions-install-antilag',
                            label = 'Zamontuj aktywny wydech [$75000]',
                            icon = 'fas fa-engine',
                            onClick = function()
                                exports['w_antilag']:InstallAntiLag()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-redline-vehicle-interactions-uninstall-antilag',
                            label = 'Zdemontuj aktywny wydech',
                            icon = 'fas fa-engine',
                            onClick = function()
                                exports['w_antilag']:UninstallAntiLag()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-redline-vehicle-interactions-impound',
                            label = 'Odholuj',
                            icon = 'fas fa-truck-tow',
                            onClick = function()
                                exports['w_mechanicjob']:ImpoundVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-redline-vehicle-interactions-unlock',
                            label = 'Odblokuj',
                            icon = 'fas fa-unlock',
                            onClick = function()
                                exports['w_mechanicjob']:UnlockVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-redline-vehicle-interactions-clean',
                            label = 'Umyj pojazd',
                            icon = 'fas fa-car-wash',
                            onClick = function()
                                exports['w_mechanicjob']:CleanVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                    },
                    canAdd = function()
                        return not IsPedSittingInAnyVehicle(PlayerPedId())
                    end
                },
                {
                    id = "job-menu-redline-vehicle-interactions-tuningmenu",
                    label = "Tuning Menu",
                    icon = "fas fa-hammer",
                    onClick = function()
                        TriggerEvent('w_tuning:OpenTuningMenu')
                    end,
                    canAdd = function()
                        return IsPedSittingInAnyVehicle(PlayerPedId()) and exports['w_mechanicjob']:IsInsideTuningZone()
                    end,
                    closeMenu = true
                },
                {
                    id = 'job-menu-redline-vehicle-interactions-checkvin',
                    label = 'Sprawdź numer VIN pojazdu',
                    icon = 'fas fa-language',
                    onClick = function()
                        exports['w_policejob']:CheckVehicleVIN()
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
                {
                    id = 'job-menu-redline-vehicle-interactions-cancelmission',
                    label = 'Anuluj zlecenie',
                    icon = 'fas fa-user',
                    onClick = function()
                        exports['w_mechanicjob']:CancelMission()
                    end,
                    canAdd = function()
                        return exports['w_mechanicjob']:ActiveMission()
                    end,
                    closeMenu = true
                },
                {
                    id = "job-menu-redline-radio",
                    label = "Radio",
                    icon = "fas fa-walkie-talkie",
                    item = {
                        name = 'radio',
                        count = 1
                    },
                    items = {
                        {
                            id = 'job-menu-redline-radio-1',
                            label = 'REDLINE #1',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("25")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-redline-radio-2',
                            label = 'REDLINE #2',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("26")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                    },
                    canAdd = function()
                        return true
                    end
                }
            }
        },
        {
            id = 'job-menu-doj',
            label = 'Menu Pracy (DOJ)',
            icon = 'fas fa-scale-unbalanced-flip',
            job = {
                name = 'doj',
                grade = 0
            },
            canAdd = function()
                return ESX.PlayerData.metadata['duty'] == 1
            end,
            items = {
                {
                    id = 'job-menu-doj-tablet',
                    label = 'Tablet',
                    icon = 'far fa-tablet',
                    onClick = function()
                        exports['w_dojmdt']:open()
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
                {
                    id = "job-menu-doj-vehicle-interactions",
                    label = "Interakcje z pojazdem",
                    icon = "fas fa-car",
                    job = {
                        name = 'doj',
                        grade = 2
                    },
                    items = {
                        {
                            id = 'job-menu-doj-vehicle-interactions-impound',
                            label = 'Odholuj',
                            icon = 'fas fa-truck-tow',
                            onClick = function()
                                exports['w_mechanicjob']:ImpoundVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-doj-vehicle-interactions-unlock',
                            label = 'Odblokuj',
                            icon = 'fas fa-unlock',
                            onClick = function()
                                exports['w_mechanicjob']:UnlockVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                    },
                    canAdd = function()
                        return not IsPedSittingInAnyVehicle(PlayerPedId())
                    end
                },
                {
                    id = "job-menu-doj-radio",
                    label = "Radio",
                    icon = "fas fa-walkie-talkie",
                    item = {
                        name = 'radio',
                        count = 1
                    },
                    items = {
                        {
                            id = 'job-menu-doj-radio-1',
                            label = 'DOJ #1',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("17")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-doj-radio-2',
                            label = 'DOJ #2',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("18")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                    },
                    canAdd = function()
                        return true
                    end
                }
            }
        },
        {
            id = 'job-menu-usms',
            label = 'Menu Pracy (USMS)',
            icon = 'fas fa-scale-unbalanced-flip',
            job = {
                name = 'usms',
                grade = 0
            },
            canAdd = function()
                return ESX.PlayerData.metadata['duty'] == 1
            end,
            items = {
                {
                    id = 'job-menu-usms-tablet',
                    label = 'Tablet',
                    icon = 'far fa-tablet',
                    onClick = function()
                        exports['w_usmsmdt']:open()
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
                {
                    id = "job-menu-usms-vehicle-interactions",
                    label = "Interakcje z pojazdem",
                    icon = "fas fa-car",
                    job = {
                        name = 'usms',
                        grade = 0
                    },
                    items = {
                        {
                            id = 'job-menu-usms-vehicle-interactions-impound',
                            label = 'Odholuj',
                            icon = 'fas fa-truck-tow',
                            onClick = function()
                                exports['w_mechanicjob']:ImpoundVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-usms-vehicle-interactions-unlock',
                            label = 'Odblokuj',
                            icon = 'fas fa-unlock',
                            onClick = function()
                                exports['w_mechanicjob']:UnlockVehicle()
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                    },
                    canAdd = function()
                        return not IsPedSittingInAnyVehicle(PlayerPedId())
                    end
                },
                {
                    id = "job-menu-usms-objects",
                    label = "Przedmioty do postawienia",
                    icon = "fas fa-boxes-stacked",
                    items = {
                        {
                            id = 'job-menu-usms-objects-roadcone',
                            label = 'Pachołek',
                            icon = 'fas fa-traffic-cone',
                            onClick = function()
                                exports['w_core']:SpawnObject('prop_roadcone02a')
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-usms-objects-stinger',
                            label = 'Kolczatka',
                            icon = 'fas fa-ruler',
                            onClick = function()
                                exports['w_core']:SpawnObject('p_ld_stinger_s')
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-usms-objects-barrier',
                            label = 'Barierka',
                            icon = 'barrier',
                            onClick = function()
                                exports['w_core']:SpawnObject('prop_barrier_work06a')
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        }
                    },
                    canAdd = function()
                        return not IsPedSittingInAnyVehicle(PlayerPedId())
                    end
                },
                {
                    id = "job-menu-usms-radio",
                    label = "Radio",
                    icon = "fas fa-walkie-talkie",
                    item = {
                        name = 'radio',
                        count = 1
                    },
                    items = {
                        {
                            id = 'job-menu-usms-radio-1',
                            label = 'USMS #1',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("19")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                        {
                            id = 'job-menu-usms-radio-2',
                            label = 'USMS #2',
                            icon = 'fas fa-signal-stream',
                            onClick = function()
                                exports['w_radio']:setRadioChannel("20")
                            end,
                            canAdd = function()
                                return true
                            end,
                            closeMenu = true
                        },
                    },
                    canAdd = function()
                        return true
                    end
                }
            }
        },
        {
            id = 'job-menu-taxi',
            label = 'Menu Pracy (TAXI)',
            icon = 'fas fa-scale-unbalanced-flip',
            job = {
                name = 'taxi',
                grade = 0
            },
            canAdd = function()
                return ESX.PlayerData.metadata['duty'] == 1
            end,
            items = {
                {
                    id = 'job-menu-taxi-ensure-job',
                    label = 'Rozpocznij/Zakończ pracę',
                    icon = 'far fa-user',
                    onClick = function()
                        exports['w_firm-taxi']:EnsureJob()
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
            }
        },
        {
            id = "garages-take",
            label = 'Otwórz garaż',
            icon = 'fas fa-cube',
            onClick = function()
                exports['w_garages']:OpenClosestGarage()
            end,
            canAdd = function()
                return exports['w_garages']:CheckClosestGarage() and not IsPedSittingInAnyVehicle(PlayerPedId())
            end,
            closeMenu = true
        },
        {
            id = "garages-put",
            label = 'Schowaj pojazd',
            icon = 'fas fa-cube',
            onClick = function()
                exports['w_garages']:LeftVehicle()
            end,
            canAdd = function()
                return exports['w_garages']:CheckClosestGarage() and IsPedSittingInAnyVehicle(PlayerPedId())
            end,
            closeMenu = true
        },
        {
            id = "vehicle-menu",
            label = 'Menu pojazdu',
            icon = 'fas fa-car',
            items = {
                {
                    id = "vehicle-menu-radio",
                    label = 'Radio',
                    icon = 'fas fa-radio',
                    onClick = function()
                        ExecuteCommand('radiocar')
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
                {
                    id = "vehicle-menu-vehiclecontrol",
                    label = 'Sterowanie pojazdem',
                    icon = 'fas fa-gears',
                    onClick = function()
                        exports['w_vehiclecontrol']:OpenVehicleControl()
                    end,
                    canAdd = function()
                        return true
                    end,
                    closeMenu = true
                },
            },
            canAdd = function()
                return IsPedSittingInAnyVehicle(PlayerPedId()) and GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId()), -1) == PlayerPedId()
            end
        },--]]
    }
}