package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public abstract class zzcmn<AdT> implements zzcjv<AdT> {
    protected abstract zzbbh<AdT> zza(zzcxv zzcxvVar, Bundle bundle);

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final boolean zza(zzcxu zzcxuVar, zzcxm zzcxmVar) {
        return !TextUtils.isEmpty(zzcxmVar.zzgkh.optString("pubid", ""));
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final zzbbh<AdT> zzb(zzcxu zzcxuVar, zzcxm zzcxmVar) {
        String strOptString = zzcxmVar.zzgkh.optString("pubid", "");
        zzcxv zzcxvVar = zzcxuVar.zzgkx.zzfjp;
        zzcxx zzcxxVarZzft = new zzcxx().zzg(zzcxvVar.zzghg).zzd(zzcxvVar.zzdll).zzd(zzcxvVar.zzgkz).zzft(zzcxvVar.zzglb).zzc(zzcxvVar.zzgla).zzb(zzcxvVar.zzglc).zzc(zzcxvVar.zzgld).zzb(zzcxvVar.zzdgs).zzfu(zzcxvVar.zzgle).zzb(zzcxvVar.zzglh).zzfv(zzcxvVar.zzglf).zzft(strOptString);
        Bundle bundleZzm = zzm(zzcxvVar.zzghg.zzcgv);
        Bundle bundleZzm2 = zzm(bundleZzm.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        bundleZzm2.putInt("gw", 1);
        String strOptString2 = zzcxmVar.zzgkh.optString("mad_hac", null);
        if (strOptString2 != null) {
            bundleZzm2.putString("mad_hac", strOptString2);
        }
        String strOptString3 = zzcxmVar.zzgkh.optString("adJson", null);
        if (strOptString3 != null) {
            bundleZzm2.putString("_ad", strOptString3);
        }
        bundleZzm2.putBoolean("_noRefresh", true);
        Iterator<String> itKeys = zzcxmVar.zzgkk.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strOptString4 = zzcxmVar.zzgkk.optString(next, null);
            if (next != null) {
                bundleZzm2.putString(next, strOptString4);
            }
        }
        bundleZzm.putBundle("com.google.ads.mediation.admob.AdMobAdapter", bundleZzm2);
        zzxz zzxzVar = zzcxvVar.zzghg;
        zzcxv zzcxvVarZzamq = zzcxxVarZzft.zzg(new zzxz(zzxzVar.versionCode, zzxzVar.zzcgn, bundleZzm2, zzxzVar.zzcgo, zzxzVar.zzcgp, zzxzVar.zzcgq, zzxzVar.zzcgr, zzxzVar.zzbqn, zzxzVar.zzcgs, zzxzVar.zzcgt, zzxzVar.zzmw, zzxzVar.zzcgu, bundleZzm, zzxzVar.zzcgw, zzxzVar.zzcgx, zzxzVar.zzcgy, zzxzVar.zzcgz, zzxzVar.zzcha, zzxzVar.zzchb, zzxzVar.zzchc, zzxzVar.zzchd)).zzamq();
        Bundle bundle = new Bundle();
        zzcxo zzcxoVar = zzcxuVar.zzgky.zzgku;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(zzcxoVar.zzdfh));
        bundle2.putInt("refresh_interval", zzcxoVar.zzgkr);
        bundle2.putString("gws_query_id", zzcxoVar.zzcep);
        bundle.putBundle("parent_common_config", bundle2);
        String str = zzcxuVar.zzgkx.zzfjp.zzglb;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        bundle3.putString("allocation_id", zzcxmVar.zzdej);
        bundle3.putStringArrayList("click_urls", new ArrayList<>(zzcxmVar.zzdfe));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(zzcxmVar.zzdff));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(zzcxmVar.zzdnl));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(zzcxmVar.zzgkc));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(zzcxmVar.zzdny));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(zzcxmVar.zzdnz));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(zzcxmVar.zzgkb));
        bundle3.putString("transaction_id", zzcxmVar.zzdeu);
        bundle3.putString("valid_from_timestamp", zzcxmVar.zzdev);
        bundle3.putBoolean("is_closable_area_disabled", zzcxmVar.zzbrm);
        if (zzcxmVar.zzdnx != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", zzcxmVar.zzdnx.zzdqm);
            bundle4.putString("rb_type", zzcxmVar.zzdnx.type);
            bundle3.putParcelableArray("rewards", new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return zza(zzcxvVarZzamq, bundle);
    }

    private static Bundle zzm(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }
}
