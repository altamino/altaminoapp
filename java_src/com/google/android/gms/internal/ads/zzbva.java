package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes2.dex */
public final class zzbva extends zzbts<zzue> implements zzue {
    private final zzcxm zzfig;
    private Map<View, zzua> zzfld;
    private final Context zzlj;

    public zzbva(Context context, Set<zzbuz<zzue>> set, zzcxm zzcxmVar) {
        super(set);
        this.zzfld = new WeakHashMap(1);
        this.zzlj = context;
        this.zzfig = zzcxmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzue
    public final synchronized void zza(final zzud zzudVar) {
        zza(new zzbtu(zzudVar) { // from class: com.google.android.gms.internal.ads.zzbvb
            private final zzud zzfle;

            {
                this.zzfle = zzudVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbtu
            public final void zzr(Object obj) {
                ((zzue) obj).zza(this.zzfle);
            }
        });
    }

    public final synchronized void zzq(View view) {
        zzua zzuaVar = this.zzfld.get(view);
        if (zzuaVar == null) {
            zzuaVar = new zzua(this.zzlj, view);
            zzuaVar.zza(this);
            this.zzfld.put(view, zzuaVar);
        }
        if (this.zzfig != null && this.zzfig.zzdol) {
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcqk)).booleanValue()) {
                zzuaVar.zzes(((Long) zzyt.zzpe().zzd(zzacu.zzcqj)).longValue());
                return;
            }
        }
        zzuaVar.zzmk();
    }

    public final synchronized void zzr(View view) {
        if (this.zzfld.containsKey(view)) {
            this.zzfld.get(view).zzb(this);
            this.zzfld.remove(view);
        }
    }
}
