package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbhx;
import com.google.android.gms.internal.ads.zzbhy;
import com.google.android.gms.internal.ads.zzbic;
import com.google.android.gms.internal.ads.zzbif;
import com.google.android.gms.internal.ads.zzbih;
import java.net.URISyntaxException;
import java.util.Map;

@zzard
/* loaded from: classes2.dex */
public final class zzahs<T extends zzbhx & zzbhy & zzbic & zzbif & zzbih> implements zzaho<T> {
    private final com.google.android.gms.ads.internal.zzb zzdan;
    private final zzapr zzdao;

    public zzahs(com.google.android.gms.ads.internal.zzb zzbVar, zzapr zzaprVar) {
        this.zzdan = zzbVar;
        this.zzdao = zzaprVar;
    }

    private static boolean zzc(Map<String, String> map) {
        return IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(map.get("custom_close"));
    }

    private static int zzd(Map<String, String> map) {
        String str = map.get("o");
        if (str == null) {
            return -1;
        }
        if (TtmlNode.TAG_P.equalsIgnoreCase(str)) {
            com.google.android.gms.ads.internal.zzk.zzli();
            return 7;
        }
        if ("l".equalsIgnoreCase(str)) {
            com.google.android.gms.ads.internal.zzk.zzli();
            return 6;
        }
        if ("c".equalsIgnoreCase(str)) {
            return com.google.android.gms.ads.internal.zzk.zzli().zzwf();
        }
        return -1;
    }

    private final void zzv(boolean z) {
        zzapr zzaprVar = this.zzdao;
        if (zzaprVar != null) {
            zzaprVar.zzw(z);
        }
    }

    @VisibleForTesting
    static String zza(Context context, zzdh zzdhVar, String str, View view, Activity activity) {
        if (zzdhVar == null) {
            return str;
        }
        try {
            Uri uriZza = Uri.parse(str);
            if (zzdhVar.zzd(uriZza)) {
                uriZza = zzdhVar.zza(uriZza, context, view, activity);
            }
            return uriZza.toString();
        } catch (zzdi unused) {
            return str;
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzk.zzlk().zza(e, "OpenGmsgHandler.maybeAddClickSignalsToUrl");
            return str;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final /* synthetic */ void zza(Object obj, Map map) throws URISyntaxException {
        zzbhx zzbhxVar = (zzbhx) obj;
        String strZzd = zzavx.zzd((String) map.get("u"), zzbhxVar.getContext(), true);
        String str = (String) map.get("a");
        if (str == null) {
            zzbad.zzep("Action missing from an open GMSG.");
            return;
        }
        com.google.android.gms.ads.internal.zzb zzbVar = this.zzdan;
        if (zzbVar != null && !zzbVar.zzkx()) {
            this.zzdan.zzbk(strZzd);
            return;
        }
        if ("expand".equalsIgnoreCase(str)) {
            if (((zzbhy) zzbhxVar).zzaan()) {
                zzbad.zzep("Cannot expand WebView that is already expanded.");
                return;
            } else {
                zzv(false);
                ((zzbic) zzbhxVar).zzc(zzc(map), zzd(map));
                return;
            }
        }
        if ("webapp".equalsIgnoreCase(str)) {
            zzv(false);
            if (strZzd != null) {
                ((zzbic) zzbhxVar).zza(zzc(map), zzd(map), strZzd);
                return;
            } else {
                ((zzbic) zzbhxVar).zza(zzc(map), zzd(map), (String) map.get("html"), (String) map.get("baseurl"));
                return;
            }
        }
        if ("app".equalsIgnoreCase(str) && "true".equalsIgnoreCase((String) map.get("system_browser"))) {
            zzv(true);
            if (TextUtils.isEmpty(strZzd)) {
                zzbad.zzep("Destination url cannot be empty.");
                return;
            }
            try {
                ((zzbic) zzbhxVar).zza(new com.google.android.gms.ads.internal.overlay.zzc(new zzaht(zzbhxVar.getContext(), ((zzbif) zzbhxVar).zzaal(), ((zzbih) zzbhxVar).getView()).zze(map)));
                return;
            } catch (ActivityNotFoundException e) {
                zzbad.zzep(e.getMessage());
                return;
            }
        }
        zzv(true);
        String str2 = (String) map.get("intent_url");
        Intent uri = null;
        if (!TextUtils.isEmpty(str2)) {
            try {
                uri = Intent.parseUri(str2, 0);
            } catch (URISyntaxException e2) {
                String strValueOf = String.valueOf(str2);
                zzbad.zzc(strValueOf.length() != 0 ? "Error parsing the url: ".concat(strValueOf) : new String("Error parsing the url: "), e2);
            }
        }
        if (uri != null && uri.getData() != null) {
            Uri data = uri.getData();
            String string = data.toString();
            if (!TextUtils.isEmpty(string)) {
                try {
                    string = zza(zzbhxVar.getContext(), ((zzbif) zzbhxVar).zzaal(), string, ((zzbih) zzbhxVar).getView(), zzbhxVar.zzyd());
                } catch (Exception e3) {
                    zzbad.zzc("Error occurred while adding signals.", e3);
                    com.google.android.gms.ads.internal.zzk.zzlk().zza(e3, "OpenGmsgHandler.onGmsg");
                }
                try {
                    data = Uri.parse(string);
                } catch (Exception e4) {
                    String strValueOf2 = String.valueOf(string);
                    zzbad.zzc(strValueOf2.length() != 0 ? "Error parsing the uri: ".concat(strValueOf2) : new String("Error parsing the uri: "), e4);
                    com.google.android.gms.ads.internal.zzk.zzlk().zza(e4, "OpenGmsgHandler.onGmsg");
                }
            }
            uri.setData(data);
        }
        if (uri != null) {
            ((zzbic) zzbhxVar).zza(new com.google.android.gms.ads.internal.overlay.zzc(uri));
            return;
        }
        if (!TextUtils.isEmpty(strZzd)) {
            strZzd = zza(zzbhxVar.getContext(), ((zzbif) zzbhxVar).zzaal(), strZzd, ((zzbih) zzbhxVar).getView(), zzbhxVar.zzyd());
        }
        ((zzbic) zzbhxVar).zza(new com.google.android.gms.ads.internal.overlay.zzc((String) map.get("i"), strZzd, (String) map.get("m"), (String) map.get(TtmlNode.TAG_P), (String) map.get("c"), (String) map.get("f"), (String) map.get("e")));
    }
}
