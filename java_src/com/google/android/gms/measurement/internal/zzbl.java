package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbl {
    final zzby zzl;

    zzbl(zzby zzbyVar) {
        this.zzl = zzbyVar;
    }

    protected final void zzaw(String str) {
        if (str == null || str.isEmpty()) {
            this.zzl.zzad().zzdg().zzaq("Install Referrer Reporter was called with invalid app package name");
            return;
        }
        this.zzl.zzac().zzq();
        if (!zzee()) {
            this.zzl.zzad().zzdg().zzaq("Install Referrer Reporter is not available");
            return;
        }
        this.zzl.zzad().zzdg().zzaq("Install Referrer Reporter is initializing");
        zzbm zzbmVar = new zzbm(this, str);
        this.zzl.zzac().zzq();
        Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
        intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
        PackageManager packageManager = this.zzl.getContext().getPackageManager();
        if (packageManager == null) {
            this.zzl.zzad().zzdd().zzaq("Failed to obtain Package Manager to verify binding conditions");
            return;
        }
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (listQueryIntentServices != null && !listQueryIntentServices.isEmpty()) {
            ResolveInfo resolveInfo = listQueryIntentServices.get(0);
            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
            if (serviceInfo != null) {
                String str2 = serviceInfo.packageName;
                if (resolveInfo.serviceInfo.name != null && "com.android.vending".equals(str2) && zzee()) {
                    try {
                        this.zzl.zzad().zzdg().zza("Install Referrer Service is", ConnectionTracker.getInstance().bindService(this.zzl.getContext(), new Intent(intent), zzbmVar, 1) ? "available" : "not available");
                        return;
                    } catch (Exception e) {
                        this.zzl.zzad().zzda().zza("Exception occurred while binding to Install Referrer Service", e.getMessage());
                        return;
                    }
                }
                this.zzl.zzad().zzdg().zzaq("Play Store missing or incompatible. Version 8.3.73 or later required");
                return;
            }
            return;
        }
        this.zzl.zzad().zzdg().zzaq("Play Service for fetching Install Referrer is unavailable on device");
    }

    @VisibleForTesting
    private final boolean zzee() throws IllegalStateException {
        try {
            PackageManagerWrapper packageManagerWrapperPackageManager = Wrappers.packageManager(this.zzl.getContext());
            if (packageManagerWrapperPackageManager != null) {
                return packageManagerWrapperPackageManager.getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
            }
            this.zzl.zzad().zzdg().zzaq("Failed to retrieve Package Manager to check Play Store compatibility");
            return false;
        } catch (Exception e) {
            this.zzl.zzad().zzdg().zza("Failed to retrieve Play Store version", e);
            return false;
        }
    }

    @VisibleForTesting
    final Bundle zza(String str, com.google.android.gms.internal.measurement.zze zzeVar) throws IllegalStateException {
        this.zzl.zzac().zzq();
        if (zzeVar == null) {
            this.zzl.zzad().zzdd().zzaq("Attempting to use Install Referrer Service while it is not initialized");
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        try {
            Bundle bundleZza = zzeVar.zza(bundle);
            if (bundleZza != null) {
                return bundleZza;
            }
            this.zzl.zzad().zzda().zzaq("Install Referrer Service returned a null response");
            return null;
        } catch (Exception e) {
            this.zzl.zzad().zzda().zza("Exception occurred while retrieving the Install Referrer", e.getMessage());
            return null;
        }
    }
}
