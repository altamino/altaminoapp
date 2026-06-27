package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

@zzard
/* loaded from: classes2.dex */
public final class zzacy {
    private File file;

    @VisibleForTesting
    private Context mContext;

    @VisibleForTesting
    private ExecutorService zzcxc;

    @VisibleForTesting
    private String zzcxf;

    @VisibleForTesting
    private String zzcxg;
    private AtomicBoolean zzcxh;

    @VisibleForTesting
    private BlockingQueue<zzadi> zzcxb = new ArrayBlockingQueue(100);

    @VisibleForTesting
    private LinkedHashMap<String, String> zzcxd = new LinkedHashMap<>();

    @VisibleForTesting
    private Map<String, zzadc> zzcxe = new HashMap();

    public final void zza(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.mContext = context;
        this.zzcxg = str;
        this.zzcxf = str2;
        this.zzcxh = new AtomicBoolean(false);
        this.zzcxh.set(((Boolean) zzyt.zzpe().zzd(zzacu.zzcmz)).booleanValue());
        if (this.zzcxh.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.file = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.zzcxd.put(entry.getKey(), entry.getValue());
        }
        this.zzcxc = Executors.newSingleThreadExecutor();
        this.zzcxc.execute(new zzacz(this));
        this.zzcxe.put("action", zzadc.zzcxk);
        this.zzcxe.put("ad_format", zzadc.zzcxk);
        this.zzcxe.put("e", zzadc.zzcxl);
    }

    public final boolean zza(zzadi zzadiVar) {
        return this.zzcxb.offer(zzadiVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzqt() throws Throwable {
        FileOutputStream fileOutputStream;
        while (true) {
            try {
                zzadi zzadiVarTake = this.zzcxb.take();
                String strZzqx = zzadiVarTake.zzqx();
                if (!TextUtils.isEmpty(strZzqx)) {
                    Map<String, String> mapZza = zza(this.zzcxd, zzadiVarTake.zzqy());
                    Uri.Builder builderBuildUpon = Uri.parse(this.zzcxf).buildUpon();
                    for (Map.Entry<String, String> entry : mapZza.entrySet()) {
                        builderBuildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
                    }
                    String str = builderBuildUpon.build().toString() + "&it=" + strZzqx;
                    if (this.zzcxh.get()) {
                        File file = this.file;
                        if (file != null) {
                            FileOutputStream fileOutputStream2 = null;
                            try {
                                try {
                                    fileOutputStream = new FileOutputStream(file, true);
                                } catch (IOException e) {
                                    e = e;
                                }
                            } catch (Throwable th) {
                                th = th;
                            }
                            try {
                                fileOutputStream.write(str.getBytes());
                                fileOutputStream.write(10);
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e2) {
                                    zzbad.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e2);
                                }
                            } catch (IOException e3) {
                                e = e3;
                                fileOutputStream2 = fileOutputStream;
                                zzbad.zzd("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
                                if (fileOutputStream2 != null) {
                                    try {
                                        fileOutputStream2.close();
                                    } catch (IOException e4) {
                                        zzbad.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e4);
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                fileOutputStream2 = fileOutputStream;
                                if (fileOutputStream2 != null) {
                                    try {
                                        fileOutputStream2.close();
                                    } catch (IOException e5) {
                                        zzbad.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e5);
                                    }
                                }
                                throw th;
                            }
                        } else {
                            zzbad.zzep("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
                        }
                    } else {
                        com.google.android.gms.ads.internal.zzk.zzlg();
                        zzaxi.zzb(this.mContext, this.zzcxg, str);
                    }
                }
            } catch (InterruptedException e6) {
                zzbad.zzd("CsiReporter:reporter interrupted", e6);
                return;
            }
        }
    }

    final Map<String, String> zza(Map<String, String> map, Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            linkedHashMap.put(key, zzch(key).zzg((String) linkedHashMap.get(key), value));
        }
        return linkedHashMap;
    }

    public final zzadc zzch(String str) {
        zzadc zzadcVar = this.zzcxe.get(str);
        return zzadcVar != null ? zzadcVar : zzadc.zzcxj;
    }
}
