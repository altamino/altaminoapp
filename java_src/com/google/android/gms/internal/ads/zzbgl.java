package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;

@zzard
@TargetApi(16)
/* loaded from: classes2.dex */
public abstract class zzbgl extends zzbft {
    private final zzbdk zzefq;
    private boolean zzeih;
    private String zzeio;
    private boolean zzeip;

    public zzbgl(zzbdf zzbdfVar) {
        super(zzbdfVar);
        this.zzeio = null;
        this.zzefq = new zzbdk();
        this.zzefq.zza(new zzbgm(this));
    }

    protected abstract zzhn zzfa(String str);

    protected abstract int zzzw();

    @Override // com.google.android.gms.internal.ads.zzbft, com.google.android.gms.common.api.Releasable
    public void release() {
        this.zzefq.zzyr();
        super.release();
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    protected final String zzey(String str) {
        String strValueOf = String.valueOf(super.zzey(str));
        return strValueOf.length() != 0 ? "cache:".concat(strValueOf) : new String("cache:");
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ea, code lost:
    
        java.lang.Thread.sleep(r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00fc, code lost:
    
        throw new java.io.IOException("Interrupted sleep.");
     */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24, types: [long] */
    /* JADX WARN: Type inference failed for: r1v38 */
    @Override // com.google.android.gms.internal.ads.zzbft
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzex(java.lang.String r34) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbgl.zzex(java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final void abort() {
        synchronized (this) {
            this.zzeih = true;
        }
    }

    public final void zzzx() {
        synchronized (this) {
            this.zzeip = true;
            this.zzefq.removeListener();
        }
    }

    public final zzbdk zzzy() {
        return this.zzefq;
    }
}
