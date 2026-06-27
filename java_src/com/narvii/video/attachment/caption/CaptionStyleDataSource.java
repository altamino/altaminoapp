package com.narvii.video.attachment.caption;

import com.narvii.app.NVContext;
import com.narvii.media.online.audio.model.AssetListResponse;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PagingConfiguration;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes3.dex */
public class CaptionStyleDataSource extends PageDataSource {
    public CaptionStyleDataSource(NVContext nVContext) {
        super(nVContext, null, PagingConfiguration.OFFSET_CONFIG);
    }

    @Override // com.narvii.paging.source.PageDataSource
    protected ApiRequest createRequest() {
        return ApiRequest.builder().global().path("/asset/text-animation").build();
    }

    @Override // com.narvii.paging.source.PageDataSource
    protected Class responseType() {
        return AssetListResponse.class;
    }
}
