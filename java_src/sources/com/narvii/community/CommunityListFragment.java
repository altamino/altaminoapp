package com.narvii.community;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DividerItemDecoration;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.community.adapter.CommunityListAdapter;
import com.narvii.community.search.SearchCommunityListResponse;
import com.narvii.language.ContentLanguageService;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.home.discover.adapter.ModuleLogUtils;
import com.narvii.model.Community;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.source.PagingConfiguration;
import com.narvii.paging.source.ShareDataSourceHolder;
import com.narvii.paging.storage.PageOperationCallback;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class CommunityListFragment extends NVRecyclerViewFragment {

    @NotNull
    public static final String KEY_PATH = "KEY_PATH";

    @NotNull
    public static final String KEY_REFRESH_REPLACE = "KEY_REPLACE";

    @NotNull
    public static final String KEY_SHARE_DATA_SOURCE_ID = "KEY_DATA_SOURCE_ID";

    @NotNull
    public static final String KEY_TITLE = "KEY_TITLE";
    public ContentLanguageService languageService;

    @Nullable
    private ShareDataSourceHolder sharedShareSourceHolder;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static HashMap<String, ArrayList<Community>> initCommunityListMap = new HashMap<>();

    @NotNull
    private static HashMap<String, String> tokenMap = new HashMap<>();

    public class Adapter extends CommunityListAdapter {
        @Override // com.narvii.community.adapter.CommunityListAdapter
        public boolean allowVisitorMode() {
            return true;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
        protected boolean autoLoadInitData() {
            ArrayList<Community> arrayList = CommunityListFragment.Companion.getInitCommunityListMap().get(CommunityListFragment.this.getStringParam(CommunityListFragment.KEY_SHARE_DATA_SOURCE_ID));
            return arrayList == null || arrayList.isEmpty();
        }

        @Override // com.narvii.community.adapter.CommunityListAdapter
        public int communityLayoutId() {
            return CommunityListFragment.this.communityLayoutId();
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        @NotNull
        public PageDataSource<Community, SearchCommunityListResponse> createPageDataSource(@Nullable NVContext nVContext) {
            String stringParam = CommunityListFragment.this.getStringParam(CommunityListFragment.KEY_SHARE_DATA_SOURCE_ID);
            Companion companion = CommunityListFragment.Companion;
            ArrayList<Community> arrayList = companion.getInitCommunityListMap().get(stringParam);
            String str = companion.getTokenMap().get(stringParam);
            CommunityListFragment communityListFragment = CommunityListFragment.this;
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            DataSource dataSource = communityListFragment.new DataSource(nVContext, arrayList);
            if (!TextUtils.isEmpty(str)) {
                dataSource.set_nextPageToken(str);
            }
            return dataSource;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
            PageOperationCallback pageOperationCallback = this.dataSource;
            if (pageOperationCallback instanceof DataSource) {
                kotlin.jvm.internal.t.h(pageOperationCallback, "null cannot be cast to non-null type com.narvii.community.CommunityListFragment.DataSource");
                ((DataSource) pageOperationCallback).setFirstResponse(false);
            }
            if (CommunityListFragment.this.getBooleanParam(CommunityListFragment.KEY_REFRESH_REPLACE)) {
                i10 |= 1;
            }
            super.refresh(i10, pageRequestCallback);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void onAttach() {
            super.onAttach();
            final CommunityListFragment communityListFragment = CommunityListFragment.this;
            final Class<Community> cls = Community.class;
            addImpressionCollector(new LinearImpressionCollector(cls) { // from class: com.narvii.community.CommunityListFragment$Adapter$onAttach$1
                @Override // com.narvii.logging.Impression.ImpressionCollector
                public void completeImpressionLogBuilder(@NotNull LogEvent.Builder builder, @Nullable ObjectInfo<?> objectInfo) {
                    kotlin.jvm.internal.t.j(builder, "builder");
                    super.completeImpressionLogBuilder(builder, objectInfo);
                    ModuleLogUtils.completeModuleExtraInfo(builder, (ContentModule) JacksonUtils.readAs(communityListFragment.getStringParam("_module"), ContentModule.class));
                }
            });
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final void addShareCommunityList(@Nullable String str, @Nullable ArrayList<Community> arrayList, @Nullable String str2) {
            if (str == null || arrayList == null) {
                return;
            }
            getInitCommunityListMap().put(str, arrayList);
            if (str2 != null) {
                getTokenMap().put(str, str2);
            }
        }

        public final void setInitCommunityListMap(@NotNull HashMap<String, ArrayList<Community>> map) {
            kotlin.jvm.internal.t.j(map, "<set-?>");
            CommunityListFragment.initCommunityListMap = map;
        }

        public final void setTokenMap(@NotNull HashMap<String, String> map) {
            kotlin.jvm.internal.t.j(map, "<set-?>");
            CommunityListFragment.tokenMap = map;
        }

        @NotNull
        public final HashMap<String, ArrayList<Community>> getInitCommunityListMap() {
            return CommunityListFragment.initCommunityListMap;
        }

        @NotNull
        public final HashMap<String, String> getTokenMap() {
            return CommunityListFragment.tokenMap;
        }
    }

    public final class DataSource extends PageDataSource<Community, SearchCommunityListResponse> {
        private boolean firstResponse;

        public final boolean getFirstResponse() {
            return this.firstResponse;
        }

        @Override // com.narvii.paging.source.PageDataSource
        @NotNull
        protected Class<SearchCommunityListResponse> responseType() {
            return SearchCommunityListResponse.class;
        }

        public final void setFirstResponse(boolean z6) {
            this.firstResponse = z6;
        }

        public DataSource(@Nullable NVContext nVContext, ArrayList<Community> arrayList) {
            super(nVContext, arrayList, CommunityListFragment.this.pagingConfig());
            this.firstResponse = true;
        }

        @Override // com.narvii.paging.source.PageDataSource
        @Nullable
        protected ApiRequest createRequest() {
            String requestPrefLanguageWithLocalAsDefault;
            ApiRequest.Builder apiRequestFromPath;
            if (!TextUtils.isEmpty(CommunityListFragment.this.getStringParam("KEY_PATH")) && (apiRequestFromPath = Utils.getApiRequestFromPath(CommunityListFragment.this.getStringParam("KEY_PATH"))) != null) {
                return apiRequestFromPath.build();
            }
            ApiRequest apiRequestCreateRequest = CommunityListFragment.this.createRequest();
            if (apiRequestCreateRequest != null) {
                return apiRequestCreateRequest;
            }
            ApiRequest.Builder builderGlobal = ApiRequest.builder().global();
            builderGlobal.path("/community/search");
            NVContext context = getContext();
            ContentLanguageService contentLanguageService = context != null ? (ContentLanguageService) context.getService("content_language") : null;
            if (contentLanguageService == null || (requestPrefLanguageWithLocalAsDefault = contentLanguageService.getRequestPrefLanguageWithLocalAsDefault()) == null) {
                requestPrefLanguageWithLocalAsDefault = "en";
            }
            builderGlobal.param("language", requestPrefLanguageWithLocalAsDefault);
            return builderGlobal.build();
        }

        @Override // com.narvii.paging.source.PageDataSource
        @Nullable
        public List<Community> filterResponseList(@Nullable List<? extends Community> list) {
            if (getInitPage() != null && this.firstResponse) {
                this.firstResponse = false;
                List listFilterDuplicated = Utils.filterDuplicated(getInitPage(), list);
                kotlin.jvm.internal.t.h(listFilterDuplicated, "null cannot be cast to non-null type kotlin.collections.List<com.narvii.model.Community>");
                return super.filterResponseList(listFilterDuplicated);
            }
            return super.filterResponseList(list);
        }
    }

    public int communityLayoutId() {
        return R.layout.item_community_card_base;
    }

    @Nullable
    public ApiRequest createRequest() {
        return null;
    }

    @Nullable
    public final ShareDataSourceHolder getSharedShareSourceHolder() {
        return this.sharedShareSourceHolder;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    public final void setLanguageService(@NotNull ContentLanguageService contentLanguageService) {
        kotlin.jvm.internal.t.j(contentLanguageService, "<set-?>");
        this.languageService = contentLanguageService;
    }

    public final void setSharedShareSourceHolder(@Nullable ShareDataSourceHolder shareDataSourceHolder) {
        this.sharedShareSourceHolder = shareDataSourceHolder;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    @NotNull
    protected NVRecyclerViewBaseAdapter createAdapter() {
        return new Adapter(this);
    }

    @NotNull
    public final ContentLanguageService getLanguageService() {
        ContentLanguageService contentLanguageService = this.languageService;
        if (contentLanguageService != null) {
            return contentLanguageService;
        }
        kotlin.jvm.internal.t.B("languageService");
        return null;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return !TextUtils.isEmpty(getStringParam("KEY_PATH")) ? "communities_list" : super.getPageName();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        View viewInflate = inflater.inflate(R.layout.fragment_recycleview_master_theme, viewGroup, false);
        viewInflate.setBackground(new ColorDrawable(getResources().getColor(R.color.color_default_primary)));
        return viewInflate;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Resources resources;
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        Context context = getContext();
        Drawable drawable = (context == null || (resources = context.getResources()) == null) ? null : resources.getDrawable(R.drawable.divider_dark_theme_alpha);
        DividerItemDecoration dividerItemDecoration = new DividerItemDecoration(getContext(), 1);
        if (drawable == null) {
            drawable = new ColorDrawable(553648127);
        }
        dividerItemDecoration.f(drawable);
        this.recyclerView.addItemDecoration(dividerItemDecoration);
    }

    @NotNull
    public PagingConfiguration pagingConfig() {
        PagingConfiguration TOKEN_CONFIG = PagingConfiguration.TOKEN_CONFIG;
        kotlin.jvm.internal.t.i(TOKEN_CONFIG, "TOKEN_CONFIG");
        return TOKEN_CONFIG;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("content_language");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        setLanguageService((ContentLanguageService) service);
        setTitle(getStringParam("KEY_TITLE"));
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ShareDataSourceHolder shareDataSourceHolder = this.sharedShareSourceHolder;
        if (shareDataSourceHolder != null) {
            shareDataSourceHolder.removeHost(this);
        }
    }
}
