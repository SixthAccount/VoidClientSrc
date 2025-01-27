﻿package kabam.rotmg.messaging.impl.incoming
{
import flash.utils.IDataInput;

public class Text extends IncomingMessage
{

    public var name_:String = new String();
    public var nameColor_:String = new String();
    public var textColor_:String = new String();
    public var rank_:int = new int();
    public var objectId_:int;
    public var numStars_:int;
    public var bubbleTime_:uint;
    public var recipient_:String;
    public var text_:String = new String();
    public var cleanText_:String = new String();

    public function Text(_arg_1:uint, _arg_2:Function)
    {
        super(_arg_1, _arg_2);
    }

    override public function parseFromInput(_arg_1:IDataInput):void
    {
        this.name_ = _arg_1.readUTF();
        this.nameColor_ = _arg_1.readUTF();
        this.textColor_ = _arg_1.readUTF();
        this.rank_ = _arg_1.readShort();
        this.objectId_ = _arg_1.readInt();
        this.numStars_ = _arg_1.readInt();
        this.bubbleTime_ = _arg_1.readUnsignedByte();
        this.recipient_ = _arg_1.readUTF();
        this.text_ = _arg_1.readUTF();
        this.cleanText_ = _arg_1.readUTF();
    }

    override public function toString():String
    {
        return (formatToString("TEXT", "name_", "textColor_", "objectId_", "numStars_", "bubbleTime_", "recipient_", "text_", "cleanText_"));
    }


}
}

