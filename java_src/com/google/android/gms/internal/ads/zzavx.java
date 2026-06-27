package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.reflect.InvocationTargetException;

@zzard
/* loaded from: classes2.dex */
public final class zzavx {
    public static String zzd(String str, Context context, boolean z) {
        String strZzac;
        if ((((Boolean) zzyt.zzpe().zzd(zzacu.zzcod)).booleanValue() && !z) || !com.google.android.gms.ads.internal.zzk.zzme().zzx(context) || TextUtils.isEmpty(str) || (strZzac = com.google.android.gms.ads.internal.zzk.zzme().zzac(context)) == null) {
            return str;
        }
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcnv)).booleanValue()) {
            if (str.contains("fbs_aeid")) {
                return str;
            }
            if (com.google.android.gms.ads.internal.zzk.zzlg().zzea(str)) {
                com.google.android.gms.ads.internal.zzk.zzme().zzg(context, strZzac);
                return zza(str, "fbs_aeid", strZzac).toString();
            }
            if (!com.google.android.gms.ads.internal.zzk.zzlg().zzeb(str)) {
                return str;
            }
            com.google.android.gms.ads.internal.zzk.zzme().zzh(context, strZzac);
            return zza(str, "fbs_aeid", strZzac).toString();
        }
        CharSequence charSequence = (String) zzyt.zzpe().zzd(zzacu.zzcnw);
        if (!str.contains(charSequence)) {
            return str;
        }
        if (com.google.android.gms.ads.internal.zzk.zzlg().zzea(str)) {
            com.google.android.gms.ads.internal.zzk.zzme().zzg(context, strZzac);
            return str.replace(charSequence, strZzac);
        }
        if (!com.google.android.gms.ads.internal.zzk.zzlg().zzeb(str)) {
            return str;
        }
        com.google.android.gms.ads.internal.zzk.zzme().zzh(context, strZzac);
        return str.replace(charSequence, strZzac);
    }

    public static String zzb(Uri uri, Context context) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (!com.google.android.gms.ads.internal.zzk.zzme().zzx(context)) {
            return uri.toString();
        }
        String strZzac = com.google.android.gms.ads.internal.zzk.zzme().zzac(context);
        if (strZzac == null) {
            return uri.toString();
        }
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcnv)).booleanValue()) {
            String str = (String) zzyt.zzpe().zzd(zzacu.zzcnw);
            String string = uri.toString();
            if (string.contains(str)) {
                com.google.android.gms.ads.internal.zzk.zzme().zzg(context, strZzac);
                return string.replace(str, strZzac);
            }
        } else if (TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
            uri = zza(uri.toString(), "fbs_aeid", strZzac);
            com.google.android.gms.ads.internal.zzk.zzme().zzg(context, strZzac);
        }
        return uri.toString();
    }

    @VisibleForTesting
    private static Uri zza(String str, String str2, String str3) {
        int iIndexOf = str.indexOf("&adurl");
        if (iIndexOf == -1) {
            iIndexOf = str.indexOf("?adurl");
        }
        if (iIndexOf != -1) {
            int i = iIndexOf + 1;
            return Uri.parse(str.substring(0, i) + str2 + "=" + str3 + "&" + str.substring(i));
        }
        return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
    }
}
