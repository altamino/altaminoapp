package com.narvii.wallet;

import com.narvii.model.NVObject;

/* loaded from: classes3.dex */
public class Wallet extends NVObject {

    @Deprecated
    public boolean adsEnabled;
    public AdsVideoStats adsVideoStats;
    public boolean businessCoinsEnabled;
    public CouponDetail newUserCoupon;
    public int totalBusinessCoins;
    public double totalBusinessCoinsFloat;
    public int totalCoins;
    public double totalCoinsFloat;

    @Override // com.narvii.model.NVObject
    public String id() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }
}
