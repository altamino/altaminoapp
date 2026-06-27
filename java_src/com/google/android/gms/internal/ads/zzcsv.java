package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzcsv implements zzcva<zzcsu> {
    private final zzbbl zzfqw;
    private final Context zzlj;

    public zzcsv(Context context, zzbbl zzbblVar) {
        this.zzlj = context;
        this.zzfqw = zzbblVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcsu> zzalm() {
        return this.zzfqw.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcsw
            private final zzcsv zzghe;

            {
                this.zzghe = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                String strZzvm;
                String strZzvo;
                String strZzmn;
                com.google.android.gms.ads.internal.zzk.zzlg();
                zzuu zzuuVarZzvk = com.google.android.gms.ads.internal.zzk.zzlk().zzvc().zzvk();
                Bundle bundle = null;
                if (zzuuVarZzvk != null && zzuuVarZzvk != null && (!com.google.android.gms.ads.internal.zzk.zzlk().zzvc().zzvl() || !com.google.android.gms.ads.internal.zzk.zzlk().zzvc().zzvn())) {
                    if (zzuuVarZzvk.zzmz()) {
                        zzuuVarZzvk.wakeup();
                    }
                    zzuo zzuoVarZzmx = zzuuVarZzvk.zzmx();
                    if (zzuoVarZzmx != null) {
                        strZzvm = zzuoVarZzmx.zzmm();
                        strZzmn = zzuoVarZzmx.zzmn();
                        strZzvo = zzuoVarZzmx.zzmo();
                        if (strZzvm != null) {
                            com.google.android.gms.ads.internal.zzk.zzlk().zzvc().zzdt(strZzvm);
                        }
                        if (strZzvo != null) {
                            com.google.android.gms.ads.internal.zzk.zzlk().zzvc().zzdu(strZzvo);
                        }
                    } else {
                        strZzvm = com.google.android.gms.ads.internal.zzk.zzlk().zzvc().zzvm();
                        strZzvo = com.google.android.gms.ads.internal.zzk.zzlk().zzvc().zzvo();
                        strZzmn = null;
                    }
                    Bundle bundle2 = new Bundle(1);
                    if (strZzvo != null && !com.google.android.gms.ads.internal.zzk.zzlk().zzvc().zzvn()) {
                        bundle2.putString("v_fp_vertical", strZzvo);
                    }
                    if (strZzvm != null && !com.google.android.gms.ads.internal.zzk.zzlk().zzvc().zzvl()) {
                        bundle2.putString("fingerprint", strZzvm);
                        if (!strZzvm.equals(strZzmn)) {
                            bundle2.putString("v_fp", strZzmn);
                        }
                    }
                    if (!bundle2.isEmpty()) {
                        bundle = bundle2;
                    }
                }
                return new zzcsu(bundle);
            }
        });
    }
}
