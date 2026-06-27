package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzcvg implements zzcva<zzcvf> {
    private final zzbbl zzfqw;
    private final Context zzlj;

    public zzcvg(zzbbl zzbblVar, Context context) {
        this.zzfqw = zzbblVar;
        this.zzlj = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcvf> zzalm() {
        return this.zzfqw.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcvh
            private final zzcvg zzgin;

            {
                this.zzgin = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgin.zzalz();
            }
        });
    }

    private static String zzs(Context context) {
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo("com.android.vending", 128);
            if (packageInfo != null) {
                int i = packageInfo.versionCode;
                String str = packageInfo.packageName;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
                sb.append(i);
                sb.append(".");
                sb.append(str);
                return sb.toString();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    private static String zza(Context context, PackageManager packageManager) {
        ActivityInfo activityInfo;
        ResolveInfo resolveInfoZza = zza(packageManager, "market://details?id=com.google.android.gms.ads");
        if (resolveInfoZza == null || (activityInfo = resolveInfoZza.activityInfo) == null) {
            return null;
        }
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(activityInfo.packageName, 0);
            if (packageInfo != null) {
                int i = packageInfo.versionCode;
                String str = activityInfo.packageName;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
                sb.append(i);
                sb.append(".");
                sb.append(str);
                return sb.toString();
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return null;
    }

    private static ResolveInfo zza(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ com.google.android.gms.internal.ads.zzcvf zzalz() throws java.lang.Exception {
        /*
            r19 = this;
            r0 = r19
            android.content.Context r1 = r0.zzlj
            android.content.pm.PackageManager r1 = r1.getPackageManager()
            java.util.Locale r2 = java.util.Locale.getDefault()
            java.lang.String r3 = "geo:0,0?q=donuts"
            android.content.pm.ResolveInfo r3 = zza(r1, r3)
            r4 = 1
            r5 = 0
            if (r3 == 0) goto L18
            r7 = 1
            goto L19
        L18:
            r7 = 0
        L19:
            java.lang.String r3 = "http://www.google.com"
            android.content.pm.ResolveInfo r3 = zza(r1, r3)
            if (r3 == 0) goto L23
            r8 = 1
            goto L24
        L23:
            r8 = 0
        L24:
            java.lang.String r9 = r2.getCountry()
            java.lang.String r3 = android.os.Build.DEVICE
            java.lang.String r4 = "generic"
            boolean r10 = r3.startsWith(r4)
            android.content.Context r3 = r0.zzlj
            boolean r11 = com.google.android.gms.common.util.DeviceProperties.isLatchsky(r3)
            android.content.Context r3 = r0.zzlj
            boolean r12 = com.google.android.gms.common.util.DeviceProperties.isSidewinder(r3)
            java.lang.String r13 = r2.getLanguage()
            android.content.Context r2 = r0.zzlj
            java.lang.String r14 = zza(r2, r1)
            android.content.Context r2 = r0.zzlj
            java.lang.String r15 = zzs(r2)
            java.lang.String r16 = android.os.Build.FINGERPRINT
            android.content.Context r2 = r0.zzlj
            if (r1 == 0) goto L9b
            android.content.Intent r3 = new android.content.Intent
            java.lang.String r4 = "http://www.example.com"
            android.net.Uri r4 = android.net.Uri.parse(r4)
            java.lang.String r6 = "android.intent.action.VIEW"
            r3.<init>(r6, r4)
            android.content.pm.ResolveInfo r4 = r1.resolveActivity(r3, r5)
            r6 = 65536(0x10000, float:9.18355E-41)
            java.util.List r1 = r1.queryIntentActivities(r3, r6)
            if (r1 == 0) goto L9b
            if (r4 == 0) goto L9b
            r3 = 0
        L6e:
            int r6 = r1.size()
            if (r3 >= r6) goto L9b
            java.lang.Object r6 = r1.get(r3)
            android.content.pm.ResolveInfo r6 = (android.content.pm.ResolveInfo) r6
            android.content.pm.ActivityInfo r5 = r4.activityInfo
            java.lang.String r5 = r5.name
            android.content.pm.ActivityInfo r6 = r6.activityInfo
            java.lang.String r6 = r6.name
            boolean r5 = r5.equals(r6)
            if (r5 == 0) goto L97
            android.content.pm.ActivityInfo r1 = r4.activityInfo
            java.lang.String r1 = r1.packageName
            java.lang.String r2 = com.google.android.gms.internal.ads.zzdtv.zzbu(r2)
            boolean r5 = r1.equals(r2)
            r17 = r5
            goto L9d
        L97:
            int r3 = r3 + 1
            r5 = 0
            goto L6e
        L9b:
            r17 = 0
        L9d:
            com.google.android.gms.internal.ads.zzcvf r1 = new com.google.android.gms.internal.ads.zzcvf
            java.lang.String r18 = android.os.Build.MODEL
            r6 = r1
            r6.<init>(r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcvg.zzalz():com.google.android.gms.internal.ads.zzcvf");
    }
}
