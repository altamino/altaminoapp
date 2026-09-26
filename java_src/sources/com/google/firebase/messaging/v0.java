package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.ContextCompat;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
class v0 {
    static final String NO_BACKUP_FILE = "com.google.android.gms.appid-no-backup";
    static final String PREFERENCES = "com.google.android.gms.appid";
    private static final String SCOPE_ALL = "*";
    private static final String STORE_KEY_TOKEN = "|T|";
    final SharedPreferences store;

    static class a {
        private static final String KEY_APP_VERSION = "appVersion";
        private static final String KEY_TIMESTAMP = "timestamp";
        private static final String KEY_TOKEN = "token";
        private static final long REFRESH_PERIOD_MILLIS = TimeUnit.DAYS.toMillis(7);
        final String appVersion;
        final long timestamp;
        final String token;

        static String a(String str, String str2, long j6) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("token", str);
                jSONObject.put(KEY_APP_VERSION, str2);
                jSONObject.put(KEY_TIMESTAMP, j6);
                return jSONObject.toString();
            } catch (JSONException e) {
                Log.w(e.TAG, "Failed to encode token: " + e);
                return null;
            }
        }

        private a(String str, String str2, long j6) {
            this.token = str;
            this.appVersion = str2;
            this.timestamp = j6;
        }

        static a c(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (str.startsWith("{")) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    return new a(jSONObject.getString("token"), jSONObject.getString(KEY_APP_VERSION), jSONObject.getLong(KEY_TIMESTAMP));
                } catch (JSONException e) {
                    Log.w(e.TAG, "Failed to parse token: " + e);
                    return null;
                }
            }
            return new a(str, null, 0L);
        }

        boolean b(String str) {
            if (System.currentTimeMillis() <= this.timestamp + REFRESH_PERIOD_MILLIS && str.equals(this.appVersion)) {
                return false;
            }
            return true;
        }
    }

    public synchronized void c() {
        this.store.edit().clear().commit();
    }

    public synchronized a d(String str, String str2) {
        return a.c(this.store.getString(b(str, str2), null));
    }

    public synchronized boolean e() {
        return this.store.getAll().isEmpty();
    }

    public synchronized void f(String str, String str2, String str3, String str4) {
        String strA = a.a(str3, str4, System.currentTimeMillis());
        if (strA == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.store.edit();
        editorEdit.putString(b(str, str2), strA);
        editorEdit.commit();
    }

    private void a(Context context, String str) {
        File file = new File(ContextCompat.getNoBackupFilesDir(context), str);
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || e()) {
                return;
            }
            Log.i(e.TAG, "App restored, clearing state");
            c();
        } catch (IOException e) {
            if (Log.isLoggable(e.TAG, 3)) {
                Log.d(e.TAG, "Error creating file in no backup dir: " + e.getMessage());
            }
        }
    }

    private String b(String str, String str2) {
        return str + STORE_KEY_TOKEN + str2 + "|*";
    }

    public v0(Context context) {
        this.store = context.getSharedPreferences(PREFERENCES, 0);
        a(context, NO_BACKUP_FILE);
    }
}
