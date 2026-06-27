package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.exoplayer2.C;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzacu;
import com.google.android.gms.internal.ads.zzagv;
import com.google.android.gms.internal.ads.zzagx;
import com.google.android.gms.internal.ads.zzaqb;
import com.google.android.gms.internal.ads.zzaqh;
import com.google.android.gms.internal.ads.zzard;
import com.google.android.gms.internal.ads.zzaxi;
import com.google.android.gms.internal.ads.zzaxo;
import com.google.android.gms.internal.ads.zzbad;
import com.google.android.gms.internal.ads.zzbgz;
import com.google.android.gms.internal.ads.zzbhf;
import com.google.android.gms.internal.ads.zzbii;
import com.google.android.gms.internal.ads.zzbij;
import com.google.android.gms.internal.ads.zzwj;
import com.google.android.gms.internal.ads.zzyt;
import java.util.Collections;

@zzard
/* loaded from: classes.dex */
public class zzd extends zzaqh implements zzx {

    @VisibleForTesting
    private static final int zzdjk = Color.argb(0, 0, 0, 0);
    protected final Activity mActivity;

    @VisibleForTesting
    AdOverlayInfoParcel zzdjl;

    @VisibleForTesting
    zzbgz zzdjm;

    @VisibleForTesting
    private zzj zzdjn;

    @VisibleForTesting
    private zzp zzdjo;

    @VisibleForTesting
    private FrameLayout zzdjq;

    @VisibleForTesting
    private WebChromeClient.CustomViewCallback zzdjr;

    @VisibleForTesting
    private zzi zzdju;
    private Runnable zzdjy;
    private boolean zzdjz;
    private boolean zzdka;

    @VisibleForTesting
    private boolean zzdjp = false;

    @VisibleForTesting
    private boolean zzdjs = false;

    @VisibleForTesting
    private boolean zzdjt = false;

    @VisibleForTesting
    private boolean zzdjv = false;

    @VisibleForTesting
    int zzdjw = 0;
    private final Object zzdjx = new Object();
    private boolean zzdkb = false;
    private boolean zzdkc = false;
    private boolean zzdkd = true;

