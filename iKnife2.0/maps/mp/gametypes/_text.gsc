#include common_scripts\utility;
#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;

doThreads()
{
	//self thread playerAliveTxt();
	//self thread playerAlive();
	self thread timer();
}


/*
playerAlive()
{
 level.players = (level.players.size);
 
  playersalive = isThePlayerAlive();
  level.playerstext = createFontString("objective","0.8");
  level.playerstext setPoint("CENTER","CENTER");
  level.playerstext setText("Players Alive: ^2");

  
  level.timer = createFontString("objective", 0.8);
  level.timer setPoint("MIDDLELEFT","MIDDLELEFT");
  
}

timer()
{
	level endon("game_ended");

	for(;;)
	{
		setDvar("sv_timelimit");
		while( getdvar("sv_timelimit") == "")
		wait .5;
		timer = 30;
		if (timer <= 0)
		{
			level.timer setText("");
			level thread maps\mp\gametypes\_gamelogic::forceEnd();
		}
		else if (timer > 0)
		{
			level.timer setText("Match Ends in:" );
			wait 1;
			level.timer--;
		}
	}
	wait 1;
}

timer()
{
        level endon( "game_ended" );
        level.timer = 30;
        for( ;; )
        {
                setDvar( "sv_timelimit", "" );
                while( getdvar( "sv_timelimit" ) == "" )
                        wait 0.05;
                level.timer--;
                if( level.timer <= 0 )
                {
                        level.timer setText( "" );
                        level thread maps\mp\gametypes\_gamelogic::forceEnd();
                }
                else if( level.timer > 0 )
                        level.timer setText( "Match Ends in:" + level.timer );
                setDvar( "sv_timelimit", "" );
                wait 1;
        }
}

 /*
isThePlayerAlive()
{
 players = getEveryPlayers();
 for( i = 0; i < players.size; i++ )
 {
 if( players[i].sessionstate == "playing" )
  return players[i].size;
 else
  return "Err";
 }
}

getEveryPlayer() //taken from deathrun. thx braxi c:
{
 return getEntArray( "player", "classname" );
}
*/

timerText()
{
 level.timerHud = addTextHud( 320, 410, 1, "center", "middle", 1.4, 2 );
}

addTextHud( x, y, alpha, alignX, alignY, fontScale, sort )
{
 hud = newHudElem();
 hud.x = x;
 hud.y = y;
 hud fadeOverTime( 0.5 );
 hud.alpha = alpha;
 hud.alignX = alignX;
 hud.alignY = alignY;
 hud.fontScale = fontScale;
 hud.sort = sort;
 hud.archived = false;
 return hud;
}

timer()
{
 level endon( "game_ended" );

 level.timer = 300;
 for( ;; )
 {
  level.timer--;
  if( level.timer <= 0 )
  {
   level.timerHud setText( "" );
   level thread maps\mp\gametypes\_gamelogic::forceEnd();
  }
  else if( level.timer > 0 )
   level.timerHud setText( "Match Ends in:" + level.timer );
  wait 1;
 }
}




















