
$karten = [xml](Get-content -path "C:\Users\helmut.winkler\Desktop\Daten+\FantasticFactories\FactorieCards.xml")

$stopOnFirstSolution=$true;
$maxUseOfResearch = 4;
$maxUseOfMine = 4;
$maxUseOfGenerate = 4;

# Init of object
$spiel = @{};
$spiel.actionsTaken = New-Object System.Collections.Generic.List``1[System.String]
$spiel.usdeddie = New-Object System.Collections.Generic.List``1[System.Int32]
$spiel.marketplace = New-Object System.Collections.Generic.List``1[System.String]
$spiel.factories = New-Object System.Collections.Generic.List``1[System.String]
$spiel.die = New-Object System.Collections.Generic.List``1[System.Int32]
$spiel.tableau = $false;


# https://www.boardgamegeek.com/thread/2020075/puzzle-artificial-workers

<#+
# https://boardgamegeek.com/thread/2027984/puzzle-adventures-lonely-die-ep-2-finding-friends
$spiel.metal = 0;
$spiel.energy = 2;
$spiel.good = 0;
$spiel.blueprint = 1;

$spiel.marketplace.Add("Robot")
#$spiel.marketplace.Add("Laboratory")
$spiel.marketplace.Add("Trade School")
$spiel.marketplace.Add("Cloning Facility")

$spiel.factories.Add("Foundry")
$spiel.factories.Add("Golem")
$spiel.factories.Add("Robot")
$spiel.factories.Add("Refinery")
$spiel.factories.Add("Power Plant")
$spiel.factories.Add("Concrete Plant")
$spiel.factories.Add("Replicator")
$spiel.factories.Add("Trade School")

$spiel.factories.Add("Research")

$spiel.die.Add(1)
#>

<#+
# https://www.boardgamegeek.com/thread/2020101/puzzle-recycling-fun

$spiel.metal = 0;
$spiel.energy = 0;
$spiel.good = 0;
$spiel.blueprint = 0;

$spiel.tableau = $true;
$spiel.factories.Add("Manufactory")
$spiel.factories.Add("Recycling Plant")
$spiel.factories.Add("Trash Compactor")
$spiel.factories.Add("Golem")
$spiel.factories.Add("Laboratory")

$spiel.die.Add(1)
$spiel.die.Add(3)
$spiel.die.Add(5)
$spiel.die.Add(5)
#>

<#+
# https://boardgamegeek.com/thread/2023834/puzzle-adventures-lonely-die-v2
$spiel = @{};
$spiel.metal = 0;
$spiel.energy = 2;
$spiel.good = 0;
$spiel.blueprint = 0;
$spiel.actionsTaken = New-Object System.Collections.Generic.List``1[System.String]
$spiel.usdeddie = New-Object System.Collections.Generic.List``1[System.Int32]

$spiel.marketplace = New-Object System.Collections.Generic.List``1[System.String]
$spiel.marketplace.Add("Robot")
$spiel.marketplace.Add("Laboratory")
$spiel.marketplace.Add("Incinerator")
$spiel.marketplace.Add("Dojo")

$spiel.factories = New-Object System.Collections.Generic.List``1[System.String]
$spiel.factories.Add("Power Plant")
$spiel.factories.Add("Trade School")
$spiel.factories.Add("Fullfillment Center")
$spiel.factories.Add("Replicator")
$spiel.factories.Add("Golem")
$spiel.factories.Add("Incinerator")
$spiel.factories.Add("Laboratory")
$spiel.factories.Add("Dojo")
$spiel.factories.Add("Refinery")
$spiel.factories.Add("Biolab")
$spiel.factories.Add("Robot")

$spiel.die = New-Object System.Collections.Generic.List``1[System.Int32]
$spiel.die.Add(1)
#>

<#+
# https://boardgamegeek.com/thread/2013945/puzzle-downgrade
$spiel = @{};
$spiel.metal = 0;
$spiel.energy = 0;
$spiel.good = 0;
$spiel.blueprint = 0;
$spiel.actionsTaken = New-Object System.Collections.Generic.List``1[System.String]

