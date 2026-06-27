package com.narvii.asset;

import com.narvii.model.NVObject;

/* loaded from: classes2.dex */
public class EmptyAsset extends NVObject implements IAsset {
    @Override // com.narvii.asset.IAsset
    public String getCoverImage() {
        return "res://ic_asset_disable";
    }

    @Override // com.narvii.asset.IAsset
    public String getUrl() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return null;
    }

    @Override // com.narvii.asset.IAsset
    public boolean isNone() {
        return true;
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
