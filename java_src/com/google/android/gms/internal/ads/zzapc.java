package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzapc extends zzaow {
    private MediationRewardedAd zzdgg;
    private final RtbAdapter zzdhc;
    private MediationInterstitialAd zzdhd;

    public zzapc(RtbAdapter rtbAdapter) {
        this.zzdhc = rtbAdapter;
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final void zza(String[] strArr, Bundle[] bundleArr) {
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final void zzx(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final void zza(String str, String str2, zzxz zzxzVar, IObjectWrapper iObjectWrapper, zzaoj zzaojVar, zzamv zzamvVar, zzyd zzydVar) throws RemoteException {
        try {
            this.zzdhc.loadBannerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzde(str2), zzd(zzxzVar), zzc(zzxzVar), zzxzVar.zzmw, zzxzVar.zzcgr, zzxzVar.zzchc, zza(str2, zzxzVar), com.google.android.gms.ads.zzb.zza(zzydVar.width, zzydVar.height, zzydVar.zzaap)), new zzapd(this, zzaojVar, zzamvVar));
        } catch (Throwable th) {
            zzbad.zzc("Adapter failed to render banner ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final void zza(String str, String str2, zzxz zzxzVar, IObjectWrapper iObjectWrapper, zzaom zzaomVar, zzamv zzamvVar) throws RemoteException {
        try {
            this.zzdhc.loadInterstitialAd(new MediationInterstitialAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzde(str2), zzd(zzxzVar), zzc(zzxzVar), zzxzVar.zzmw, zzxzVar.zzcgr, zzxzVar.zzchc, zza(str2, zzxzVar)), new zzape(this, zzaomVar, zzamvVar));
        } catch (Throwable th) {
            zzbad.zzc("Adapter failed to render interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final void zza(String str, String str2, zzxz zzxzVar, IObjectWrapper iObjectWrapper, zzaos zzaosVar, zzamv zzamvVar) throws RemoteException {
        try {
            this.zzdhc.loadRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzde(str2), zzd(zzxzVar), zzc(zzxzVar), zzxzVar.zzmw, zzxzVar.zzcgr, zzxzVar.zzchc, zza(str2, zzxzVar)), new zzapf(this, zzaosVar, zzamvVar));
        } catch (Throwable th) {
            zzbad.zzc("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final void zza(String str, String str2, zzxz zzxzVar, IObjectWrapper iObjectWrapper, zzaop zzaopVar, zzamv zzamvVar) throws RemoteException {
        try {
            this.zzdhc.loadNativeAd(new MediationNativeAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzde(str2), zzd(zzxzVar), zzc(zzxzVar), zzxzVar.zzmw, zzxzVar.zzcgr, zzxzVar.zzchc, zza(str2, zzxzVar)), new zzapg(this, zzaopVar, zzamvVar));
        } catch (Throwable th) {
            zzbad.zzc("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final boolean zzy(IObjectWrapper iObjectWrapper) throws RemoteException {
        MediationInterstitialAd mediationInterstitialAd = this.zzdhd;
        if (mediationInterstitialAd == null) {
            return false;
        }
        try {
            mediationInterstitialAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            zzbad.zzc("", th);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final boolean zzz(IObjectWrapper iObjectWrapper) throws RemoteException {
        MediationRewardedAd mediationRewardedAd = this.zzdgg;
        if (mediationRewardedAd == null) {
            return false;
        }
        try {
            mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            zzbad.zzc("", th);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final zzaar getVideoController() {
        MediationExtrasReceiver mediationExtrasReceiver = this.zzdhc;
        if (!(mediationExtrasReceiver instanceof com.google.android.gms.ads.mediation.zza)) {
            return null;
        }
        try {
            return ((com.google.android.gms.ads.mediation.zza) mediationExtrasReceiver).getVideoController();
        } catch (Throwable th) {
            zzbad.zzc("", th);
            return null;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.google.android.gms.internal.ads.zzaov
    public final void zza(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, zzyd zzydVar, zzaoy zzaoyVar) throws RemoteException {
        AdFormat adFormat;
        try {
            zzaph zzaphVar = new zzaph(this, zzaoyVar);
            RtbAdapter rtbAdapter = this.zzdhc;
            char c = 65535;
            switch (str.hashCode()) {
                case -1396342996:
                    if (str.equals("banner")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1052618729:
                    if (str.equals("native")) {
                        c = 3;
                        break;
                    }
                    break;
                case -239580146:
                    if (str.equals("rewarded")) {
                        c = 2;
                        break;
                    }
                    break;
                case 604727084:
                    if (str.equals("interstitial")) {
                        c = 1;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                adFormat = AdFormat.BANNER;
            } else if (c == 1) {
                adFormat = AdFormat.INTERSTITIAL;
            } else if (c == 2) {
                adFormat = AdFormat.REWARDED;
            } else if (c == 3) {
                adFormat = AdFormat.NATIVE;
            } else {
                throw new IllegalArgumentException("Internal Error");
            }
            rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.unwrap(iObjectWrapper), new MediationConfiguration(adFormat, bundle2), bundle, com.google.android.gms.ads.zzb.zza(zzydVar.width, zzydVar.height, zzydVar.zzaap)), zzaphVar);
        } catch (Throwable th) {
            zzbad.zzc("Error generating signals for RTB", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final zzapj zzsx() throws RemoteException {
        return zzapj.zza(this.zzdhc.getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    public final zzapj zzsy() throws RemoteException {
        return zzapj.zza(this.zzdhc.getSDKVersionInfo());
    }

    private static Bundle zzde(String str) throws RemoteException {
        String strValueOf = String.valueOf(str);
        zzbad.zzep(strValueOf.length() != 0 ? "Server parameters: ".concat(strValueOf) : new String("Server parameters: "));
        try {
            Bundle bundle = new Bundle();
            if (str == null) {
                return bundle;
            }
            JSONObject jSONObject = new JSONObject(str);
            Bundle bundle2 = new Bundle();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                bundle2.putString(next, jSONObject.getString(next));
            }
            return bundle2;
        } catch (JSONException e) {
            zzbad.zzc("", e);
            throw new RemoteException();
        }
    }

    private static boolean zzc(zzxz zzxzVar) {
        if (zzxzVar.zzcgq) {
            return true;
        }
        zzyt.zzpa();
        return zzazt.zzwx();
    }

    private static String zza(String str, zzxz zzxzVar) {
        String str2 = zzxzVar.zzchd;
        try {
            return new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException unused) {
            return str2;
        }
    }

    private final Bundle zzd(zzxz zzxzVar) {
        Bundle bundle;
        Bundle bundle2 = zzxzVar.zzcgv;
        return (bundle2 == null || (bundle = bundle2.getBundle(this.zzdhc.getClass().getName())) == null) ? new Bundle() : bundle;
    }
}
