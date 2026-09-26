package com.narvii.asset;

import com.narvii.model.NVObject;

/* JADX INFO: loaded from: classes8.dex */
public class NVAsset extends NVObject implements IAsset {
    public String id;
    public boolean isNone;
    public int status;
    public String thumbnailUrl;
    public String url;

    @Override // com.narvii.asset.IAsset
    public String getCoverImage() {
        return this.thumbnailUrl;
    }

    @Override // com.narvii.asset.IAsset
    public String getUrl() {
        return this.url;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.id;
    }

    @Override // com.narvii.asset.IAsset
    public boolean isNone() {
        return this.isNone;
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
        return this.status;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }
}
