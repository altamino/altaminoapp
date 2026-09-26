package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.measurement.zzoi;
import com.google.android.gms.internal.measurement.zzpy;

/* JADX INFO: loaded from: classes10.dex */
final class zzgo implements Runnable {
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzby zza;
    private final /* synthetic */ ServiceConnection zzb;
    private final /* synthetic */ zzgl zzc;

    zzgo(zzgl zzglVar, com.google.android.gms.internal.measurement.zzby zzbyVar, ServiceConnection serviceConnection) {
        this.zzc = zzglVar;
        this.zza = zzbyVar;
        this.zzb = serviceConnection;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0106  */
    /* JADX WARN: Code duplicated, block: B:42:0x011d  */
    @Override // java.lang.Runnable
    public final void run() {
        zzgl zzglVar = this.zzc;
        zzgm zzgmVar = zzglVar.zza;
        String str = zzglVar.zzb;
        com.google.android.gms.internal.measurement.zzby zzbyVar = this.zza;
        ServiceConnection serviceConnection = this.zzb;
        Bundle bundleZza = zzgmVar.zza(str, zzbyVar);
        zzgmVar.zza.zzl().zzt();
        zzgmVar.zza.zzy();
        if (bundleZza != null) {
            long j6 = bundleZza.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j6 == 0) {
                zzgmVar.zza.zzj().zzu().zza("Service response is missing Install Referrer install timestamp");
            } else {
                String string = bundleZza.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    zzgmVar.zza.zzj().zzg().zza("No referrer defined in Install Referrer response");
                } else {
                    zzgmVar.zza.zzj().zzp().zza("InstallReferrer API result", string);
                    Bundle bundleZza2 = zzgmVar.zza.zzt().zza(Uri.parse("?" + string), zzpy.zza() && zzgmVar.zza.zzf().zza(zzbi.zzbz), zzoi.zza() && zzgmVar.zza.zzf().zza(zzbi.zzct));
                    if (bundleZza2 == null) {
                        zzgmVar.zza.zzj().zzg().zza("No campaign params defined in Install Referrer result");
                    } else {
                        String string2 = bundleZza2.getString(com.google.firebase.dynamiclinks.internal.b.KEY_MEDIUM);
                        if (string2 == null || "(not set)".equalsIgnoreCase(string2) || "organic".equalsIgnoreCase(string2)) {
                            if (j6 == zzgmVar.zza.zzn().zzd.zza()) {
                                zzgmVar.zza.zzj().zzp().zza("Logging Install Referrer campaign from module while it may have already been logged.");
                            }
                            if (zzgmVar.zza.zzac()) {
                                zzgmVar.zza.zzn().zzd.zza(j6);
                                zzgmVar.zza.zzj().zzp().zza("Logging Install Referrer campaign from gmscore with ", "referrer API v2");
                                bundleZza2.putString("_cis", "referrer API v2");
                                zzgmVar.zza.zzp().zza("auto", com.google.firebase.dynamiclinks.internal.b.KEY_CAMPAIGN_BUNDLE, bundleZza2, str);
                            }
                        } else {
                            long j10 = bundleZza.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j10 == 0) {
                                zzgmVar.zza.zzj().zzg().zza("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                bundleZza2.putLong("click_timestamp", j10);
                                if (j6 == zzgmVar.zza.zzn().zzd.zza()) {
                                    zzgmVar.zza.zzj().zzp().zza("Logging Install Referrer campaign from module while it may have already been logged.");
                                }
                                if (zzgmVar.zza.zzac()) {
                                    zzgmVar.zza.zzn().zzd.zza(j6);
                                    zzgmVar.zza.zzj().zzp().zza("Logging Install Referrer campaign from gmscore with ", "referrer API v2");
                                    bundleZza2.putString("_cis", "referrer API v2");
                                    zzgmVar.zza.zzp().zza("auto", com.google.firebase.dynamiclinks.internal.b.KEY_CAMPAIGN_BUNDLE, bundleZza2, str);
                                }
                            }
                        }
                    }
                }
            }
        }
        if (serviceConnection != null) {
            ConnectionTracker.getInstance().unbindService(zzgmVar.zza.zza(), serviceConnection);
        }
    }
}
