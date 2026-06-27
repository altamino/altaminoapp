package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes2.dex */
public final class zzdh {
    private static final String[] zzwo = {"/aclk", "/pcs/click", "/dbm/clk"};
    private String zzwk = "googleads.g.doubleclick.net";
    private String zzwl = "/pagead/ads";
    private String zzwm = "ad.doubleclick.net";
    private String[] zzwn = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
    private zzdc zzwp;

    public zzdh(zzdc zzdcVar) {
        this.zzwp = zzdcVar;
    }

    public final void zzb(String str, String str2) {
        this.zzwk = str;
        this.zzwl = str2;
    }

    public final boolean zza(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            if (uri.getHost().equals(this.zzwk)) {
                if (uri.getPath().equals(this.zzwl)) {
                    return true;
                }
            }
        } catch (NullPointerException unused) {
        }
        return false;
    }

    private final boolean zzb(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            return uri.getHost().equals(this.zzwm);
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public final boolean zzc(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            String host = uri.getHost();
            for (String str : this.zzwn) {
                if (host.endsWith(str)) {
                    return true;
                }
            }
        } catch (NullPointerException unused) {
        }
        return false;
    }

    public final void zzam(String str) {
        this.zzwn = str.split(",");
    }

    public final zzdc zzcg() {
        return this.zzwp;
    }

    public final Uri zza(Uri uri, Context context) throws zzdi {
        return zza(uri, context, null, false, null, null);
    }

    public final void zza(MotionEvent motionEvent) {
        this.zzwp.zza(motionEvent);
    }

    public final Uri zza(Uri uri, Context context, View view, Activity activity) throws zzdi {
        try {
            return zza(uri, context, uri.getQueryParameter("ai"), true, view, activity);
        } catch (UnsupportedOperationException unused) {
            throw new zzdi("Provided Uri is not in a valid state");
        }
    }

    public final boolean zzd(Uri uri) {
        if (zzc(uri)) {
            for (String str : zzwo) {
                if (uri.getPath().endsWith(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    private final Uri zza(Uri uri, Context context, String str, boolean z, View view, Activity activity) throws zzdi {
        String strZza;
        try {
            boolean zZzb = zzb(uri);
            if (zZzb) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new zzdi("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new zzdi("Query parameter already exists: ms");
            }
            if (z) {
                strZza = this.zzwp.zza(context, str, view, activity);
            } else {
                strZza = this.zzwp.zza(context);
            }
            if (zZzb) {
                String string = uri.toString();
                int iIndexOf = string.indexOf(";adurl");
                if (iIndexOf != -1) {
                    int i = iIndexOf + 1;
                    return Uri.parse(string.substring(0, i) + "dc_ms=" + strZza + ";" + string.substring(i));
                }
                String encodedPath = uri.getEncodedPath();
                int iIndexOf2 = string.indexOf(encodedPath);
                return Uri.parse(string.substring(0, encodedPath.length() + iIndexOf2) + ";dc_ms=" + strZza + ";" + string.substring(iIndexOf2 + encodedPath.length()));
            }
            String string2 = uri.toString();
            int iIndexOf3 = string2.indexOf("&adurl");
            if (iIndexOf3 == -1) {
                iIndexOf3 = string2.indexOf("?adurl");
            }
            if (iIndexOf3 != -1) {
                int i2 = iIndexOf3 + 1;
                return Uri.parse(string2.substring(0, i2) + "ms=" + strZza + "&" + string2.substring(i2));
            }
            return uri.buildUpon().appendQueryParameter("ms", strZza).build();
        } catch (UnsupportedOperationException unused) {
            throw new zzdi("Provided Uri is not in a valid state");
        }
    }
}
