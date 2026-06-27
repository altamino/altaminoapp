package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.support.v4.app.NotificationCompat;
import android.util.JsonWriter;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

@zzard
/* loaded from: classes2.dex */
public final class zzazx {
    private static boolean enabled;
    private static boolean zzdyv;
    private final List<String> zzdyx;
    private static Object lock = new Object();
    private static Clock zzbsa = DefaultClock.getInstance();
    private static final Set<String> zzdyw = new HashSet(Arrays.asList(new String[0]));

    public zzazx() {
        this(null);
    }

    public zzazx(String str) {
        List<String> listAsList;
        if (!isEnabled()) {
            listAsList = new ArrayList<>();
        } else {
            String[] strArr = new String[1];
            String strValueOf = String.valueOf(UUID.randomUUID().toString());
            strArr[0] = strValueOf.length() != 0 ? "network_request_".concat(strValueOf) : new String("network_request_");
            listAsList = Arrays.asList(strArr);
        }
        this.zzdyx = listAsList;
    }

    public final void zza(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        if (isEnabled()) {
            zzb(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr);
        }
    }

    public final void zza(String str, String str2, Map<String, ?> map, byte[] bArr) throws IOException {
        if (isEnabled()) {
            zzb(str, str2, map, bArr);
        }
    }

    private final void zzb(final String str, final String str2, final Map<String, ?> map, final byte[] bArr) throws IOException {
        zza("onNetworkRequest", new zzbac(str, str2, map, bArr) { // from class: com.google.android.gms.internal.ads.zzazy
            private final String zzdbk;
            private final Map zzdbr;
            private final String zzddy;
            private final byte[] zzdyy;

            {
                this.zzddy = str;
                this.zzdbk = str2;
                this.zzdbr = map;
                this.zzdyy = bArr;
            }

            @Override // com.google.android.gms.internal.ads.zzbac
            public final void zzb(JsonWriter jsonWriter) throws IOException {
                zzazx.zza(this.zzddy, this.zzdbk, this.zzdbr, this.zzdyy, jsonWriter);
            }
        });
    }

    public final void zza(HttpURLConnection httpURLConnection, int i) throws IOException {
        if (isEnabled()) {
            String responseMessage = null;
            zzb(httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i);
            if (i < 200 || i >= 300) {
                try {
                    responseMessage = httpURLConnection.getResponseMessage();
                } catch (IOException e) {
                    String strValueOf = String.valueOf(e.getMessage());
                    zzbad.zzep(strValueOf.length() != 0 ? "Can not get error message from error HttpURLConnection\n".concat(strValueOf) : new String("Can not get error message from error HttpURLConnection\n"));
                }
                zzel(responseMessage);
            }
        }
    }

    public final void zza(Map<String, ?> map, int i) throws IOException {
        if (isEnabled()) {
            zzb(map, i);
            if (i < 200 || i >= 300) {
                zzel(null);
            }
        }
    }

    private final void zzb(final Map<String, ?> map, final int i) throws IOException {
        zza("onNetworkResponse", new zzbac(i, map) { // from class: com.google.android.gms.internal.ads.zzazz
            private final int zzdyz;
            private final Map zzdza;

            {
                this.zzdyz = i;
                this.zzdza = map;
            }

            @Override // com.google.android.gms.internal.ads.zzbac
            public final void zzb(JsonWriter jsonWriter) throws IOException {
                zzazx.zza(this.zzdyz, this.zzdza, jsonWriter);
            }
        });
    }

    public final void zzek(String str) throws IOException {
        if (isEnabled() && str != null) {
            zzj(str.getBytes());
        }
    }

    public final void zzj(final byte[] bArr) throws IOException {
        zza("onNetworkResponseBody", new zzbac(bArr) { // from class: com.google.android.gms.internal.ads.zzbaa
            private final byte[] zzdzb;

            {
                this.zzdzb = bArr;
            }

            @Override // com.google.android.gms.internal.ads.zzbac
            public final void zzb(JsonWriter jsonWriter) throws NoSuchAlgorithmException, IOException {
                zzazx.zza(this.zzdzb, jsonWriter);
            }
        });
    }

    private final void zzel(final String str) throws IOException {
        zza("onNetworkRequestError", new zzbac(str) { // from class: com.google.android.gms.internal.ads.zzbab
            private final String zzddy;

            {
                this.zzddy = str;
            }

            @Override // com.google.android.gms.internal.ads.zzbac
            public final void zzb(JsonWriter jsonWriter) throws IOException {
                zzazx.zza(this.zzddy, jsonWriter);
            }
        });
    }

