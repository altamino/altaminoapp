package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

@zzard
/* loaded from: classes2.dex */
public final class zzaqx implements zzarb {
    private static final Object lock = new Object();

    @VisibleForTesting
    private static zzarb zzdkz;

    @VisibleForTesting
    private static zzarb zzdla;
    private final Context zzcko;
    private final Object zzdlb;
    private final WeakHashMap<Thread, Boolean> zzdlc;
    private final zzbai zzdld;
    private final ExecutorService zzxf;

    public static zzarb zzo(Context context) {
        synchronized (lock) {
            if (zzdkz == null) {
                if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcle)).booleanValue()) {
                    zzdkz = new zzaqx(context);
                } else {
                    zzdkz = new zzarc();
                }
            }
        }
        return zzdkz;
    }

    public static zzarb zzc(Context context, zzbai zzbaiVar) {
        synchronized (lock) {
            if (zzdla == null) {
                if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcle)).booleanValue()) {
                    zzaqx zzaqxVar = new zzaqx(context, zzbaiVar);
                    Thread thread = Looper.getMainLooper().getThread();
                    if (thread != null) {
                        synchronized (zzaqxVar.zzdlb) {
                            zzaqxVar.zzdlc.put(thread, true);
                        }
                        thread.setUncaughtExceptionHandler(new zzaqz(zzaqxVar, thread.getUncaughtExceptionHandler()));
                    }
                    Thread.setDefaultUncaughtExceptionHandler(new zzaqy(zzaqxVar, Thread.getDefaultUncaughtExceptionHandler()));
                    zzdla = zzaqxVar;
                } else {
                    zzdla = new zzarc();
                }
            }
        }
        return zzdla;
    }

    private zzaqx(Context context) {
        this(context, zzbai.zzxc());
    }

    private zzaqx(Context context, zzbai zzbaiVar) {
        this.zzdlb = new Object();
        this.zzdlc = new WeakHashMap<>();
        this.zzxf = Executors.newCachedThreadPool();
        this.zzcko = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzdld = zzbaiVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void zza(java.lang.Thread r10, java.lang.Throwable r11) {
        /*
            r9 = this;
            r10 = 1
            r0 = 0
            if (r11 == 0) goto L40
            r1 = r11
            r2 = 0
            r3 = 0
        L7:
            if (r1 == 0) goto L3b
            java.lang.StackTraceElement[] r4 = r1.getStackTrace()
            int r5 = r4.length
            r6 = r3
            r3 = r2
            r2 = 0
        L11:
            if (r2 >= r5) goto L34
            r7 = r4[r2]
            java.lang.String r8 = r7.getClassName()
            boolean r8 = com.google.android.gms.internal.ads.zzazt.zzej(r8)
            if (r8 == 0) goto L20
            r3 = 1
        L20:
            java.lang.Class<com.google.android.gms.internal.ads.zzaqx> r8 = com.google.android.gms.internal.ads.zzaqx.class
            java.lang.String r8 = r8.getName()
            java.lang.String r7 = r7.getClassName()
            boolean r7 = r8.equals(r7)
            if (r7 == 0) goto L31
            r6 = 1
        L31:
            int r2 = r2 + 1
            goto L11
        L34:
            java.lang.Throwable r1 = r1.getCause()
            r2 = r3
            r3 = r6
            goto L7
        L3b:
            if (r2 == 0) goto L40
            if (r3 != 0) goto L40
            goto L41
        L40:
            r10 = 0
        L41:
            if (r10 == 0) goto L4a
            r10 = 1065353216(0x3f800000, float:1.0)
            java.lang.String r0 = ""
            r9.zza(r11, r0, r10)
        L4a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaqx.zza(java.lang.Thread, java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.zzarb
    public final void zza(Throwable th, String str) {
        zza(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.zzarb
    public final void zza(Throwable th, String str, float f) {
        if (zzazt.zzc(th) == null) {
            return;
        }
        String name = th.getClass().getName();
        StringWriter stringWriter = new StringWriter();
        zzdmb.zza(th, new PrintWriter(stringWriter));
        String string = stringWriter.toString();
        int i = 0;
        boolean z = Math.random() < ((double) f);
        int i2 = f > 0.0f ? (int) (1.0f / f) : 1;
        if (z) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(zza(name, string, str, i2).toString());
            int size = arrayList.size();
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                this.zzxf.submit(new zzara(this, new zzbah(), (String) obj));
            }
        }
    }

    @VisibleForTesting
    private final Uri.Builder zza(String str, String str2, String str3, int i) {
        boolean zIsCallerInstantApp;
        String packageName;
        try {
            zIsCallerInstantApp = Wrappers.packageManager(this.zzcko).isCallerInstantApp();
        } catch (Throwable th) {
            zzbad.zzc("Error fetching instant app info", th);
            zIsCallerInstantApp = false;
        }
        try {
            packageName = this.zzcko.getPackageName();
        } catch (Throwable unused) {
            zzbad.zzep("Cannot obtain package name, proceeding.");
            packageName = IjkMediaMeta.IJKM_VAL_TYPE__UNKNOWN;
        }
        Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(zIsCallerInstantApp)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
        String str4 = Build.MANUFACTURER;
        String string = Build.MODEL;
        if (!string.startsWith(str4)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str4).length() + 1 + String.valueOf(string).length());
            sb.append(str4);
            sb.append(" ");
            sb.append(string);
            string = sb.toString();
        }
        return builderAppendQueryParameter.appendQueryParameter("device", string).appendQueryParameter("js", this.zzdld.zzbsx).appendQueryParameter("appid", packageName).appendQueryParameter("exceptiontype", str).appendQueryParameter("stacktrace", str2).appendQueryParameter("eids", TextUtils.join(",", zzacu.zzqn())).appendQueryParameter("exceptionkey", str3).appendQueryParameter("cl", "248613007").appendQueryParameter("rc", "dev").appendQueryParameter("session_id", zzyt.zzpf()).appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(zzyt.zzpe().zzd(zzacu.zzcwf)));
    }
}
