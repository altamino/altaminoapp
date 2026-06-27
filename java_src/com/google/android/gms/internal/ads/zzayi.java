package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzayi {
    private final Object lock = new Object();
    private String zzdwn = "";
    private String zzdwo = "";
    private boolean zzdwp = false;

    @VisibleForTesting
    private String zzdwq = "";

    public final void zze(Context context, String str, String str2) {
        if (!zzf(context, str, str2)) {
            zza(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
            return;
        }
        if ("2".equals(this.zzdwq)) {
            zzbad.zzdp("Creative is not pushed for this device.");
            zza(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if (IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(this.zzdwq)) {
            zzbad.zzdp("The app is not linked for creative preview.");
            zzi(context, str, str2);
        } else if ("0".equals(this.zzdwq)) {
            zzbad.zzdp("Device is linked for in app preview.");
            zza(context, "The device is successfully linked for creative preview.", false, true);
        }
    }

    public final void zza(Context context, String str, String str2, String str3) {
        boolean zZzwo = zzwo();
        if (zzg(context, str, str2)) {
            if (!zZzwo && !TextUtils.isEmpty(str3)) {
                zzc(context, str2, str3, str);
            }
            zzbad.zzdp("Device is linked for debug signals.");
            zza(context, "The device is successfully linked for troubleshooting.", false, true);
            return;
        }
        zzi(context, str, str2);
    }

    @VisibleForTesting
    private final boolean zzf(Context context, String str, String str2) {
        String strZzh = zzh(context, zzd(context, (String) zzyt.zzpe().zzd(zzacu.zzcuc), str, str2).toString(), str2);
        if (TextUtils.isEmpty(strZzh)) {
            zzbad.zzdp("Not linked for in app preview.");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(strZzh.trim());
            String strOptString = jSONObject.optString("gct");
            this.zzdwq = jSONObject.optString(NotificationCompat.CATEGORY_STATUS);
            synchronized (this.lock) {
                this.zzdwo = strOptString;
            }
            return true;
        } catch (JSONException e) {
            zzbad.zzd("Fail to get in app preview response json.", e);
            return false;
        }
    }

    @VisibleForTesting
    private final boolean zzg(Context context, String str, String str2) {
        String strZzh = zzh(context, zzd(context, (String) zzyt.zzpe().zzd(zzacu.zzcud), str, str2).toString(), str2);
        if (TextUtils.isEmpty(strZzh)) {
            zzbad.zzdp("Not linked for debug signals.");
            return false;
        }
        try {
            boolean zEquals = IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(new JSONObject(strZzh.trim()).optString("debug_mode"));
            synchronized (this.lock) {
                this.zzdwp = zEquals;
            }
            return zEquals;
        } catch (JSONException e) {
            zzbad.zzd("Fail to get debug mode response json.", e);
            return false;
        }
    }

    @VisibleForTesting
    private static String zzh(Context context, String str, String str2) {
        HashMap map = new HashMap();
        map.put("User-Agent", com.google.android.gms.ads.internal.zzk.zzlg().zzq(context, str2));
        zzbbh<String> zzbbhVarZzc = new zzayu(context).zzc(str, map);
        try {
            return zzbbhVarZzc.get(((Integer) zzyt.zzpe().zzd(zzacu.zzcuf)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            String strValueOf = String.valueOf(str);
            zzbad.zzc(strValueOf.length() != 0 ? "Interrupted while retriving a response from: ".concat(strValueOf) : new String("Interrupted while retriving a response from: "), e);
            zzbbhVarZzc.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            String strValueOf2 = String.valueOf(str);
            zzbad.zzc(strValueOf2.length() != 0 ? "Timeout while retriving a response from: ".concat(strValueOf2) : new String("Timeout while retriving a response from: "), e2);
            zzbbhVarZzc.cancel(true);
            return null;
        } catch (Exception e3) {
            String strValueOf3 = String.valueOf(str);
            zzbad.zzc(strValueOf3.length() != 0 ? "Error retriving a response from: ".concat(strValueOf3) : new String("Error retriving a response from: "), e3);
            return null;
        }
    }

    private final void zzi(Context context, String str, String str2) {
        com.google.android.gms.ads.internal.zzk.zzlg();
        zzaxi.zza(context, zzd(context, (String) zzyt.zzpe().zzd(zzacu.zzcub), str, str2));
    }

    public final boolean zzb(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !com.google.android.gms.ads.internal.zzk.zzlq().zzwo()) {
            return false;
        }
        zzbad.zzdp("Sending troubleshooting signals to the server.");
        zzc(context, str, str2, str3);
        return true;
    }

    private final void zzc(Context context, String str, String str2, String str3) {
        Uri.Builder builderBuildUpon = zzd(context, (String) zzyt.zzpe().zzd(zzacu.zzcue), str3, str).buildUpon();
        builderBuildUpon.appendQueryParameter("debugData", str2);
        com.google.android.gms.ads.internal.zzk.zzlg();
        zzaxi.zzb(context, str, builderBuildUpon.build().toString());
    }

    private final Uri zzd(Context context, String str, String str2, String str3) {
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        builderBuildUpon.appendQueryParameter("linkedDeviceId", zzbb(context));
        builderBuildUpon.appendQueryParameter("adSlotPath", str2);
        builderBuildUpon.appendQueryParameter("afmaVersion", str3);
        return builderBuildUpon.build();
    }

    private final String zzbb(Context context) {
        String str;
        synchronized (this.lock) {
            if (TextUtils.isEmpty(this.zzdwn)) {
                com.google.android.gms.ads.internal.zzk.zzlg();
                this.zzdwn = zzaxi.zzr(context, "debug_signals_id.txt");
                if (TextUtils.isEmpty(this.zzdwn)) {
                    com.google.android.gms.ads.internal.zzk.zzlg();
                    this.zzdwn = zzaxi.zzwb();
                    com.google.android.gms.ads.internal.zzk.zzlg();
                    zzaxi.zzc(context, "debug_signals_id.txt", this.zzdwn);
                }
            }
            str = this.zzdwn;
        }
        return str;
    }

    public final String zzwn() {
        String str;
        synchronized (this.lock) {
            str = this.zzdwo;
        }
        return str;
    }

    public final boolean zzwo() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzdwp;
        }
        return z;
    }

    @VisibleForTesting
    private final void zza(Context context, String str, boolean z, boolean z2) {
        if (!(context instanceof Activity)) {
            zzbad.zzeo("Can not create dialog without Activity Context");
        } else {
            zzaxi.zzdvv.post(new zzayj(this, context, str, z, z2));
        }
    }
}
