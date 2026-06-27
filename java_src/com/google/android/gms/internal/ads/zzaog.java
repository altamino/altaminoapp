package com.google.android.gms.internal.ads;

import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

@zzard
/* loaded from: classes2.dex */
public final class zzaog {
    public static int zza(AdRequest.ErrorCode errorCode) {
        int i = zzaoh.zzdha[errorCode.ordinal()];
        if (i == 2) {
            return 1;
        }
        if (i != 3) {
            return i != 4 ? 0 : 3;
        }
        return 2;
    }

    public static MediationAdRequest zza(zzxz zzxzVar, boolean z) {
        AdRequest.Gender gender;
        List<String> list = zzxzVar.zzcgp;
        HashSet hashSet = list != null ? new HashSet(list) : null;
        Date date = new Date(zzxzVar.zzcgn);
        int i = zzxzVar.zzcgo;
        if (i == 1) {
            gender = AdRequest.Gender.MALE;
        } else if (i == 2) {
            gender = AdRequest.Gender.FEMALE;
        } else {
            gender = AdRequest.Gender.UNKNOWN;
        }
        return new MediationAdRequest(date, gender, hashSet, z, zzxzVar.zzmw);
    }
}
