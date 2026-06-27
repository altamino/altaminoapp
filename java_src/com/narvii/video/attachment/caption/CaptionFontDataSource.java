package com.narvii.video.attachment.caption;

import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.media.online.audio.model.AssetListResponse;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PagingConfiguration;
import com.narvii.util.http.ApiRequest;
import java.util.Locale;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class CaptionFontDataSource extends PageDataSource {
    public CaptionFontDataSource(NVContext nVContext) {
        super(nVContext, null, PagingConfiguration.OFFSET_CONFIG);
    }

    @Override // com.narvii.paging.source.PageDataSource
    protected ApiRequest createRequest() {
        String language;
        ApiRequest.Builder builderPath = ApiRequest.builder().global().path("/asset/font");
        ContentLanguageService contentLanguageService = (ContentLanguageService) getContext().getService("content_language");
        if (contentLanguageService != null) {
            language = contentLanguageService.getRequestPrefLanguageWithLocalAsDefault();
        } else {
            language = Locale.getDefault().getLanguage();
        }
        builderPath.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, language);
        return builderPath.build();
    }

    @Override // com.narvii.paging.source.PageDataSource
    protected Class responseType() {
        return AssetListResponse.class;
    }
}
