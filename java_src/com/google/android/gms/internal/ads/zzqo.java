package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzqo implements zzql {
    private final zzql[] zzbji;
    private final ArrayList<zzql> zzbjj;
    private zzqm zzbjk;
    private zzlr zzbjl;
    private Object zzbjm;
    private zzqq zzbjo;
    private final zzlu zzars = new zzlu();
    private int zzbjn = -1;

    public zzqo(zzql... zzqlVarArr) {
        this.zzbji = zzqlVarArr;
        this.zzbjj = new ArrayList<>(Arrays.asList(zzqlVarArr));
    }

    @Override // com.google.android.gms.internal.ads.zzql
    public final void zza(zzkv zzkvVar, boolean z, zzqm zzqmVar) {
        this.zzbjk = zzqmVar;
        int i = 0;
        while (true) {
            zzql[] zzqlVarArr = this.zzbji;
            if (i >= zzqlVarArr.length) {
                return;
            }
            zzqlVarArr[i].zza(zzkvVar, false, new zzqp(this, i));
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzql
    public final void zzjf() throws IOException {
        zzqq zzqqVar = this.zzbjo;
        if (zzqqVar != null) {
            throw zzqqVar;
        }
        for (zzql zzqlVar : this.zzbji) {
            zzqlVar.zzjf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzql
    public final zzqj zza(int i, zzrt zzrtVar) {
        zzqj[] zzqjVarArr = new zzqj[this.zzbji.length];
        for (int i2 = 0; i2 < zzqjVarArr.length; i2++) {
            zzqjVarArr[i2] = this.zzbji[i2].zza(i, zzrtVar);
        }
        return new zzqn(zzqjVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzql
    public final void zzb(zzqj zzqjVar) {
        zzqn zzqnVar = (zzqn) zzqjVar;
        int i = 0;
        while (true) {
            zzql[] zzqlVarArr = this.zzbji;
            if (i >= zzqlVarArr.length) {
                return;
            }
            zzqlVarArr[i].zzb(zzqnVar.zzbjd[i]);
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzql
    public final void zzjg() {
        for (zzql zzqlVar : this.zzbji) {
            zzqlVar.zzjg();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(int i, zzlr zzlrVar, Object obj) {
        zzqq zzqqVar;
        if (this.zzbjo == null) {
            int iZzhf = zzlrVar.zzhf();
            int i2 = 0;
            while (true) {
                if (i2 < iZzhf) {
                    if (zzlrVar.zza(i2, this.zzars, false).zzaut) {
                        zzqqVar = new zzqq(0);
                        break;
                    }
                    i2++;
                } else {
                    if (this.zzbjn == -1) {
                        this.zzbjn = zzlrVar.zzhg();
                    } else if (zzlrVar.zzhg() != this.zzbjn) {
                        zzqqVar = new zzqq(1);
                    }
                    zzqqVar = null;
                }
            }
            this.zzbjo = zzqqVar;
        }
        if (this.zzbjo != null) {
            return;
        }
        this.zzbjj.remove(this.zzbji[i]);
        if (i == 0) {
            this.zzbjl = zzlrVar;
            this.zzbjm = obj;
        }
        if (this.zzbjj.isEmpty()) {
            this.zzbjk.zzb(this.zzbjl, this.zzbjm);
        }
    }
}
