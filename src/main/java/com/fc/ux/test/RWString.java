package com.fc.ux.test;

/**
 * Created by hp m6 on 2/15/2016.
 *
 * @author Chamika Dilshan
 */


import javax.smartcardio.*;
import java.util.List;

/**
 *  Read and write Gemplus Memory cards. The following cards
 *  are supported:
 *  GFM 4k
 */
public class RWString {
    public static void main( String args[]) throws Exception {


        String arr = "6F478407A0000000041010A53C50104445424954204D4153544552434152448701015F2D02656E9F1101019F1209434F4D204445424954BF0C0F9F4D020B0A9F6E07035600003030009000";

        for(int i = 0;i < arr.length() / 2;i++){
            System.out.print((char)Integer.parseInt(arr.substring(2*i,2*i + 2),16));
        }
        System.out.println();


        TerminalFactory factory = TerminalFactory.getDefault();
        List<CardTerminal> terminals = factory.terminals().list();
        System.out.println("Terminals: " + terminals);
        // get the first terminal
        CardTerminal terminal = terminals.get(0);
        // establish a connection with the card
        Card card = terminal.connect("T=1");
        System.out.println("card: " + card);
        /*CardChannel channel = card.getBasicChannel();
        ResponseAPDU r = channel.transmit(new CommandAPDU(new byte[]{0x00, (byte)0xA4, 0x04, 0x00, (byte)0xA0, 0x00, 0x00, 0x00, 0x04}));
        print(r.getBytes());*/
        // disconnect


        CardChannel channel = card.getBasicChannel();

        byte[] selectMaestro = {(byte) 0x00, (byte) 0xA4, (byte) 0x04, (byte) 0x00, (byte) 0x07, (byte) 0xA0, (byte) 0x00, (byte) 0x00, (byte) 0x00, (byte) 0x04, (byte) 0x10, (byte) 0x10, (byte) 0x00};
        byte[] getProcessingOptions = {(byte) 0x80, (byte) 0xA8, (byte) 0x00, (byte) 0x00, (byte) 0x02, (byte) 0x83, (byte) 0x00, (byte) 0x00};
        byte[] readRecord = {(byte) 0x00, (byte) 0xB2, (byte) 0x02, (byte) 0x0C, (byte) 0x00};

        ResponseAPDU r = null;




        ATR atr = card.getATR(); //reset kartice

        CommandAPDU capdu = new CommandAPDU(selectMaestro);

        r = card.getBasicChannel().transmit(capdu);
        print(r.getBytes());

        capdu = new CommandAPDU(getProcessingOptions);
        r = card.getBasicChannel().transmit(capdu);
        print(r.getBytes());

        capdu = new CommandAPDU(readRecord);
        r = card.getBasicChannel().transmit(capdu);
        print(r.getBytes());

        card.disconnect(false);

    }


    private static void print(byte[] arr){
        for(byte b : arr){
            System.out.printf("%02X " , b);
        }
        System.out.println();
    }
}

