package com.narvii.ad;

import com.narvii.model.NVObject;
import com.narvii.model.StrategyObject;
import java.util.UUID;

/* loaded from: classes2.dex */
public class AdsModuleItem extends NVObject implements StrategyObject {
    public String _uuid = UUID.randomUUID().toString();
    public int adCampaignId = -1;
    public String deepLink;
    public String imageUrl;
    public String strategyInfo;

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

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.adCampaignId + "";
    }

    public String getUniqueKey() {
        if (this.adCampaignId == -1) {
            return this._uuid;
        }
        return this.adCampaignId + "";
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
