package com.narvii.suggest.interest;

import android.app.ActionBar;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
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
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class TopicSearchFragment extends NVRecyclerViewFragment implements SearchBar.OnSearchListener, FragmentOnBackListener {

    @NotNull
    public static final String CANCELED_TOPIC = "canceled_topic";

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String SELECTED_TOPIC = "selected_topic";

    @NotNull
    public static final String TOPIC_ID_LIST = "topic_id_list";

    @NotNull
    public static final String TOPIC_SEARCH_KEY = "search_key";
    public static final int TOPIC_SEARCH_REQUEST_CODE = 101;
    private SearchBar searchBar;
    private ArrayList<Integer> topicIdList;
    private TopicRecyclerViewAdapter topicRecyclerViewAdapter;

    @NotNull
    private final InstantSearchListener instantSearchListener = new InstantSearchListener();

    @NotNull
    private ArrayList<Integer> canceledTopicIdList = new ArrayList<>();

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    private final class TopicDataSource extends PageDataSource<StoryTopic, StoryTopicListResponse> {

        @NotNull
        private ContentLanguageService languageService;
        final /* synthetic */ TopicSearchFragment this$0;

        @Override // com.narvii.paging.source.PageDataSource
        @NotNull
        protected Class<StoryTopicListResponse> responseType() {
            return StoryTopicListResponse.class;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopicDataSource(@NotNull TopicSearchFragment topicSearchFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = topicSearchFragment;
            Object service = ctx.getService("content_language");
            t.i(service, "getService(...)");
            this.languageService = (ContentLanguageService) service;
        }

        @Override // com.narvii.paging.source.PageDataSource
        @Nullable
        protected ApiRequest createRequest() {
            return new ApiRequest.Builder().path("topic/search").param("q", this.this$0.instantSearchListener.getKeyword()).param("language", this.languageService.getRequestPrefLanguageWithLocalAsDefault()).build();
        }
    }

    private final class TopicRecyclerViewAdapter extends PagingRecyclerViewAdapter<StoryTopic, StoryTopicListResponse> {

        @NotNull
        private final NVContext ctx;
        final /* synthetic */ TopicSearchFragment this$0;

        public final class TopicViewHolder extends BaseViewHolder {
            final /* synthetic */ TopicRecyclerViewAdapter this$0;

            @NotNull
            private final InterestTopicView topicView;

            @NotNull
            public final InterestTopicView getTopicView() {
                return this.topicView;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public TopicViewHolder(@NotNull TopicRecyclerViewAdapter topicRecyclerViewAdapter, View itemView) {
                super(itemView);
                t.j(itemView, "itemView");
                this.this$0 = topicRecyclerViewAdapter;
                View viewFindViewById = itemView.findViewById(R.id.topic_view);
                t.i(viewFindViewById, "findViewById(...)");
                this.topicView = (InterestTopicView) viewFindViewById;
            }
        }

        @NotNull
        public final NVContext getCtx() {
            return this.ctx;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            ArrayList arrayList = null;
            Integer numValueOf = view2 != null ? Integer.valueOf(view2.getId()) : null;
            if (numValueOf == null || numValueOf.intValue() != R.id.topic_view) {
                return super.onItemClick(nVRecyclerViewBaseAdapter, i10, obj, view, view2);
            }
            StoryTopic item = getItem(i10);
            t.h(view2, "null cannot be cast to non-null type com.narvii.suggest.interest.InterestTopicView");
            if (((InterestTopicView) view2).isChecked()) {
                ArrayList arrayList2 = this.this$0.topicIdList;
                if (arrayList2 == null) {
                    t.B("topicIdList");
                } else {
                    arrayList = arrayList2;
                }
                arrayList.remove(Integer.valueOf(item.topicId));
                this.this$0.canceledTopicIdList.add(Integer.valueOf(item.topicId));
                notifyItemChanged(i10);
                return true;
            }
            ArrayList arrayList3 = this.this$0.topicIdList;
            if (arrayList3 == null) {
                t.B("topicIdList");
            } else {
                arrayList = arrayList3;
            }
            arrayList.add(Integer.valueOf(item.topicId));
            notifyItemChanged(i10);
            Intent intent = new Intent();
            intent.putExtra(TopicSearchFragment.SELECTED_TOPIC, JacksonUtils.writeAsString(item));
            intent.putExtra(TopicSearchFragment.CANCELED_TOPIC, JacksonUtils.writeAsString(this.this$0.canceledTopicIdList));
            this.this$0.setResult(-1, intent);
            this.this$0.finish();
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopicRecyclerViewAdapter(@NotNull TopicSearchFragment topicSearchFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = topicSearchFragment;
            this.ctx = ctx;
            topicSearchFragment.setDarkTheme(true);
            setHasStableIds(true);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        @NotNull
        public PageDataSource<StoryTopic, StoryTopicListResponse> createPageDataSource(@NotNull NVContext context) {
            t.j(context, "context");
            return new TopicDataSource(this.this$0, context);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
            t.j(holder, "holder");
            if (holder instanceof TopicViewHolder) {
                StoryTopic item = getItem(i10);
                TopicViewHolder topicViewHolder = (TopicViewHolder) holder;
                topicViewHolder.getTopicView().setTopicData(item);
                InterestTopicView topicView = topicViewHolder.getTopicView();
                ArrayList arrayList = this.this$0.topicIdList;
                if (arrayList == null) {
                    t.B("topicIdList");
                    arrayList = null;
                }
                topicView.setChecked(arrayList.contains(Integer.valueOf(item.topicId)));
                topicViewHolder.getTopicView().setOnClickListener(this.subviewClickListener);
            }
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        @NotNull
        protected RecyclerView.ViewHolder onCreateItemViewHolder(@NotNull ViewGroup parent, int i10) {
            t.j(parent, "parent");
            View viewInflate = LayoutInflater.from(this.ctx.getContext()).inflate(R.layout.topic_search_item, parent, false);
            t.i(viewInflate, "inflate(...)");
            return new TopicViewHolder(this, viewInflate);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean isEmpty() {
            if (super.isEmpty() && !TextUtils.isEmpty(this.this$0.instantSearchListener.getKeyword())) {
                return true;
            }
            return false;
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    private final void cancel() {
        Intent intent = new Intent();
        intent.putExtra(CANCELED_TOPIC, JacksonUtils.writeAsString(this.canceledTopicIdList));
        setResult(-1, intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2(View view) {
        t.j(view, "$view");
        SoftKeyboard.showSoftKeyboard((EditText) view.findViewById(R.id.search_text));
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    @NotNull
    protected NVRecyclerViewBaseAdapter createAdapter() {
        RecyclerViewMergeAdapter recyclerViewMergeAdapter = new RecyclerViewMergeAdapter(this);
        TopicRecyclerViewAdapter topicRecyclerViewAdapter = new TopicRecyclerViewAdapter(this, this);
        this.topicRecyclerViewAdapter = topicRecyclerViewAdapter;
        this.instantSearchListener.attachRecyclerAdapter(topicRecyclerViewAdapter);
        TopicRecyclerViewAdapter topicRecyclerViewAdapter2 = this.topicRecyclerViewAdapter;
        if (topicRecyclerViewAdapter2 == null) {
            t.B("topicRecyclerViewAdapter");
            topicRecyclerViewAdapter2 = null;
        }
        recyclerViewMergeAdapter.addAdapter(topicRecyclerViewAdapter2, true);
        return recyclerViewMergeAdapter;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_topic_search, viewGroup, false);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        t.j(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString("search_key", this.instantSearchListener.getKeyword());
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(@Nullable SearchBar searchBar, @Nullable String str) {
        this.instantSearchListener.onSearch(searchBar, str);
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(@Nullable SearchBar searchBar, @Nullable String str) {
        this.instantSearchListener.onTextChanged(searchBar, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(TopicSearchFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.cancel();
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(@Nullable NVActivity nVActivity) {
        cancel();
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ArrayList<Integer> listAs = JacksonUtils.readListAs(getStringParam(TOPIC_ID_LIST), Integer.TYPE);
        t.i(listAs, "readListAs(...)");
        this.topicIdList = listAs;
        if (bundle != null) {
            InstantSearchListener instantSearchListener = this.instantSearchListener;
            instantSearchListener.setKeyword(bundle.getString("search_key", instantSearchListener.getKeyword()));
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull final View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        if (getActivity() != null) {
            FragmentActivity activity = getActivity();
            t.g(activity);
            if (activity.getActionBar() != null) {
                FragmentActivity activity2 = getActivity();
                t.g(activity2);
                ActionBar actionBar = activity2.getActionBar();
                t.g(actionBar);
                actionBar.hide();
            }
        }
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        }
        View viewFindViewById = view.findViewById(R.id.search_bar);
        t.i(viewFindViewById, "findViewById(...)");
        SearchBar searchBar = (SearchBar) viewFindViewById;
        this.searchBar = searchBar;
        SearchBar searchBar2 = null;
        if (searchBar == null) {
            t.B("searchBar");
            searchBar = null;
        }
        searchBar.setOnSearchListener(this);
        SearchBar searchBar3 = this.searchBar;
        if (searchBar3 == null) {
            t.B("searchBar");
            searchBar3 = null;
        }
        View viewFindViewById2 = searchBar3.findViewById(R.id.search_cancel);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.suggest.interest.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TopicSearchFragment.onViewCreated$lambda$1(this.f2751a, view2);
                }
            });
        }
        SearchBar searchBar4 = this.searchBar;
        if (searchBar4 == null) {
            t.B("searchBar");
        } else {
            searchBar2 = searchBar4;
        }
        EditText editText = (EditText) searchBar2.findViewById(R.id.search_text);
        if (editText != null) {
            editText.setHint(getResources().getString(R.string.search_topics));
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.suggest.interest.l
            @Override // java.lang.Runnable
            public final void run() {
                TopicSearchFragment.onViewCreated$lambda$2(view);
            }
        }, 200L);
    }
}
