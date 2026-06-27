package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Stack;

/* loaded from: classes2.dex */
public final class zzow implements zznn, zznu {
    private static final zznq zzazt = new zzox();
    private static final int zzbfz = zzsy.zzay("qt  ");
    private long zzack;
    private int zzamk;
    private int zzamm;
    private long zzamn;
    private int zzamr;
    private int zzams;
    private zznp zzbbf;
    private int zzbgb;
    private zzst zzbgc;
    private zzoy[] zzbgd;
    private boolean zzbge;
    private final zzst zzbga = new zzst(16);
    private final Stack<zzok> zzamj = new Stack<>();
    private final zzst zzbaa = new zzst(zzsq.zzaqt);
    private final zzst zzbab = new zzst(4);

    @Override // com.google.android.gms.internal.ads.zznn
    public final void release() {
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final boolean zzfc() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zznn
    public final boolean zza(zzno zznoVar) throws InterruptedException, IOException {
        return zzoz.zzd(zznoVar);
    }

    @Override // com.google.android.gms.internal.ads.zznn
    public final void zza(zznp zznpVar) {
        this.zzbbf = zznpVar;
    }

    @Override // com.google.android.gms.internal.ads.zznn
    public final void zzd(long j, long j2) {
        this.zzamj.clear();
        this.zzbgb = 0;
        this.zzamr = 0;
        this.zzams = 0;
        if (j == 0) {
            zzip();
            return;
        }
        zzoy[] zzoyVarArr = this.zzbgd;
        if (zzoyVarArr != null) {
            for (zzoy zzoyVar : zzoyVarArr) {
                zzpc zzpcVar = zzoyVar.zzbgg;
                int iZzej = zzpcVar.zzej(j2);
                if (iZzej == -1) {
                    iZzej = zzpcVar.zzek(j2);
                }
                zzoyVar.zzamy = iZzej;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x018e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x029d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01bf  */
    @Override // com.google.android.gms.internal.ads.zznn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzno r24, com.google.android.gms.internal.ads.zznt r25) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 670
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzow.zza(com.google.android.gms.internal.ads.zzno, com.google.android.gms.internal.ads.zznt):int");
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final long getDurationUs() {
        return this.zzack;
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final long zzdq(long j) {
        long j2 = Long.MAX_VALUE;
        for (zzoy zzoyVar : this.zzbgd) {
            zzpc zzpcVar = zzoyVar.zzbgg;
            int iZzej = zzpcVar.zzej(j);
            if (iZzej == -1) {
                iZzej = zzpcVar.zzek(j);
            }
            long j3 = zzpcVar.zzahq[iZzej];
            if (j3 < j2) {
                j2 = j3;
            }
        }
        return j2;
    }

    private final void zzip() {
        this.zzamk = 0;
        this.zzbgb = 0;
    }

    private final void zzei(long j) throws zzlm {
        zzpa zzpaVarZza;
        while (!this.zzamj.isEmpty() && this.zzamj.peek().zzbdz == j) {
            zzok zzokVarPop = this.zzamj.pop();
            if (zzokVarPop.type == zzoj.zzako) {
                long jMax = C.TIME_UNSET;
                ArrayList arrayList = new ArrayList();
                zzpo zzpoVarZza = null;
                zznr zznrVar = new zznr();
                zzol zzolVarZzay = zzokVarPop.zzay(zzoj.zzbdk);
                if (zzolVarZzay != null && (zzpoVarZza = zzom.zza(zzolVarZzay, this.zzbge)) != null) {
                    zznrVar.zzb(zzpoVarZza);
                }
                for (int i = 0; i < zzokVarPop.zzamb.size(); i++) {
                    zzok zzokVar = zzokVarPop.zzamb.get(i);
                    if (zzokVar.type == zzoj.zzakq && (zzpaVarZza = zzom.zza(zzokVar, zzokVarPop.zzay(zzoj.zzakp), C.TIME_UNSET, (zzne) null, this.zzbge)) != null) {
                        zzpc zzpcVarZza = zzom.zza(zzpaVarZza, zzokVar.zzaz(zzoj.zzakr).zzaz(zzoj.zzaks).zzaz(zzoj.zzakt), zznrVar);
                        if (zzpcVarZza.zzand != 0) {
                            zzoy zzoyVar = new zzoy(zzpaVarZza, zzpcVarZza, this.zzbbf.zzd(i, zzpaVarZza.type));
                            zzlh zzlhVarZzae = zzpaVarZza.zzaue.zzae(zzpcVarZza.zzbet + 30);
                            if (zzpaVarZza.type == 1) {
                                if (zznrVar.zzii()) {
                                    zzlhVarZzae = zzlhVarZzae.zzc(zznrVar.zzaty, zznrVar.zzatz);
                                }
                                if (zzpoVarZza != null) {
                                    zzlhVarZzae = zzlhVarZzae.zza(zzpoVarZza);
                                }
                            }
                            zzoyVar.zzbgh.zze(zzlhVarZzae);
                            jMax = Math.max(jMax, zzpaVarZza.zzack);
                            arrayList.add(zzoyVar);
                        }
                    }
                }
                this.zzack = jMax;
                this.zzbgd = (zzoy[]) arrayList.toArray(new zzoy[arrayList.size()]);
                this.zzbbf.zzfi();
                this.zzbbf.zza(this);
                this.zzamj.clear();
                this.zzamk = 2;
            } else if (!this.zzamj.isEmpty()) {
                this.zzamj.peek().zzamb.add(zzokVarPop);
            }
        }
        if (this.zzamk != 2) {
            zzip();
        }
    }
}
