package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import com.google.android.gms.internal.ads.zzacu;
import com.google.android.gms.internal.ads.zzard;
import com.google.android.gms.internal.ads.zzawz;
import com.google.android.gms.internal.ads.zzaxi;
import com.google.android.gms.internal.ads.zzbad;
import com.google.android.gms.internal.ads.zzyt;

@zzard
/* loaded from: classes.dex */
public final class zza {
    public static boolean zza(Context context, zzc zzcVar, zzu zzuVar) throws NumberFormatException {
        int i = 0;
        if (zzcVar == null) {
            zzbad.zzep("No intent data for launcher overlay.");
            return false;
        }
        zzacu.initialize(context);
        Intent intent = zzcVar.intent;
        if (intent != null) {
            return zza(context, intent, zzuVar);
        }
        Intent intent2 = new Intent();
        if (TextUtils.isEmpty(zzcVar.url)) {
            zzbad.zzep("Open GMSG did not contain a URL.");
            return false;
        }
        if (!TextUtils.isEmpty(zzcVar.mimeType)) {
            intent2.setDataAndType(Uri.parse(zzcVar.url), zzcVar.mimeType);
        } else {
            intent2.setData(Uri.parse(zzcVar.url));
        }
        intent2.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(zzcVar.packageName)) {
            intent2.setPackage(zzcVar.packageName);
        }
        if (!TextUtils.isEmpty(zzcVar.zzdjh)) {
            String[] strArrSplit = zzcVar.zzdjh.split("/", 2);
            if (strArrSplit.length < 2) {
                String strValueOf = String.valueOf(zzcVar.zzdjh);
                zzbad.zzep(strValueOf.length() != 0 ? "Could not parse component name from open GMSG: ".concat(strValueOf) : new String("Could not parse component name from open GMSG: "));
                return false;
            }
            intent2.setClassName(strArrSplit[0], strArrSplit[1]);
        }
        String str = zzcVar.zzdji;
        if (!TextUtils.isEmpty(str)) {
            try {
                i = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                zzbad.zzep("Could not parse intent flags.");
            }
            intent2.addFlags(i);
        }
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzctz)).booleanValue()) {
            intent2.addFlags(C.ENCODING_PCM_MU_LAW);
            intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcty)).booleanValue()) {
                com.google.android.gms.ads.internal.zzk.zzlg();
                zzaxi.zzb(context, intent2);
            }
        }
        return zza(context, intent2, zzuVar);
    }

    private static boolean zza(Context context, Intent intent, zzu zzuVar) {
        try {
            String strValueOf = String.valueOf(intent.toURI());
            zzawz.zzds(strValueOf.length() != 0 ? "Launching an intent: ".concat(strValueOf) : new String("Launching an intent: "));
            com.google.android.gms.ads.internal.zzk.zzlg();
            zzaxi.zza(context, intent);
            if (zzuVar == null) {
                return true;
            }
            zzuVar.zztq();
            return true;
        } catch (ActivityNotFoundException e) {
            zzbad.zzep(e.getMessage());
            return false;
        }
    }
}
