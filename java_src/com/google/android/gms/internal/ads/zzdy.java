package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.ads.zzbp;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public class zzdy {
    private static final String TAG = "zzdy";
    protected Context zzlj;
    private ExecutorService zzxf;
    private DexClassLoader zzxg;
    private zzdj zzxh;
    private byte[] zzxi;
    private boolean zzxl;
    private zzda zzxo;
    private Map<Pair<String, String>, zzfi> zzxr;
    private volatile AdvertisingIdClient zzxj = null;
    private volatile boolean zzwf = false;
    private Future zzxk = null;
    private volatile zzbp.zza zzxm = null;
    private Future zzxn = null;
    protected boolean zzxp = false;
    private boolean zzxq = false;
    private boolean zzxs = false;
    private boolean zzxt = true;
    private boolean zzxu = false;

    final class zza extends BroadcastReceiver {
        private zza() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                zzdy.this.zzxt = true;
            } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                zzdy.this.zzxt = false;
            }
        }

        /* synthetic */ zza(zzdy zzdyVar, zzdz zzdzVar) {
            this();
        }
    }

    public static zzdy zza(Context context, String str, String str2, boolean z) throws Throwable {
        zzdz zzdzVar;
        zzdy zzdyVar = new zzdy(context);
        try {
            zzdyVar.zzxf = Executors.newCachedThreadPool(new zzdz());
            zzdyVar.zzwf = z;
            if (z) {
                zzdyVar.zzxk = zzdyVar.zzxf.submit(new zzea(zzdyVar));
            }
            zzdyVar.zzxf.execute(new zzec(zzdyVar));
            try {
                GoogleApiAvailabilityLight googleApiAvailabilityLight = GoogleApiAvailabilityLight.getInstance();
                zzdyVar.zzxp = googleApiAvailabilityLight.getApkVersion(zzdyVar.zzlj) > 0;
                zzdyVar.zzxq = googleApiAvailabilityLight.isGooglePlayServicesAvailable(zzdyVar.zzlj) == 0;
            } catch (Throwable unused) {
            }
            zzdyVar.zza(0, true);
            if (zzef.isMainThread() && ((Boolean) zzyt.zzpe().zzd(zzacu.zzcrn)).booleanValue()) {
                throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
            }
            zzdzVar = null;
            zzdyVar.zzxh = new zzdj(null);
        } catch (zzdv unused2) {
        }
        try {
            zzdyVar.zzxi = zzdyVar.zzxh.zzan(str);
            try {
                try {
                    File cacheDir = zzdyVar.zzlj.getCacheDir();
                    if (cacheDir == null && (cacheDir = zzdyVar.zzlj.getDir("dex", 0)) == null) {
                        throw new zzdv();
                    }
                    File file = new File(String.format("%s/%s.jar", cacheDir, "1542658731108"));
                    if (!file.exists()) {
                        byte[] bArrZza = zzdyVar.zzxh.zza(zzdyVar.zzxi, str2);
                        file.createNewFile();
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        fileOutputStream.write(bArrZza, 0, bArrZza.length);
                        fileOutputStream.close();
                    }
                    zzdyVar.zzb(cacheDir, "1542658731108");
                    try {
                        zzdyVar.zzxg = new DexClassLoader(file.getAbsolutePath(), cacheDir.getAbsolutePath(), null, zzdyVar.zzlj.getClassLoader());
                        zzb(file);
                        zzdyVar.zza(cacheDir, "1542658731108");
                        zzao(String.format("%s/%s.dex", cacheDir, "1542658731108"));
                        if (!zzdyVar.zzxu) {
                            IntentFilter intentFilter = new IntentFilter();
                            intentFilter.addAction("android.intent.action.USER_PRESENT");
                            intentFilter.addAction("android.intent.action.SCREEN_OFF");
                            zzdyVar.zzlj.registerReceiver(new zza(zzdyVar, zzdzVar), intentFilter);
                            zzdyVar.zzxu = true;
                        }
                        zzdyVar.zzxo = new zzda(zzdyVar);
                        zzdyVar.zzxs = true;
                        return zzdyVar;
                    } catch (Throwable th) {
                        zzb(file);
                        zzdyVar.zza(cacheDir, "1542658731108");
                        zzao(String.format("%s/%s.dex", cacheDir, "1542658731108"));
                        throw th;
                    }
                } catch (zzdk e) {
                    throw new zzdv(e);
                } catch (FileNotFoundException e2) {
                    throw new zzdv(e2);
                }
            } catch (IOException e3) {
                throw new zzdv(e3);
            } catch (NullPointerException e4) {
                throw new zzdv(e4);
            }
        } catch (zzdk e5) {
            throw new zzdv(e5);
        }
    }

    public final Context getContext() {
        return this.zzlj;
    }

    public final boolean isInitialized() {
        return this.zzxs;
    }

    public final ExecutorService zzch() {
        return this.zzxf;
    }

    public final DexClassLoader zzci() {
        return this.zzxg;
    }

    public final zzdj zzcj() {
        return this.zzxh;
    }

    public final byte[] zzck() {
        return this.zzxi;
    }

    public final boolean zzcl() {
        return this.zzxp;
    }

    public final zzda zzcm() {
        return this.zzxo;
    }

    public final boolean zzcn() {
        return this.zzxq;
    }

    public final boolean zzco() {
        return this.zzxt;
    }

    public final zzbp.zza zzcp() {
        return this.zzxm;
    }

    public final Future zzcq() {
        return this.zzxn;
    }

    private zzdy(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.zzxl = applicationContext != null;
        this.zzlj = this.zzxl ? applicationContext : context;
        this.zzxr = new HashMap();
    }

    private final void zza(File file, String str) throws Throwable {
        FileInputStream fileInputStream;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (file2.exists()) {
            return;
        }
        File file3 = new File(String.format("%s/%s.dex", file, str));
        if (!file3.exists()) {
            return;
        }
        long length = file3.length();
        if (length <= 0) {
            return;
        }
        byte[] bArr = new byte[(int) length];
        FileOutputStream fileOutputStream = null;
        try {
            fileInputStream = new FileInputStream(file3);
            try {
                try {
                    if (fileInputStream.read(bArr) <= 0) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused) {
                        }
                        zzb(file3);
                        return;
                    }
                    System.out.print("test");
                    System.out.print("test");
                    System.out.print("test");
                    zzbp.zzd.zza zzaVarZzk = zzbp.zzd.zzbc().zzl(zzdmr.zzz(Build.VERSION.SDK.getBytes())).zzk(zzdmr.zzz(str.getBytes()));
                    byte[] bytes = this.zzxh.zzb(this.zzxi, bArr).getBytes();
                    zzaVarZzk.zzi(zzdmr.zzz(bytes)).zzj(zzdmr.zzz(zzci.zzb(bytes)));
                    file2.createNewFile();
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                    try {
                        byte[] byteArray = ((zzbp.zzd) ((zzdob) zzaVarZzk.zzaya())).toByteArray();
                        fileOutputStream2.write(byteArray, 0, byteArray.length);
                        fileOutputStream2.close();
                        try {
                            fileInputStream.close();
                        } catch (IOException unused2) {
                        }
                        try {
                            fileOutputStream2.close();
                        } catch (IOException unused3) {
                        }
                        zzb(file3);
                    } catch (zzdk | IOException | NoSuchAlgorithmException unused4) {
                        fileOutputStream = fileOutputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused5) {
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused6) {
                            }
                        }
                        zzb(file3);
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused7) {
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused8) {
                            }
                        }
                        zzb(file3);
                        throw th;
                    }
                } catch (zzdk | IOException | NoSuchAlgorithmException unused9) {
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (zzdk | IOException | NoSuchAlgorithmException unused10) {
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    private static void zzao(String str) {
        zzb(new File(str));
    }

    private static void zzb(File file) {
        if (!file.exists()) {
            Log.d(TAG, String.format("File %s not found. No need for deletion", file.getAbsolutePath()));
        } else {
            file.delete();
        }
    }

    private final boolean zzb(File file, String str) throws Throwable {
        FileInputStream fileInputStream;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (!file2.exists()) {
            return false;
        }
        File file3 = new File(String.format("%s/%s.dex", file, str));
        if (file3.exists()) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            long length = file2.length();
            if (length <= 0) {
                zzb(file2);
                return false;
            }
            byte[] bArr = new byte[(int) length];
            fileInputStream = new FileInputStream(file2);
            try {
                try {
                    if (fileInputStream.read(bArr) <= 0) {
                        Log.d(TAG, "Cannot read the cache data.");
                        zzb(file2);
                        try {
                            fileInputStream.close();
                        } catch (IOException unused) {
                        }
                        return false;
                    }
                    zzbp.zzd zzdVarZzc = zzbp.zzd.zzc(bArr, zzdno.zzaxe());
                    if (str.equals(new String(zzdVarZzc.zzba().toByteArray())) && Arrays.equals(zzdVarZzc.zzaz().toByteArray(), zzci.zzb(zzdVarZzc.zzay().toByteArray())) && Arrays.equals(zzdVarZzc.zzbb().toByteArray(), Build.VERSION.SDK.getBytes())) {
                        byte[] bArrZza = this.zzxh.zza(this.zzxi, new String(zzdVarZzc.zzay().toByteArray()));
                        file3.createNewFile();
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file3);
                        try {
                            fileOutputStream2.write(bArrZza, 0, bArrZza.length);
                            try {
                                fileInputStream.close();
                            } catch (IOException unused2) {
                            }
                            try {
                                fileOutputStream2.close();
                            } catch (IOException unused3) {
                            }
                            return true;
                        } catch (zzdk | IOException | NoSuchAlgorithmException unused4) {
                            fileOutputStream = fileOutputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException unused5) {
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException unused6) {
                                }
                            }
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException unused7) {
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                    throw th;
                                } catch (IOException unused8) {
                                    throw th;
                                }
                            }
                            throw th;
                        }
                    }
                    zzb(file2);
                    try {
                        fileInputStream.close();
                    } catch (IOException unused9) {
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (zzdk | IOException | NoSuchAlgorithmException unused10) {
            }
        } catch (zzdk | IOException | NoSuchAlgorithmException unused11) {
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    public final boolean zza(String str, String str2, Class<?>... clsArr) {
        if (this.zzxr.containsKey(new Pair(str, str2))) {
            return false;
        }
        this.zzxr.put(new Pair<>(str, str2), new zzfi(this, str, str2, clsArr));
        return true;
    }

    public final Method zzc(String str, String str2) {
        zzfi zzfiVar = this.zzxr.get(new Pair(str, str2));
        if (zzfiVar == null) {
            return null;
        }
        return zzfiVar.zzdc();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzcr() {
        try {
            if (this.zzxj == null && this.zzxl) {
                AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(this.zzlj);
                advertisingIdClient.start();
                this.zzxj = advertisingIdClient;
            }
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException unused) {
            this.zzxj = null;
        }
    }

    final void zza(int i, boolean z) {
        if (this.zzxq) {
            Future<?> futureSubmit = this.zzxf.submit(new zzeb(this, i, z));
            if (i == 0) {
                this.zzxn = futureSubmit;
            }
        }
    }

    final zzbp.zza zzb(int i, boolean z) throws InterruptedException {
        if (i > 0 && z) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException unused) {
            }
        }
        return zzcs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zza(int i, zzbp.zza zzaVar) {
        if (i < 4) {
            return zzaVar == null || !zzaVar.zzai() || zzaVar.zzae().equals("0000000000000000000000000000000000000000000000000000000000000000") || !zzaVar.zzak() || !zzaVar.zzal().zzbe() || zzaVar.zzal().zzbf() == -2;
        }
        return false;
    }

    private final zzbp.zza zzcs() {
        try {
            return zzdal.zzj(this.zzlj, this.zzlj.getPackageName(), Integer.toString(this.zzlj.getPackageManager().getPackageInfo(this.zzlj.getPackageName(), 0).versionCode));
        } catch (Throwable unused) {
            return null;
        }
    }

    public final AdvertisingIdClient zzct() throws ExecutionException, InterruptedException, TimeoutException {
        if (!this.zzwf) {
            return null;
        }
        if (this.zzxj != null) {
            return this.zzxj;
        }
        Future future = this.zzxk;
        if (future != null) {
            try {
                future.get(2000L, TimeUnit.MILLISECONDS);
                this.zzxk = null;
            } catch (InterruptedException | ExecutionException unused) {
            } catch (TimeoutException unused2) {
                this.zzxk.cancel(true);
            }
        }
        return this.zzxj;
    }

    public final int zzcd() {
        if (this.zzxo != null) {
            return zzda.zzcd();
        }
        return Integer.MIN_VALUE;
    }
}
