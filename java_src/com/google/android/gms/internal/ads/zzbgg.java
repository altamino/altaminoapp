package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

@zzard
/* loaded from: classes2.dex */
public final class zzbgg extends zzbft {
    private String url;
    private ByteBuffer zzaxl;
    private final zzbde zzefp;
    private boolean zzeih;
    private final zzbfl zzeii;
    private boolean zzeij;
    private final Object zzeik;
    private boolean zzeil;

    public zzbgg(zzbdf zzbdfVar, zzbde zzbdeVar) {
        super(zzbdfVar);
        this.zzefp = zzbdeVar;
        this.zzeii = new zzbfl();
        this.zzeik = new Object();
    }

    public final String getUrl() {
        return this.url;
    }

    public final boolean zzzv() {
        return this.zzeil;
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    protected final String zzey(String str) {
        String strValueOf = String.valueOf(super.zzey(str));
        return strValueOf.length() != 0 ? "cache:".concat(strValueOf) : new String("cache:");
    }

    private final void zzxt() {
        int iPosition = this.zzaxl.position();
        boolean z = iPosition > 0;
        int iZzyp = zzbdk.zzyp();
        int iZzyq = zzbdk.zzyq();
        String str = this.url;
        zza(str, zzey(str), iPosition, 0, z, iZzyp, iZzyq);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0049 A[Catch: Exception -> 0x0030, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0030, blocks: (B:5:0x0026, B:11:0x0049, B:17:0x0096, B:42:0x00ed, B:43:0x0108, B:45:0x010b, B:46:0x012e), top: B:59:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a7 A[Catch: Exception -> 0x013a, TRY_ENTER, TryCatch #1 {Exception -> 0x013a, blocks: (B:3:0x000d, B:9:0x0033, B:12:0x004c, B:13:0x0084, B:19:0x00a7, B:20:0x00a9), top: B:60:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0095 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:? -> B:53:0x0138). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.ads.zzbft
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzex(java.lang.String r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbgg.zzex(java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final void abort() {
        this.zzeih = true;
    }

    public final ByteBuffer getByteBuffer() {
        synchronized (this.zzeik) {
            if (this.zzaxl != null && !this.zzeij) {
                this.zzaxl.flip();
                this.zzeij = true;
            }
            this.zzeih = true;
        }
        return this.zzaxl;
    }
}
