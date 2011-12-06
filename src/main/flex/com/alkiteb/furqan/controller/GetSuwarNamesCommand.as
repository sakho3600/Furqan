/*
   Copyright (C) 2011 Ghazi Triki <ghazi.nocturne@gmail.com>

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
package com.alkiteb.furqan.controller
{
    import com.alkiteb.furqan.conf.NotificationCatalog;
    import com.alkiteb.furqan.model.QuranProxy;
    
    import org.puremvc.as3.interfaces.INotification;
    import org.puremvc.as3.patterns.command.SimpleCommand;

    public class GetSuwarNamesCommand extends SimpleCommand
    {
		override public function execute( notification : INotification ) : void
		{
			var suwarNames : Array = QuranProxy(facade.retrieveProxy(QuranProxy.NAME)).getSuwarNames();
			facade.sendNotification(NotificationCatalog.SUWAR_NAMES_LOADED, suwarNames);
		}
    }
}