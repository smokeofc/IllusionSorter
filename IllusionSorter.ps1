Set-PSDebug -Off

$files = Get-ChildItem '*.png'

ForEach($file in $files){

    $SELPHF = Select-String -Path $file -Pattern "PlayHome_Female"
    $SELPHM = Select-String -Path $file -Pattern "PlayHome_Male"
	$SELPHS = Select-String -Path $file -Pattern "PHStudio"
    $SELHSF = Select-String -Path $file -Pattern "HoneySelectCharaFemale"
    $SELHSM = Select-String -Path $file -Pattern "HoneySelectCharaMale"
	$SELHSS = Select-String -Path $file -Pattern "-neo-"
	$SELKKC = Select-String -Path $file -Pattern "KoiKatuChara"
	$SELKKS = Select-String -Path $file -Pattern "KStudio"
	$SELECC = Select-String -Path $file -Pattern "EroMakeChara"
	$SELECM = Select-String -Path $file -Pattern "EroMakeMap"
	$SELECP = Select-String -Path $file -Pattern "EroMakePose"
	$SELECS = Select-String -Path $file -Pattern "EroMakeHScene"
	$SELKKG = Select-String -Path $file -Pattern "sex"
    $SELPRF = Select-String -Path $file -Pattern "PremiumResortCharaFemale"
    $SELPRM = Select-String -Path $file -Pattern "PremiumResortCharaMale"
	$SELAIC = Select-String -Path $file -Pattern "AIS_Chara"
	$SELAIS = Select-String -Path $file -Pattern "StudioNEOV2"
	$SELAIH = Select-String -Path $file -Pattern "AIS_Housing"
	$SELAIO = Select-String -Path $file -Pattern "AIS_Clothes"
	
	if ($SELECS -ne $null){
        if( -Not (Test-Path -Path .\ec_scene ) )
        {
            Write-Host "Creating Emotion Creators Scene Folder"
            New-Item -ItemType directory -Path .\ec_scene
        }
        Write-Host "Moving $file to ec_scene"
        Move-Item -Path $file -Destination .\ec_scene
	}elseif ($SELPHS -ne $null){
        if( -Not (Test-Path -Path .\ph_scene ) )
        {
            Write-Host "Creating PlayHome Scene Folder"
            New-Item -ItemType directory -Path .\ph_scene
        }
        Write-Host "Moving $file to ph_scene"
        Move-Item -Path $file -Destination .\ph_scene
	}elseif ($SELAIS -ne $null){
        if( -Not (Test-Path -Path .\ai_scene ) )
        {
            Write-Host "Creating AI Syoujyo Scene Folder"
            New-Item -ItemType directory -Path .\ai_scene
        }
        Write-Host "Moving $file to ai_scene"
        Move-Item -Path $file -Destination .\ai_scene
	}elseif ($SELAIO -ne $null){
        if( -Not (Test-Path -Path .\ai_clothes ) )
        {
            Write-Host "Creating AI Syoujyo Clothings Folder"
            New-Item -ItemType directory -Path .\ai_clothes
        }
        Write-Host "Moving $file to ai_clothes"
        Move-Item -Path $file -Destination .\ai_clothes
	}elseif ($SELAIH -ne $null){
        if( -Not (Test-Path -Path .\ai_house ) )
        {
            Write-Host "Creating AI Syoujyo Housing Folder"
            New-Item -ItemType directory -Path .\ai_house
        }
        Write-Host "Moving $file to ai_house"
        Move-Item -Path $file -Destination .\ai_house
	}elseif ($SELHSS -ne $null){
        if( -Not (Test-Path -Path .\hs_neoscene ) )
        {
            Write-Host "Creating Honey Select Neo Scene Folder"
            New-Item -ItemType directory -Path .\hs_neoscene
        }
        Write-Host "Moving $file to hs_neoscene"
        Move-Item -Path $file -Destination .\hs_neoscene
	}elseif ($SELKKS -ne $null){
        if( -Not (Test-Path -Path .\kk_scene ) )
        {
            Write-Host "Creating Koikatsu Scene Folder"
            New-Item -ItemType directory -Path .\kk_scene
        }
        Write-Host "Moving $file to kk_scene"
        Move-Item -Path $file -Destination .\kk_scene
    }elseif ($SELECP -ne $null){
        if( -Not (Test-Path -Path .\ec_pose ) )
        {
            Write-Host "Creating Emotion Creators Pose Folder"
            New-Item -ItemType directory -Path .\ec_pose
        }
        Write-Host "Moving $file to ec_pose"
        Move-Item -Path $file -Destination .\ec_pose
    }elseif ($SELECM -ne $null){
        if( -Not (Test-Path -Path .\ec_map ) )
        {
            Write-Host "Creating Emotion Creators Map Folder"
            New-Item -ItemType directory -Path .\ec_map
        }
        Write-Host "Moving $file to ec_map"
        Move-Item -Path $file -Destination .\ec_map
    }elseif ($SELPHF -ne $null){
        if( -Not (Test-Path -Path .\ph_female ) )
        {
            Write-Host "Creating Playhome Female Folder"
            New-Item -ItemType directory -Path .\ph_female
        }
        Write-Host "Moving $file to ph_female"
        Move-Item -Path $file -Destination .\ph_female
    }elseif ($SELPHM -ne $null){
        if( -Not (Test-Path -Path .\ph_male ) )
        {
            Write-Host "Creating Playhome Male Folder"
            New-Item -ItemType directory -Path .\ph_male
        }
        Write-Host "Moving $file to ph_male"
        Move-Item -Path $file -Destination .\ph_male
    }elseif ($SELHSF -ne $null){
        if( -Not (Test-Path -Path .\hs_female ) )
        {
            Write-Host "Creating Honeyselect Female Folder"
            New-Item -ItemType directory -Path .\hs_female
        }
        Write-Host "Moving $file to hs_female"
        Move-Item -Path $file -Destination .\hs_female
    }elseif ($SELHSM -ne $null){
        if( -Not (Test-Path -Path .\hs_male ) )
        {
            Write-Host "Creating Honeyselect Male Folder"
            New-Item -ItemType directory -Path .\hs_male
        }
        Write-Host "Moving $file to hs_male"
        Move-Item -Path $file -Destination .\hs_male
    }elseif ($SELKKC -ne $null){
        if ($SELKKG -ne $null)
		{
            if( -Not (Test-Path -Path .\kk_female ) )
            {
                Write-Host "Creating Koikatsu Female Folder"
                New-Item -ItemType directory -Path .\kk_female
            }
            Write-Host "Moving $file to kk_female"
			Move-Item -Path $file -Destination .\kk_female
		}
		else
		{
            if( -Not (Test-Path -Path .\kk_male ) )
            {
                Write-Host "Creating Koikatsu Male Folder"
                New-Item -ItemType directory -Path .\kk_male
            }
            Write-Host "Moving $file to kk_male"
			Move-Item -Path $file -Destination .\kk_male
		}
    }elseif ($SELECC -ne $null){
        if ($SELKKG -ne $null)
		{
            if( -Not (Test-Path -Path .\ec_female ) )
            {
                Write-Host "Creating Emotion Creators Female Folder"
                New-Item -ItemType directory -Path .\ec_female
            }
            Write-Host "Moving $file to ec_female"
			Move-Item -Path $file -Destination .\ec_female
		}
		else
		{
            if( -Not (Test-Path -Path .\ec_male ) )
            {
                Write-Host "Creating Emotion Creators Male Folder"
                New-Item -ItemType directory -Path .\ec_male
            }
            Write-Host "Moving $file to ec_male"
			Move-Item -Path $file -Destination .\ec_male
		}
    }elseif ($SELPRF -ne $null){
        if( -Not (Test-Path -Path .\sb_female ) )
        {
            Write-Host "Creating Sexy Beach Premium Resort Female Folder"
            New-Item -ItemType directory -Path .\sb_female
        }
        Write-Host "Moving $file to sb_female"
        Move-Item -Path $file -Destination .\sb_female
    }elseif ($SELPRM -ne $null){
        if( -Not (Test-Path -Path .\sb_male ) )
        {
            Write-Host "Creating Sexy Beach Premium Resort Male Folder"
            New-Item -ItemType directory -Path .\sb_male
        }
        Write-Host "Moving $file to sb_male"
        Move-Item -Path $file -Destination .\sb_male
    }elseif ($SELAIC -ne $null){
        if ($SELKKG -ne $null)
		{
            if( -Not (Test-Path -Path .\ai_female ) )
            {
                Write-Host "Creating AI Syoujyo Female Folder"
                New-Item -ItemType directory -Path .\ai_female
            }
            Write-Host "Moving $file to ai_female"
			Move-Item -Path $file -Destination .\ai_female
		}
		else
		{
            if( -Not (Test-Path -Path .\ai_male ) )
            {
                Write-Host "Creating AI Syoujyo Male Folder"
                New-Item -ItemType directory -Path .\ai_male
            }
            Write-Host "Moving $file to ai_male"
			Move-Item -Path $file -Destination .\ai_male
		}
	}
}
pause