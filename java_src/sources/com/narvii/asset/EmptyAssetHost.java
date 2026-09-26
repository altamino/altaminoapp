package com.narvii.asset;

import com.narvii.model.NVObject;

/* JADX INFO: loaded from: classes9.dex */
public class EmptyAssetHost extends NVObject implements IAssetHost {
    EmptyAsset emptyAsset = new EmptyAsset();

    @Override // com.narvii.asset.IAssetHost
    public IAsset getIAsset() {
        return this.emptyAsset;
    }

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
