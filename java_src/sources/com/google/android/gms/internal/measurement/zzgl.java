package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import com.google.common.base.l;

/* JADX INFO: loaded from: classes7.dex */
public final class zzgl {
    private static volatile l<Boolean> zza = l.a();
    private static final Object zzb = new Object();

    private static boolean zza(Context context) {
        try {
            return (context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).flags & 129) != 0;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public static boolean zza(Context context, Uri uri) {
        String authority = uri.getAuthority();
        boolean z6 = false;
        if (!"com.google.android.gms.phenotype".equals(authority)) {
            Log.e("PhenotypeClientHelper", authority + " is an unsupported authority. Only com.google.android.gms.phenotype authority is supported.");
            return false;
        }
        if (zza.c()) {
            return zza.b().booleanValue();
        }
        synchronized (zzb) {
            try {
                if (zza.c()) {
                    return zza.b().booleanValue();
                }
                if (!"com.google.android.gms".equals(context.getPackageName())) {
                    ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.phenotype", Build.VERSION.SDK_INT < 29 ? 0 : 268435456);
                    if (providerInfoResolveContentProvider != null && "com.google.android.gms".equals(providerInfoResolveContentProvider.packageName)) {
                    }
                    zza = l.d(Boolean.valueOf(z6));
                    return zza.b().booleanValue();
                }
                if (zza(context)) {
                    z6 = true;
                }
                zza = l.d(Boolean.valueOf(z6));
                return zza.b().booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
