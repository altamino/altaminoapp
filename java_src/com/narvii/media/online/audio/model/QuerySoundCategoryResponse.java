package com.narvii.media.online.audio.model;

import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class QuerySoundCategoryResponse extends ListResponse<AssetCategory> {
    public List<AssetCategory> categoryList;

    @Override // com.narvii.model.api.ListResponse
    public List<AssetCategory> list() {
        return this.categoryList;
    }
}
