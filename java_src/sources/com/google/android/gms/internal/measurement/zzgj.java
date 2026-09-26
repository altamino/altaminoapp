package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import androidx.collection.SimpleArrayMap;
import com.google.common.base.l;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public final class zzgj {

    public static class zza {
        private static volatile l<zzgh> zza;

        private zza() {
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0034 A[Catch: all -> 0x0021, TryCatch #0 {all -> 0x0021, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0018, B:18:0x0034, B:27:0x0050, B:13:0x0023, B:15:0x002b, B:20:0x003a, B:22:0x0040, B:25:0x0047, B:26:0x004b, B:28:0x0052), top: B:32:0x0003 }] */
        public static l<zzgh> zza(Context context) {
            l<zzgh> lVar;
            l<zzgh> lVarZza;
            synchronized (zza.class) {
                try {
                    lVar = zza;
                    if (lVar == null) {
                        new zzgj();
                        String str = Build.TYPE;
                        String str2 = Build.TAGS;
                        if (!str.equals("eng") && !str.equals("userdebug")) {
                            lVarZza = l.a();
                        } else if (str2.contains("dev-keys") || str2.contains("test-keys")) {
                            if (zzfw.zza() && !context.isDeviceProtectedStorage()) {
                                context = context.createDeviceProtectedStorageContext();
                            }
                            lVarZza = zzgj.zza(context);
                        } else {
                            lVarZza = l.a();
                        }
                        lVar = lVarZza;
                        zza = lVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return lVar;
        }
    }

    private static zzgh zza(Context context, File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            try {
                SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
                HashMap map = new HashMap();
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        Log.w("HermeticFileOverrides", "Parsed " + String.valueOf(file) + " for Android package " + context.getPackageName());
                        zzgc zzgcVar = new zzgc(simpleArrayMap);
                        bufferedReader.close();
                        return zzgcVar;
                    }
                    String[] strArrSplit = line.split(" ", 3);
                    if (strArrSplit.length != 3) {
                        Log.e("HermeticFileOverrides", "Invalid: " + line);
                    } else {
                        String strZza = zza(strArrSplit[0]);
                        String strDecode = Uri.decode(zza(strArrSplit[1]));
                        String strDecode2 = (String) map.get(strArrSplit[2]);
                        if (strDecode2 == null) {
                            String strZza2 = zza(strArrSplit[2]);
                            strDecode2 = Uri.decode(strZza2);
                            if (strDecode2.length() < 1024 || strDecode2 == strZza2) {
                                map.put(strZza2, strDecode2);
                            }
                        }
                        if (!simpleArrayMap.containsKey(strZza)) {
                            simpleArrayMap.put(strZza, new SimpleArrayMap());
                        }
                        ((SimpleArrayMap) simpleArrayMap.get(strZza)).put(strDecode, strDecode2);
                    }
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                    } catch (Exception unused) {
                    }
                }
                throw th;
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static l<File> zzb(Context context) {
        try {
            File file = new File(context.getDir("phenotype_hermetic", 0), "overrides.txt");
            return file.exists() ? l.d(file) : l.a();
        } catch (RuntimeException e) {
            Log.e("HermeticFileOverrides", "no data dir", e);
            return l.a();
        }
    }

    @VisibleForTesting
    static l<zzgh> zza(Context context) {
        l<zzgh> lVarA;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            StrictMode.allowThreadDiskWrites();
            l<File> lVarZzb = zzb(context);
            if (lVarZzb.c()) {
                lVarA = l.d(zza(context, lVarZzb.b()));
            } else {
                lVarA = l.a();
            }
            return lVarA;
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
    }

    private static final String zza(String str) {
        return new String(str);
    }
}
