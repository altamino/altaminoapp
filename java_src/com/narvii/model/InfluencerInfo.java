package com.narvii.model;

/* loaded from: classes3.dex */
public class InfluencerInfo {
    public int fansCount;
    public int monthlyFee;
    public boolean pinned;

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InfluencerInfo)) {
            return false;
        }
        InfluencerInfo influencerInfo = (InfluencerInfo) obj;
        return this.fansCount == influencerInfo.fansCount && this.monthlyFee == influencerInfo.monthlyFee;
    }
}
