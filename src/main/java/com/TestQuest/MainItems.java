package com.TestQuest;
import java.util.HashMap;
import java.util.Map;
public class MainItems {

    public static Map <Integer, String> itemsValues= Map.of(
       1, "You are staying in the cosmic port.You can " +
                "join the board of the ship. Are you ready join this cosmic ship?",
        2, "You have decided to go home. This is defeat.",
        3, "To stand a real intergalactic contributor your mind should be" +
                "clear. Are you ready to receive UFO's challenge?",
        4, "You have declined challenge.This is defeat.",
        5, "You have accepted the challenge. Will you climb " +
                "at the bridge, where our captain is staying?",
        6, "You haven' accept negotiation. This is defeat",
        7, "You have climbed at the bridge. Tll us about yourself.",
       8, "Your lie has been revealed. This is defeat",
        9, "You have been returned at home. Congratulations with your Victory!");

public static String getItem(int i){
    return itemsValues.get(i);
}


}
