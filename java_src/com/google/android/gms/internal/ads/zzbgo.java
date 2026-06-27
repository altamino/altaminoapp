package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

@zzard
/* loaded from: classes2.dex */
public final class zzbgo extends zzbft implements zzsj<zzrv> {
    private String url;
    private ByteBuffer zzaxl;
    private final zzbde zzefp;
    private boolean zzeih;
    private final zzbfl zzeii;
    private boolean zzeij;
    private final Object zzeik;
    private boolean zzeil;
    private final zzbgn zzeit;

    public zzbgo(zzbdf zzbdfVar, zzbde zzbdeVar) {
        super(zzbdfVar);
        this.zzefp = zzbdeVar;
        this.zzeit = new zzbgn();
        this.zzeii = new zzbfl();
        this.zzeik = new Object();
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final /* bridge */ /* synthetic */ void zzc(zzrv zzrvVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final /* bridge */ /* synthetic */ void zze(zzrv zzrvVar) {
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
        int iZzzz = (int) this.zzeit.zzzz();
        int iZzl = (int) this.zzeii.zzl(this.zzaxl);
        int iPosition = this.zzaxl.position();
        int iRound = Math.round(iZzl * (iPosition / iZzzz));
        boolean z = iRound > 0;
        int iZzyp = zzbfa.zzyp();
        int iZzyq = zzbfa.zzyq();
        String str = this.url;
        zza(str, zzey(str), iPosition, iZzzz, iRound, iZzl, z, iZzyp, iZzyq);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004b A[Catch: Exception -> 0x0032, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x0032, blocks: (B:5:0x0028, B:11:0x004b, B:17:0x0098, B:42:0x00ef, B:43:0x010a, B:45:0x010d, B:46:0x0130), top: B:66:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a9 A[Catch: Exception -> 0x013c, TRY_ENTER, TryCatch #1 {Exception -> 0x013c, blocks: (B:3:0x000d, B:9:0x0035, B:12:0x004e, B:13:0x0086, B:19:0x00a9, B:20:0x00ab), top: B:61:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0097 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:? -> B:53:0x013a). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.ads.zzbft
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzex(java.lang.String r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbgo.zzex(java.lang.String):boolean");
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

    @Override // com.google.android.gms.internal.ads.zzsj
    public final /* synthetic */ void zza(zzrv zzrvVar, zzry zzryVar) {
        zzrv zzrvVar2 = zzrvVar;
        if (zzrvVar2 instanceof zzsa) {
            this.zzeit.zza((zzsa) zzrvVar2);
        }
    }
}