$spiel.factories = New-Object System.Collections.Generic.List``1[System.String]
$spiel.factories.Add("Generate")
$spiel.factories.Add("Golem")
$spiel.factories.Add("Dojo")
$spiel.factories.Add("Biolab")
$spiel.factories.Add("Assembly Line")

$spiel.die = New-Object System.Collections.Generic.List``1[System.Int32]
$spiel.die.Add(1)
$spiel.die.Add(3)
$spiel.die.Add(3)
$spiel.die.Add(5)
#>

<#+
# https://boardgamegeek.com/thread/2014895/puzzle-waste-management
$spiel = @{};
$spiel.metal = 1;
$spiel.energy = 1;
$spiel.good = 0;
$spiel.blueprint = 0;
$spiel.actionsTaken = New-Object System.Collections.Generic.List``1[System.String]

$spiel.factories = New-Object System.Collections.Generic.List``1[System.String]
$spiel.factories.Add("Gymnasium")
$spiel.factories.Add("Manufactory")
$spiel.factories.Add("Laboratory")
$spiel.factories.Add("Incinerator")
$spiel.factories.Add("Recycling Plant")
$spiel.factories.Add("Golem")
$spiel.factories.Add("Trash Compactor")
$spiel.factories.Add("Research")

$spiel.die = New-Object System.Collections.Generic.List``1[System.Int32]
$spiel.die.Add(1)
$spiel.die.Add(2)
$spiel.die.Add(4)
$spiel.die.Add(5)
#>

<#+
#https://boardgamegeek.com/thread/2012035/puzzle-artificial-life
$spiel = @{};
$spiel.metal = 0;
$spiel.energy = 1;
$spiel.good = 0;
$spiel.blueprint = 0;
$spiel.actionsTaken = New-Object System.Collections.Generic.List``1[System.String]

$spiel.factories = New-Object System.Collections.Generic.List``1[System.String]
$spiel.factories.Add("Incinerator")
$spiel.factories.Add("Refinery")
$spiel.factories.Add("Power Plant")
$spiel.factories.Add("Manufactory")
$spiel.factories.Add("Concrete Plant")
$spiel.factories.Add("Golem")
$spiel.factories.Add("Robot")
$spiel.factories.Add("Research")
$spiel.factories.Add("Generate")

$spiel.die = New-Object System.Collections.Generic.List``1[System.Int32]
$spiel.die.Add(4)
$spiel.die.Add(6)
$spiel.die.Add(6)
$spiel.die.Add(6)
#>

<#+
#https://boardgamegeek.com/thread/2016014/puzzle-go-big
$spiel = @{};
$spiel.metal = 0;
$spiel.energy = 2;
$spiel.good = 0;
$spiel.blueprint = 0;
$spiel.actionsTaken = New-Object System.Collections.Generic.List``1[System.String]

$spiel.factories = New-Object System.Collections.Generic.List``1[System.String]
$spiel.factories.Add("Battery Factory")
#$spiel.factories.Add("Cloning Facility")
$spiel.factories.Add("Concrete Plant")
$spiel.factories.Add("Dojo")
$spiel.factories.Add("Foundry")
$spiel.factories.Add("Fullfillment Center")
$spiel.factories.Add("Golem")
$spiel.factories.Add("Incinerator")
$spiel.factories.Add("Mega Factory")
$spiel.factories.Add("Motherlode")
#$spiel.factories.Add("Robot")

$spiel.usdeddie = New-Object System.Collections.Generic.List``1[System.Int32]

$spiel.die = New-Object System.Collections.Generic.List``1[System.Int32]
$spiel.die.Add(4)
$spiel.die.Add(1)
$spiel.die.Add(6)
$spiel.die.Add(6)
#>

<#+
#https://boardgamegeek.com/thread/2017122/puzzle-power-cooling
$spiel = @{};
$spiel.metal = 0;
$spiel.energy = 1;
$spiel.good = 0;
$spiel.blueprint = 0;
$spiel.actionsTaken = New-Object System.Collections.Generic.List``1[System.String]

