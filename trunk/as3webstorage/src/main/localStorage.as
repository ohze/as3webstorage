package
{
	import flash.external.ExternalInterface;

	public class localStorage
	{
		public static function length():uint {
			return ExternalInterface.call("function() {return localStorage.length;}");
		}
		
		public static function key(index:uint):* {
			return ExternalInterface.call("localStorage.key", index);
		}
		
		public static function getItem(key:String):* {
			return ExternalInterface.call("localStorage.getItem", key);
		}
		
		public static function setItem(key:String, data:*):void {
			ExternalInterface.call("localStorage.setItem", key, data);
		}
		
		public static function removeItem(key:String):* {
			ExternalInterface.call("localStorage.removeItem", key);
		}
		
		public static function clear():void {
			ExternalInterface.call("localStorage.clear");
		}
	}
}