package com.TestQuest;
import java.util.HashMap;
import java.util.Map;

public class Answers {

    public static Map<Integer, String> answersValues = Map.of(1, "Join the adventure.",
            2, "Go home.",
            3, "Accept challenge.",
            4, "Decline challenge.",
            5, "Climb at the bridge.",
            6, "Refuse to climb at he bridge.",
            7, "Tell truth about yourself.",
            8, "Lie about yourself.");


    public static String getAnswer(int i) {
        return answersValues.get(i);
    }
}