$spiel.factories = New-Object System.Collections.Generic.List``1[System.String]
$spiel.factories.Add("Nuclear Plant")
$spiel.factories.Add("Laboratory")
$spiel.factories.Add("Fullfillment Center")
$spiel.factories.Add("Incinerator")
#$spiel.factories.Add("Generate")
#$spiel.factories.Add("Mine")
#$spiel.factories.Add("Research")
$spiel.factories.Add("Golem")
$spiel.factories.Add("Robot")
$spiel.factories.Add("Cloning Facility")
$spiel.factories.Add("Gymnasium")
$spiel.factories.Add("Concrete Plant")
$spiel.factories.Add("Foundry")
$spiel.factories.Add("University")
$spiel.factories.Add("Power Plant")
#>

<#+
#https://boardgamegeek.com/thread/2017122/puzzle-power-cooling
$spiel = @{};
$spiel.metal = 0;
$spiel.energy = 0;
$spiel.good = 0;
$spiel.blueprint = 0;
$spiel.actionsTaken = New-Object System.Collections.Generic.List``1[System.String]

$spiel.factories = New-Object System.Collections.Generic.List``1[System.String]
$spiel.factories.Add("Biolab")
$spiel.factories.Add("Harvester")
$spiel.factories.Add("Dojo")
$spiel.factories.Add("Golem")
$spiel.factories.Add("Gymnasium")
$spiel.factories.Add("Robot")
$spiel.factories.Add("Generate")
$spiel.factories.Add("Mine")
$spiel.factories.Add("Research")

$spiel.usdeddie = New-Object System.Collections.Generic.List``1[System.Int32]

$spiel.die = New-Object System.Collections.Generic.List``1[System.Int32]
$spiel.die.Add(1)
$spiel.die.Add(3)
$spiel.die.Add(4)
$spiel.die.Add(5)
$spiel.die.Add(6)
#>

#<#+
#https://www.boardgamegeek.com/thread/2488741/my-first-puzzle

$spiel = @{};
$spiel.metal = 0;
$spiel.energy = 1;
$spiel.good = 0;
$spiel.blueprint = 0;
$spiel.actionsTaken = New-Object System.Collections.Generic.List``1[System.String]

$spiel.factories = New-Object System.Collections.Generic.List``1[System.String]
$spiel.factories.Add("Cloning Facility")
$spiel.factories.Add("Incinerator")
$spiel.factories.Add("Dojo")

$spiel.factories.Add("Gymnasium")
$spiel.factories.Add("Golem")
$spiel.factories.Add("Motherlode")

$spiel.factories.Add("Manufactory")
$spiel.factories.Add("Concrete Plant")
$spiel.factories.Add("Fullfillment Center")

$spiel.factories.Add("Laboratory")
$spiel.factories.Add("Robot")

$spiel.tableau = $false;

$spiel.usdeddie = New-Object System.Collections.Generic.List``1[System.Int32]

$spiel.die = New-Object System.Collections.Generic.List``1[System.Int32]
$spiel.die.Add(1)
$spiel.die.Add(2)
$spiel.die.Add(3)
$spiel.die.Add(5)

#>


# if tableau is there add these action
if ($spiel.tableau)
{
    $spiel.factories.Add("Generate")
    $spiel.factories.Add("Mine")
    $spiel.factories.Add("Research")
}

$global:spielResults = New-Object System.Collections.Generic.List``1[System.Object];

