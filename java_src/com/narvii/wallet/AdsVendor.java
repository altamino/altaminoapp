package com.narvii.wallet;

import com.narvii.app.NVContext;
import com.narvii.util.Callback;

/* loaded from: classes3.dex */
public interface AdsVendor {
    void abortOfferWall(Callback<Object> callback);

    void abortRewardVideo(Callback<Object> callback);

    long getRewardVideoLoadTime();

    String name();

    boolean openOfferWall(NVContext nVContext);

    boolean openRewardVideo(NVContext nVContext);

    void requestOfferWall(NVContext nVContext, Callback<Object> callback);

    void requestRewardVideo(NVContext nVContext, Callback<Object> callback);
}
