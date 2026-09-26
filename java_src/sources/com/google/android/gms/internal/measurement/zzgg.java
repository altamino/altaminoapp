package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.core.content.PermissionChecker;

/* JADX INFO: loaded from: classes7.dex */
final class zzgg implements zzgb {

    @GuardedBy
    private static zzgg zza;
    private final Context zzb;
    private final ContentObserver zzc;

    private zzgg() {
        this.zzb = null;
        this.zzc = null;
    }

    static zzgg zza(Context context) {
        zzgg zzggVar;
        synchronized (zzgg.class) {
            try {
                if (zza == null) {
                    zza = PermissionChecker.c(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new zzgg(context) : new zzgg();
                }
                zzggVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzggVar;
    }

    private zzgg(Context context) {
        this.zzb = context;
        zzgi zzgiVar = new zzgi(this, null);
        this.zzc = zzgiVar;
        context.getContentResolver().registerContentObserver(zzfr.zza, true, zzgiVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.zzgb
    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final String zza(final String str) {
        Context context = this.zzb;
        if (context != null && !zzfw.zza(context)) {
            try {
                return (String) zzge.zza(new zzgd() { // from class: com.google.android.gms.internal.measurement.zzgf
                    @Override // com.google.android.gms.internal.measurement.zzgd
                    public final Object zza() {
                        return this.zza.zzb(str);
                    }
                });
            } catch (IllegalStateException | NullPointerException | SecurityException e) {
                Log.e("GservicesLoader", "Unable to read GServices for: " + str, e);
            }
        }
        return null;
    }

    final /* synthetic */ String zzb(String str) {
        return zzfr.zza(this.zzb.getContentResolver(), str, (String) null);
    }

    static synchronized void zza() {
        Context context;
        try {
            zzgg zzggVar = zza;
            if (zzggVar != null && (context = zzggVar.zzb) != null && zzggVar.zzc != null) {
                context.getContentResolver().unregisterContentObserver(zza.zzc);
            }
            zza = null;
        } catch (Throwable th) {
            throw th;
        }
    }
}