# At first check how many goods we are able to create
$maxGoodsPossible = 0;
$spiel.factories | ForEach-Object {

    $actionsTaken = @();
            
    # Get the factory
    $factoryName = $_
    #$factoryName 
    $factory = $karten.karten.karte | Where-Object { $_.name -eq $factoryName }

    if ($factory -eq $null)
    {
        throw "$($factoryName)";
    }

    $maxGoodsForFactory = 0
    
    # Now run over each result and apply it
    $factory.actions.action.results.result | ForEach-Object {

        if( $_.good -ne $null)
        {
            if ($_.good -gt $maxGoodsForFactory)
            {
                $maxGoodsForFactory = $_.good;
            }
        }

    }

    # For lab we technically spend a "good"
    if ($factoryName -eq "Laboratory")
    {
        $maxGoodsForFactory = $maxGoodsForFactory - 1;
    }

    $maxGoodsPossible = $maxGoodsPossible + $maxGoodsForFactory
}

clear-host
$maxGoodsPossible
Start-Sleep 3

# Function for resolving
function Solve-Puzzle($spiel, [int]$level)
{

    $bolFurtherActionFound = $false;

    # Go over each card
    if ($spiel.factories.Count -gt 0)
    {
        $possibleFactories = $spiel.factories.Clone()
        $possibleFactories | ForEach-Object {

            $actionsTaken = @();
            
            # Get the factory
            $factoryName = $_
            #$factoryName 
            $factory = $karten.karten.karte | Where-Object { $_.name -eq $factoryName }

            if ($factory -eq $null)
            {
                throw "$($factoryName)";
            }

            # Run over each action and check if we can execute it
            $factory.actions.action | ForEach-Object {

                $bolActionExecutable = $true
                $action = $_

                # Check each attribute
                $action.Attributes | ForEach-Object {

                    $name = $_.Name
                    $val = $_.Value

                    if ($bolActionExecutable) {

                        # Do we need to check the dice`?
                        if ( $name -eq "die") {

                            # If we have no dice, we can't execute it
                            if ($spiel[$name].Count -eq 0)
                            {
                                $bolActionExecutable = $false
                            }
                            else
                            {
                                # Otherwise check the dice

                                # If we have multiple with , seperated
                                if ($val -like "*,*")
                                {
                                    # Copy the current dice situation
                                    $copyDie = New-Object System.Collections.Generic.List``1[System.Int32]
                                    $spiel.die | ForEach-Object { $copyDie.Add($_) }
                                    
                                    # Check for each die if it is there
                                    # If so remove it (do be able to check multiple same value dice)
                                    $val.split(",") | ForEach-Object {
                                        if ($bolActionExecutable) {
                                            $bolActionExecutable = $copyDie.Contains($_)
                                            $copyDie.Remove($_) | Out-Null
                                        }
                                    }
                                }
                                # Only one die, so its easy
                                else
                                {
                                    $bolActionExecutable = $spiel[$name].Contains($val)
                                }
                            }
                            
                        }
                        elseif ( $spiel[$name] -lt $val)
                        { 
                            $bolActionExecutable = $false;
                        }
                    }

                }

                # If executable, do it
                if ($bolActionExecutable)
                {
                    $msg = "$('>'.PadLeft($level+1, '-')) Executing $factoryName with action $($action.OuterXml)"

                    #Write-Host $msg

                    $bolFurtherActionFound = $true

                    # Copy the current spiel
                    $newSpiel = $spiel.Clone()
                    
                    $newSpiel.factories = New-Object System.Collections.Generic.List``1[System.String]
                    $spiel.factories | ForEach-Object { $newSpiel.factories.Add($_) }
                    
                    $newSpiel.die = New-Object System.Collections.Generic.List``1[System.Int32]
                    $spiel.die | ForEach-Object { $newSpiel.die.Add($_) }
                    
                    $newSpiel.usdeddie = New-Object System.Collections.Generic.List``1[System.Int32]
                    $spiel.usdeddie | ForEach-Object { $newSpiel.usdeddie.Add($_) }
                    
                    $newSpiel.actionsTaken = New-Object System.Collections.Generic.List``1[System.String]
                    $spiel.actionsTaken | ForEach-Object { $newSpiel.actionsTaken.Add($_) }
                    
                    $newSpiel.actionsTaken.Add("$level. $factoryName $($action.OuterXml.Split(">")[0])>")
                    

                    # Reduce the cost for the action
                    $action.Attributes | ForEach-Object {

                        $name = $_.Name
                        $val = $_.Value

                        if ( $name -eq "die") {
                            $val.split(",") | ForEach-Object {
                                $newSpiel[$name].Remove($_) | Out-Null
                                $newSpiel.usdeddie.Add($_) 
                            }
                        }
                        else 
                        { 
                            $newSpiel[$name] = $newSpiel[$name] - $val;
                        }

                    }

                    # Remove the factory from the availale list
                    $newSpiel.factories.Remove($factoryName)  | Out-Null

                    # Now run over each result and apply it
                    $action.results.result | ForEach-Object {

                        $result = $_
                        $resultSpiel = $newSpiel.Clone()
                        $resultSpiel.factories = New-Object System.Collections.Generic.List``1[System.String]
                        $newSpiel.factories | ForEach-Object { $resultSpiel.factories.Add($_) }

                        $resultSpiel.die = New-Object System.Collections.Generic.List``1[System.Int32]
                        $newSpiel.die | ForEach-Object { $resultSpiel.die.Add($_) }
                        
                        $resultSpiel.usdeddie = New-Object System.Collections.Generic.List``1[System.Int32]
                        $newSpiel.usdeddie | ForEach-Object { $resultSpiel.usdeddie.Add($_) }

                        $resultSpiel.actionsTaken = New-Object System.Collections.Generic.List``1[System.String]
                        $newSpiel.actionsTaken | ForEach-Object { $resultSpiel.actionsTaken.Add($_) }

                        if ($result.customFunction -eq $null)
                        {

                            # Increase the result for the action
                            $result.Attributes | ForEach-Object {

                                $name = $_.Name
                                $val = $_.Value

                                if ( $name -eq "die" -or $name -eq "factories") {
                            
                                    $val.split(",") | ForEach-Object {

                                        # Add the new factories (But checking the max use of the player board actions)
                                        if ($_ -like "Research?" -and $maxUseOfResearch -ge 2)
                                        {
                                            $resultSpiel[$name].Add($_) | Out-Null
                                        }
                                        elseif ($_ -like "Research??" -and $maxUseOfResearch -ge 3)
                                        {
                                            $resultSpiel[$name].Add($_) | Out-Null
                                        }
                                        elseif ($_ -like "Generate?" -and $maxUseOfGenerate -ge 2)
                                        {
                                            $resultSpiel[$name].Add($_) | Out-Null
                                        }
                                        elseif ($_ -like "Generate??" -and $maxUseOfGenerate -ge 3)
                                        {
                                            $resultSpiel[$name].Add($_) | Out-Null
                                        }
                                        elseif ($_ -like "Mine?" -and $maxUseOfMine -ge 2)
                                        {
                                            $resultSpiel[$name].Add($_) | Out-Null
                                        }
                                        elseif ($_ -like "Mine??" -and $maxUseOfMine -ge 3)
                                        {
                                            $resultSpiel[$name].Add($_) | Out-Null
                                        }
                                        else
                                        {
                                            $resultSpiel[$name].Add($_) | Out-Null
                                        }
                                    }
                                }
                                else 
                                { 
                                    $resultSpiel[$name] = $resultSpiel[$name] + $val;
                                }

                            }

                            # Now start the next phase
                            Solve-Puzzle -spiel $($resultSpiel.Clone()) -level ($level + 1)

                        }
                        elseif ($result.customFunction -eq "CloningFacility")
                        {
                            # Here are the special actions for the CloningFacility
                            # Every accessible die can be changed to a different number if the number is either in the die or useddie list

                            # this is the list of distinct possbile dice values
                            $possibleDieValues = New-Object System.Collections.Generic.List``1[System.Int32]

                            # This is the list of distinct accessible die
                            $accessibleDieValue = New-Object System.Collections.Generic.List``1[System.Int32]

                            $resultSpiel.die | ForEach-Object { 
                                if ($possibleDieValues.Contains($_) -eq $false)
                                {
                                    $possibleDieValues.Add($_) | Out-Null
                                }
                                if ($accessibleDieValue.Contains($_) -eq $false)
                                {
                                    $accessibleDieValue.Add($_) | Out-Null
                                }
                            }
                            $resultSpiel.usdeddie | ForEach-Object { 
                                if ($possibleDieValues.Contains($_) -eq $false)
                                {
                                    $possibleDieValues.Add($_) | Out-Null
                                }
                            }

                            # Run over each die 
                            $accessibleDieValue | ForEach-Object {

                                # Remove the die
                                $dieToRemove = $_
                                $resultSpiel.die.Remove($dieToRemove) | Out-Null
                                $resultSpiel.usdeddie.Add($dieToRemove) | Out-Null

                                # Run over each possible
                                $possibleDieValues | Where-Object { $_ -ne $dieToRemove } | ForEach-Object {

                                    $resultSpiel.die.Add($_) | Out-Null

                                    # Now start the next phase
                                    Solve-Puzzle -spiel $($resultSpiel.Clone()) -level ($level + 1)

                                    # UNdo the add
                                    $resultSpiel.die.Remove($_) | Out-Null

                                }

                                # Undo the removal from bevore
                                $resultSpiel.die.Add($dieToRemove) | Out-Null
                                $resultSpiel.usdeddie.Remove($dieToRemove) | Out-Null

                                
                            }
                                
                        }

                        elseif ($result.customFunction -eq "TradeSchool")
                        {
                            # Here are the special actions for the TradeSchool
                            # Every accessible die can be changed to a different number if the number is NOT EQUAL TO either other visible die or useddie list

                            # this is the list of distinct possbile dice values
                            # On start every is possible
                            $possibleDieValues = New-Object System.Collections.Generic.List``1[System.Int32]
                            $possibleDieValues.Add(1)
                            $possibleDieValues.Add(2)
                            $possibleDieValues.Add(3)
                            $possibleDieValues.Add(4)
                            $possibleDieValues.Add(5)
                            $possibleDieValues.Add(6)

                            # This is the list of distinct accessible die
                            $accessibleDieValue = New-Object System.Collections.Generic.List``1[System.Int32]

                            $resultSpiel.die | ForEach-Object {

                                # If the die is already there we cant use it
                                if ($possibleDieValues.Contains($_) -eq $true)
                                {
                                    $possibleDieValues.Remove($_) | Out-Null
                                }

                                # Add the accessible die
                                if ($accessibleDieValue.Contains($_) -eq $false)
                                {
                                    $accessibleDieValue.Add($_) | Out-Null
                                }
                            }

                            # Each used die remove removes the possibilites
                            $resultSpiel.usdeddie | ForEach-Object { 
                                if ($possibleDieValues.Contains($_) -eq $true)
                                {
                                    $possibleDieValues.Remove($_) | Out-Null
                                }
                            }

                            # Run over each die 
                            $accessibleDieValue | ForEach-Object {

                                # Remove the die
                                $dieToRemove = $_
                                $resultSpiel.die.Remove($dieToRemove) | Out-Null
                                $resultSpiel.usdeddie.Add($dieToRemove) | Out-Null

                                # Run over each possible
                                $possibleDieValues | Where-Object { $_ -ne $dieToRemove } | ForEach-Object {

                                    $resultSpiel.die.Add($_) | Out-Null

                                    # Now start the next phase
                                    Solve-Puzzle -spiel $($resultSpiel.Clone()) -level ($level + 1)

                                    # UNdo the add
                                    $resultSpiel.die.Remove($_) | Out-Null

                                }

                                # Undo the removal from bevore
                                $resultSpiel.die.Add($dieToRemove) | Out-Null
                                $resultSpiel.usdeddie.Remove($dieToRemove) | Out-Null

                                
                            }
                                
                        }
                    
                        elseif ($result.customFunction -eq "Replicator")
                        {
                            # Here are the special actions for the Replicator
                            # Every available blueprint from the marketplace is added to the available factories
                            
                            # This is the list of distinct available blueprints
                            $accessibleBluePrints = New-Object System.Collections.Generic.List``1[System.String]

                            $resultSpiel.marketplace | ForEach-Object { 
                                if ($accessibleBluePrints.Contains($_) -eq $false)
                                {
                                    $accessibleBluePrints.Add($_) | Out-Null
                                }
                            }

                            # Run over each blueprint 
                            $accessibleBluePrints | ForEach-Object {

                                # Remove the blueprint from the marketplace and add it to the factorie
                                $blueprint = $_
                                $resultSpiel.marketplace.Remove($blueprint) | Out-Null
                                $resultSpiel.factories.Add($blueprint) | Out-Null

                                # Now start the next phase
                                Solve-Puzzle -spiel $($resultSpiel.Clone()) -level ($level + 1)

                                # Undo the removal from bevore
                                $resultSpiel.marketplace.Add($blueprint) | Out-Null
                                $resultSpiel.factories.Remove($blueprint) | Out-Null

                                
                            }
                                
                        }
                    }

                }

            }

        }

    }
    
    # if no further action found
    if ($bolFurtherActionFound -eq $false) {
        
        # Copy the current spiel
        $scoreSpiel = $spiel.Clone()
        $scoreSpiel.factories = New-Object System.Collections.Generic.List``1[System.String]
        $spiel.factories | ForEach-Object { $scoreSpiel.factories.Add($_) }
        $scoreSpiel.die = New-Object System.Collections.Generic.List``1[System.Int32]
        $spiel.die | ForEach-Object { $scoreSpiel.die.Add($_) }
        $scoreSpiel.actionsTaken = New-Object System.Collections.Generic.List``1[System.String]
        $spiel.actionsTaken | ForEach-Object { $scoreSpiel.actionsTaken.Add($_) }
        
        $scoreSpiel.score = ( $scoreSpiel.good * 1000) + ( $scoreSpiel.metal * 100) + ( $scoreSpiel.energy * 10) + ($scoreSpiel.die.Count)

        $global:spielResults.Add($scoreSpiel) | Out-Null

        if ($maxGoodsPossible -eq $scoreSpiel.good -and $stopOnFirstSolution)
        {

            $scoreSpiel | ForEach-Object {

                Write-Host "Score: $($_.score)     Goods: $($_.good)     Metal: $($_.metal)     Energy: $($_.energy)     Dice left: $($_.die.Count)     Factories unused: $($_.factories.Count)"
                $_.actionsTaken | ForEach-Object {
                    Write-Host $_
                }
            }
            Write-Host "------------------------------------------------------------------------------------------------"


            Throw "One solution found"
        }

    }
    
}

