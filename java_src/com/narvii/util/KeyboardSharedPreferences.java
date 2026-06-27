package com.narvii.util;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes3.dex */
public class KeyboardSharedPreferences {
    private static final String FILE_NAME = "keyboard";
    private static final String KEY_KEYBOARD_HEIGHT = "height";
    private static volatile SharedPreferences SP;

    public static boolean save(Context context, int i) {
        return with(context).edit().putInt("height", i).commit();
    }

    private static SharedPreferences with(Context context) {
        if (SP == null) {
            synchronized (KeyboardSharedPreferences.class) {
                if (SP == null) {
                    SP = context.getSharedPreferences(FILE_NAME, 0);
                }
            }
        }
        return SP;
    }

    public static int get(Context context, int i) {
        return with(context).getInt("height", i);
    }
}
