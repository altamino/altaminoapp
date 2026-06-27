package com.google.android.gms.internal.ads;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.internal.ads.zzwt;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class zzcjq {
    public static ArrayList<zzwt.zzi.zza> zza(SQLiteDatabase sQLiteDatabase) {
        ArrayList<zzwt.zzi.zza> arrayList = new ArrayList<>();
        Cursor cursorQuery = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
        while (cursorQuery.moveToNext()) {
            try {
                arrayList.add(zzwt.zzi.zza.zzh(cursorQuery.getBlob(cursorQuery.getColumnIndexOrThrow("serialized_proto_data"))));
            } catch (zzdok e) {
                zzbad.zzen("Unable to deserialize proto from offline signals database:");
                zzbad.zzen(e.getMessage());
            }
        }
        cursorQuery.close();
        return arrayList;
    }

    public static int zza(SQLiteDatabase sQLiteDatabase, int i) {
        int i2 = 0;
        String[] strArr = {"total"};
        String[] strArr2 = new String[1];
        if (i == 1) {
            strArr2[0] = "failed_requests";
        } else if (i == 2) {
            strArr2[0] = "total_requests";
        }
        Cursor cursorQuery = sQLiteDatabase.query("offline_signal_statistics", strArr, "statistic_name = ?", strArr2, null, null, null);
        if (cursorQuery.getCount() > 0) {
            cursorQuery.moveToNext();
            i2 = 0 + cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("total"));
        }
        cursorQuery.close();
        return i2;
    }
}
