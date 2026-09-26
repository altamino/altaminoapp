package com.google.android.gms.common;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.errorprone.annotations.RestrictedInheritance;

/* JADX INFO: loaded from: classes6.dex */
@ShowFirstParty
@KeepForSdk
@RestrictedInheritance(allowedOnPath = ".*javatests.*/com/google/android/gms/common/.*", explanation = "Sub classing of GMS Core's APIs are restricted to testing fakes.", link = "go/gmscore-restrictedinheritance")
public class PackageSignatureVerifier {

    @Nullable
    @VisibleForTesting
    static volatile zzac zza;

    @Nullable
    private static zzad zzb;

    private static zzad zza(Context context) {
        zzad zzadVar;
        synchronized (PackageSignatureVerifier.class) {
            try {
                if (zzb == null) {
                    zzb = new zzad(context);
                }
                zzadVar = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadVar;
    }

    @NonNull
    @ShowFirstParty
    @KeepForSdk
    public PackageVerificationResult queryPackageSignatureVerified(@NonNull Context context, @NonNull String str) {
        String str2;
        boolean zHonorsDebugCertificates = GooglePlayServicesUtilLight.honorsDebugCertificates(context);
        zza(context);
        if (zzn.zzf()) {
            if (true != zHonorsDebugCertificates) {
                str2 = "-0";
            } else {
                str2 = "-1";
            }
            String strConcat = String.valueOf(str).concat(str2);
            if (zza != null && zza.zza.equals(strConcat)) {
                return zza.zzb;
            }
            zza(context);
            zzx zzxVarZzc = zzn.zzc(str, zHonorsDebugCertificates, false, false);
            if (zzxVarZzc.zza) {
                zza = new zzac(strConcat, PackageVerificationResult.zzd(str, zzxVarZzc.zzd));
                return zza.zzb;
            }
            Preconditions.checkNotNull(zzxVarZzc.zzb);
            return PackageVerificationResult.zza(str, zzxVarZzc.zzb, zzxVarZzc.zzc);
        }
        throw new zzae();
    }

    @NonNull
    @ShowFirstParty
    @KeepForSdk
    public PackageVerificationResult queryPackageSignatureVerifiedWithRetry(@NonNull Context context, @NonNull String str) {
        try {
            PackageVerificationResult packageVerificationResultQueryPackageSignatureVerified = queryPackageSignatureVerified(context, str);
            packageVerificationResultQueryPackageSignatureVerified.zzb();
            return packageVerificationResultQueryPackageSignatureVerified;
        } catch (SecurityException e) {
            PackageVerificationResult packageVerificationResultQueryPackageSignatureVerified2 = queryPackageSignatureVerified(context, str);
            if (packageVerificationResultQueryPackageSignatureVerified2.zzc()) {
                Log.e("PkgSignatureVerifier", "Got flaky result during package signature verification", e);
                return packageVerificationResultQueryPackageSignatureVerified2;
            }
            return packageVerificationResultQueryPackageSignatureVerified2;
        }
    }
}
