package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import java.util.ArrayList;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzcxv {
    public final zzady zzdgs;
    public final zzyd zzdll;
    public final zzaiy zzdne;
    public final zzxz zzghg;
    public final zzzy zzgkz;
    public final zzacd zzgla;
    public final String zzglb;
    public final ArrayList<String> zzglc;
    public final ArrayList<String> zzgld;
    public final String zzgle;
    public final String zzglf;
    public final int zzglg;
    public final PublisherAdViewOptions zzglh;
    public final zzzs zzgli;
    public final Set<String> zzglj;

    private zzcxv(zzcxx zzcxxVar) {
        this.zzdll = zzcxxVar.zzdll;
        this.zzglb = zzcxxVar.zzglb;
        this.zzgkz = zzcxxVar.zzgkz;
        this.zzghg = new zzxz(zzcxxVar.zzghg.versionCode, zzcxxVar.zzghg.zzcgn, zzcxxVar.zzghg.extras, zzcxxVar.zzghg.zzcgo, zzcxxVar.zzghg.zzcgp, zzcxxVar.zzghg.zzcgq, zzcxxVar.zzghg.zzcgr, zzcxxVar.zzghg.zzbqn || zzcxxVar.zzbqn, zzcxxVar.zzghg.zzcgs, zzcxxVar.zzghg.zzcgt, zzcxxVar.zzghg.zzmw, zzcxxVar.zzghg.zzcgu, zzcxxVar.zzghg.zzcgv, zzcxxVar.zzghg.zzcgw, zzcxxVar.zzghg.zzcgx, zzcxxVar.zzghg.zzcgy, zzcxxVar.zzghg.zzcgz, zzcxxVar.zzghg.zzcha, zzcxxVar.zzghg.zzchb, zzcxxVar.zzghg.zzchc, zzcxxVar.zzghg.zzchd);
        this.zzgla = zzcxxVar.zzgla != null ? zzcxxVar.zzgla : zzcxxVar.zzdgs != null ? zzcxxVar.zzdgs.zzcyn : null;
        this.zzglc = zzcxxVar.zzglc;
        this.zzgld = zzcxxVar.zzgld;
        this.zzdgs = zzcxxVar.zzglc != null ? zzcxxVar.zzdgs == null ? new zzady(new NativeAdOptions.Builder().build()) : zzcxxVar.zzdgs : null;
        this.zzgle = zzcxxVar.zzgle;
        this.zzglf = zzcxxVar.zzglf;
        this.zzglg = zzcxxVar.zzglg;
        this.zzglh = zzcxxVar.zzglh;
        this.zzgli = zzcxxVar.zzgli;
        this.zzdne = zzcxxVar.zzdne;
        this.zzglj = zzcxxVar.zzglj;
    }

    public final zzaga zzamn() {
        PublisherAdViewOptions publisherAdViewOptions = this.zzglh;
        if (publisherAdViewOptions == null) {
            return null;
        }
        return publisherAdViewOptions.zzku();
    }
}
