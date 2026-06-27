package com.narvii.topic;

import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.logging.Impression.DivideColumnImpressionCollector;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewColumnAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryListFragment;
import com.narvii.story.SubTypeStoryBaseListFragment;
import com.narvii.topic.model.StorySections;
import com.narvii.util.Log;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.recycleview.StaticViewHolder;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: TopicSubCategoryStoryListFragment.kt */
/* loaded from: classes3.dex */
public final class TopicSubSectionStoryListFragment extends SubTypeStoryBaseListFragment {
    private HashMap _$_findViewCache;
    private String sectionKey;
    private int topicId;

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.app.theme.NVThemeFragment
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

    @Override // com.narvii.story.SubTypeStoryBaseListFragment
    protected boolean addLinearIpc() {
        return false;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment
    public int itemCellLayoutId() {
        return R.layout.item_cell_story_with_author;
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final int getTopicId() {
        return this.topicId;
    }

    public final void setTopicId(int i) {
        this.topicId = i;
    }

    public final String getSectionKey() {
        return this.sectionKey;
    }

    public final void setSectionKey(String str) {
        this.sectionKey = str;
    }

    @Override // com.narvii.app.NVFragment
    public void setTitle(int i) {
        super.setTitle(i);
        setTitle(StorySections.getSectionTitle(getContext(), this.sectionKey));
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.paging.NVRecyclerViewFragment
    public RecyclerView.LayoutManager createLayoutManager() {
        return new LinearLayoutManager(getContext());
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.topicId = getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID);
        this.sectionKey = getStringParam(TopicSubCategoryStoryListFragmentKt.KEY_SECTION_KEY);
        setTitle(StorySections.getSectionTitle(getContext(), this.sectionKey));
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        view.setBackgroundColor((int) 4279438915L);
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        RecyclerViewMergeAdapter recyclerViewMergeAdapter = new RecyclerViewMergeAdapter(this);
        RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(this);
        recyclerViewColumnAdapter.setAdapter(new SubTypeStoryBaseListFragment.MyAdapter(this) { // from class: com.narvii.topic.TopicSubSectionStoryListFragment.createAdapter.1
            @Override // com.narvii.story.SubTypeStoryBaseListFragment.MyAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
            public void onAttach() {
                super.onAttach();
                addImpressionCollector(new DivideColumnImpressionCollector(Blog.class));
            }
        }, 2);
        recyclerViewMergeAdapter.addAdapter(new TopOffsetAdapter(this));
        recyclerViewMergeAdapter.addAdapter(recyclerViewColumnAdapter, true);
        return recyclerViewMergeAdapter;
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment
    public ApiRequest createApiRequest() {
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.global().path("topic/" + this.topicId + "/feed/story/" + getApiSuffix(this.sectionKey));
        builder.param("type", StoryApi.TOPIC_LIST);
        builder.param("v", StoryApi.STORY_VERSION);
        builder.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, getLanguageService().getRequestPrefLanguageWithLocalAsDefault());
        return builder.build();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        String stringParam = getStringParam(TopicSubCategoryStoryListFragmentKt.KEY_SECTION_KEY);
        if (stringParam != null) {
            int iHashCode = stringParam.hashCode();
            if (iHashCode != 324042425) {
                if (iHashCode == 1085612985 && stringParam.equals(StorySections.SECTION_KEY_RECOMMEND)) {
                    return "TopicRecommendFullView";
                }
            } else if (stringParam.equals(StorySections.SECTION_KEY_POPULAR)) {
                return "TopicPopularFullView";
            }
        }
        return super.getPageName();
    }

    public final String getApiSuffix(String str) {
        if (!StorySections.feedKeyApiMapper.containsKey(str)) {
            Log.e("has no mapped api suffix for ke " + str + " use latest instead");
            return StorySections.feedKeyApiMapper.get(StorySections.SECTION_KEY_LATEST);
        }
        return StorySections.feedKeyApiMapper.get(str);
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment
    public boolean openStoryDetailPage(View view, Blog blog, Community community, User user) {
        startActivity(new StoryListFragment.IntentBuilder(blog).pathSuffix(getApiSuffix(this.sectionKey)).initFeedCommunity(community).initFeedUser(user).topicId(this.topicId).showCommentBar(true).build());
        return true;
    }

    /* compiled from: TopicSubCategoryStoryListFragment.kt */
    public static final class TopOffsetAdapter extends NVRecyclerViewBaseAdapter {
        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
        }

        public TopOffsetAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            return new StaticViewHolder(new OverlayListPlaceholder(parent.getContext()));
        }
    }
}
