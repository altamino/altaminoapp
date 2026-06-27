package com.google.android.gms.internal.ads;

import com.narvii.account.ThirdPartyAccountBaseFragment;
import java.io.IOException;

/* loaded from: classes2.dex */
final class zzji implements zzje {
    private final /* synthetic */ zzjg zzaoq;

    private zzji(zzjg zzjgVar) {
        this.zzaoq = zzjgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzje
    public final int zzx(int i) {
        switch (i) {
            case 131:
            case 159:
            case 176:
            case 179:
            case 186:
            case ThirdPartyAccountBaseFragment.API_ERR_EMAIL_TAKEN /* 215 */:
            case 231:
            case 241:
            case ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD /* 251 */:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 20531:
            case 21420:
            case 22186:
            case 22203:
            case 2807729:
                return 2;
            case 134:
            case 17026:
                return 3;
            case 160:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 18407:
            case 19899:
            case 20533:
            case 25152:
            case 28032:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 18402:
            case 21419:
            case 25506:
                return 4;
            case 181:
            case 17545:
                return 5;
            default:
                return 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzje
    public final void zzb(int i, long j, long j2) throws zzhl {
        this.zzaoq.zzb(i, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzje
    public final void zzy(int i) throws zzhl {
        this.zzaoq.zzy(i);
    }

    @Override // com.google.android.gms.internal.ads.zzje
    public final void zzc(int i, long j) throws zzhl {
        this.zzaoq.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzje
    public final void zza(int i, double d) {
        this.zzaoq.zza(i, d);
    }

    @Override // com.google.android.gms.internal.ads.zzje
    public final void zza(int i, String str) throws zzhl {
        this.zzaoq.zza(i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzje
    public final void zza(int i, int i2, zzie zzieVar) throws InterruptedException, IOException {
        this.zzaoq.zza(i, i2, zzieVar);
    }
}
