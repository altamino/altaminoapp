package com.narvii.util.googleplay;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.narvii.app.NVApplication;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLDecoder;

/* loaded from: classes3.dex */
public class ReferrerReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) throws IOException {
        String stringExtra = intent.getStringExtra("referrer");
        Log.i("referrer: " + stringExtra);
        if (!TextUtils.isEmpty(stringExtra) && android.util.Log.isLoggable("narvii.referrer", 4)) {
            android.util.Log.i("narvii.referrer", stringExtra);
            File file = new File(Utils.getAvailableFileDir(context), "referrer.txt");
            if (file.isFile()) {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    fileOutputStream.write(stringExtra.getBytes());
                    fileOutputStream.close();
                } catch (IOException unused) {
                }
            }
        }
        String strQuery = query(stringExtra, "amino_tracking_id");
        if (TextUtils.isEmpty(strQuery)) {
            return;
        }
        NVApplication.instance();
        ((SharedPreferences) NVApplication.instance().getService("prefs")).edit().putString("trackingId", strQuery).apply();
    }

    protected static String query(String str, String str2) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        int i = 0;
        while (true) {
            int iIndexOf = str.indexOf(38, i);
            int i2 = iIndexOf != -1 ? iIndexOf : length;
            int iIndexOf2 = str.indexOf(61, i);
            if (iIndexOf2 > i2 || iIndexOf2 == -1) {
                iIndexOf2 = i2;
            }
            if (iIndexOf2 - i == str2.length() && str.regionMatches(i, str2, 0, str2.length())) {
                if (iIndexOf2 == i2) {
                    return "";
                }
                try {
                    return URLDecoder.decode(str.substring(iIndexOf2 + 1, i2), "utf-8");
                } catch (Exception unused) {
                    return null;
                }
            }
            if (iIndexOf == -1) {
                return null;
            }
            i = iIndexOf + 1;
        }
    }
}
