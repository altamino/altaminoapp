package com.narvii.story.base;

import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.BlogListResponse;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PagingConfiguration;
import com.narvii.story.StoryApi;
import com.narvii.util.http.ApiRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: StoryDataSource.kt */
/* loaded from: classes3.dex */
public class StoryDataSource extends PageDataSource<Blog, BlogListResponse> {
    private HashMap<Integer, Community> communityInfoMapping;
    private Map<Integer, User> userInfoMapping;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoryDataSource(NVContext nVContext, PagingConfiguration config) {
        super(nVContext, null, config);
        Intrinsics.checkParameterIsNotNull(config, "config");
        this.communityInfoMapping = new HashMap<>();
        this.userInfoMapping = new HashMap();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ StoryDataSource(NVContext nVContext, PagingConfiguration pagingConfiguration, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 2) != 0) {
            pagingConfiguration = PagingConfiguration.TOKEN_CONFIG;
            Intrinsics.checkExpressionValueIsNotNull(pagingConfiguration, "PagingConfiguration.TOKEN_CONFIG");
        }
        this(nVContext, pagingConfiguration);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoryDataSource(NVContext nVContext, List<? extends Blog> list, PagingConfiguration config) {
        super(nVContext, list, config);
        Intrinsics.checkParameterIsNotNull(config, "config");
        this.communityInfoMapping = new HashMap<>();
        this.userInfoMapping = new HashMap();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ StoryDataSource(NVContext nVContext, List list, PagingConfiguration pagingConfiguration, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 4) != 0) {
            pagingConfiguration = PagingConfiguration.TOKEN_CONFIG;
            Intrinsics.checkExpressionValueIsNotNull(pagingConfiguration, "PagingConfiguration.TOKEN_CONFIG");
        }
        this(nVContext, list, pagingConfiguration);
    }

    public final HashMap<Integer, Community> getCommunityInfoMapping() {
        return this.communityInfoMapping;
    }

    public final void setCommunityInfoMapping(HashMap<Integer, Community> map) {
        Intrinsics.checkParameterIsNotNull(map, "<set-?>");
        this.communityInfoMapping = map;
    }

    public final Map<Integer, User> getUserInfoMapping() {
        return this.userInfoMapping;
    }

    public final void setUserInfoMapping(Map<Integer, User> map) {
        Intrinsics.checkParameterIsNotNull(map, "<set-?>");
        this.userInfoMapping = map;
    }

    @Override // com.narvii.paging.source.PageDataSource
    protected ApiRequest createRequest() {
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.global().path("topic/0/feed/story");
        builder.param("type", StoryApi.DISCOVER_LIST);
        builder.param("v", StoryApi.STORY_VERSION);
        NVContext context = getContext();
        ContentLanguageService contentLanguageService = context != null ? (ContentLanguageService) context.getService("content_language") : null;
        builder.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, contentLanguageService != null ? contentLanguageService.getRequestPrefLanguageWithLocalAsDefault() : null);
        return builder.build();
    }

    @Override // com.narvii.paging.source.PageDataSource
    protected Class<BlogListResponse> responseType() {
        return BlogListResponse.class;
    }

    @Override // com.narvii.paging.source.PageDataSource
    public void onPageResponse(ApiRequest req, BlogListResponse resp, int i) {
        Intrinsics.checkParameterIsNotNull(req, "req");
        Intrinsics.checkParameterIsNotNull(resp, "resp");
        super.onPageResponse(req, (ApiRequest) resp, i);
        onDataSourceResponse(req, resp);
    }

    @Override // com.narvii.paging.source.PageDataSource, com.narvii.paging.source.DataSource
    public void resetDataSource() {
        super.resetDataSource();
        this.communityInfoMapping.clear();
        this.userInfoMapping.clear();
    }

    public void onDataSourceResponse(ApiRequest req, BlogListResponse resp) {
        Intrinsics.checkParameterIsNotNull(req, "req");
        Intrinsics.checkParameterIsNotNull(resp, "resp");
        Map<Integer, Community> map = resp.communityInfoMapping;
        if (map != null) {
            this.communityInfoMapping.putAll(map);
        }
        Map<Integer, User> map2 = resp.userProfileMapping;
        if (map2 != null) {
            Map<Integer, User> map3 = this.userInfoMapping;
            Intrinsics.checkExpressionValueIsNotNull(map2, "resp.userProfileMapping");
            map3.putAll(map2);
        }
    }
}
