package com.narvii.community.search;

import com.narvii.model.NVObject;
import com.narvii.model.StrategyObject;

/* loaded from: classes2.dex */
public class CommunitySearchKeyPrediction extends NVObject implements StrategyObject {
    public int fakeStatus;
    public String name;
    public String strategyInfo;

    @Override // com.narvii.model.NVObject
    public String id() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 901;
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

    @Override // com.narvii.model.StrategyObject
    public String getStrategyInfo() {
        return this.strategyInfo;
    }

    @Override // com.narvii.model.StrategyObject
    public void setStrategyInfo(String str) {
        this.strategyInfo = str;
    }
}
