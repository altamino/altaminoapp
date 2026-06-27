package com.google.android.gms.internal.ads;

import java.util.regex.Pattern;

@zzard
/* loaded from: classes2.dex */
public final class zzacw {
    public static boolean zzcg(String str) {
        return zzf((String) zzyt.zzpe().zzd(zzacu.zzcvd), str);
    }

    private static boolean zzf(String str, String str2) {
        if (str != null && str2 != null) {
            try {
                return Pattern.matches(str, str2);
            } catch (RuntimeException e) {
                com.google.android.gms.ads.internal.zzk.zzlk().zza(e, "NonagonUtil.isPatternMatched");
            }
        }
        return false;
    }
}
