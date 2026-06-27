package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcew implements zzdti<Set<zzbuz<zzczz>>> {
    private final zzdtu<Context> zzeoj;
    private final zzdtu<Executor> zzfgh;
    private final zzdtu<String> zzfuh;
    private final zzdtu<Map<zzczs, zzcez>> zzfui;

    public zzcew(zzdtu<String> zzdtuVar, zzdtu<Context> zzdtuVar2, zzdtu<Executor> zzdtuVar3, zzdtu<Map<zzczs, zzcez>> zzdtuVar4) {
        this.zzfuh = zzdtuVar;
        this.zzeoj = zzdtuVar2;
        this.zzfgh = zzdtuVar3;
        this.zzfui = zzdtuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        Set setEmptySet;
        final String str = this.zzfuh.get();
        Context context = this.zzeoj.get();
        Executor executor = this.zzfgh.get();
        Map<zzczs, zzcez> map = this.zzfui.get();
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcul)).booleanValue()) {
            zzwj zzwjVar = new zzwj(new zzwo(context));
            zzwjVar.zza(new zzwk(str) { // from class: com.google.android.gms.internal.ads.zzcey
                private final String zzddy;

                {
                    this.zzddy = str;
                }

                @Override // com.google.android.gms.internal.ads.zzwk
                public final void zza(zzxn zzxnVar) {
                    zzxnVar.zzcfd = this.zzddy;
                }
            });
            setEmptySet = Collections.singleton(new zzbuz(new zzcex(zzwjVar, map), executor));
        } else {
            setEmptySet = Collections.emptySet();
        }
        return (Set) zzdto.zza(setEmptySet, "Cannot return null from a non-@Nullable @Provides method");
    }
}
