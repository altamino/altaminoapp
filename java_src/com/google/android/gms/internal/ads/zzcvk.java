package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.narvii.account.CodeVerifyFragment;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzcvk implements zzcva<zzcvj> {
    private final zzbbl zzfqw;
    private final Context zzlj;

    public zzcvk(zzbbl zzbblVar, Context context) {
        this.zzfqw = zzbblVar;
        this.zzlj = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcvj> zzalm() {
        return this.zzfqw.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcvl
            private final zzcvk zzgio;

            {
                this.zzgio = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgio.zzama();
            }
        });
    }

    final /* synthetic */ zzcvj zzama() throws Exception {
        int i;
        boolean zIsActiveNetworkMetered;
        int i2;
        int i3;
        TelephonyManager telephonyManager = (TelephonyManager) this.zzlj.getSystemService(CodeVerifyFragment.KEY_PHONE);
        String networkOperator = telephonyManager.getNetworkOperator();
        int networkType = telephonyManager.getNetworkType();
        int phoneType = telephonyManager.getPhoneType();
        com.google.android.gms.ads.internal.zzk.zzlg();
        int i4 = -1;
        if (zzaxi.zzp(this.zzlj, "android.permission.ACCESS_NETWORK_STATE")) {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.zzlj.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                int type = activeNetworkInfo.getType();
                int iOrdinal = activeNetworkInfo.getDetailedState().ordinal();
                i3 = type;
                i4 = iOrdinal;
            } else {
                i3 = -1;
            }
            if (Build.VERSION.SDK_INT >= 16) {
                i2 = i4;
                i = i3;
                zIsActiveNetworkMetered = connectivityManager.isActiveNetworkMetered();
            } else {
                i2 = i4;
                i = i3;
                zIsActiveNetworkMetered = false;
            }
        } else {
            i = -2;
            zIsActiveNetworkMetered = false;
            i2 = -1;
        }
        return new zzcvj(networkOperator, i, networkType, phoneType, zIsActiveNetworkMetered, i2);
    }
}