    private static void zza(JsonWriter jsonWriter, Map<String, ?> map) throws IOException {
        if (map == null) {
            return;
        }
        jsonWriter.name("headers").beginArray();
        Iterator<Map.Entry<String, ?>> it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, ?> next = it.next();
            String key = next.getKey();
            if (!zzdyw.contains(key)) {
                if (next.getValue() instanceof List) {
                    for (String str : (List) next.getValue()) {
                        jsonWriter.beginObject();
                        jsonWriter.name(AppMeasurementSdk.ConditionalUserProperty.NAME).value(key);
                        jsonWriter.name("value").value(str);
                        jsonWriter.endObject();
                    }
                } else if (next.getValue() instanceof String) {
                    jsonWriter.beginObject();
                    jsonWriter.name(AppMeasurementSdk.ConditionalUserProperty.NAME).value(key);
                    jsonWriter.name("value").value((String) next.getValue());
                    jsonWriter.endObject();
                } else {
                    zzbad.zzen("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                    break;
                }
            }
        }
        jsonWriter.endArray();
    }

    private final void zza(String str, zzbac zzbacVar) throws IOException {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(zzbsa.currentTimeMillis());
            jsonWriter.name(NotificationCompat.CATEGORY_EVENT).value(str);
            jsonWriter.name("components").beginArray();
            Iterator<String> it = this.zzdyx.iterator();
            while (it.hasNext()) {
                jsonWriter.value(it.next());
            }
            jsonWriter.endArray();
            zzbacVar.zzb(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            zzbad.zzc("unable to log", e);
        }
        zzem(stringWriter.toString());
    }

    private static synchronized void zzem(String str) {
        zzbad.zzeo("GMA Debug BEGIN");
        int i = 0;
        while (i < str.length()) {
            int i2 = i + 4000;
            String strValueOf = String.valueOf(str.substring(i, Math.min(i2, str.length())));
            zzbad.zzeo(strValueOf.length() != 0 ? "GMA Debug CONTENT ".concat(strValueOf) : new String("GMA Debug CONTENT "));
            i = i2;
        }
        zzbad.zzeo("GMA Debug FINISH");
    }

    public static void zzxa() {
        synchronized (lock) {
            zzdyv = false;
            enabled = false;
            zzbad.zzep("Ad debug logging enablement is out of date.");
        }
    }

    public static void zzal(boolean z) {
        synchronized (lock) {
            zzdyv = true;
            enabled = z;
        }
    }

    public static boolean zzxb() {
        boolean z;
        synchronized (lock) {
            z = zzdyv;
        }
        return z;
    }

    public static boolean isEnabled() {
        boolean z;
        synchronized (lock) {
            z = zzdyv && enabled;
        }
        return z;
    }

    public static boolean zzbk(Context context) {
        if (Build.VERSION.SDK_INT < 17) {
            return false;
        }
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcqb)).booleanValue()) {
            return false;
        }
        try {
            return Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0;
        } catch (Exception e) {
            zzbad.zzd("Fail to determine debug setting.", e);
            return false;
        }
    }

    static final /* synthetic */ void zza(String str, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        if (str != null) {
            jsonWriter.name("error_description").value(str);
        }
        jsonWriter.endObject();
    }

    static final /* synthetic */ void zza(byte[] bArr, JsonWriter jsonWriter) throws NoSuchAlgorithmException, IOException {
        jsonWriter.name("params").beginObject();
        int length = bArr.length;
        String strEncode = Base64Utils.encode(bArr);
        if (length < 10000) {
            jsonWriter.name(TtmlNode.TAG_BODY).value(strEncode);
        } else {
            String strZzei = zzazt.zzei(strEncode);
            if (strZzei != null) {
                jsonWriter.name("bodydigest").value(strZzei);
            }
        }
        jsonWriter.name("bodylength").value(length);
        jsonWriter.endObject();
    }

    static final /* synthetic */ void zza(int i, Map map, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i);
        jsonWriter.endObject();
        zza(jsonWriter, (Map<String, ?>) map);
        jsonWriter.endObject();
    }

    static final /* synthetic */ void zza(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        zza(jsonWriter, (Map<String, ?>) map);
        if (bArr != null) {
            jsonWriter.name(TtmlNode.TAG_BODY).value(Base64Utils.encode(bArr));
        }
        jsonWriter.endObject();
    }
}
