package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.HashMap;
import java.util.Map;

@zzard
/* loaded from: classes2.dex */
public final class zzbhq extends zzaas {
    private boolean zzaay;
    private boolean zzaaz;
    private int zzabv;
    private zzaau zzdfz;
    private final zzbdf zzebt;
    private final boolean zzelv;
    private final boolean zzelw;
    private boolean zzelx;
    private float zzelz;
    private float zzema;
    private float zzemb;
    private final Object lock = new Object();
    private boolean zzely = true;

    public zzbhq(zzbdf zzbdfVar, float f, boolean z, boolean z2) {
        this.zzebt = zzbdfVar;
        this.zzelz = f;
        this.zzelv = z;
        this.zzelw = z2;
    }

    @Override // com.google.android.gms.internal.ads.zzaar
    public final void play() {
        zzf("play", null);
    }

    @Override // com.google.android.gms.internal.ads.zzaar
    public final void pause() {
        zzf("pause", null);
    }

    @Override // com.google.android.gms.internal.ads.zzaar
    public final void mute(boolean z) {
        zzf(z ? "mute" : "unmute", null);
    }

    public final void zzb(zzacd zzacdVar) {
        boolean z = zzacdVar.zzaax;
        boolean z2 = zzacdVar.zzaay;
        boolean z3 = zzacdVar.zzaaz;
        synchronized (this.lock) {
            this.zzaay = z2;
            this.zzaaz = z3;
        }
        zzf("initialState", CollectionUtils.mapOf("muteStart", z ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0", "customControlsRequested", z2 ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0", "clickToExpandRequested", z3 ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0"));
    }

    private final void zzf(String str, Map<String, String> map) {
        final HashMap map2 = map == null ? new HashMap() : new HashMap(map);
        map2.put("action", str);
        zzbbm.zzeae.execute(new Runnable(this, map2) { // from class: com.google.android.gms.internal.ads.zzbhr
            private final Map zzdza;
            private final zzbhq zzemc;

            {
                this.zzemc = this;
                this.zzdza = map2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzemc.zzj(this.zzdza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaar
    public final boolean isMuted() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzely;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzaar
    public final int getPlaybackState() {
        int i;
        synchronized (this.lock) {
            i = this.zzabv;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzaar
    public final float getAspectRatio() {
        float f;
        synchronized (this.lock) {
            f = this.zzemb;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzaar
    public final float zzpv() {
        float f;
        synchronized (this.lock) {
            f = this.zzelz;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzaar
    public final float zzpw() {
        float f;
        synchronized (this.lock) {
            f = this.zzema;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzaar
    public final void zza(zzaau zzaauVar) {
        synchronized (this.lock) {
            this.zzdfz = zzaauVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaar
    public final zzaau zzpx() throws RemoteException {
        zzaau zzaauVar;
        synchronized (this.lock) {
            zzaauVar = this.zzdfz;
        }
        return zzaauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaar
    public final boolean isCustomControlsEnabled() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzelv && this.zzaay;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    @Override // com.google.android.gms.internal.ads.zzaar
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isClickToExpandEnabled() {
        /*
            r2 = this;
            boolean r0 = r2.isCustomControlsEnabled()
            java.lang.Object r1 = r2.lock
            monitor-enter(r1)
            if (r0 != 0) goto L15
            boolean r0 = r2.zzaaz     // Catch: java.lang.Throwable -> L13
            if (r0 == 0) goto L15
            boolean r0 = r2.zzelw     // Catch: java.lang.Throwable -> L13
            if (r0 == 0) goto L15
            r0 = 1
            goto L16
        L13:
            r0 = move-exception
            goto L18
        L15:
            r0 = 0
        L16:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L13
            return r0
        L18:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L13
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbhq.isClickToExpandEnabled():boolean");
    }

    public final void zze(float f) {
        synchronized (this.lock) {
            this.zzema = f;
        }
    }

    public final void zzabs() {
        boolean z;
        int i;
        synchronized (this.lock) {
            z = this.zzely;
            i = this.zzabv;
            this.zzabv = 3;
        }
        zza(i, 3, z, z);
    }

    public final void zza(float f, float f2, int i, boolean z, float f3) {
        boolean z2;
        int i2;
        synchronized (this.lock) {
            this.zzelz = f2;
            this.zzema = f;
            z2 = this.zzely;
            this.zzely = z;
            i2 = this.zzabv;
            this.zzabv = i;
            float f4 = this.zzemb;
            this.zzemb = f3;
            if (Math.abs(this.zzemb - f4) > 1.0E-4f) {
                this.zzebt.getView().invalidate();
            }
        }
        zza(i2, i, z2, z);
    }

    private final void zza(final int i, final int i2, final boolean z, final boolean z2) {
        zzbbm.zzeae.execute(new Runnable(this, i, i2, z, z2) { // from class: com.google.android.gms.internal.ads.zzbhs
            private final int zzdwj;
            private final int zzdwk;
            private final boolean zzeka;
            private final boolean zzekb;
            private final zzbhq zzemc;

            {
                this.zzemc = this;
                this.zzdwj = i;
                this.zzdwk = i2;
                this.zzeka = z;
                this.zzekb = z2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzemc.zzb(this.zzdwj, this.zzdwk, this.zzeka, this.zzekb);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x005e A[Catch: RemoteException -> 0x0044, all -> 0x007f, TryCatch #0 {RemoteException -> 0x0044, blocks: (B:36:0x003a, B:38:0x003e, B:42:0x0048, B:44:0x004c, B:46:0x0053, B:48:0x0057, B:50:0x005e, B:52:0x0062, B:53:0x0067, B:55:0x006e, B:57:0x0072), top: B:65:0x003a, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x007d A[Catch: all -> 0x007f, DONT_GENERATE, TryCatch #1 {, blocks: (B:8:0x000a, B:30:0x002f, B:34:0x0036, B:36:0x003a, B:38:0x003e, B:42:0x0048, B:44:0x004c, B:46:0x0053, B:48:0x0057, B:50:0x005e, B:52:0x0062, B:53:0x0067, B:55:0x006e, B:57:0x0072, B:60:0x007d, B:59:0x0078), top: B:67:0x000a, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ void zzb(int r7, int r8, boolean r9, boolean r10) {
        /*
            r6 = this;
            java.lang.Object r0 = r6.lock
            monitor-enter(r0)
            r1 = 0
            r2 = 1
            if (r7 == r8) goto L9
            r7 = 1
            goto La
        L9:
            r7 = 0
        La:
            boolean r3 = r6.zzelx     // Catch: java.lang.Throwable -> L7f
            if (r3 != 0) goto L12
            if (r8 != r2) goto L12
            r3 = 1
            goto L13
        L12:
            r3 = 0
        L13:
            if (r7 == 0) goto L19
            if (r8 != r2) goto L19
            r4 = 1
            goto L1a
        L19:
            r4 = 0
        L1a:
            if (r7 == 0) goto L21
            r5 = 2
            if (r8 != r5) goto L21
            r5 = 1
            goto L22
        L21:
            r5 = 0
        L22:
            if (r7 == 0) goto L29
            r7 = 3
            if (r8 != r7) goto L29
            r7 = 1
            goto L2a
        L29:
            r7 = 0
        L2a:
            if (r9 == r10) goto L2e
            r8 = 1
            goto L2f
        L2e:
            r8 = 0
        L2f:
            boolean r9 = r6.zzelx     // Catch: java.lang.Throwable -> L7f
            if (r9 != 0) goto L35
            if (r3 == 0) goto L36
        L35:
            r1 = 1
        L36:
            r6.zzelx = r1     // Catch: java.lang.Throwable -> L7f
            if (r3 == 0) goto L46
            com.google.android.gms.internal.ads.zzaau r9 = r6.zzdfz     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            if (r9 == 0) goto L46
            com.google.android.gms.internal.ads.zzaau r9 = r6.zzdfz     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            r9.onVideoStart()     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            goto L46
        L44:
            r7 = move-exception
            goto L78
        L46:
            if (r4 == 0) goto L51
            com.google.android.gms.internal.ads.zzaau r9 = r6.zzdfz     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            if (r9 == 0) goto L51
            com.google.android.gms.internal.ads.zzaau r9 = r6.zzdfz     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            r9.onVideoPlay()     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
        L51:
            if (r5 == 0) goto L5c
            com.google.android.gms.internal.ads.zzaau r9 = r6.zzdfz     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            if (r9 == 0) goto L5c
            com.google.android.gms.internal.ads.zzaau r9 = r6.zzdfz     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            r9.onVideoPause()     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
        L5c:
            if (r7 == 0) goto L6c
            com.google.android.gms.internal.ads.zzaau r7 = r6.zzdfz     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            if (r7 == 0) goto L67
            com.google.android.gms.internal.ads.zzaau r7 = r6.zzdfz     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            r7.onVideoEnd()     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
        L67:
            com.google.android.gms.internal.ads.zzbdf r7 = r6.zzebt     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            r7.zzyk()     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
        L6c:
            if (r8 == 0) goto L7d
            com.google.android.gms.internal.ads.zzaau r7 = r6.zzdfz     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            if (r7 == 0) goto L7d
            com.google.android.gms.internal.ads.zzaau r7 = r6.zzdfz     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            r7.onVideoMute(r10)     // Catch: android.os.RemoteException -> L44 java.lang.Throwable -> L7f
            goto L7d
        L78:
            java.lang.String r8 = "#007 Could not call remote method."
            com.google.android.gms.internal.ads.zzbad.zze(r8, r7)     // Catch: java.lang.Throwable -> L7f
        L7d:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7f
            return
        L7f:
            r7 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7f
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbhq.zzb(int, int, boolean, boolean):void");
    }

    final /* synthetic */ void zzj(Map map) {
        this.zzebt.zza("pubVideoCmd", (Map<String, ?>) map);
    }
}
