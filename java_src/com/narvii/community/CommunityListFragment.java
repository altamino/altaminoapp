package com.narvii.community;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.widget.DividerItemDecoration;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
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
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: CommunityListFragment.kt */
/* loaded from: classes2.dex */
public class CommunityListFragment extends NVRecyclerViewFragment {
    public static final String KEY_PATH = "KEY_PATH";
    public static final String KEY_REFRESH_REPLACE = "KEY_REPLACE";
    public static final String KEY_SHARE_DATA_SOURCE_ID = "KEY_DATA_SOURCE_ID";
    public static final String KEY_TITLE = "KEY_TITLE";
    private HashMap _$_findViewCache;
    public ContentLanguageService languageService;
    private ShareDataSourceHolder sharedShareSourceHolder;
    public static final Companion Companion = new Companion(null);
    private static HashMap<String, ArrayList<Community>> initCommunityListMap = new HashMap<>();
    private static HashMap<String, String> tokenMap = new HashMap<>();

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public int communityLayoutId() {
        return R.layout.item_community_card_base;
    }

    public ApiRequest createRequest() {
        return null;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    /* compiled from: CommunityListFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final HashMap<String, ArrayList<Community>> getInitCommunityListMap() {
            return CommunityListFragment.initCommunityListMap;
        }

        public final void setInitCommunityListMap(HashMap<String, ArrayList<Community>> map) {
            Intrinsics.checkParameterIsNotNull(map, "<set-?>");
            CommunityListFragment.initCommunityListMap = map;
        }

        public final HashMap<String, String> getTokenMap() {
            return CommunityListFragment.tokenMap;
        }

        public final void setTokenMap(HashMap<String, String> map) {
            Intrinsics.checkParameterIsNotNull(map, "<set-?>");
            CommunityListFragment.tokenMap = map;
        }

        public final void addShareCommunityList(String str, ArrayList<Community> arrayList, String str2) {
            if (str == null || arrayList == null) {
                return;
            }
            getInitCommunityListMap().put(str, arrayList);
            if (str2 != null) {
                getTokenMap().put(str, str2);
            }
        }
    }

    public final ContentLanguageService getLanguageService() {
        ContentLanguageService contentLanguageService = this.languageService;
        if (contentLanguageService != null) {
            return contentLanguageService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("languageService");
        throw null;
    }

    public final void setLanguageService(ContentLanguageService contentLanguageService) {
        Intrinsics.checkParameterIsNotNull(contentLanguageService, "<set-?>");
        this.languageService = contentLanguageService;
    }

    public final ShareDataSourceHolder getSharedShareSourceHolder() {
        return this.sharedShareSourceHolder;
    }

    public final void setSharedShareSourceHolder(ShareDataSourceHolder shareDataSourceHolder) {
        this.sharedShareSourceHolder = shareDataSourceHolder;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("content_language");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"content_language\")");
        this.languageService = (ContentLanguageService) service;
        setTitle(getStringParam("KEY_TITLE"));
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View view = inflater.inflate(R.layout.fragment_recycleview_master_theme, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        view.setBackground(new ColorDrawable(getResources().getColor(R.color.color_default_primary)));
        return view;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ShareDataSourceHolder shareDataSourceHolder = this.sharedShareSourceHolder;
        if (shareDataSourceHolder != null) {
            shareDataSourceHolder.removeHost(this);
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Resources resources;
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        Context context = getContext();
        Drawable drawable = (context == null || (resources = context.getResources()) == null) ? null : resources.getDrawable(R.drawable.divider_dark_theme_alpha);
        DividerItemDecoration dividerItemDecoration = new DividerItemDecoration(getContext(), 1);
        if (drawable == null) {
            drawable = new ColorDrawable(553648127);
        }
        dividerItemDecoration.setDrawable(drawable);
        this.recyclerView.addItemDecoration(dividerItemDecoration);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        return new Adapter(this);
    }

    /* compiled from: CommunityListFragment.kt */
    public class Adapter extends CommunityListAdapter {
        @Override // com.narvii.community.adapter.CommunityListAdapter
        public boolean allowVisitorMode() {
            return true;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void onAttach() {
            super.onAttach();
            final Class<Community> cls = Community.class;
            addImpressionCollector(new LinearImpressionCollector(cls) { // from class: com.narvii.community.CommunityListFragment$Adapter$onAttach$1
                @Override // com.narvii.logging.Impression.ImpressionCollector
                public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo<?> objectInfo) {
                    Intrinsics.checkParameterIsNotNull(builder, "builder");
                    super.completeImpressionLogBuilder(builder, objectInfo);
                    ModuleLogUtils.completeModuleExtraInfo(builder, (ContentModule) JacksonUtils.readAs(CommunityListFragment.this.getStringParam("_module"), ContentModule.class));
                }
            });
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<Community, SearchCommunityListResponse> createPageDataSource(NVContext nVContext) {
            String stringParam = CommunityListFragment.this.getStringParam("KEY_DATA_SOURCE_ID");
            ArrayList<Community> arrayList = CommunityListFragment.Companion.getInitCommunityListMap().get(stringParam);
            String str = CommunityListFragment.Companion.getTokenMap().get(stringParam);
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

        @Override // com.narvii.community.adapter.CommunityListAdapter
        public int communityLayoutId() {
            return CommunityListFragment.this.communityLayoutId();
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
        protected boolean autoLoadInitData() {
            ArrayList<Community> arrayList = CommunityListFragment.Companion.getInitCommunityListMap().get(CommunityListFragment.this.getStringParam("KEY_DATA_SOURCE_ID"));
            return arrayList == null || arrayList.isEmpty();
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void refresh(int i, PageRequestCallback pageRequestCallback) {
            PageOperationCallback pageOperationCallback = this.dataSource;
            if (pageOperationCallback instanceof DataSource) {
                if (pageOperationCallback == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.community.CommunityListFragment.DataSource");
                }
                ((DataSource) pageOperationCallback).setFirstResponse(false);
            }
            if (CommunityListFragment.this.getBooleanParam("KEY_REPLACE")) {
                i |= 1;
            }
            super.refresh(i, pageRequestCallback);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return !TextUtils.isEmpty(getStringParam("KEY_PATH")) ? "ModuleCommunityList" : super.getPageName();
    }

    public PagingConfiguration pagingConfig() {
        PagingConfiguration pagingConfiguration = PagingConfiguration.TOKEN_CONFIG;
        Intrinsics.checkExpressionValueIsNotNull(pagingConfiguration, "PagingConfiguration.TOKEN_CONFIG");
        return pagingConfiguration;
    }

    /* compiled from: CommunityListFragment.kt */
    public final class DataSource extends PageDataSource<Community, SearchCommunityListResponse> {
        private boolean firstResponse;

        public DataSource(NVContext nVContext, ArrayList<Community> arrayList) {
            super(nVContext, arrayList, CommunityListFragment.this.pagingConfig());
            this.firstResponse = true;
        }

        public final boolean getFirstResponse() {
            return this.firstResponse;
        }

        public final void setFirstResponse(boolean z) {
            this.firstResponse = z;
        }

        @Override // com.narvii.paging.source.PageDataSource
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
            builderGlobal.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, requestPrefLanguageWithLocalAsDefault);
            return builderGlobal.build();
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected Class<SearchCommunityListResponse> responseType() {
            return SearchCommunityListResponse.class;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public List<Community> filterResponseList(List<? extends Community> list) {
            if (getInitPage() != null && this.firstResponse) {
                this.firstResponse = false;
                List listFilterDuplicated = Utils.filterDuplicated(getInitPage(), list);
                if (listFilterDuplicated != null) {
                    return super.filterResponseList(listFilterDuplicated);
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.List<com.narvii.model.Community>");
            }
            return super.filterResponseList(list);
        }
    }
}
