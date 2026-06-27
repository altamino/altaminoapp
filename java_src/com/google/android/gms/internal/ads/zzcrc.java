package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.util.JsonReader;
import java.io.IOException;
import org.json.JSONException;

/* loaded from: classes2.dex */
public final class zzcrc {
    public final String zzgfw;
    public String zzgfx;

    public zzcrc(JsonReader jsonReader) throws IllegalStateException, JSONException, IOException, NumberFormatException {
        jsonReader.beginObject();
        String strNextString = "";
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName = strNextName == null ? "" : strNextName;
            char c = 65535;
            if (strNextName.hashCode() == -995427962 && strNextName.equals("params")) {
                c = 0;
            }
            if (c != 0) {
                jsonReader.skipValue();
            } else {
                strNextString = jsonReader.nextString();
            }
        }
        this.zzgfw = strNextString;
        jsonReader.endObject();
    }

    final zzcrc zzn(Bundle bundle) {
        try {
            this.zzgfx = com.google.android.gms.ads.internal.zzk.zzlg().zzd(bundle).toString();
        } catch (JSONException unused) {
            this.zzgfx = "{}";
        }
        return this;
    }
}
