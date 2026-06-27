package com.facebook.ads.redexgen.X;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class DD implements CG<String> {
    private final String A00;
    private final boolean A01;

    public DD(String str) {
        this.A00 = str;
        this.A01 = DE.A00.hasSystemFeature(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.CG
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final JSONObject A7A(String str, JSONObject jSONObject) throws JSONException {
        jSONObject.put(this.A00, this.A01);
        return jSONObject;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final boolean A3v(Object obj) {
        DD newDeviceFeature = this;
        boolean z = false;
        DD dd = (DD) obj;
        char c = newDeviceFeature.A00.equals(dd.A00) ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    newDeviceFeature = newDeviceFeature;
                    dd = dd;
                    if (newDeviceFeature.A01 != dd.A01) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final int A76() {
        return this.A00.getBytes().length + 8;
    }
}
