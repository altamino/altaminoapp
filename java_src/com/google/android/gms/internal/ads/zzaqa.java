package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.Map;
import org.json.JSONException;

@zzard
/* loaded from: classes2.dex */
public final class zzaqa extends zzaqb implements zzaho<zzbgz> {
    private float density;
    private int rotation;
    private final WindowManager zzbtf;
    private final zzbgz zzdbs;
    private final zzacf zzdiv;
    private DisplayMetrics zzdiw;
    private int zzdix;
    private int zzdiy;
    private int zzdiz;
    private int zzdja;
    private int zzdjb;
    private int zzdjc;
    private final Context zzlj;

    public zzaqa(zzbgz zzbgzVar, Context context, zzacf zzacfVar) {
        super(zzbgzVar);
        this.zzdix = -1;
        this.zzdiy = -1;
        this.zzdiz = -1;
        this.zzdja = -1;
        this.zzdjb = -1;
        this.zzdjc = -1;
        this.zzdbs = zzbgzVar;
        this.zzlj = context;
        this.zzdiv = zzacfVar;
        this.zzbtf = (WindowManager) context.getSystemService("window");
    }

    public final void zzj(int i, int i2) {
        int i3 = this.zzlj instanceof Activity ? com.google.android.gms.ads.internal.zzk.zzlg().zzf((Activity) this.zzlj)[0] : 0;
        if (this.zzdbs.zzaag() == null || !this.zzdbs.zzaag().zzabx()) {
            this.zzdjb = zzyt.zzpa().zzb(this.zzlj, this.zzdbs.getWidth());
            this.zzdjc = zzyt.zzpa().zzb(this.zzlj, this.zzdbs.getHeight());
        }
        zzb(i, i2 - i3, this.zzdjb, this.zzdjc);
        this.zzdbs.zzaai().zzi(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final /* synthetic */ void zza(zzbgz zzbgzVar, Map map) throws JSONException {
        this.zzdiw = new DisplayMetrics();
        Display defaultDisplay = this.zzbtf.getDefaultDisplay();
        defaultDisplay.getMetrics(this.zzdiw);
        this.density = this.zzdiw.density;
        this.rotation = defaultDisplay.getRotation();
        zzyt.zzpa();
        DisplayMetrics displayMetrics = this.zzdiw;
        this.zzdix = zzazt.zzb(displayMetrics, displayMetrics.widthPixels);
        zzyt.zzpa();
        DisplayMetrics displayMetrics2 = this.zzdiw;
        this.zzdiy = zzazt.zzb(displayMetrics2, displayMetrics2.heightPixels);
        Activity activityZzyd = this.zzdbs.zzyd();
        if (activityZzyd == null || activityZzyd.getWindow() == null) {
            this.zzdiz = this.zzdix;
            this.zzdja = this.zzdiy;
        } else {
            com.google.android.gms.ads.internal.zzk.zzlg();
            int[] iArrZzd = zzaxi.zzd(activityZzyd);
            zzyt.zzpa();
            this.zzdiz = zzazt.zzb(this.zzdiw, iArrZzd[0]);
            zzyt.zzpa();
            this.zzdja = zzazt.zzb(this.zzdiw, iArrZzd[1]);
        }
        if (this.zzdbs.zzaag().zzabx()) {
            this.zzdjb = this.zzdix;
            this.zzdjc = this.zzdiy;
        } else {
            this.zzdbs.measure(0, 0);
        }
        zza(this.zzdix, this.zzdiy, this.zzdiz, this.zzdja, this.density, this.rotation);
        this.zzdbs.zza("onDeviceFeaturesReceived", new zzapx(new zzapz().zzy(this.zzdiv.zzqi()).zzx(this.zzdiv.zzqj()).zzz(this.zzdiv.zzql()).zzaa(this.zzdiv.zzqk()).zzab(true)).toJson());
        int[] iArr = new int[2];
        this.zzdbs.getLocationOnScreen(iArr);
        zzj(zzyt.zzpa().zzb(this.zzlj, iArr[0]), zzyt.zzpa().zzb(this.zzlj, iArr[1]));
        if (zzbad.isLoggable(2)) {
            zzbad.zzeo("Dispatching Ready Event.");
        }
        zzdi(this.zzdbs.zzyh().zzbsx);
    }
}