# Start the resolvement
Solve-Puzzle  -spiel $spiel -level 1

# Get the highest score
$maxScore = ( $spielResults | Sort-Object { $_.score } | Select-Object -Last 1 ).score

# Get all solutions with max score
$filteredSpielResults = ( $spielResults | Where-Object {  $_.score -eq $maxScore } )

# Check for one solution
$filteredSpielResultCount = 0;
if ($filteredSpielResults.GetType().Name -eq "Hashtable")
{
    $filteredSpielResultCount = 1
    $spielToDisplay = $filteredSpielResults
}
else
{
    $filteredSpielResultCount = $filteredSpielResults.Count
    $spielToDisplay = $filteredSpielResults[0]
}

# Show amount of best solution
Write-Host "------------------------------------------------------------------------------------------------"
Write-Host "Anzahl Lösungen mit $maxScore Punkten: $($filteredSpielResultCount) von $($spielResults.Count)"
Write-Host "------------------------------------------------------------------------------------------------"

# Show first solutions
$spielToDisplay | ForEach-Object {

    Write-Host "Score: $($_.score)     Goods: $($_.good)     Metal: $($_.metal)     Energy: $($_.energy)     Dice left: $($_.die.Count)     Factories unused: $($_.factories.Count)"
    $_.actionsTaken | ForEach-Object {
        Write-Host $_
    }
}
Write-Host "------------------------------------------------------------------------------------------------"
