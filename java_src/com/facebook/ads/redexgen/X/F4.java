package com.facebook.ads.redexgen.X;

import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class F4 extends AbstractC0528Es<BW> {
    public F4(long j, @Nullable F8 f8, BW bw) {
        super(j, f8, bw, F9.A0B);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final int A06() {
        return A07().A03();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final JSONObject A09(JSONObject jSONObject) throws JSONException {
        return A07().A04(jSONObject);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Es != com.facebook.ads.internal.botdetection.signals.model.signal_value.SignalValueTypeDef<com.facebook.ads.internal.botdetection.signals.biometric.model.SensorSignalRawValue> */
    @Override // com.facebook.ads.redexgen.X.AbstractC0528Es
    public final boolean A0A(AbstractC0528Es<BW> abstractC0528Es) {
        return A07().A05(abstractC0528Es.A07());
    }
}
