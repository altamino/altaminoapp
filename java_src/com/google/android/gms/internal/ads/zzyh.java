package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import java.util.HashMap;

@zzard
/* loaded from: classes2.dex */
public class zzyh {
    private final zzxx zzchl;
    private final zzxw zzchm;
    private final zzabk zzchn;
    private final zzagk zzcho;
    private final zzatf zzchp;
    private final zzauj zzchq;
    private final zzaqf zzchr;
    private final zzagl zzchs;

    public zzyh(zzxx zzxxVar, zzxw zzxwVar, zzabk zzabkVar, zzagk zzagkVar, zzatf zzatfVar, zzauj zzaujVar, zzaqf zzaqfVar, zzagl zzaglVar) {
        this.zzchl = zzxxVar;
        this.zzchm = zzxwVar;
        this.zzchn = zzabkVar;
        this.zzcho = zzagkVar;
        this.zzchp = zzatfVar;
        this.zzchq = zzaujVar;
        this.zzchr = zzaqfVar;
        this.zzchs = zzaglVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        zzyt.zzpa().zza(context, zzyt.zzpg().zzbsx, "gmob-apps", bundle, true);
    }

    public final zzzf zzb(Context context, String str, zzamp zzampVar) {
        return new zzym(this, context, str, zzampVar).zzd(context, false);
    }

    public final zzaem zza(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return new zzyo(this, frameLayout, frameLayout2, context).zzd(context, false);
    }

    public final zzaer zza(View view, HashMap<String, View> map, HashMap<String, View> map2) {
        return new zzyp(this, view, map, map2).zzd(view.getContext(), false);
    }

    public final zzatt zzc(Context context, String str, zzamp zzampVar) {
        return new zzyr(this, context, str, zzampVar).zzd(context, false);
    }

    public final zzaqg zzb(Activity activity) {
        zzyj zzyjVar = new zzyj(this, activity);
        Intent intent = activity.getIntent();
        boolean booleanExtra = false;
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            zzbad.zzen("useClientJar flag not found in activity intent extras.");
        } else {
            booleanExtra = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        return zzyjVar.zzd(activity, booleanExtra);
    }
}
