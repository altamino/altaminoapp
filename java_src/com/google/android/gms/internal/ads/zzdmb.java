package com.google.android.gms.internal.ads;

import java.io.PrintWriter;

/* loaded from: classes2.dex */
public final class zzdmb {
    private static final zzdmc zzhbv;
    private static final int zzhbw;

    public static void zza(Throwable th, Throwable th2) {
        zzhbv.zza(th, th2);
    }

    static final class zza extends zzdmc {
        zza() {
        }

        @Override // com.google.android.gms.internal.ads.zzdmc
        public final void zza(Throwable th, Throwable th2) {
        }

        @Override // com.google.android.gms.internal.ads.zzdmc
        public final void zzg(Throwable th) {
            th.printStackTrace();
        }

        @Override // com.google.android.gms.internal.ads.zzdmc
        public final void zza(Throwable th, PrintWriter printWriter) {
            th.printStackTrace(printWriter);
        }
    }

    public static void zzg(Throwable th) {
        zzhbv.zzg(th);
    }

    public static void zza(Throwable th, PrintWriter printWriter) {
        zzhbv.zza(th, printWriter);
    }

    private static Integer zzave() {
        try {
            return (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
        } catch (Exception e) {
            System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
            e.printStackTrace(System.err);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0015 A[Catch: all -> 0x002a, TryCatch #0 {all -> 0x002a, blocks: (B:5:0x0007, B:7:0x000f, B:8:0x0015, B:10:0x001e, B:11:0x0024), top: B:25:0x0007 }] */
    static {
        /*
            r0 = 1
            java.lang.Integer r1 = zzave()     // Catch: java.lang.Throwable -> L2c
            if (r1 == 0) goto L15
            int r2 = r1.intValue()     // Catch: java.lang.Throwable -> L2a
            r3 = 19
            if (r2 < r3) goto L15
            com.google.android.gms.internal.ads.zzdmg r2 = new com.google.android.gms.internal.ads.zzdmg     // Catch: java.lang.Throwable -> L2a
            r2.<init>()     // Catch: java.lang.Throwable -> L2a
            goto L64
        L15:
            java.lang.String r2 = "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"
            boolean r2 = java.lang.Boolean.getBoolean(r2)     // Catch: java.lang.Throwable -> L2a
            r2 = r2 ^ r0
            if (r2 == 0) goto L24
            com.google.android.gms.internal.ads.zzdmf r2 = new com.google.android.gms.internal.ads.zzdmf     // Catch: java.lang.Throwable -> L2a
            r2.<init>()     // Catch: java.lang.Throwable -> L2a
            goto L64
        L24:
            com.google.android.gms.internal.ads.zzdmb$zza r2 = new com.google.android.gms.internal.ads.zzdmb$zza     // Catch: java.lang.Throwable -> L2a
            r2.<init>()     // Catch: java.lang.Throwable -> L2a
            goto L64
        L2a:
            r2 = move-exception
            goto L2e
        L2c:
            r2 = move-exception
            r1 = 0
        L2e:
            java.io.PrintStream r3 = java.lang.System.err
            java.lang.Class<com.google.android.gms.internal.ads.zzdmb$zza> r4 = com.google.android.gms.internal.ads.zzdmb.zza.class
            java.lang.String r4 = r4.getName()
            java.lang.String r5 = java.lang.String.valueOf(r4)
            int r5 = r5.length()
            int r5 = r5 + 133
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>(r5)
            java.lang.String r5 = "An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy "
            r6.append(r5)
            r6.append(r4)
            java.lang.String r4 = "will be used. The error is: "
            r6.append(r4)
            java.lang.String r4 = r6.toString()
            r3.println(r4)
            java.io.PrintStream r3 = java.lang.System.err
            r2.printStackTrace(r3)
            com.google.android.gms.internal.ads.zzdmb$zza r2 = new com.google.android.gms.internal.ads.zzdmb$zza
            r2.<init>()
        L64:
            com.google.android.gms.internal.ads.zzdmb.zzhbv = r2
            if (r1 != 0) goto L69
            goto L6d
        L69:
            int r0 = r1.intValue()
        L6d:
            com.google.android.gms.internal.ads.zzdmb.zzhbw = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdmb.<clinit>():void");
    }
}
