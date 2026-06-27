package com.narvii.util;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes3.dex */
public class DBAminoLightHelper {
    private static SharedPreferences sharedPreferencesAminoLight;

    public static void InitDatabaseAminoLight(Context context) {
        sharedPreferencesAminoLight = context.getSharedPreferences("aminolight", 0);
    }

    public static void setString(String name, String val) {
        sharedPreferencesAminoLight.edit().putString(name, val).apply();
    }

    public static void setBoolean(String name, boolean val) {
        sharedPreferencesAminoLight.edit().putBoolean(name, val).apply();
    }

    public static String getString(String name, String defValue) {
        return sharedPreferencesAminoLight.getString(name, defValue);
    }

    public static boolean getBoolean(String name, boolean defValue) {
        return sharedPreferencesAminoLight.getBoolean(name, defValue);
    }
}
