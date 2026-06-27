package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzcxx {
    private boolean zzbqn;
    private zzady zzdgs;
    private zzyd zzdll;
    private zzaiy zzdne;
    private zzxz zzghg;
    private zzzy zzgkz;
    private zzacd zzgla;
    private String zzglb;
    private ArrayList<String> zzglc;
    private ArrayList<String> zzgld;
    private String zzgle;
    private String zzglf;
    private PublisherAdViewOptions zzglh;
    private zzzs zzgli;
    private int zzglg = 1;
    public final Set<String> zzglj = new HashSet();

    public final zzcxx zzg(zzxz zzxzVar) {
        this.zzghg = zzxzVar;
        return this;
    }

    public final zzxz zzamo() {
        return this.zzghg;
    }

    public final zzcxx zzd(zzyd zzydVar) {
        this.zzdll = zzydVar;
        return this;
    }

    public final zzyd zzpn() {
        return this.zzdll;
    }

    public final zzcxx zzd(zzzy zzzyVar) {
        this.zzgkz = zzzyVar;
        return this;
    }

    public final zzcxx zzft(String str) {
        this.zzglb = str;
        return this;
    }

    public final String zzamp() {
        return this.zzglb;
    }

    public final zzcxx zzc(zzacd zzacdVar) {
        this.zzgla = zzacdVar;
        return this;
    }

    public final zzcxx zzbc(boolean z) {
        this.zzbqn = z;
        return this;
    }

    public final zzcxx zzdp(int i) {
        this.zzglg = i;
        return this;
    }

    public final zzcxx zzb(ArrayList<String> arrayList) {
        this.zzglc = arrayList;
        return this;
    }

    public final zzcxx zzc(ArrayList<String> arrayList) {
        this.zzgld = arrayList;
        return this;
    }

    public final zzcxx zzb(zzady zzadyVar) {
        this.zzdgs = zzadyVar;
        return this;
    }

    public final zzcxx zzb(zzaiy zzaiyVar) {
        this.zzdne = zzaiyVar;
        this.zzgla = new zzacd(false, true, false);
        return this;
    }

    public final zzcxx zzfu(String str) {
        this.zzgle = str;
        return this;
    }

    public final zzcxx zzfv(String str) {
        this.zzglf = str;
        return this;
    }

    public final zzcxx zzb(PublisherAdViewOptions publisherAdViewOptions) {
        this.zzglh = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            this.zzbqn = publisherAdViewOptions.getManualImpressionsEnabled();
            this.zzgli = publisherAdViewOptions.zzkt();
        }
        return this;
    }

    public final zzcxv zzamq() {
        Preconditions.checkNotNull(this.zzglb, "ad unit must not be null");
        Preconditions.checkNotNull(this.zzdll, "ad size must not be null");
        Preconditions.checkNotNull(this.zzghg, "ad request must not be null");
        return new zzcxv(this);
    }
}
