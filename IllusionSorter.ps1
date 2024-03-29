Set-PSDebug -Off

$zips = Get-ChildItem '*.zip'

ForEach($zip in $zips) {
	if ($zip -like '*emocre_scene_*'){
		if( -Not (Test-Path -Path '.\Emotion Creators Scenes') ){
			Write-Host "Creating Emotion Creators Scene Folder"
			New-Item -ItemType directory -Path '.\Emotion Creators Scenes'
		}
		Write-Host "Moving $zip to Emotion Creators Scenes"
		Move-Item -Path $zip -Destination '.\Emotion Creators Scenes'
	}
}

$files = Get-ChildItem '*.png'

ForEach($file in $files){

    $SELPHF = Select-String -Path $file -Pattern "PlayHome_Female"
    $SELPHM = Select-String -Path $file -Pattern "PlayHome_Male"
	$SELPHS = Select-String -Path $file -Pattern "PHStudio"
    $SELHSF = Select-String -Path $file -Pattern "HoneySelectCharaFemale"
    $SELHSM = Select-String -Path $file -Pattern "HoneySelectCharaMale"
	$SELHSV = Select-String -Path $file -Pattern "      "
	$SELHSP = Select-String -Path $file -Pattern "      "
	$SELHSS = Select-String -Path $file -Pattern "-neo-"
	$SELKKSC = Select-String -Path $file -Pattern "KoiKatuCharaSun"
	$SELKKC = Select-String -Path $file -Pattern "KoiKatuChara"
	$SELKKS = Select-String -Path $file -Pattern "KStudio"
	$SELECC = Select-String -Path $file -Pattern "EroMakeChara"
	$SELECM = Select-String -Path $file -Pattern "EroMakeMap"
	$SELECP = Select-String -Path $file -Pattern "EroMakePose"
	$SELECS = Select-String -Path $file -Pattern "EroMakeHScene"
	$SELKKG = Select-String -Path $file -Pattern "sex"
    $SELPRF = Select-String -Path $file -Pattern "PremiumResortCharaFemale"
    $SELPRM = Select-String -Path $file -Pattern "PremiumResortCharaMale"
	$SELPRS = Select-String -Path $file -Pattern "studio"
	$SELAIG = Select-String -Path $file -Pattern "sex"
	$SELAIC = Select-String -Path $file -Pattern "AIS_Cha"
	$SELAIS = Select-String -Path $file -Pattern "StudioNEOV2"
	$SELAIH = Select-String -Path $file -Pattern "AIS_Housing"
	$SELAIH1 = Select-String -Path $file -Pattern "        "
	$SELAIH2 = Select-String -Path $file -Pattern "       "
	$SELAIH3 = Select-String -Path $file -Pattern "       "
	$SELSTUDIOAI = Select-String -Path $file -Pattern "�1.0.1"
	$SELSTUDIOHS2 = Select-String -Path $file -Pattern "1.1.1"
	$SELSTUDIOKK = Select-String -Path $file -Pattern "�1.0.0"
	$SELSTUDIOKK = Select-String -Path $file -Pattern "1.0.4"
	$SELSTUDIOKKS = Select-String -Path $file -Pattern "1.1.2"
	$SELJS2 = Select-String -Path $file -Pattern "  �PNG"
	
	if ($SELSTUDIOAI -ne $null) {
		if( -Not (Test-Path -Path '.\AI Shoujo-HS2 Scenes' ) )
        {
            Write-Host "Creating AI Shoujo/HS2 Scene Folder"
            New-Item -ItemType directory -Path '.\AI Shoujo-HS2 Scenes'
        }
        Write-Host "Moving $file to AI Shoujo-HS2 Scenes"
        Move-Item -Path $file -Destination '.\AI Shoujo-HS2 Scenes'
	}elseif ($SELSTUDIOHS2 -ne $null) {
		if( -Not (Test-Path -Path '.\AI Shoujo-HS2 Scenes' ) )
        {
            Write-Host "Creating AI Shoujo/HS2 Scene Folder"
            New-Item -ItemType directory -Path '.\AI Shoujo-HS2 Scenes'
        }
        Write-Host "Moving $file to AI Shoujo-HS2 Scenes"
        Move-Item -Path $file -Destination '.\AI Shoujo-HS2 Scenes'
	}elseif ($SELSTUDIOKK -ne $null) {
		if( -Not (Test-Path -Path '.\Koikatsu Scenes' ) )
        {
            Write-Host "Creating Koikatsu Scenes Folder"
            New-Item -ItemType directory -Path '.\Koikatsu Scenes'
        }
        Write-Host "Moving $file to Koikatsu Scenes"
        Move-Item -Path $file -Destination '.\Koikatsu Scenes'
	}elseif ($SELSTUDIOKKS -ne $null) {
		if( -Not (Test-Path -Path '.\Koikatsu Sunshine Scenes' ) )
        {
            Write-Host "Creating Koikatsu Sunshine Scenes Folder"
            New-Item -ItemType directory -Path '.\Koikatsu Sunshine Scenes'
        }
        Write-Host "Moving $file to Koikatsu Sunshine Scenes"
        Move-Item -Path $file -Destination '.\Koikatsu Sunshine Scenes'
	}elseif ($SELECS -ne $null){
        if( -Not (Test-Path -Path '.\Emotion Creators Scenes' ) )
        {
            Write-Host "Creating Emotion Creators Scene Folder"
            New-Item -ItemType directory -Path '.\Emotion Creators Scenes'
        }
        Write-Host "Moving $file to Emotion Creators Scenes"
        Move-Item -Path $file -Destination '.\Emotion Creators Scenes'
	}elseif ($SELAIH -ne $null){
		if( -Not (Test-Path -Path '.\AI Shoujo Housing' ) )
        {
            Write-Host "Creating AI Housing Folder"
            New-Item -ItemType directory -Path '.\AI Shoujo Housing'
        }
		if ($SELAIH1 -ne $null)
		{
			if( -Not (Test-Path -Path '.\AI Shoujo Housing\01' ) )
			{
				Write-Host "Creating AI Small Housing Folder"
				New-Item -ItemType directory -Path '.\AI Shoujo Housing\01'
			}
			Write-Host "Moving $file to AI Shoujo Housing\01"
			Move-Item -Path $file -Destination '.\AI Shoujo Housing\01'
        }
		elseif ($SELAIH2 -ne $null)
		{
			if( -Not (Test-Path -Path '.\AI Shoujo Housing\02' ) )
			{
				Write-Host "Creating AI Small Housing Folder"
				New-Item -ItemType directory -Path '.\AI Shoujo Housing\02'
			}
			Write-Host "Moving $file to AI Shoujo Housing\02"
			Move-Item -Path $file -Destination '.\AI Shoujo Housing\02'
        }
		else
		{
			if( -Not (Test-Path -Path '.\AI Shoujo Housing\03' ) )
			{
				Write-Host "Creating AI Small Housing Folder"
				New-Item -ItemType directory -Path '.\AI Shoujo Housing\03'
			}
			Write-Host "Moving $file to AI Shoujo Housing\03"
			Move-Item -Path $file -Destination '.\AI Shoujo Housing\03'
		}
	}elseif ($SELPHS -ne $null){
        if( -Not (Test-Path -Path '.\PlayHome Scenes' ) )
        {
            Write-Host "Creating PlayHome Scene Folder"
            New-Item -ItemType directory -Path '.\PlayHome Scenes'
        }
        Write-Host "Moving $file to PlayHome Scenes"
        Move-Item -Path $file -Destination '.\PlayHome Scenes'
	}elseif ($SELHSS -ne $null){
        if( -Not (Test-Path -Path '.\HoneySelect Neo Scenes' ) )
        {
            Write-Host "Creating Honey Select Neo Scene Folder"
            New-Item -ItemType directory -Path '.\HoneySelect Neo Scenes'
        }
        Write-Host "Moving $file to HoneySelect Neo Scenes"
        Move-Item -Path $file -Destination '.\HoneySelect Neo Scenes'
    }elseif ($SELECP -ne $null){
        if( -Not (Test-Path -Path '.\Emotion Creators Poses' ) )
        {
            Write-Host "Creating Emotion Creators Pose Folder"
            New-Item -ItemType directory -Path '.\Emotion Creators Poses'
        }
        Write-Host "Moving $file to Emotion Creators Poses"
        Move-Item -Path $file -Destination '.\Emotion Creators Poses'
    }elseif ($SELECM -ne $null){
        if( -Not (Test-Path -Path '.\Emotion Creators Maps' ) )
        {
            Write-Host "Creating Emotion Creators Map Folder"
            New-Item -ItemType directory -Path '.\Emotion Creators Maps'
        }
        Write-Host "Moving $file to Emotion Creators Maps"
        Move-Item -Path $file -Destination '.\Emotion Creators Maps'
    }elseif ($SELPHF -ne $null){
        if( -Not (Test-Path -Path '.\PlayHome Cards\female' ) )
        {
            Write-Host "Creating Playhome Female Folder"
            New-Item -ItemType directory -Path '.\PlayHome Cards\female'
        }
        Write-Host "Moving $file to PlayHome Cards\female"
        Move-Item -Path $file -Destination '.\PlayHome Cards\female'
    }elseif ($SELPHM -ne $null){
        if( -Not (Test-Path -Path '.\PlayHome Cards\male' ) )
        {
            Write-Host "Creating Playhome Male Folder"
            New-Item -ItemType directory -Path '.\PlayHome Cards\male'
        }
        Write-Host "Moving $file to PlayHome Cards\male"
        Move-Item -Path $file -Destination '.\PlayHome Cards\male'
    }elseif ($SELHSF -ne $null){
        if( $SELHSV -ne $null)
		{
			if( -Not (Test-Path -Path '.\HoneySelect Classic Cards\female' ) )
			{
				Write-Host "Creating Honeyselect Classic Female Folder"
				New-Item -ItemType directory -Path '.\HoneySelect Classic Cards\female'
			}
			Write-Host "Moving $file to HoneySelect Classic Cards\female"
			Move-Item -Path $file -Destination '.\HoneySelect Classic Cards\female'
		}
		else
		{
			if( -Not (Test-Path -Path '.\HoneySelect Neo Cards\female' ) )
			{
				Write-Host "Creating Honeyselect Neo Female Folder"
				New-Item -ItemType directory -Path '.\HoneySelect Neo Cards\female'
			}
			Write-Host "Moving $file to HoneySelect Neo Cards\female"
			Move-Item -Path $file -Destination '.\HoneySelect Neo Cards\female'
		}
    }elseif ($SELHSM -ne $null){
        if( $SELHSV -ne $null)
		{
			if( -Not (Test-Path -Path '.\HoneySelect Classic Cards\male' ) )
			{
				Write-Host "Creating Honeyselect Male Folder"
				New-Item -ItemType directory -Path '.\HoneySelect Classic Cards\male'
			}
			Write-Host "Moving $file to HoneySelect Classic Cards\male"
			Move-Item -Path $file -Destination '.\HoneySelect Classic Cards\male'
		}
		else
		{
			if( -Not (Test-Path -Path '.\HoneySelect Neo Cards\male' ) )
			{
				Write-Host "Creating Honeyselect Neo Male Folder"
				New-Item -ItemType directory -Path '.\HoneySelect Neo Cards\male'
			}
			Write-Host "Moving $file to HoneySelect Neo Cards\male"
			Move-Item -Path $file -Destination '.\HoneySelect Neo Cards\male'
		}
	
    }elseif ($SELKKSC -ne $null){
        if ($SELKKG -ne $null)
		{
            if( -Not (Test-Path -Path '.\Koikatsu Sunshine Cards\female' ) )
            {
                Write-Host "Creating Koikatsu Sunshine Female Folder"
                New-Item -ItemType directory -Path '.\Koikatsu Sunshine Cards\female'
            }
            Write-Host "Moving $file to Koikatsu Sunshine Cards\female"
			Move-Item -Path $file -Destination '.\Koikatsu Sunshine Cards\female'
		}
		else
		{
            if( -Not (Test-Path -Path '.\Koikatsu Sunshine Cards\male' ) )
            {
                Write-Host "Creating Koikatsu Sunshine Male Folder"
                New-Item -ItemType directory -Path '.\Koikatsu Sunshine Cards\male'
            }
            Write-Host "Moving $file to Koikatsu Sunshine Cards\male"
			Move-Item -Path $file -Destination '.\Koikatsu Sunshine Cards\male'
		}
    }elseif ($SELKKC -ne $null){
        if ($SELKKG -ne $null)
		{
            if( -Not (Test-Path -Path '.\Koikatsu Cards\female' ) )
            {
                Write-Host "Creating Koikatsu Female Folder"
                New-Item -ItemType directory -Path '.\Koikatsu Cards\female'
            }
            Write-Host "Moving $file to Koikatsu Cards\female"
			Move-Item -Path $file -Destination '.\Koikatsu Cards\female'
		}
		else
		{
            if( -Not (Test-Path -Path '.\Koikatsu Cards\male' ) )
            {
                Write-Host "Creating Koikatsu Male Folder"
                New-Item -ItemType directory -Path '.\Koikatsu Cards\male'
            }
            Write-Host "Moving $file to Koikatsu Cards\male"
			Move-Item -Path $file -Destination '.\Koikatsu Cards\male'
		}
    }elseif ($SELECC -ne $null){
        if ($SELKKG -ne $null)
		{
            if( -Not (Test-Path -Path '.\Emotion Creators Cards\female' ) )
            {
                Write-Host "Creating Emotion Creators Female Folder"
                New-Item -ItemType directory -Path '.\Emotion Creators Cards\female'
            }
            Write-Host "Moving $file to Emotion Creators Cards\female"
			Move-Item -Path $file -Destination '.\Emotion Creators Cards\female'
		}
		else
		{
            if( -Not (Test-Path -Path '.\Emotion Creators Cards\male' ) )
            {
                Write-Host "Creating Emotion Creators Male Folder"
                New-Item -ItemType directory -Path '.\Emotion Creators Cards\male'
            }
            Write-Host "Moving $file to Emotion Creators Cards\male"
			Move-Item -Path $file -Destination '.\Emotion Creators Cards\male'
		}
    }elseif ($SELPRF -ne $null){
        if( -Not (Test-Path -Path '.\Sexy Beach Premium Resort Cards\female' ) )
        {
            Write-Host "Creating Sexy Beach Premium Resort Female Folder"
            New-Item -ItemType directory -Path '.\Sexy Beach Premium Resort Cards\female'
        }
        Write-Host "Moving $file to Sexy Beach Premium Resort Cards\female"
        Move-Item -Path $file -Destination '.\Sexy Beach Premium Resort Cards\female'
    }elseif ($SELPRM -ne $null){
        if( -Not (Test-Path -Path '.\Sexy Beach Premium Resort Cards\male' ) )
        {
            Write-Host "Creating Sexy Beach Premium Resort Male Folder"
            New-Item -ItemType directory -Path '.\Sexy Beach Premium Resort Cards\male'
        }
        Write-Host "Moving $file to Sexy Beach Premium Resort Cards\male"
        Move-Item -Path $file -Destination '.\Sexy Beach Premium Resort Cards\male'
    }elseif ($SELAIC -ne $null){
        if ($SELKKG -ne $null)
		{
            if( -Not (Test-Path -Path '.\AI Shoujo-HS2 Cards\female' ) )
            {
                Write-Host "Creating AI Female Folder"
                New-Item -ItemType directory -Path '.\AI Shoujo-HS2 Cards\female'
            }
            Write-Host "Moving $file to AI Shoujo-HS2 Cards\female"
			Move-Item -Path $file -Destination '.\AI Shoujo-HS2 Cards\female'
		}
		else
		{
            if( -Not (Test-Path -Path '.\AI Shoujo-HS2 Cards\male' ) )
            {
                Write-Host "Creating AI Male Folder"
                New-Item -ItemType directory -Path '.\AI Shoujo-HS2 Cards\male'
            }
            Write-Host "Moving $file to AI Shoujo-HS2 Cards\male"
			Move-Item -Path $file -Destination '.\AI Shoujo-HS2 Cards\male'
		}
	}else{
		if ($file -like '*honey2*')
		{
			if( -Not (Test-Path -Path '.\HoneySelect 2 ScreenShots' ) )
			{
				Write-Host "Creating HoneySelect 2 ScreenShots Folder"
				New-Item -ItemType directory -Path '.\HoneySelect 2 ScreenShots'
			}
			Write-Host "Moving $file to HoneySelect 2 ScreenShots"
			Move-Item -Path $file -Destination '.\HoneySelect 2 ScreenShots'
		} elseif ($file -like '*upai*')
		{
			if( -Not (Test-Path -Path '.\AI Shoujo Screenshots' ) )
			{
				Write-Host "Creating AI Shoujo Screenshots Folder"
				New-Item -ItemType directory -Path '.\AI Shoujo Screenshots'
			}
			Write-Host "Moving $file to AI Shoujo Screenshots"
			Move-Item -Path $file -Destination '.\AI Shoujo Screenshots'
		} elseif ($file -like '*koikatsu*')
		{
			if( -Not (Test-Path -Path '.\Koikatsu Sunshine ScreenShots' ) )
			{
				Write-Host "Creating Koikatsu Sunshine ScreenShots Folder"
				New-Item -ItemType directory -Path '.\Koikatsu Sunshine ScreenShots'
			}
			Write-Host "Moving $file to Koikatsu Sunshine ScreenShots"
			Move-Item -Path $file -Destination '.\Koikatsu Sunshine ScreenShots'
		} elseif ($file -like '*koikatu*')
		{
			if( -Not (Test-Path -Path '.\Koikatsu ScreenShots' ) )
			{
				Write-Host "Creating Koikatsu Sunshine Folder"
				New-Item -ItemType directory -Path '.\Koikatsu ScreenShots'
			}
			Write-Host "Moving $file to Koikatsu ScreenShots"
			Move-Item -Path $file -Destination '.\Koikatsu ScreenShots'
		}
	}
}
pause