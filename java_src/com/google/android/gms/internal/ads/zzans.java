package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

@zzard
/* loaded from: classes2.dex */
public final class zzans implements NativeMediationAdRequest {
    private final int zzcgo;
    private final boolean zzcha;
    private final String zzchd;
    private final int zzdga;
    private final int zzdgb;
    private final zzady zzdgs;
    private final List<String> zzdgt = new ArrayList();
    private final Map<String, Boolean> zzdgu = new HashMap();
    private final Date zzms;
    private final Set<String> zzmu;
    private final boolean zzmv;
    private final Location zzmw;

    public zzans(Date date, int i, Set<String> set, Location location, boolean z, int i2, zzady zzadyVar, List<String> list, boolean z2, int i3, String str) {
        this.zzms = date;
        this.zzcgo = i;
        this.zzmu = set;
        this.zzmw = location;
        this.zzmv = z;
        this.zzdga = i2;
        this.zzdgs = zzadyVar;
        this.zzcha = z2;
        this.zzdgb = i3;
        this.zzchd = str;
        if (list != null) {
            for (String str2 : list) {
                if (str2.startsWith("custom:")) {
                    String[] strArrSplit = str2.split(":", 3);
                    if (strArrSplit.length == 3) {
                        if ("true".equals(strArrSplit[2])) {
                            this.zzdgu.put(strArrSplit[1], true);
                        } else if ("false".equals(strArrSplit[2])) {
                            this.zzdgu.put(strArrSplit[1], false);
                        }
                    }
                } else {
                    this.zzdgt.add(str2);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final Date getBirthday() {
        return this.zzms;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final int getGender() {
        return this.zzcgo;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> getKeywords() {
        return this.zzmu;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.zzmw;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.zzmv;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.zzdga;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final NativeAdOptions getNativeAdOptions() {
        zzacd zzacdVar;
        if (this.zzdgs == null) {
            return null;
        }
        NativeAdOptions.Builder requestMultipleImages = new NativeAdOptions.Builder().setReturnUrlsForImageAssets(this.zzdgs.zzcym).setImageOrientation(this.zzdgs.zzbqc).setRequestMultipleImages(this.zzdgs.zzbqe);
        zzady zzadyVar = this.zzdgs;
        if (zzadyVar.versionCode >= 2) {
            requestMultipleImages.setAdChoicesPlacement(zzadyVar.zzbqf);
        }
        zzady zzadyVar2 = this.zzdgs;
        if (zzadyVar2.versionCode >= 3 && (zzacdVar = zzadyVar2.zzcyn) != null) {
            requestMultipleImages.setVideoOptions(new VideoOptions(zzacdVar));
        }
        return requestMultipleImages.build();
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAdMuted() {
        return zzabe.zzqf().zzpr();
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final float getAdVolume() {
        return zzabe.zzqf().zzpq();
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAppInstallAdRequested() {
        List<String> list = this.zzdgt;
        if (list != null) {
            return list.contains("2") || this.zzdgt.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isUnifiedNativeAdRequested() {
        List<String> list = this.zzdgt;
        return list != null && list.contains("6");
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isContentAdRequested() {
        List<String> list = this.zzdgt;
        if (list != null) {
            return list.contains(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE) || this.zzdgt.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean zzsu() {
        List<String> list = this.zzdgt;
        return list != null && list.contains("3");
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final Map<String, Boolean> zzsv() {
        return this.zzdgu;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.zzcha;
    }
}
