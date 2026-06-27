package com.narvii.suggest.interest;

import android.app.ActionBar;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.model.story.StoryTopic;
import com.narvii.model.story.StoryTopicListResponse;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.search.InstantSearchListener;
import com.narvii.util.JacksonUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.SearchBar;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: TopicSearchFragment.kt */
/* loaded from: classes3.dex */
public final class TopicSearchFragment extends NVRecyclerViewFragment implements SearchBar.OnSearchListener, FragmentOnBackListener {
    public static final String CANCELED_TOPIC = "canceled_topic";
    public static final Companion Companion = new Companion(null);
    public static final String SELECTED_TOPIC = "selected_topic";
    public static final String TOPIC_ID_LIST = "topic_id_list";
    public static final String TOPIC_SEARCH_KEY = "search_key";
    public static final int TOPIC_SEARCH_REQUEST_CODE = 101;
    private HashMap _$_findViewCache;
    private SearchBar searchBar;
    private ArrayList<Integer> topicIdList;
    private TopicRecyclerViewAdapter topicRecyclerViewAdapter;
    private final InstantSearchListener instantSearchListener = new InstantSearchListener();
    private ArrayList<Integer> canceledTopicIdList = new ArrayList<>();

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

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public static final /* synthetic */ ArrayList access$getTopicIdList$p(TopicSearchFragment topicSearchFragment) {
        ArrayList<Integer> arrayList = topicSearchFragment.topicIdList;
        if (arrayList != null) {
            return arrayList;
        }
        Intrinsics.throwUninitializedPropertyAccessException("topicIdList");
        throw null;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ArrayList<Integer> listAs = JacksonUtils.readListAs(getStringParam(TOPIC_ID_LIST), Integer.TYPE);
        Intrinsics.checkExpressionValueIsNotNull(listAs, "JacksonUtils.readListAs(…D_LIST), Int::class.java)");
        this.topicIdList = listAs;
        if (bundle != null) {
            InstantSearchListener instantSearchListener = this.instantSearchListener;
            instantSearchListener.setKeyword(bundle.getString("search_key", instantSearchListener.getKeyword()));
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_topic_search, viewGroup, false);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(final View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        if (getActivity() != null) {
            FragmentActivity activity = getActivity();
            if (activity == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
            if (activity.getActionBar() != null) {
                FragmentActivity activity2 = getActivity();
                if (activity2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                Intrinsics.checkExpressionValueIsNotNull(activity2, "activity!!");
                ActionBar actionBar = activity2.getActionBar();
                if (actionBar == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                actionBar.hide();
            }
        }
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        }
        View viewFindViewById = view.findViewById(R.id.search_bar);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById(R.id.search_bar)");
        this.searchBar = (SearchBar) viewFindViewById;
        SearchBar searchBar = this.searchBar;
        if (searchBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBar");
            throw null;
        }
        searchBar.setOnSearchListener(this);
        SearchBar searchBar2 = this.searchBar;
        if (searchBar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBar");
            throw null;
        }
        View viewFindViewById2 = searchBar2.findViewById(R.id.search_cancel);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.suggest.interest.TopicSearchFragment.onViewCreated.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TopicSearchFragment.this.cancel();
                }
            });
        }
        SearchBar searchBar3 = this.searchBar;
        if (searchBar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBar");
            throw null;
        }
        EditText editText = (EditText) searchBar3.findViewById(R.id.search_text);
        if (editText != null) {
            editText.setHint(getResources().getString(R.string.search_topics));
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.suggest.interest.TopicSearchFragment.onViewCreated.2
            @Override // java.lang.Runnable
            public final void run() {
                SoftKeyboard.showSoftKeyboard((EditText) view.findViewById(R.id.search_text));
            }
        }, 200L);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        RecyclerViewMergeAdapter recyclerViewMergeAdapter = new RecyclerViewMergeAdapter(this);
        this.topicRecyclerViewAdapter = new TopicRecyclerViewAdapter(this, this);
        InstantSearchListener instantSearchListener = this.instantSearchListener;
        TopicRecyclerViewAdapter topicRecyclerViewAdapter = this.topicRecyclerViewAdapter;
        if (topicRecyclerViewAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("topicRecyclerViewAdapter");
            throw null;
        }
        instantSearchListener.attachRecyclerAdapter(topicRecyclerViewAdapter);
        TopicRecyclerViewAdapter topicRecyclerViewAdapter2 = this.topicRecyclerViewAdapter;
        if (topicRecyclerViewAdapter2 != null) {
            recyclerViewMergeAdapter.addAdapter(topicRecyclerViewAdapter2, true);
            return recyclerViewMergeAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("topicRecyclerViewAdapter");
        throw null;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkParameterIsNotNull(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString("search_key", this.instantSearchListener.getKeyword());
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        this.instantSearchListener.onTextChanged(searchBar, str);
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String str) {
        this.instantSearchListener.onSearch(searchBar, str);
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        cancel();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cancel() {
        Intent intent = new Intent();
        intent.putExtra(CANCELED_TOPIC, JacksonUtils.writeAsString(this.canceledTopicIdList));
        setResult(-1, intent);
        finish();
    }

    /* compiled from: TopicSearchFragment.kt */
    private final class TopicRecyclerViewAdapter extends PagingRecyclerViewAdapter<StoryTopic, StoryTopicListResponse> {
        private final NVContext ctx;
        final /* synthetic */ TopicSearchFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopicRecyclerViewAdapter(TopicSearchFragment topicSearchFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = topicSearchFragment;
            this.ctx = ctx;
            topicSearchFragment.setDarkTheme(true);
            setHasStableIds(true);
        }

        public final NVContext getCtx() {
            return this.ctx;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected RecyclerView.ViewHolder onCreateItemViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            View viewInflate = LayoutInflater.from(this.ctx.getContext()).inflate(R.layout.topic_search_item, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(ctx.…arch_item, parent, false)");
            return new TopicViewHolder(this, viewInflate);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            if (holder instanceof TopicViewHolder) {
                StoryTopic item = getItem(i);
                TopicViewHolder topicViewHolder = (TopicViewHolder) holder;
                topicViewHolder.getTopicView().setTopicData(item);
                topicViewHolder.getTopicView().setChecked(TopicSearchFragment.access$getTopicIdList$p(this.this$0).contains(Integer.valueOf(item.topicId)));
                topicViewHolder.getTopicView().setOnClickListener(this.subviewClickListener);
            }
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
            Integer numValueOf = view2 != null ? Integer.valueOf(view2.getId()) : null;
            if (numValueOf != null && numValueOf.intValue() == R.id.topic_view) {
                StoryTopic item = getItem(i);
                if (view2 != null) {
                    if (((InterestTopicView) view2).isChecked()) {
                        TopicSearchFragment.access$getTopicIdList$p(this.this$0).remove(Integer.valueOf(item.topicId));
                        this.this$0.canceledTopicIdList.add(Integer.valueOf(item.topicId));
                        notifyItemChanged(i);
                        return true;
                    }
                    TopicSearchFragment.access$getTopicIdList$p(this.this$0).add(Integer.valueOf(item.topicId));
                    notifyItemChanged(i);
                    Intent intent = new Intent();
                    intent.putExtra(TopicSearchFragment.SELECTED_TOPIC, JacksonUtils.writeAsString(item));
                    intent.putExtra(TopicSearchFragment.CANCELED_TOPIC, JacksonUtils.writeAsString(this.this$0.canceledTopicIdList));
                    this.this$0.setResult(-1, intent);
                    this.this$0.finish();
                    return true;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.suggest.interest.InterestTopicView");
            }
            return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<StoryTopic, StoryTopicListResponse> createPageDataSource(NVContext context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            return new TopicDataSource(this.this$0, context);
        }

        /* compiled from: TopicSearchFragment.kt */
        public final class TopicViewHolder extends BaseViewHolder {
            final /* synthetic */ TopicRecyclerViewAdapter this$0;
            private final InterestTopicView topicView;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public TopicViewHolder(TopicRecyclerViewAdapter topicRecyclerViewAdapter, View itemView) {
                super(itemView);
                Intrinsics.checkParameterIsNotNull(itemView, "itemView");
                this.this$0 = topicRecyclerViewAdapter;
                View viewFindViewById = itemView.findViewById(R.id.topic_view);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "itemView.findViewById(R.id.topic_view)");
                this.topicView = (InterestTopicView) viewFindViewById;
            }

            public final InterestTopicView getTopicView() {
                return this.topicView;
            }
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean isEmpty() {
            return super.isEmpty() && !TextUtils.isEmpty(this.this$0.instantSearchListener.getKeyword());
        }
    }

    /* compiled from: TopicSearchFragment.kt */
    private final class TopicDataSource extends PageDataSource<StoryTopic, StoryTopicListResponse> {
        private ContentLanguageService languageService;
        final /* synthetic */ TopicSearchFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopicDataSource(TopicSearchFragment topicSearchFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = topicSearchFragment;
            Object service = ctx.getService("content_language");
            Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"content_language\")");
            this.languageService = (ContentLanguageService) service;
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected ApiRequest createRequest() {
            return new ApiRequest.Builder().path("topic/search").param("q", this.this$0.instantSearchListener.getKeyword()).param(IjkMediaMeta.IJKM_KEY_LANGUAGE, this.languageService.getRequestPrefLanguageWithLocalAsDefault()).build();
        }

        @Override // com.narvii.paging.source.PageDataSource
        protected Class<StoryTopicListResponse> responseType() {
            return StoryTopicListResponse.class;
        }
    }

    /* compiled from: TopicSearchFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
