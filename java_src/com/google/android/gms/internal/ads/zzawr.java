package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.common.util.VisibleForTesting;

@zzard
/* loaded from: classes2.dex */
public final class zzawr {

    @VisibleForTesting
    private final String zzduj;
    private final zzaxb zzduk;

    @VisibleForTesting
    private long zzdue = -1;

    @VisibleForTesting
    private long zzduf = -1;

    @VisibleForTesting
    private int zzdug = -1;

    @VisibleForTesting
    int zzduh = -1;

    @VisibleForTesting
    private long zzdui = 0;
    private final Object lock = new Object();

    @VisibleForTesting
    private int zzdul = 0;

    @VisibleForTesting
    private int zzdum = 0;

    public zzawr(String str, zzaxb zzaxbVar) {
        this.zzduj = str;
        this.zzduk = zzaxbVar;
    }

    public final void zzuk() {
        synchronized (this.lock) {
            this.zzdul++;
        }
    }

    public final void zzuj() {
        synchronized (this.lock) {
            this.zzdum++;
        }
    }

    public final void zza(zzxz zzxzVar, long j) {
        synchronized (this.lock) {
            long jZzvs = this.zzduk.zzvs();
            long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzk.zzln().currentTimeMillis();
            if (this.zzduf == -1) {
                if (jCurrentTimeMillis - jZzvs > ((Long) zzyt.zzpe().zzd(zzacu.zzcoy)).longValue()) {
                    this.zzduh = -1;
                } else {
                    this.zzduh = this.zzduk.zzvt();
                }
                this.zzduf = j;
                this.zzdue = this.zzduf;
            } else {
                this.zzdue = j;
            }
            if (zzxzVar == null || zzxzVar.extras == null || zzxzVar.extras.getInt("gw", 2) != 1) {
                this.zzdug++;
                this.zzduh++;
                if (this.zzduh == 0) {
                    this.zzdui = 0L;
                    this.zzduk.zzfd(jCurrentTimeMillis);
                } else {
                    this.zzdui = jCurrentTimeMillis - this.zzduk.zzvu();
                }
            }
        }
    }

    public final Bundle zzn(Context context, String str) {
        Bundle bundle;
        synchronized (this.lock) {
            bundle = new Bundle();
            bundle.putString("session_id", this.zzduj);
            bundle.putLong("basets", this.zzduf);
            bundle.putLong("currts", this.zzdue);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.zzdug);
            bundle.putInt("preqs_in_session", this.zzduh);
            bundle.putLong("time_in_session", this.zzdui);
            bundle.putInt("pclick", this.zzdul);
            bundle.putInt("pimp", this.zzdum);
            bundle.putBoolean("support_transparent_background", zzai(context));
        }
        return bundle;
    }

    private static boolean zzai(Context context) {
        Context contextZzw = zzasq.zzw(context);
        int identifier = contextZzw.getResources().getIdentifier("Theme.Translucent", TtmlNode.TAG_STYLE, "android");
        if (identifier == 0) {
            zzbad.zzeo("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
        try {
            if (identifier == contextZzw.getPackageManager().getActivityInfo(new ComponentName(contextZzw.getPackageName(), AdActivity.CLASS_NAME), 0).theme) {
                return true;
            }
            zzbad.zzeo("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            zzbad.zzep("Fail to fetch AdActivity theme");
            zzbad.zzeo("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
    }
}
