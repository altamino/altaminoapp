package com.narvii.util;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes5.dex */
public class KeyboardSharedPreferences {
    private static final String FILE_NAME = "keyboard";
    private static final String KEY_KEYBOARD_HEIGHT = "height";
    private static volatile SharedPreferences SP;

    private static SharedPreferences with(Context context) {
        if (SP == null) {
            synchronized (KeyboardSharedPreferences.class) {
                try {
                    if (SP == null) {
                        SP = context.getSharedPreferences(FILE_NAME, 0);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return SP;
    }

    public static int get(Context context, int i10) {
        return with(context).getInt(KEY_KEYBOARD_HEIGHT, i10);
    }

    public static boolean save(Context context, int i10) {
        return with(context).edit().putInt(KEY_KEYBOARD_HEIGHT, i10).commit();
    }
}
