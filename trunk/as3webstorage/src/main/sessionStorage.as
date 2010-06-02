package
{
	import flash.external.ExternalInterface;

	public class sessionStorage
	{
		public static function length():uint {
			return ExternalInterface.call("function() {return sessionStorage.length;}");
		}
		
		public static function key(index:uint):* {
			return ExternalInterface.call("sessionStorage.key", index);
		}
		
		public static function getItem(key:String):* {
			return ExternalInterface.call("sessionStorage.getItem", key);
		}
		
		public static function setItem(key:String, data:*):void {
			ExternalInterface.call("sessionStorage.setItem", key, data);
		}
		
		public static function removeItem(key:String):* {
			ExternalInterface.call("sessionStorage.removeItem", key);
		}
		
		public static function clear():void {
			ExternalInterface.call("sessionStorage.clear");
		}
	}
}