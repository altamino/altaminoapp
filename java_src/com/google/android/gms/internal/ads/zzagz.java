package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzagz {
    public static final zzaho<zzbgz> zzczq = zzaha.zzdai;
    public static final zzaho<zzbgz> zzczr = zzahb.zzdai;
    public static final zzaho<zzbgz> zzczs = zzahc.zzdai;
    public static final zzaho<zzbgz> zzczt = new zzahf();
    public static final zzaho<zzbgz> zzczu = new zzahg();
    public static final zzaho<zzbgz> zzczv = zzahd.zzdai;
    public static final zzaho<Object> zzczw = new zzahh();
    public static final zzaho<zzbgz> zzczx = new zzahi();
    public static final zzaho<zzbgz> zzczy = zzahe.zzdai;
    public static final zzaho<zzbgz> zzczz = new zzahj();
    public static final zzaho<zzbgz> zzdaa = new zzahk();
    public static final zzaho<zzbdf> zzdab = new zzbfo();
    public static final zzaho<zzbdf> zzdac = new zzbfp();
    public static final zzaho<zzbgz> zzdad = new zzagy();
    public static final zzahu zzdae = new zzahu();
    public static final zzaho<zzbgz> zzdaf = new zzahl();
    public static final zzaho<zzbgz> zzdag = new zzahm();
    public static final zzaho<zzbgz> zzdah = new zzahn();

    static final /* synthetic */ void zza(zzbif zzbifVar, Map map) throws NumberFormatException {
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int i = Integer.parseInt(str);
            int i2 = Integer.parseInt(str2);
            int i3 = Integer.parseInt(str3);
            zzdh zzdhVarZzaal = zzbifVar.zzaal();
            if (zzdhVarZzaal != null) {
                zzdhVarZzaal.zzcg().zza(i, i2, i3);
            }
        } catch (NumberFormatException unused) {
            zzbad.zzep("Could not parse touch parameters from gmsg.");
        }
    }

    static final /* synthetic */ void zza(zzbhx zzbhxVar, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            zzbad.zzep("URL missing from httpTrack GMSG.");
        } else {
            new zzazi(zzbhxVar.getContext(), ((zzbig) zzbhxVar).zzyh().zzbsx, str).zzvi();
        }
    }

    static final /* synthetic */ void zza(zzaji zzajiVar, Map map) throws zzdi {
        String str = (String) map.get("u");
        if (str == null) {
            zzbad.zzep("URL missing from click GMSG.");
            return;
        }
        Uri uriZza = Uri.parse(str);
        try {
            zzdh zzdhVarZzaal = ((zzbif) zzajiVar).zzaal();
            if (zzdhVarZzaal != null && zzdhVarZzaal.zzc(uriZza)) {
                uriZza = zzdhVarZzaal.zza(uriZza, ((zzbhx) zzajiVar).getContext(), ((zzbih) zzajiVar).getView(), ((zzbhx) zzajiVar).zzyd());
            }
        } catch (zzdi unused) {
            String strValueOf = String.valueOf(str);
            zzbad.zzep(strValueOf.length() != 0 ? "Unable to append parameter to URL: ".concat(strValueOf) : new String("Unable to append parameter to URL: "));
        }
        zzbhx zzbhxVar = (zzbhx) zzajiVar;
        new zzazi(zzbhxVar.getContext(), ((zzbig) zzajiVar).zzyh().zzbsx, zzavx.zzb(uriZza, zzbhxVar.getContext())).zzvi();
    }

    static final /* synthetic */ void zzb(zzbhx zzbhxVar, Map map) throws JSONException, URISyntaxException {
        PackageManager packageManager = zzbhxVar.getContext().getPackageManager();
        try {
            try {
                JSONArray jSONArray = new JSONObject((String) map.get("data")).getJSONArray("intents");
                JSONObject jSONObject = new JSONObject();
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        String strOptString = jSONObject2.optString("id");
                        String strOptString2 = jSONObject2.optString("u");
                        String strOptString3 = jSONObject2.optString("i");
                        String strOptString4 = jSONObject2.optString("m");
                        String strOptString5 = jSONObject2.optString(TtmlNode.TAG_P);
                        String strOptString6 = jSONObject2.optString("c");
                        jSONObject2.optString("f");
                        jSONObject2.optString("e");
                        String strOptString7 = jSONObject2.optString("intent_url");
                        Intent uri = null;
                        if (!TextUtils.isEmpty(strOptString7)) {
                            try {
                                uri = Intent.parseUri(strOptString7, 0);
                            } catch (URISyntaxException e) {
                                String strValueOf = String.valueOf(strOptString7);
                                zzbad.zzc(strValueOf.length() != 0 ? "Error parsing the url: ".concat(strValueOf) : new String("Error parsing the url: "), e);
                            }
                        }
                        if (uri == null) {
                            uri = new Intent();
                            if (!TextUtils.isEmpty(strOptString2)) {
                                uri.setData(Uri.parse(strOptString2));
                            }
                            if (!TextUtils.isEmpty(strOptString3)) {
                                uri.setAction(strOptString3);
                            }
                            if (!TextUtils.isEmpty(strOptString4)) {
                                uri.setType(strOptString4);
                            }
                            if (!TextUtils.isEmpty(strOptString5)) {
                                uri.setPackage(strOptString5);
                            }
                            if (!TextUtils.isEmpty(strOptString6)) {
                                String[] strArrSplit = strOptString6.split("/", 2);
                                if (strArrSplit.length == 2) {
                                    uri.setComponent(new ComponentName(strArrSplit[0], strArrSplit[1]));
                                }
                            }
                        }
                        try {
                            jSONObject.put(strOptString, packageManager.resolveActivity(uri, 65536) != null);
                        } catch (JSONException e2) {
                            zzbad.zzc("Error constructing openable urls response.", e2);
                        }
                    } catch (JSONException e3) {
                        zzbad.zzc("Error parsing the intent data.", e3);
                    }
                }
                ((zzaji) zzbhxVar).zza("openableIntents", jSONObject);
            } catch (JSONException unused) {
                ((zzaji) zzbhxVar).zza("openableIntents", new JSONObject());
            }
        } catch (JSONException unused2) {
            ((zzaji) zzbhxVar).zza("openableIntents", new JSONObject());
        }
    }

    static final /* synthetic */ void zzc(zzbhx zzbhxVar, Map map) {
        String str = (String) map.get("urls");
        if (TextUtils.isEmpty(str)) {
            zzbad.zzep("URLs missing in canOpenURLs GMSG.");
            return;
        }
        String[] strArrSplit = str.split(",");
        HashMap map2 = new HashMap();
        PackageManager packageManager = zzbhxVar.getContext().getPackageManager();
        for (String str2 : strArrSplit) {
            String[] strArrSplit2 = str2.split(";", 2);
            boolean z = true;
            if (packageManager.resolveActivity(new Intent(strArrSplit2.length > 1 ? strArrSplit2[1].trim() : "android.intent.action.VIEW", Uri.parse(strArrSplit2[0].trim())), 65536) == null) {
                z = false;
            }
            map2.put(str2, Boolean.valueOf(z));
        }
        ((zzaji) zzbhxVar).zza("openableURLs", map2);
    }
}
