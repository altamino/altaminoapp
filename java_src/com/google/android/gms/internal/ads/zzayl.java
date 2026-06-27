package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
import java.util.regex.Pattern;

@zzard
/* loaded from: classes2.dex */
public final class zzayl extends zzak {
    private final Context zzlj;

    public static zzv zzbc(Context context) {
        zzv zzvVar = new zzv(new zzan(new File(context.getCacheDir(), "admob_volley"), 20971520), new zzayl(context, new zzat()));
        zzvVar.start();
        return zzvVar;
    }

    private zzayl(Context context, zzas zzasVar) {
        super(zzasVar);
        this.zzlj = context;
    }

    @Override // com.google.android.gms.internal.ads.zzak, com.google.android.gms.internal.ads.zzm
    public final zzp zzc(zzr<?> zzrVar) throws zzaf {
        if (zzrVar.zzh() && zzrVar.getMethod() == 0) {
            if (Pattern.matches((String) zzyt.zzpe().zzd(zzacu.zzctw), zzrVar.getUrl())) {
                zzyt.zzpa();
                if (zzazt.zzc(this.zzlj, 13400000)) {
                    zzp zzpVarZzc = new zzaii(this.zzlj).zzc(zzrVar);
                    if (zzpVarZzc != null) {
                        String strValueOf = String.valueOf(zzrVar.getUrl());
                        zzawz.zzds(strValueOf.length() != 0 ? "Got gmscore asset response: ".concat(strValueOf) : new String("Got gmscore asset response: "));
                        return zzpVarZzc;
                    }
                    String strValueOf2 = String.valueOf(zzrVar.getUrl());
                    zzawz.zzds(strValueOf2.length() != 0 ? "Failed to get gmscore asset response: ".concat(strValueOf2) : new String("Failed to get gmscore asset response: "));
                }
            }
        }
        return super.zzc(zzrVar);
    }
}