    public zzd(Activity activity) {
        this.mActivity = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void onActivityResult(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void onRestart() {
    }

    public final void close() {
        this.zzdjw = 2;
        this.mActivity.finish();
    }

    public final void zzte() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdjl;
        if (adOverlayInfoParcel != null && this.zzdjp) {
            setRequestedOrientation(adOverlayInfoParcel.orientation);
        }
        if (this.zzdjq != null) {
            this.mActivity.setContentView(this.zzdju);
            this.zzdka = true;
            this.zzdjq.removeAllViews();
            this.zzdjq = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.zzdjr;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.zzdjr = null;
        }
        this.zzdjp = false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzx
    public final void zztf() {
        this.zzdjw = 1;
        this.mActivity.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void onBackPressed() {
        this.zzdjw = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final boolean zztg() {
        this.zzdjw = 0;
        zzbgz zzbgzVar = this.zzdjm;
        if (zzbgzVar == null) {
            return true;
        }
        boolean zZzaap = zzbgzVar.zzaap();
        if (!zZzaap) {
            this.zzdjm.zza("onbackblocked", Collections.emptyMap());
        }
        return zZzaap;
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public void onCreate(Bundle bundle) throws zzh {
        this.mActivity.requestWindowFeature(1);
        this.zzdjs = bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        try {
            this.zzdjl = AdOverlayInfoParcel.zzc(this.mActivity.getIntent());
            if (this.zzdjl == null) {
                throw new zzh("Could not get info for ad overlay.");
            }
            if (this.zzdjl.zzbtc.zzdzd > 7500000) {
                this.zzdjw = 3;
            }
            if (this.mActivity.getIntent() != null) {
                this.zzdkd = this.mActivity.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
            }
            if (this.zzdjl.zzdkt != null) {
                this.zzdjt = this.zzdjl.zzdkt.zzbre;
            } else {
                this.zzdjt = false;
            }
            if (this.zzdjt && this.zzdjl.zzdkt.zzbrj != -1) {
                new zzk(this).zzvi();
            }
            if (bundle == null) {
                if (this.zzdjl.zzdkm != null && this.zzdkd) {
                    this.zzdjl.zzdkm.zzta();
                }
                if (this.zzdjl.zzdkr != 1 && this.zzdjl.zzcgi != null) {
                    this.zzdjl.zzcgi.onAdClicked();
                }
            }
            this.zzdju = new zzi(this.mActivity, this.zzdjl.zzdks, this.zzdjl.zzbtc.zzbsx);
            this.zzdju.setId(1000);
            com.google.android.gms.ads.internal.zzk.zzli().zzg(this.mActivity);
            int i = this.zzdjl.zzdkr;
            if (i == 1) {
                zzad(false);
                return;
            }
            if (i == 2) {
                this.zzdjn = new zzj(this.zzdjl.zzdbs);
                zzad(false);
            } else {
                if (i == 3) {
                    zzad(true);
                    return;
                }
                throw new zzh("Could not determine ad overlay type.");
            }
        } catch (zzh e) {
            zzbad.zzep(e.getMessage());
            this.zzdjw = 3;
            this.mActivity.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void onStart() {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcui)).booleanValue()) {
            zzbgz zzbgzVar = this.zzdjm;
            if (zzbgzVar != null && !zzbgzVar.isDestroyed()) {
                com.google.android.gms.ads.internal.zzk.zzli();
                zzaxo.zzb(this.zzdjm);
            } else {
                zzbad.zzep("The webview does not exist. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void onResume() {
        zzo zzoVar = this.zzdjl.zzdkm;
        if (zzoVar != null) {
            zzoVar.onResume();
        }
        zza(this.mActivity.getResources().getConfiguration());
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcui)).booleanValue()) {
            return;
        }
        zzbgz zzbgzVar = this.zzdjm;
        if (zzbgzVar != null && !zzbgzVar.isDestroyed()) {
            com.google.android.gms.ads.internal.zzk.zzli();
            zzaxo.zzb(this.zzdjm);
        } else {
            zzbad.zzep("The webview does not exist. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void onPause() {
        zzte();
        zzo zzoVar = this.zzdjl.zzdkm;
        if (zzoVar != null) {
            zzoVar.onPause();
        }
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcui)).booleanValue() && this.zzdjm != null && (!this.mActivity.isFinishing() || this.zzdjn == null)) {
            com.google.android.gms.ads.internal.zzk.zzli();
            zzaxo.zza(this.zzdjm);
        }
        zzti();
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zzac(IObjectWrapper iObjectWrapper) {
        zza((Configuration) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzdjs);
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void onStop() {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcui)).booleanValue() && this.zzdjm != null && (!this.mActivity.isFinishing() || this.zzdjn == null)) {
            com.google.android.gms.ads.internal.zzk.zzli();
            zzaxo.zza(this.zzdjm);
        }
        zzti();
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void onDestroy() {
        zzbgz zzbgzVar = this.zzdjm;
        if (zzbgzVar != null) {
            this.zzdju.removeView(zzbgzVar.getView());
        }
        zzti();
    }

    private final void zzac(boolean z) {
        int iIntValue = ((Integer) zzyt.zzpe().zzd(zzacu.zzcuk)).intValue();
        zzq zzqVar = new zzq();
        zzqVar.size = 50;
        zzqVar.paddingLeft = z ? iIntValue : 0;
        zzqVar.paddingRight = z ? 0 : iIntValue;
        zzqVar.paddingTop = 0;
        zzqVar.paddingBottom = iIntValue;
        this.zzdjo = new zzp(this.mActivity, zzqVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(z ? 11 : 9);
        zza(z, this.zzdjl.zzdko);
        this.zzdju.addView(this.zzdjo, layoutParams);
    }

    @Override // com.google.android.gms.internal.ads.zzaqg
    public final void zzdd() {
        this.zzdka = true;
    }

    public final void zza(boolean z, boolean z2) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        com.google.android.gms.ads.internal.zzh zzhVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        com.google.android.gms.ads.internal.zzh zzhVar2;
        boolean z3 = true;
        boolean z4 = ((Boolean) zzyt.zzpe().zzd(zzacu.zzcpe)).booleanValue() && (adOverlayInfoParcel2 = this.zzdjl) != null && (zzhVar2 = adOverlayInfoParcel2.zzdkt) != null && zzhVar2.zzbrl;
        boolean z5 = ((Boolean) zzyt.zzpe().zzd(zzacu.zzcpf)).booleanValue() && (adOverlayInfoParcel = this.zzdjl) != null && (zzhVar = adOverlayInfoParcel.zzdkt) != null && zzhVar.zzbrm;
        if (z && z2 && z4 && !z5) {
            new zzaqb(this.zzdjm, "useCustomClose").zzdh("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzp zzpVar = this.zzdjo;
        if (zzpVar != null) {
            if (!z5 && (!z2 || z4)) {
                z3 = false;
            }
            zzpVar.zzaf(z3);
        }
    }

    public final void zzth() {
        this.zzdju.removeView(this.zzdjo);
        zzac(true);
    }

    public final void setRequestedOrientation(int i) {
        if (this.mActivity.getApplicationInfo().targetSdkVersion >= ((Integer) zzyt.zzpe().zzd(zzacu.zzcwg)).intValue()) {
            if (this.mActivity.getApplicationInfo().targetSdkVersion <= ((Integer) zzyt.zzpe().zzd(zzacu.zzcwh)).intValue()) {
                if (Build.VERSION.SDK_INT >= ((Integer) zzyt.zzpe().zzd(zzacu.zzcwi)).intValue()) {
                    if (Build.VERSION.SDK_INT <= ((Integer) zzyt.zzpe().zzd(zzacu.zzcwj)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            this.mActivity.setRequestedOrientation(i);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzk.zzlk().zzb(th, "AdOverlay.setRequestedOrientation");
        }
    }

    public final void zza(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        this.zzdjq = new FrameLayout(this.mActivity);
        this.zzdjq.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.zzdjq.addView(view, -1, -1);
        this.mActivity.setContentView(this.zzdjq);
        this.zzdka = true;
        this.zzdjr = customViewCallback;
        this.zzdjp = true;
    }

    private final void zzad(boolean z) throws zzh {
        if (!this.zzdka) {
            this.mActivity.requestWindowFeature(1);
        }
        Window window = this.mActivity.getWindow();
        if (window == null) {
            throw new zzh("Invalid activity, no window available.");
        }
        zzbgz zzbgzVar = this.zzdjl.zzdbs;
        zzbii zzbiiVarZzaai = zzbgzVar != null ? zzbgzVar.zzaai() : null;
        boolean z2 = zzbiiVarZzaai != null && zzbiiVarZzaai.zzaay();
        this.zzdjv = false;
        if (z2) {
            int i = this.zzdjl.orientation;
            com.google.android.gms.ads.internal.zzk.zzli();
            if (i == 6) {
                this.zzdjv = this.mActivity.getResources().getConfiguration().orientation == 1;
            } else {
                int i2 = this.zzdjl.orientation;
                com.google.android.gms.ads.internal.zzk.zzli();
                if (i2 == 7) {
                    this.zzdjv = this.mActivity.getResources().getConfiguration().orientation == 2;
                }
            }
        }
        boolean z3 = this.zzdjv;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Delay onShow to next orientation change: ");
        sb.append(z3);
        zzbad.zzdp(sb.toString());
        setRequestedOrientation(this.zzdjl.orientation);
        com.google.android.gms.ads.internal.zzk.zzli();
        window.setFlags(16777216, 16777216);
        zzbad.zzdp("Hardware acceleration on the AdActivity window enabled.");
        if (!this.zzdjt) {
            this.zzdju.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        } else {
            this.zzdju.setBackgroundColor(zzdjk);
        }
        this.mActivity.setContentView(this.zzdju);
        this.zzdka = true;
        if (z) {
            try {
                com.google.android.gms.ads.internal.zzk.zzlh();
                this.zzdjm = zzbhf.zza(this.mActivity, this.zzdjl.zzdbs != null ? this.zzdjl.zzdbs.zzaag() : null, this.zzdjl.zzdbs != null ? this.zzdjl.zzdbs.zzaah() : null, true, z2, null, this.zzdjl.zzbtc, null, null, this.zzdjl.zzdbs != null ? this.zzdjl.zzdbs.zzye() : null, zzwj.zznl());
                zzbii zzbiiVarZzaai2 = this.zzdjm.zzaai();
                AdOverlayInfoParcel adOverlayInfoParcel = this.zzdjl;
                zzagv zzagvVar = adOverlayInfoParcel.zzczo;
                zzagx zzagxVar = adOverlayInfoParcel.zzczp;
                zzu zzuVar = adOverlayInfoParcel.zzdkq;
                zzbgz zzbgzVar2 = adOverlayInfoParcel.zzdbs;
                zzbiiVarZzaai2.zza(null, zzagvVar, null, zzagxVar, zzuVar, true, null, zzbgzVar2 != null ? zzbgzVar2.zzaai().zzaax() : null, null, null);
                this.zzdjm.zzaai().zza(new zzbij(this) { // from class: com.google.android.gms.ads.internal.overlay.zze
                    private final zzd zzdke;

                    {
                        this.zzdke = this;
                    }

                    @Override // com.google.android.gms.internal.ads.zzbij
                    public final void zzae(boolean z4) {
                        zzbgz zzbgzVar3 = this.zzdke.zzdjm;
                        if (zzbgzVar3 != null) {
                            zzbgzVar3.zztl();
                        }
                    }
                });
                AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzdjl;
                String str = adOverlayInfoParcel2.url;
                if (str != null) {
                    this.zzdjm.loadUrl(str);
                } else {
                    String str2 = adOverlayInfoParcel2.zzdkp;
                    if (str2 != null) {
                        this.zzdjm.loadDataWithBaseURL(adOverlayInfoParcel2.zzdkn, str2, "text/html", C.UTF8_NAME, null);
                    } else {
                        throw new zzh("No URL or HTML to display in ad overlay.");
                    }
                }
                zzbgz zzbgzVar3 = this.zzdjl.zzdbs;
                if (zzbgzVar3 != null) {
                    zzbgzVar3.zzb(this);
                }
            } catch (Exception e) {
                zzbad.zzc("Error obtaining webview.", e);
                throw new zzh("Could not obtain webview for the overlay.");
            }
        } else {
            this.zzdjm = this.zzdjl.zzdbs;
            this.zzdjm.zzbn(this.mActivity);
        }
        this.zzdjm.zza(this);
        zzbgz zzbgzVar4 = this.zzdjl.zzdbs;
        if (zzbgzVar4 != null) {
            zzb(zzbgzVar4.zzaam(), this.zzdju);
        }
        ViewParent parent = this.zzdjm.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).removeView(this.zzdjm.getView());
        }
        if (this.zzdjt) {
            this.zzdjm.zzaau();
        }
        this.zzdju.addView(this.zzdjm.getView(), -1, -1);
        if (!z && !this.zzdjv) {
            zztl();
        }
        zzac(z2);
        if (this.zzdjm.zzaak()) {
            zza(z2, true);
        }
    }

    private final void zzti() {
        if (!this.mActivity.isFinishing() || this.zzdkb) {
            return;
        }
        this.zzdkb = true;
        zzbgz zzbgzVar = this.zzdjm;
        if (zzbgzVar != null) {
            zzbgzVar.zzdi(this.zzdjw);
            synchronized (this.zzdjx) {
                if (!this.zzdjz && this.zzdjm.zzaaq()) {
                    this.zzdjy = new Runnable(this) { // from class: com.google.android.gms.ads.internal.overlay.zzf
                        private final zzd zzdke;

                        {
                            this.zzdke = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zzdke.zztj();
                        }
                    };
                    zzaxi.zzdvv.postDelayed(this.zzdjy, ((Long) zzyt.zzpe().zzd(zzacu.zzcpd)).longValue());
                    return;
                }
            }
        }
        zztj();
    }

    @VisibleForTesting
    final void zztj() {
        zzbgz zzbgzVar;
        zzo zzoVar;
        if (this.zzdkc) {
            return;
        }
        this.zzdkc = true;
        zzbgz zzbgzVar2 = this.zzdjm;
        if (zzbgzVar2 != null) {
            this.zzdju.removeView(zzbgzVar2.getView());
            zzj zzjVar = this.zzdjn;
            if (zzjVar != null) {
                this.zzdjm.zzbn(zzjVar.zzlj);
                this.zzdjm.zzaq(false);
                ViewGroup viewGroup = this.zzdjn.parent;
                View view = this.zzdjm.getView();
                zzj zzjVar2 = this.zzdjn;
                viewGroup.addView(view, zzjVar2.index, zzjVar2.zzdkh);
                this.zzdjn = null;
            } else if (this.mActivity.getApplicationContext() != null) {
                this.zzdjm.zzbn(this.mActivity.getApplicationContext());
            }
            this.zzdjm = null;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdjl;
        if (adOverlayInfoParcel != null && (zzoVar = adOverlayInfoParcel.zzdkm) != null) {
            zzoVar.zzsz();
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzdjl;
        if (adOverlayInfoParcel2 == null || (zzbgzVar = adOverlayInfoParcel2.zzdbs) == null) {
            return;
        }
        zzb(zzbgzVar.zzaam(), this.zzdjl.zzdbs.getView());
    }

    private static void zzb(IObjectWrapper iObjectWrapper, View view) {
        if (iObjectWrapper == null || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzk.zzlv().zza(iObjectWrapper, view);
    }

    public final void zztk() {
        if (this.zzdjv) {
            this.zzdjv = false;
            zztl();
        }
    }

    private final void zztl() {
        this.zzdjm.zztl();
    }

    public final void zztm() {
        this.zzdju.zzdkg = true;
    }

    public final void zztn() {
        synchronized (this.zzdjx) {
            this.zzdjz = true;
            if (this.zzdjy != null) {
                zzaxi.zzdvv.removeCallbacks(this.zzdjy);
                zzaxi.zzdvv.post(this.zzdjy);
            }
        }
    }

    private final void zza(Configuration configuration) {
        com.google.android.gms.ads.internal.zzh zzhVar;
        com.google.android.gms.ads.internal.zzh zzhVar2 = this.zzdjl.zzdkt;
        boolean z = true;
        boolean z2 = false;
        boolean z3 = zzhVar2 != null && zzhVar2.zzbrf;
        boolean zZza = com.google.android.gms.ads.internal.zzk.zzli().zza(this.mActivity, configuration);
        if ((this.zzdjt && !z3) || zZza) {
            z = false;
        } else if (Build.VERSION.SDK_INT >= 19 && (zzhVar = this.zzdjl.zzdkt) != null && zzhVar.zzbrk) {
            z2 = true;
        }
        Window window = this.mActivity.getWindow();
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcpg)).booleanValue() && Build.VERSION.SDK_INT >= 19) {
            View decorView = window.getDecorView();
            int i = 256;
            if (z) {
                i = 5380;
                if (z2) {
                    i = 5894;
                }
            }
            decorView.setSystemUiVisibility(i);
            return;
        }
        if (z) {
            window.addFlags(1024);
            window.clearFlags(2048);
            if (Build.VERSION.SDK_INT < 19 || !z2) {
                return;
            }
            window.getDecorView().setSystemUiVisibility(4098);
            return;
        }
        window.addFlags(2048);
        window.clearFlags(1024);
    }
}
