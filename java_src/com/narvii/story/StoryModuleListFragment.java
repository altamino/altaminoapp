package com.narvii.story;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.master.home.discover.adapter.GeneralStoryCardAdapter;
import com.narvii.model.Blog;
import com.narvii.model.api.BlogListResponse;
import com.narvii.modulization.Module;
import com.narvii.nvplayer.delegate.DiscoverVideoListDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewAdapter;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewColumnAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.storage.PageOperationCallback;
import com.narvii.story.base.StoryDataSource;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StoryModuleListFragment.kt */
/* loaded from: classes3.dex */
public final class StoryModuleListFragment extends NVRecyclerViewFragment implements FragmentOnBackListener, StoryListVisibleChangeListener {
    public static final String KEY_CONTENT_MODULE = "key_content_module";
    public static final String KEY_IS_END = "key_is_end";
    public static final String KEY_REFRESH_REPLACE = "KEY_REPLACE";
    public static final String KEY_SHARE_DATA_SOURCE_ID = "KEY_DATA_SOURCE_ID";
    private HashMap _$_findViewCache;
    private ContentModule module;
    public static final Companion Companion = new Companion(null);
    private static HashMap<String, ArrayList<Blog>> initBlogListMap = new HashMap<>();
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

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "ModuleStoryList";
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

    public static final /* synthetic */ ContentModule access$getModule$p(StoryModuleListFragment storyModuleListFragment) {
        ContentModule contentModule = storyModuleListFragment.module;
        if (contentModule != null) {
            return contentModule;
        }
        Intrinsics.throwUninitializedPropertyAccessException(Module.CONFIG_MODULE_KEY);
        throw null;
    }

    /* compiled from: StoryModuleListFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final HashMap<String, ArrayList<Blog>> getInitBlogListMap() {
            return StoryModuleListFragment.initBlogListMap;
        }

        public final void setInitBlogListMap(HashMap<String, ArrayList<Blog>> map) {
            Intrinsics.checkParameterIsNotNull(map, "<set-?>");
            StoryModuleListFragment.initBlogListMap = map;
        }

        public final HashMap<String, String> getTokenMap() {
            return StoryModuleListFragment.tokenMap;
        }

        public final void setTokenMap(HashMap<String, String> map) {
            Intrinsics.checkParameterIsNotNull(map, "<set-?>");
            StoryModuleListFragment.tokenMap = map;
        }

        public final void addShareStoryList(String str, ArrayList<Blog> arrayList, String str2) {
            if (str == null || arrayList == null) {
                return;
            }
            getInitBlogListMap().put(str, arrayList);
            if (str2 != null) {
                getTokenMap().put(str, str2);
            }
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object as = JacksonUtils.readAs(getStringParam(KEY_CONTENT_MODULE), ContentModule.class);
        Intrinsics.checkExpressionValueIsNotNull(as, "JacksonUtils.readAs(getS…ontentModule::class.java)");
        this.module = (ContentModule) as;
        ContentModule contentModule = this.module;
        if (contentModule != null) {
            setTitle(contentModule.displayName);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException(Module.CONFIG_MODULE_KEY);
            throw null;
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View view = inflater.inflate(R.layout.fragment_recycleview_master_theme, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        view.setBackground(new ColorDrawable(getResources().getColor(R.color.color_default_primary)));
        return view;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 11.0f);
        int iDpToPxInt2 = Utils.dpToPxInt(getContext(), 10.0f);
        RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(this, iDpToPxInt2, iDpToPxInt2, iDpToPxInt, 0);
        ContentModule contentModule = this.module;
        if (contentModule == null) {
            Intrinsics.throwUninitializedPropertyAccessException(Module.CONFIG_MODULE_KEY);
            throw null;
        }
        recyclerViewColumnAdapter.setAdapter(new Adapter(this, this, contentModule, new ModuleDisplayConfig(false, true)), 2);
        recyclerViewColumnAdapter.setHasStableIds(true);
        return recyclerViewColumnAdapter;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        FragmentManager supportFragmentManager;
        Fragment fragmentFindFragmentByTag;
        if (nVActivity == null || (supportFragmentManager = nVActivity.getSupportFragmentManager()) == null || (fragmentFindFragmentByTag = supportFragmentManager.findFragmentByTag("story_detail")) == null || !(fragmentFindFragmentByTag instanceof StoryListFragment)) {
            return false;
        }
        ((StoryListFragment) fragmentFindFragmentByTag).onBackPressed(nVActivity);
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new DiscoverVideoListDelegate(this, getActivity());
    }

    @Override // com.narvii.story.StoryListVisibleChangeListener
    public void onStoryListShown() {
        setUserVisibleHint(false);
    }

    @Override // com.narvii.story.StoryListVisibleChangeListener
    public void onStoryListDismissed() {
        cleanDataSourceInterceptor();
        setUserVisibleHint(true);
    }

    private final void cleanDataSourceInterceptor() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.adapter;
        if (nVRecyclerViewBaseAdapter instanceof RecyclerViewColumnAdapter) {
            NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 = ((RecyclerViewColumnAdapter) nVRecyclerViewBaseAdapter).wrapped;
            if (nVRecyclerViewBaseAdapter2 instanceof NVRecyclerViewAdapter) {
                ((NVRecyclerViewAdapter) nVRecyclerViewBaseAdapter2).getDataSource().setDataSourceInterceptor(null);
            }
        }
    }

    /* compiled from: StoryModuleListFragment.kt */
    private final class Adapter extends GeneralStoryCardAdapter {
        final /* synthetic */ StoryModuleListFragment this$0;

