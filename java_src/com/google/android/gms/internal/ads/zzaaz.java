package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.Collections;
import java.util.Date;
import java.util.Map;
import java.util.Set;

@zzard
/* loaded from: classes2.dex */
public final class zzaaz {
    private final boolean zzbqn;
    private final int zzcgo;
    private final int zzcgr;
    private final String zzcgs;
    private final String zzcgu;
    private final Bundle zzcgw;
    private final String zzcgy;
    private final boolean zzcha;
    private final int zzchc;
    private final String zzchd;
    private final Bundle zzcis;
    private final Map<Class<? extends NetworkExtras>, NetworkExtras> zzcit;
    private final SearchAdRequest zzciu;
    private final Set<String> zzciv;
    private final Set<String> zzciw;
    private final zzdak zzcix;
    private final Date zzms;
    private final Set<String> zzmu;
    private final Location zzmw;

    public zzaaz(zzaba zzabaVar) {
        this(zzabaVar, null);
    }

    public zzaaz(zzaba zzabaVar, SearchAdRequest searchAdRequest) {
        this.zzms = zzabaVar.zzms;
        this.zzcgu = zzabaVar.zzcgu;
        this.zzcgo = zzabaVar.zzcgo;
        this.zzmu = Collections.unmodifiableSet(zzabaVar.zzciy);
        this.zzmw = zzabaVar.zzmw;
        this.zzbqn = zzabaVar.zzbqn;
        this.zzcis = zzabaVar.zzcis;
        this.zzcit = Collections.unmodifiableMap(zzabaVar.zzciz);
        this.zzcgs = zzabaVar.zzcgs;
        this.zzcgy = zzabaVar.zzcgy;
        this.zzciu = searchAdRequest;
        this.zzcgr = zzabaVar.zzcgr;
        this.zzciv = Collections.unmodifiableSet(zzabaVar.zzcja);
        this.zzcgw = zzabaVar.zzcgw;
        this.zzciw = Collections.unmodifiableSet(zzabaVar.zzcjb);
        this.zzcha = zzabaVar.zzcha;
        this.zzcix = null;
        this.zzchc = zzabaVar.zzchc;
        this.zzchd = zzabaVar.zzchd;
    }

    @Deprecated
    public final Date getBirthday() {
        return this.zzms;
    }

    public final String getContentUrl() {
        return this.zzcgu;
    }

    @Deprecated
    public final int getGender() {
        return this.zzcgo;
    }

    public final Set<String> getKeywords() {
        return this.zzmu;
    }

    public final Location getLocation() {
        return this.zzmw;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzbqn;
    }

    @Deprecated
    public final <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.zzcit.get(cls);
    }

    public final Bundle getNetworkExtrasBundle(Class<? extends MediationExtrasReceiver> cls) {
        return this.zzcis.getBundle(cls.getName());
    }

    public final Bundle getCustomEventExtrasBundle(Class<? extends CustomEvent> cls) {
        Bundle bundle = this.zzcis.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }

    public final String getPublisherProvidedId() {
        return this.zzcgs;
    }

    public final String zzpy() {
        return this.zzcgy;
    }

    public final SearchAdRequest zzpz() {
        return this.zzciu;
    }

    public final boolean isTestDevice(Context context) {
        Set<String> set = this.zzciv;
        zzyt.zzpa();
        return set.contains(zzazt.zzbe(context));
    }

    public final Map<Class<? extends NetworkExtras>, NetworkExtras> zzqa() {
        return this.zzcit;
    }

    public final Bundle zzqb() {
        return this.zzcis;
    }

    public final int zzqc() {
        return this.zzcgr;
    }

    public final Bundle getCustomTargeting() {
        return this.zzcgw;
    }

    public final Set<String> zzqd() {
        return this.zzciw;
    }

    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.zzcha;
    }

    public final int zzqe() {
        return this.zzchc;
    }

    public final String getMaxAdContentRating() {
        return this.zzchd;
    }
}
