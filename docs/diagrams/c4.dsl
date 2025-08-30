workspace "LifeXP" "Life XP Diagrams" {

    !identifiers hierarchical

    model {
        u = person "User"
        ss = softwareSystem "LifeXP Application" {
            client = container "Frontend" "Server side render XHTML with TypeScript"
            backend = container "Backend" "Azure Functions in Python" {
            }
            db = container "PostgreSQL Database" {
                tags "Database"
            }
            adb2c = container "Azure AD B2C"
        }

        u -> ss.adb2c "Uses"
        u -> ss.client "Uses"
        ss.client -> ss.backend "Communicates with" "HTTPS"
        ss.backend -> ss.db "Reads from and writes to"
    }

    views {
        systemContext ss "Diagram1" {
            include *
            autolayout lr
        }

        container ss "Diagram2" {
            include *
            autolayout lr
        }

        component ss.backend "Diagram3" {
            include *
            autolayout lr
        }

        styles {
            element "Element" {
                color #9a28f8
                stroke #9a28f8
                strokeWidth 7
                shape roundedbox
            }
            element "Person" {
                shape person
            }
            element "Database" {
                shape cylinder
            }
            element "Boundary" {
                strokeWidth 5
            }
            relationship "Relationship" {
                thickness 4
            }
        }
    }

    configuration {
        scope softwaresystem
    }

}