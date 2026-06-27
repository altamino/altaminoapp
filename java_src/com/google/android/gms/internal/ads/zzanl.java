package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.reward.mediation.InitializableMediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzanl extends zzamt {
    private final Object zzdgc;
    private zzano zzdgd;
    private zzatk zzdge;
    private IObjectWrapper zzdgf;
    private MediationRewardedAd zzdgg;

    public zzanl(MediationAdapter mediationAdapter) {
        this.zzdgc = mediationAdapter;
    }

    public zzanl(Adapter adapter) {
        this.zzdgc = adapter;
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final IObjectWrapper zzse() throws RemoteException {
        Object obj = this.zzdgc;
        if (!(obj instanceof MediationBannerAdapter)) {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdgc.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbad.zzep(sb.toString());
            throw new RemoteException();
        }
        try {
            return ObjectWrapper.wrap(((MediationBannerAdapter) obj).getBannerView());
        } catch (Throwable th) {
            zzbad.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(IObjectWrapper iObjectWrapper, zzyd zzydVar, zzxz zzxzVar, String str, zzamv zzamvVar) throws RemoteException {
        zza(iObjectWrapper, zzydVar, zzxzVar, str, null, zzamvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(IObjectWrapper iObjectWrapper, zzyd zzydVar, zzxz zzxzVar, String str, String str2, zzamv zzamvVar) throws RemoteException {
        if (!(this.zzdgc instanceof MediationBannerAdapter)) {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdgc.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbad.zzep(sb.toString());
            throw new RemoteException();
        }
        zzbad.zzdp("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.zzdgc;
            mediationBannerAdapter.requestBannerAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzano(zzamvVar), zza(str, zzxzVar, str2), com.google.android.gms.ads.zzb.zza(zzydVar.width, zzydVar.height, zzydVar.zzaap), new zzank(zzxzVar.zzcgn == -1 ? null : new Date(zzxzVar.zzcgn), zzxzVar.zzcgo, zzxzVar.zzcgp != null ? new HashSet(zzxzVar.zzcgp) : null, zzxzVar.zzmw, zzc(zzxzVar), zzxzVar.zzcgr, zzxzVar.zzcha, zzxzVar.zzchc, zza(str, zzxzVar)), zzxzVar.zzcgv != null ? zzxzVar.zzcgv.getBundle(mediationBannerAdapter.getClass().getName()) : null);
        } catch (Throwable th) {
            zzbad.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final Bundle zzsh() {
        Object obj = this.zzdgc;
        if (!(obj instanceof zzbjk)) {
            String canonicalName = zzbjk.class.getCanonicalName();
            String canonicalName2 = this.zzdgc.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbad.zzep(sb.toString());
            return new Bundle();
        }
        return ((zzbjk) obj).zzsh();
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(IObjectWrapper iObjectWrapper, zzxz zzxzVar, String str, zzamv zzamvVar) throws RemoteException {
        zza(iObjectWrapper, zzxzVar, str, (String) null, zzamvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(IObjectWrapper iObjectWrapper, zzxz zzxzVar, String str, String str2, zzamv zzamvVar) throws RemoteException {
        if (!(this.zzdgc instanceof MediationInterstitialAdapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdgc.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbad.zzep(sb.toString());
            throw new RemoteException();
        }
        zzbad.zzdp("Requesting interstitial ad from adapter.");
        try {
            MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) this.zzdgc;
            mediationInterstitialAdapter.requestInterstitialAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzano(zzamvVar), zza(str, zzxzVar, str2), new zzank(zzxzVar.zzcgn == -1 ? null : new Date(zzxzVar.zzcgn), zzxzVar.zzcgo, zzxzVar.zzcgp != null ? new HashSet(zzxzVar.zzcgp) : null, zzxzVar.zzmw, zzc(zzxzVar), zzxzVar.zzcgr, zzxzVar.zzcha, zzxzVar.zzchc, zza(str, zzxzVar)), zzxzVar.zzcgv != null ? zzxzVar.zzcgv.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
        } catch (Throwable th) {
            zzbad.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final Bundle getInterstitialAdapterInfo() {
        Object obj = this.zzdgc;
        if (!(obj instanceof zzbjl)) {
            String canonicalName = zzbjl.class.getCanonicalName();
            String canonicalName2 = this.zzdgc.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbad.zzep(sb.toString());
            return new Bundle();
        }
        return ((zzbjl) obj).getInterstitialAdapterInfo();
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(IObjectWrapper iObjectWrapper, zzxz zzxzVar, String str, String str2, zzamv zzamvVar, zzady zzadyVar, List<String> list) throws RemoteException {
        Object obj = this.zzdgc;
        if (!(obj instanceof MediationNativeAdapter)) {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdgc.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbad.zzep(sb.toString());
            throw new RemoteException();
        }
        try {
            MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj;
            zzans zzansVar = new zzans(zzxzVar.zzcgn == -1 ? null : new Date(zzxzVar.zzcgn), zzxzVar.zzcgo, zzxzVar.zzcgp != null ? new HashSet(zzxzVar.zzcgp) : null, zzxzVar.zzmw, zzc(zzxzVar), zzxzVar.zzcgr, zzadyVar, list, zzxzVar.zzcha, zzxzVar.zzchc, zza(str, zzxzVar));
            Bundle bundle = zzxzVar.zzcgv != null ? zzxzVar.zzcgv.getBundle(mediationNativeAdapter.getClass().getName()) : null;
            this.zzdgd = new zzano(zzamvVar);
            mediationNativeAdapter.requestNativeAd((Context) ObjectWrapper.unwrap(iObjectWrapper), this.zzdgd, zza(str, zzxzVar, str2), zzansVar, bundle);
        } catch (Throwable th) {
            zzbad.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final Bundle zzsi() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final zzana zzsf() {
        NativeAdMapper nativeAdMapperZzsr = this.zzdgd.zzsr();
        if (nativeAdMapperZzsr instanceof NativeAppInstallAdMapper) {
            return new zzanq((NativeAppInstallAdMapper) nativeAdMapperZzsr);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final zzang zzsl() {
        UnifiedNativeAdMapper unifiedNativeAdMapperZzss = this.zzdgd.zzss();
        if (unifiedNativeAdMapperZzss != null) {
            return new zzaoi(unifiedNativeAdMapperZzss);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final zzand zzsg() {
        NativeAdMapper nativeAdMapperZzsr = this.zzdgd.zzsr();
        if (nativeAdMapperZzsr instanceof NativeContentAdMapper) {
            return new zzanr((NativeContentAdMapper) nativeAdMapperZzsr);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final zzafe zzsk() {
        NativeCustomTemplateAd nativeCustomTemplateAdZzst = this.zzdgd.zzst();
        if (nativeCustomTemplateAdZzst instanceof zzafh) {
            return ((zzafh) nativeCustomTemplateAdZzst).zzrn();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final boolean zzsj() {
        return this.zzdgc instanceof InitializableMediationRewardedVideoAdAdapter;
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(IObjectWrapper iObjectWrapper, zzxz zzxzVar, String str, zzatk zzatkVar, String str2) throws RemoteException {
        zzank zzankVar;
        Bundle bundle;
        Object obj = this.zzdgc;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzbad.zzdp("Initialize rewarded video adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzdgc;
                Bundle bundleZza = zza(str2, zzxzVar, (String) null);
                if (zzxzVar != null) {
                    zzank zzankVar2 = new zzank(zzxzVar.zzcgn == -1 ? null : new Date(zzxzVar.zzcgn), zzxzVar.zzcgo, zzxzVar.zzcgp != null ? new HashSet(zzxzVar.zzcgp) : null, zzxzVar.zzmw, zzc(zzxzVar), zzxzVar.zzcgr, zzxzVar.zzcha, zzxzVar.zzchc, zza(str2, zzxzVar));
                    bundle = zzxzVar.zzcgv != null ? zzxzVar.zzcgv.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null;
                    zzankVar = zzankVar2;
                } else {
                    zzankVar = null;
                    bundle = null;
                }
                mediationRewardedVideoAdAdapter.initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), zzankVar, str, new zzatn(zzatkVar), bundleZza, bundle);
                return;
            } catch (Throwable th) {
                zzbad.zzc("", th);
                throw new RemoteException();
            }
        }
        if (!(obj instanceof Adapter)) {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zzdgc.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzbad.zzep(sb.toString());
            throw new RemoteException();
        }
        this.zzdgf = iObjectWrapper;
        this.zzdge = zzatkVar;
        zzatkVar.zzae(ObjectWrapper.wrap(obj));
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(IObjectWrapper iObjectWrapper, zzatk zzatkVar, List<String> list) throws RemoteException {
        if (!(this.zzdgc instanceof InitializableMediationRewardedVideoAdAdapter)) {
            String canonicalName = InitializableMediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdgc.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbad.zzep(sb.toString());
            throw new RemoteException();
        }
        zzbad.zzdp("Initialize rewarded video adapter.");
        try {
            InitializableMediationRewardedVideoAdAdapter initializableMediationRewardedVideoAdAdapter = (InitializableMediationRewardedVideoAdAdapter) this.zzdgc;
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(zza(it.next(), (zzxz) null, (String) null));
            }
            initializableMediationRewardedVideoAdAdapter.initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzatn(zzatkVar), arrayList);
        } catch (Throwable th) {
            zzbad.zzd("Could not initialize rewarded video adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(zzxz zzxzVar, String str) throws RemoteException {
        zza(zzxzVar, str, (String) null);
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(zzxz zzxzVar, String str, String str2) throws RemoteException {
        Object obj = this.zzdgc;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzbad.zzdp("Requesting rewarded video ad from adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzdgc;
                mediationRewardedVideoAdAdapter.loadAd(new zzank(zzxzVar.zzcgn == -1 ? null : new Date(zzxzVar.zzcgn), zzxzVar.zzcgo, zzxzVar.zzcgp != null ? new HashSet(zzxzVar.zzcgp) : null, zzxzVar.zzmw, zzc(zzxzVar), zzxzVar.zzcgr, zzxzVar.zzcha, zzxzVar.zzchc, zza(str, zzxzVar)), zza(str, zzxzVar, str2), zzxzVar.zzcgv != null ? zzxzVar.zzcgv.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null);
                return;
            } catch (Throwable th) {
                zzbad.zzc("", th);
                throw new RemoteException();
            }
        }
        if (!(obj instanceof Adapter)) {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zzdgc.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzbad.zzep(sb.toString());
            throw new RemoteException();
        }
        zzb(this.zzdgf, zzxzVar, str, new zzanp((Adapter) obj, this.zzdge));
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void showVideo() throws RemoteException {
        Object obj = this.zzdgc;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzbad.zzdp("Show rewarded video ad from adapter.");
            try {
                ((MediationRewardedVideoAdAdapter) this.zzdgc).showVideo();
                return;
            } catch (Throwable th) {
                zzbad.zzc("", th);
                throw new RemoteException();
            }
        }
        if (!(obj instanceof Adapter)) {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zzdgc.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzbad.zzep(sb.toString());
            throw new RemoteException();
        }
        MediationRewardedAd mediationRewardedAd = this.zzdgg;
        if (mediationRewardedAd != null) {
            mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(this.zzdgf));
        } else {
            zzbad.zzen("Can not show null mediated rewarded ad.");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final boolean isInitialized() throws RemoteException {
        Object obj = this.zzdgc;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzbad.zzdp("Check if adapter is initialized.");
            try {
                return ((MediationRewardedVideoAdAdapter) this.zzdgc).isInitialized();
            } catch (Throwable th) {
                zzbad.zzc("", th);
                throw new RemoteException();
            }
        }
        if (obj instanceof Adapter) {
            return this.zzdge != null;
        }
        String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
        String canonicalName2 = Adapter.class.getCanonicalName();
        String canonicalName3 = this.zzdgc.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
        sb.append(canonicalName);
        sb.append(" or ");
        sb.append(canonicalName2);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName3);
        zzbad.zzep(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zzb(IObjectWrapper iObjectWrapper, zzxz zzxzVar, String str, zzamv zzamvVar) throws RemoteException {
        Bundle bundle;
        if (!(this.zzdgc instanceof Adapter)) {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.zzdgc.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbad.zzep(sb.toString());
            throw new RemoteException();
        }
        zzbad.zzdp("Requesting rewarded ad from adapter.");
        try {
            Adapter adapter = (Adapter) this.zzdgc;
            zzanm zzanmVar = new zzanm(this, zzamvVar, adapter);
            Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
            Bundle bundleZza = zza(str, zzxzVar, (String) null);
            if (zzxzVar.zzcgv == null || (bundle = zzxzVar.zzcgv.getBundle(this.zzdgc.getClass().getName())) == null) {
                bundle = new Bundle();
            }
            adapter.loadRewardedAd(new MediationRewardedAdConfiguration(context, "", bundleZza, bundle, zzc(zzxzVar), zzxzVar.zzmw, zzxzVar.zzcgr, zzxzVar.zzchc, zza(str, zzxzVar)), zzanmVar);
        } catch (Exception e) {
            zzbad.zzc("", e);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        if (!(this.zzdgc instanceof Adapter)) {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.zzdgc.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbad.zzep(sb.toString());
            throw new RemoteException();
        }
        zzbad.zzdp("Show rewarded ad from adapter.");
        MediationRewardedAd mediationRewardedAd = this.zzdgg;
        if (mediationRewardedAd != null) {
            mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
        } else {
            zzbad.zzen("Can not show null mediation rewarded ad.");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void setImmersiveMode(boolean z) throws RemoteException {
        Object obj = this.zzdgc;
        if (!(obj instanceof OnImmersiveModeUpdatedListener)) {
            String canonicalName = OnImmersiveModeUpdatedListener.class.getCanonicalName();
            String canonicalName2 = this.zzdgc.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbad.zzep(sb.toString());
            return;
        }
        try {
            ((OnImmersiveModeUpdatedListener) obj).onImmersiveModeUpdated(z);
        } catch (Throwable th) {
            zzbad.zzc("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final zzaar getVideoController() {
        Object obj = this.zzdgc;
        if (!(obj instanceof com.google.android.gms.ads.mediation.zza)) {
            return null;
        }
        try {
            return ((com.google.android.gms.ads.mediation.zza) obj).getVideoController();
        } catch (Throwable th) {
            zzbad.zzc("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void showInterstitial() throws RemoteException {
        if (!(this.zzdgc instanceof MediationInterstitialAdapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdgc.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbad.zzep(sb.toString());
            throw new RemoteException();
        }
        zzbad.zzdp("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.zzdgc).showInterstitial();
        } catch (Throwable th) {
            zzbad.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void destroy() throws RemoteException {
        Object obj = this.zzdgc;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onDestroy();
            } catch (Throwable th) {
                zzbad.zzc("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void pause() throws RemoteException {
        Object obj = this.zzdgc;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onPause();
            } catch (Throwable th) {
                zzbad.zzc("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void resume() throws RemoteException {
        Object obj = this.zzdgc;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onResume();
            } catch (Throwable th) {
                zzbad.zzc("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzams
    public final void zzr(IObjectWrapper iObjectWrapper) throws RemoteException {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        Object obj = this.zzdgc;
        if (obj instanceof OnContextChangedListener) {
            ((OnContextChangedListener) obj).onContextChanged(context);
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.google.android.gms.internal.ads.zzams
    public final void zza(IObjectWrapper iObjectWrapper, zzaiq zzaiqVar, List<zzaiw> list) throws RemoteException {
        AdFormat adFormat;
        if (!(this.zzdgc instanceof Adapter)) {
            throw new RemoteException();
        }
        zzann zzannVar = new zzann(this, zzaiqVar);
        ArrayList arrayList = new ArrayList();
        for (zzaiw zzaiwVar : list) {
            String str = zzaiwVar.zzdbd;
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
                throw new RemoteException();
            }
            arrayList.add(new MediationConfiguration(adFormat, zzaiwVar.extras));
        }
        ((Adapter) this.zzdgc).initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), zzannVar, arrayList);
    }

    private final Bundle zza(String str, zzxz zzxzVar, String str2) throws RemoteException {
        Bundle bundle;
        String strValueOf = String.valueOf(str);
        zzbad.zzdp(strValueOf.length() != 0 ? "Server parameters: ".concat(strValueOf) : new String("Server parameters: "));
        try {
            Bundle bundle2 = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                bundle = new Bundle();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    bundle.putString(next, jSONObject.getString(next));
                }
            } else {
                bundle = bundle2;
            }
            if (this.zzdgc instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zzxzVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zzxzVar.zzcgr);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            zzbad.zzc("", th);
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
}
