package com.narvii.video.attachment.caption;

import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.media.online.audio.model.AssetListResponse;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PagingConfiguration;
import com.narvii.util.http.ApiRequest;
import java.util.Locale;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class CaptionFontDataSource extends PageDataSource {
    public CaptionFontDataSource(@Nullable NVContext nVContext) {
        super(nVContext, null, PagingConfiguration.OFFSET_CONFIG);
    }

    @Override // com.narvii.paging.source.PageDataSource
    @NotNull
    protected Class responseType() {
        return AssetListResponse.class;
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
        builderPath.param("language", language);
        return builderPath.build();
    }
}
