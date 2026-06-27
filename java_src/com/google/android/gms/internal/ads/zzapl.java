package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.support.customtabs.CustomTabsIntent;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.common.util.PlatformVersion;

@zzard
/* loaded from: classes2.dex */
public final class zzapl implements MediationInterstitialAdapter {
    private Uri uri;
    private Activity zzdhn;
    private MediationInterstitialListener zzdho;

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzdho = mediationInterstitialListener;
        if (this.zzdho == null) {
            zzbad.zzep("Listener not set for mediation. Returning.");
            return;
        }
        if (!(context instanceof Activity)) {
            zzbad.zzep("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.zzdho.onAdFailedToLoad(this, 0);
            return;
        }
        if (!(PlatformVersion.isAtLeastIceCreamSandwichMR1() && zzads.zzj(context))) {
            zzbad.zzep("Default browser does not support custom tabs. Bailing out.");
            this.zzdho.onAdFailedToLoad(this, 0);
            return;
        }
        String string = bundle.getString("tab_url");
        if (TextUtils.isEmpty(string)) {
            zzbad.zzep("The tab_url retrieved from mediation metadata is empty. Bailing out.");
            this.zzdho.onAdFailedToLoad(this, 0);
        } else {
            this.zzdhn = (Activity) context;
            this.uri = Uri.parse(string);
            this.zzdho.onAdLoaded(this);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder().build();
        customTabsIntentBuild.intent.setData(this.uri);
        zzaxi.zzdvv.post(new zzapn(this, new AdOverlayInfoParcel(new com.google.android.gms.ads.internal.overlay.zzc(customTabsIntentBuild.intent), null, new zzapm(this), null, new zzbai(0, 0, false))));
        com.google.android.gms.ads.internal.zzk.zzlk().zzuy();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        zzbad.zzdp("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        zzbad.zzdp("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        zzbad.zzdp("Resuming AdMobCustomTabsAdapter adapter.");
    }
}
