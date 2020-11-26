objectdef shkexampleSession
{
    variable taskmanager TaskManager=${LMAC.NewTaskManager["hkexample"]}

    method Initialize()
    {
        LGUI2:AddBinding["$$>
        {
            "name":"test",
            "controls":"Z",
            "modifiers":"alt",
            "eventHandler":{
                "type":"task",
                "taskManager":"hkexample",
                "task":{
                    "type":"ls1.code",
                    "start":"echo test hotkey Start (press)",
                    "continue":"echo test hotkey Continue (hold)",
                    "stop":"echo test hotkey Stop (release)",
                }
            }
        }
        <$$"]
    }

    method Shutdown()
    {
        LGUI2:RemoveBinding[test]
    }
}

variable(global) shkexampleSession SHKExampleSession

function main()
{
    while 1
        waitframe
}