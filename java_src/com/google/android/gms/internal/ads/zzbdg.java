package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.concurrent.TimeUnit;

@zzard
/* loaded from: classes2.dex */
public final class zzbdg {
    private final zzbai zzdld;
    private final String zzdlx;
    private final zzadi zzebv;
    private boolean zzebz;
    private final zzadg zzeem;
    private final long[] zzeeo;
    private final String[] zzeep;
    private zzbco zzeeu;
    private boolean zzeev;
    private boolean zzeew;
    private final Context zzlj;
    private final zzayq zzeen = new zzayt().zza("min_1", Double.MIN_VALUE, 1.0d).zza("1_5", 1.0d, 5.0d).zza("5_10", 5.0d, 10.0d).zza("10_20", 10.0d, 20.0d).zza("20_30", 20.0d, 30.0d).zza("30_max", 30.0d, Double.MAX_VALUE).zzwq();
    private boolean zzeeq = false;
    private boolean zzeer = false;
    private boolean zzees = false;
    private boolean zzeet = false;
    private long zzeex = -1;

    public zzbdg(Context context, zzbai zzbaiVar, String str, zzadi zzadiVar, zzadg zzadgVar) {
        this.zzlj = context;
        this.zzdld = zzbaiVar;
        this.zzdlx = str;
        this.zzebv = zzadiVar;
        this.zzeem = zzadgVar;
        String str2 = (String) zzyt.zzpe().zzd(zzacu.zzcmb);
        if (str2 == null) {
            this.zzeep = new String[0];
            this.zzeeo = new long[0];
            return;
        }
        String[] strArrSplit = TextUtils.split(str2, ",");
        this.zzeep = new String[strArrSplit.length];
        this.zzeeo = new long[strArrSplit.length];
        for (int i = 0; i < strArrSplit.length; i++) {
            try {
                this.zzeeo[i] = Long.parseLong(strArrSplit[i]);
            } catch (NumberFormatException e) {
                zzbad.zzd("Unable to parse frame hash target time number.", e);
                this.zzeeo[i] = -1;
            }
        }
    }

    public final void zzb(zzbco zzbcoVar) {
        zzadb.zza(this.zzebv, this.zzeem, "vpc2");
        this.zzeeq = true;
        zzadi zzadiVar = this.zzebv;
        if (zzadiVar != null) {
            zzadiVar.zzh("vpn", zzbcoVar.zzxg());
        }
        this.zzeeu = zzbcoVar;
    }

    public final void zzhd() {
        if (!this.zzeeq || this.zzeer) {
            return;
        }
        zzadb.zza(this.zzebv, this.zzeem, "vfr2");
        this.zzeer = true;
    }

    public final void onStop() {
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcma)).booleanValue() || this.zzeev) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "native-player-metrics");
        bundle.putString("request", this.zzdlx);
        bundle.putString("player", this.zzeeu.zzxg());
        for (zzays zzaysVar : this.zzeen.zzwp()) {
            String strValueOf = String.valueOf(zzaysVar.name);
            bundle.putString(strValueOf.length() != 0 ? "fps_c_".concat(strValueOf) : new String("fps_c_"), Integer.toString(zzaysVar.count));
            String strValueOf2 = String.valueOf(zzaysVar.name);
            bundle.putString(strValueOf2.length() != 0 ? "fps_p_".concat(strValueOf2) : new String("fps_p_"), Double.toString(zzaysVar.zzdxd));
        }
        int i = 0;
        while (true) {
            long[] jArr = this.zzeeo;
            if (i < jArr.length) {
                String str = this.zzeep[i];
                if (str != null) {
                    String strValueOf3 = String.valueOf(Long.valueOf(jArr[i]));
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf3).length() + 3);
                    sb.append("fh_");
                    sb.append(strValueOf3);
                    bundle.putString(sb.toString(), str);
                }
                i++;
            } else {
                com.google.android.gms.ads.internal.zzk.zzlg().zza(this.zzlj, this.zzdld.zzbsx, "gmob-apps", bundle, true);
                this.zzeev = true;
                return;
            }
        }
    }

    public final void zzc(zzbco zzbcoVar) {
        if (this.zzees && !this.zzeet) {
            if (zzawz.zzvj() && !this.zzeet) {
                zzawz.zzds("VideoMetricsMixin first frame");
            }
            zzadb.zza(this.zzebv, this.zzeem, "vff2");
            this.zzeet = true;
        }
        long jNanoTime = com.google.android.gms.ads.internal.zzk.zzln().nanoTime();
        if (this.zzebz && this.zzeew && this.zzeex != -1) {
            double nanos = TimeUnit.SECONDS.toNanos(1L);
            double d = jNanoTime - this.zzeex;
            Double.isNaN(nanos);
            Double.isNaN(d);
            this.zzeen.zza(nanos / d);
        }
        this.zzeew = this.zzebz;
        this.zzeex = jNanoTime;
        long jLongValue = ((Long) zzyt.zzpe().zzd(zzacu.zzcmc)).longValue();
        long currentPosition = zzbcoVar.getCurrentPosition();
        int i = 0;
        while (true) {
            String[] strArr = this.zzeep;
            if (i >= strArr.length) {
                return;
            }
            if (strArr[i] == null && jLongValue > Math.abs(currentPosition - this.zzeeo[i])) {
                String[] strArr2 = this.zzeep;
                int i2 = 8;
                Bitmap bitmap = zzbcoVar.getBitmap(8, 8);
                long j = 63;
                int i3 = 0;
                long j2 = 0;
                while (i3 < i2) {
                    long j3 = j;
                    int i4 = 0;
                    while (i4 < i2) {
                        int pixel = bitmap.getPixel(i4, i3);
                        j2 |= ((Color.blue(pixel) + Color.red(pixel)) + Color.green(pixel) > 128 ? 1L : 0L) << ((int) j3);
                        i4++;
                        j3--;
                        i2 = 8;
                    }
                    i3++;
                    j = j3;
                    i2 = 8;
                }
                strArr2[i] = String.format("%016X", Long.valueOf(j2));
                return;
            }
            i++;
        }
    }

    public final void zzyl() {
        this.zzebz = true;
        if (!this.zzeer || this.zzees) {
            return;
        }
        zzadb.zza(this.zzebv, this.zzeem, "vfp2");
        this.zzees = true;
    }

    public final void zzym() {
        this.zzebz = false;
    }
}