        @Override // com.narvii.master.home.discover.adapter.GeneralStoryCardAdapter
        public boolean forceShowLoading() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(StoryModuleListFragment storyModuleListFragment, NVContext ctx, ContentModule module, ModuleDisplayConfig moduleDisplayConfig) {
            super(ctx, module, moduleDisplayConfig, false);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            Intrinsics.checkParameterIsNotNull(module, "module");
            Intrinsics.checkParameterIsNotNull(moduleDisplayConfig, "moduleDisplayConfig");
            this.this$0 = storyModuleListFragment;
        }

        @Override // com.narvii.master.home.discover.adapter.GeneralStoryCardAdapter, com.narvii.story.base.StoryListAdapter
        public int itemCellLayoutId() {
            int iHashCode;
            String displayStyle = StoryModuleListFragment.access$getModule$p(this.this$0).getDisplayStyle();
            return (displayStyle != null && ((iHashCode = displayStyle.hashCode()) == -1681038202 ? displayStyle.equals(ContentModule.STYLE_POLL_STORY_CARD) : iHashCode == 1439720112 && displayStyle.equals(ContentModule.STYLE_QUIZ_STORY_CARD))) ? R.layout.item_cell_pollquiz_story_module_related : R.layout.item_cell_general_story_module_related;
        }

        @Override // com.narvii.story.base.StoryListAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<Blog, BlogListResponse> createPageDataSource(NVContext nVContext) {
            String stringParam = this.this$0.getStringParam("KEY_DATA_SOURCE_ID");
            ArrayList<Blog> arrayList = StoryModuleListFragment.Companion.getInitBlogListMap().get(stringParam);
            String str = StoryModuleListFragment.Companion.getTokenMap().get(stringParam);
            DataSource dataSource = new DataSource(nVContext, arrayList);
            if (this.this$0.getBooleanParam(StoryModuleListFragment.KEY_IS_END, false) && TextUtils.isEmpty(str)) {
                dataSource.set_isEnd(true);
                dataSource.getPageLoadState().status = 1;
            }
            return dataSource;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
        protected boolean autoLoadInitData() {
            ArrayList<Blog> arrayList = StoryModuleListFragment.Companion.getInitBlogListMap().get(this.this$0.getStringParam("KEY_DATA_SOURCE_ID"));
            return arrayList == null || arrayList.isEmpty();
        }

        @Override // com.narvii.master.home.discover.adapter.GeneralStoryCardAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void refresh(int i, PageRequestCallback pageRequestCallback) {
            PageOperationCallback pageOperationCallback = this.dataSource;
            if (pageOperationCallback instanceof DataSource) {
                if (pageOperationCallback == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.story.StoryModuleListFragment.Adapter.DataSource");
                }
                ((DataSource) pageOperationCallback).setFirstResponse(false);
            }
            super.refresh(i | 1 | 2, pageRequestCallback);
        }

        /* compiled from: StoryModuleListFragment.kt */
        public final class DataSource extends StoryDataSource {
            private boolean firstResponse;

            public DataSource(NVContext nVContext, List<? extends Blog> list) {
                super(nVContext, list, null, 4, null);
                this.firstResponse = true;
            }

            public final boolean getFirstResponse() {
                return this.firstResponse;
            }

            public final void setFirstResponse(boolean z) {
                this.firstResponse = z;
            }

            @Override // com.narvii.story.base.StoryDataSource, com.narvii.paging.source.PageDataSource
            protected ApiRequest createRequest() {
                return Adapter.this.createApiRequest();
            }

            @Override // com.narvii.story.base.StoryDataSource, com.narvii.paging.source.PageDataSource
            protected Class<BlogListResponse> responseType() {
                return BlogListResponse.class;
            }

            @Override // com.narvii.story.base.StoryDataSource
            public void onDataSourceResponse(ApiRequest req, BlogListResponse resp) {
                Intrinsics.checkParameterIsNotNull(req, "req");
                Intrinsics.checkParameterIsNotNull(resp, "resp");
                super.onDataSourceResponse(req, resp);
                Adapter.this.onDataSourceResponse(req, resp);
                Adapter.this.setAllItemCount(resp.allItemCount);
            }

            @Override // com.narvii.paging.source.PageDataSource
            public void setFirstPageRequestFinished() {
                super.setFirstPageRequestFinished();
                Adapter.this.setFirstPageRequestFinished();
            }

            @Override // com.narvii.paging.source.PageDataSource
            public List<Blog> filterResponseList(List<? extends Blog> list) {
                if (getInitPage() != null && this.firstResponse) {
                    this.firstResponse = false;
                    List listFilterDuplicated = Utils.filterDuplicated(getInitPage(), list);
                    if (listFilterDuplicated != null) {
                        return super.filterResponseList(listFilterDuplicated);
                    }
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.List<com.narvii.model.Blog>");
                }
                return super.filterResponseList(list);
            }
        }
    }
}
