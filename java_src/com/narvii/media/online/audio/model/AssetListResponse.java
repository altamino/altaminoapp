package com.narvii.media.online.audio.model;

import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class AssetListResponse extends ListResponse<AssetData> {
    public List<AssetData> assetList;
    public String seed;
    public int total;

    @Override // com.narvii.model.api.ListResponse
    public List<AssetData> list() {
        return this.assetList;
    }
}
