package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

@zzard
/* loaded from: classes2.dex */
public final class zzbfa implements zzkw, zzqi, zzsj<zzrv>, zztn {

    @VisibleForTesting
    private static int zzefc;

    @VisibleForTesting
    private static int zzefd;
    private int bytesTransferred;
    private final zzbde zzefp;
    private final zzlo zzegz;
    private zzkv zzehc;
    private ByteBuffer zzehd;
    private boolean zzehe;
    private zzbfi zzehf;
    private final Context zzlj;
    private Set<WeakReference<zzbev>> zzehg = new HashSet();
    private final zzbez zzegy = new zzbez();
    private final zzlo zzeha = new zzms(zzpg.zzbhn);
    private final zzrj zzehb = new zzrg();

    public zzbfa(Context context, zzbde zzbdeVar) {
        this.zzlj = context;
        this.zzefp = zzbdeVar;
        this.zzegz = new zzth(this.zzlj, zzpg.zzbhn, 0L, zzaxi.zzdvv, this, -1);
        if (zzawz.zzvj()) {
            String strValueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 28);
            sb.append("ExoPlayerAdapter initialize ");
            sb.append(strValueOf);
            zzawz.zzds(sb.toString());
        }
        zzefc++;
        this.zzehc = zzkz.zza(new zzlo[]{this.zzeha, this.zzegz}, this.zzehb, this.zzegy);
        this.zzehc.zza(this);
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final void zza(zzln zzlnVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final void zza(zzlr zzlrVar, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final void zza(zzrb zzrbVar, zzro zzroVar) {
    }

    @Override // com.google.android.gms.internal.ads.zztn
    public final void zzb(int i, long j) {
    }

    @Override // com.google.android.gms.internal.ads.zztn
    public final void zzb(Surface surface) {
    }

    @Override // com.google.android.gms.internal.ads.zztn
    public final void zze(zznc zzncVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final /* bridge */ /* synthetic */ void zze(zzrv zzrvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zztn
    public final void zze(String str, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zztn
    public final void zzf(zznc zzncVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final void zzgt() {
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final void zzh(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zztn
    public final void zzk(zzlh zzlhVar) {
    }

    public final zzkv zzzt() {
        return this.zzehc;
    }

    public static int zzyp() {
        return zzefc;
    }

    public static int zzyq() {
        return zzefd;
    }

    public final void zza(zzbfi zzbfiVar) {
        this.zzehf = zzbfiVar;
    }

    public final zzbez zzzu() {
        return this.zzegy;
    }

    public final void zza(Uri[] uriArr, String str) {
        zza(uriArr, str, ByteBuffer.allocate(0), false);
    }

    public final void zza(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zzql zzqoVar;
        this.zzehd = byteBuffer;
        this.zzehe = z;
        if (uriArr.length == 1) {
            zzqoVar = zza(uriArr[0], str);
        } else {
            zzql[] zzqlVarArr = new zzql[uriArr.length];
            for (int i = 0; i < uriArr.length; i++) {
                zzqlVarArr[i] = zza(uriArr[i], str);
            }
            zzqoVar = new zzqo(zzqlVarArr);
        }
        this.zzehc.zza(zzqoVar);
        zzefd++;
    }

    public final void release() {
        zzkv zzkvVar = this.zzehc;
        if (zzkvVar != null) {
            zzkvVar.zzb(this);
            this.zzehc.release();
            this.zzehc = null;
            zzefd--;
        }
    }

    public final long getBytesTransferred() {
        return this.bytesTransferred;
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zzb(IOException iOException) {
        zzbfi zzbfiVar = this.zzehf;
        if (zzbfiVar != null) {
            zzbfiVar.zza("onLoadError", iOException);
        }
    }

    @Override // com.google.android.gms.internal.ads.zztn
    public final void zza(int i, int i2, int i3, float f) {
        zzbfi zzbfiVar = this.zzehf;
        if (zzbfiVar != null) {
            zzbfiVar.zzo(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final void zza(boolean z, int i) {
        zzbfi zzbfiVar = this.zzehf;
        if (zzbfiVar != null) {
            zzbfiVar.zzde(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final void zza(zzku zzkuVar) {
        zzbfi zzbfiVar = this.zzehf;
        if (zzbfiVar != null) {
            zzbfiVar.zza("onPlayerError", zzkuVar);
        }
    }

    public final void zzdc(int i) {
        Iterator<WeakReference<zzbev>> it = this.zzehg.iterator();
        while (it.hasNext()) {
            zzbev zzbevVar = it.next().get();
            if (zzbevVar != null) {
                zzbevVar.setReceiveBufferSize(i);
            }
        }
    }

    final void zza(Surface surface, boolean z) {
        zzky zzkyVar = new zzky(this.zzegz, 1, surface);
        if (z) {
            this.zzehc.zzb(zzkyVar);
        } else {
            this.zzehc.zza(zzkyVar);
        }
    }

    final void zzb(float f, boolean z) {
        zzky zzkyVar = new zzky(this.zzeha, 2, Float.valueOf(f));
        if (z) {
            this.zzehc.zzb(zzkyVar);
        } else {
            this.zzehc.zza(zzkyVar);
        }
    }

    final void zzap(boolean z) {
        for (int i = 0; i < this.zzehc.zzgs(); i++) {
            this.zzehb.zzg(i, !z);
        }
    }

    @VisibleForTesting
    private final zzql zza(Uri uri, final String str) {
        final zzrw zzrwVar;
        zzrw zzrwVar2;
        if (this.zzehe && this.zzehd.limit() > 0) {
            final byte[] bArr = new byte[this.zzehd.limit()];
            this.zzehd.get(bArr);
            zzrwVar2 = new zzrw(bArr) { // from class: com.google.android.gms.internal.ads.zzbfb
                private final byte[] zzdzb;

                {
                    this.zzdzb = bArr;
                }

                @Override // com.google.android.gms.internal.ads.zzrw
                public final zzrv zzju() {
                    return new zzru(this.zzdzb);
                }
            };
        } else {
            if (this.zzefp.zzeek > 0) {
                zzrwVar = new zzrw(this, str) { // from class: com.google.android.gms.internal.ads.zzbfc
                    private final String zzdbk;
                    private final zzbfa zzehh;

                    {
                        this.zzehh = this;
                        this.zzdbk = str;
                    }

                    @Override // com.google.android.gms.internal.ads.zzrw
                    public final zzrv zzju() {
                        return this.zzehh.zzew(this.zzdbk);
                    }
                };
            } else {
                zzrwVar = new zzrw(this, str) { // from class: com.google.android.gms.internal.ads.zzbfd
                    private final String zzdbk;
                    private final zzbfa zzehh;

                    {
                        this.zzehh = this;
                        this.zzdbk = str;
                    }

                    @Override // com.google.android.gms.internal.ads.zzrw
                    public final zzrv zzju() {
                        return this.zzehh.zzev(this.zzdbk);
                    }
                };
            }
            final zzrw zzrwVar3 = this.zzefp.zzeel ? new zzrw(this, zzrwVar) { // from class: com.google.android.gms.internal.ads.zzbfe
                private final zzbfa zzehh;
                private final zzrw zzehi;

                {
                    this.zzehh = this;
                    this.zzehi = zzrwVar;
                }

                @Override // com.google.android.gms.internal.ads.zzrw
                public final zzrv zzju() {
                    return this.zzehh.zza(this.zzehi);
                }
            } : zzrwVar;
            if (this.zzehd.limit() > 0) {
                final byte[] bArr2 = new byte[this.zzehd.limit()];
                this.zzehd.get(bArr2);
                zzrwVar3 = new zzrw(zzrwVar3, bArr2) { // from class: com.google.android.gms.internal.ads.zzbff
                    private final zzrw zzehj;
                    private final byte[] zzehk;

                    {
                        this.zzehj = zzrwVar3;
                        this.zzehk = bArr2;
                    }

                    @Override // com.google.android.gms.internal.ads.zzrw
                    public final zzrv zzju() {
                        zzrw zzrwVar4 = this.zzehj;
                        byte[] bArr3 = this.zzehk;
                        return new zzbfj(new zzru(bArr3), bArr3.length, zzrwVar4.zzju());
                    }
                };
            }
            zzrwVar2 = zzrwVar3;
        }
        return new zzqh(uri, zzrwVar2, zzbfg.zzehl, -1, zzaxi.zzdvv, this, null, this.zzefp.zzeei);
    }

    public final void finalize() throws Throwable {
        zzefc--;
        if (zzawz.zzvj()) {
            String strValueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 26);
            sb.append("ExoPlayerAdapter finalize ");
            sb.append(strValueOf);
            zzawz.zzds(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final /* synthetic */ void zzc(zzrv zzrvVar, int i) {
        this.bytesTransferred += i;
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final /* synthetic */ void zza(zzrv zzrvVar, zzry zzryVar) {
        this.bytesTransferred = 0;
    }

    final /* synthetic */ zzrv zza(zzrw zzrwVar) {
        return new zzbex(this.zzlj, zzrwVar.zzju(), this, new zzbey(this) { // from class: com.google.android.gms.internal.ads.zzbfh
            private final zzbfa zzehh;

            {
                this.zzehh = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbey
            public final void zzd(boolean z, long j) {
                this.zzehh.zzf(z, j);
            }
        });
    }

    final /* synthetic */ void zzf(boolean z, long j) {
        zzbfi zzbfiVar = this.zzehf;
        if (zzbfiVar != null) {
            zzbfiVar.zzd(z, j);
        }
    }

    final /* synthetic */ zzrv zzev(String str) {
        zzbfa zzbfaVar = this.zzefp.zzeel ? null : this;
        zzbde zzbdeVar = this.zzefp;
        return new zzsa(str, null, zzbfaVar, zzbdeVar.zzeef, zzbdeVar.zzeeh, true, null);
    }

    final /* synthetic */ zzrv zzew(String str) {
        zzbfa zzbfaVar = this.zzefp.zzeel ? null : this;
        zzbde zzbdeVar = this.zzefp;
        zzbev zzbevVar = new zzbev(str, zzbfaVar, zzbdeVar.zzeef, zzbdeVar.zzeeh, zzbdeVar.zzeek);
        this.zzehg.add(new WeakReference<>(zzbevVar));
        return zzbevVar;
    }
}
