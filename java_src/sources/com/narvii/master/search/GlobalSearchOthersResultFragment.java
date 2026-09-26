package com.narvii.master.search;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.HeadlineLaunchHelper;
import com.narvii.headlines.feed.HeadLinesListAdapter;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.OnItemClickListener;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.FlowLayoutImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.master.HeadlineDividerAdapter;
import com.narvii.master.search.history.SearchHistoryDelegate;
import com.narvii.master.search.model.AllSearchResultResponse;
import com.narvii.master.search.model.GlobalSearchResultSection;
import com.narvii.master.search.trending.FlowLayoutAdapter;
import com.narvii.master.search.trending.SectionHeaderAdapter;
import com.narvii.model.Feed;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.TopicSuggestResponse;
import com.narvii.model.story.StoryTopic;
import com.narvii.search.SwitchSearchListener;
import com.narvii.story.widgets.StoryTopicView;
import com.narvii.util.Callback;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.SearchBar;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class GlobalSearchOthersResultFragment extends NVListFragment implements SearchBar.OnSearchListener, SwitchSearchListener, ChangeSearchTextRegister {
    public AminoIdMatchedAdapter aminoIdMatchedAdapter;

    @Nullable
    private ApiRequest apiRequest;
    private ApiService apiService;

    @Nullable
    private ChangeSearchTextListener changeSearchTextListener;
    private ContentLanguageService contentLanguageService;

    @Nullable
    private String curKey;

    @Nullable
    private String errorMsg;

    @Nullable
    private MyMergerAdapter mergeAdapter;
    public PostSectionAdapter postSectionAdapter;
    private boolean requestSent;

    @Nullable
    private String responseTime;
    private SearchHistoryDelegate searchHistoryDelegate;
    private TopicSectionAdapter topicSectionAdapter;

    /* JADX INFO: Access modifiers changed from: private */
    class BaseSearchTopicAdapter extends FlowLayoutAdapter<StoryTopic> {

        @NotNull
        private final StoryTopicView.OnPreClickListener preClickListener;
        final /* synthetic */ GlobalSearchOthersResultFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BaseSearchTopicAdapter(@NotNull GlobalSearchOthersResultFragment globalSearchOthersResultFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = globalSearchOthersResultFragment;
            this.preClickListener = new StoryTopicView.OnPreClickListener() { // from class: com.narvii.master.search.j
                @Override // com.narvii.story.widgets.StoryTopicView.OnPreClickListener
                public final void onPreClick(StoryTopicView storyTopicView, StoryTopic storyTopic) {
                    GlobalSearchOthersResultFragment.BaseSearchTopicAdapter.preClickListener$lambda$0(this.f2416a, storyTopicView, storyTopic);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void preClickListener$lambda$0(BaseSearchTopicAdapter this$0, StoryTopicView storyTopicView, StoryTopic storyTopic) {
            t.j(this$0, "this$0");
            LogEvent.clickBuilder(this$0, ActSemantic.checkDetail).object(storyTopic).send();
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter
        @NotNull
        public View createChildView(@NotNull ViewGroup parent) {
            t.j(parent, "parent");
            View viewInflate = this.inflater.inflate(R.layout.global_search_story_topic_view_layout, parent, false);
            t.i(viewInflate, "inflate(...)");
            return viewInflate;
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter
        public void updateChildView(@NotNull StoryTopic data, @NotNull View view) {
            t.j(data, "data");
            t.j(view, "view");
            view.setClickable(true);
            StoryTopicView storyTopicView = (StoryTopicView) view;
            storyTopicView.setOnPreClickListener(this.preClickListener);
            storyTopicView.setTopic(data);
            LogUtils.setAttachedObject(view, data);
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter
        protected void updateFlowLayout(@NotNull NVFlowLayout cell) {
            t.j(cell, "cell");
            int iDpToPxInt = Utils.dpToPxInt(getContext(), 5.0f);
            cell.setPadding(iDpToPxInt, iDpToPxInt, iDpToPxInt, iDpToPxInt * 2);
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new FlowLayoutImpressionCollector(StoryTopic.class, R.id.flow_layout));
        }
    }

    public interface MoreSearchResultHost {
        boolean hasMoreResult();
    }

    public static final class MyDividerAdapter extends DividerAdapter {
        @Override // com.narvii.list.DividerAdapter
        protected int getDividerLayoutId() {
            return R.layout.list_divider_padding;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyDividerAdapter(@NotNull NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
        }
    }

    public final class MyMergerAdapter extends MergeAdapter {
        final /* synthetic */ GlobalSearchOthersResultFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyMergerAdapter(@NotNull GlobalSearchOthersResultFragment globalSearchOthersResultFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = globalSearchOthersResultFragment;
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        @Nullable
        public String errorMessage() {
            if (TextUtils.isEmpty(this.this$0.curKey)) {
                return null;
            }
            return this.this$0.errorMsg;
        }

        @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return !TextUtils.isEmpty(this.this$0.curKey) && getTotalCount() == 0;
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            if (TextUtils.isEmpty(this.this$0.curKey)) {
                return true;
            }
            if (getTotalCount() != 0 || this.this$0.getAminoIdMatchedAdapter().isRequestFinished) {
                return this.this$0.requestSent && TextUtils.isEmpty(this.this$0.errorMsg);
            }
            return false;
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public void onErrorRetry() {
            this.this$0.errorMsg = null;
            this.this$0.sendRequest();
        }

        @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
        public void refresh(int i10, @Nullable Callback<Integer> callback) {
            super.refresh(i10, callback);
            this.this$0.sendRequest();
        }
    }

    public final class PostSectionAdapter extends HeadLinesListAdapter implements MoreSearchResultHost {

        @Nullable
        private GlobalSearchResultSection storySection;
        final /* synthetic */ GlobalSearchOthersResultFragment this$0;

        @Override // com.narvii.list.NVPagedAdapter
        @Nullable
        protected ApiRequest createRequest(boolean z6) {
            return null;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        @NotNull
        public String getAreaName() {
            return "PostSearchResult";
        }

        @Nullable
        public final GlobalSearchResultSection getStorySection() {
            return this.storySection;
        }

        public final void setStorySection(@Nullable GlobalSearchResultSection globalSearchResultSection) {
            this.storySection = globalSearchResultSection;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter
        protected boolean showAllLike() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PostSectionAdapter(@NotNull GlobalSearchOthersResultFragment globalSearchOthersResultFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = globalSearchOthersResultFragment;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onItemClick$lambda$0(PostSectionAdapter this$0, Object item, DialogInterface dialogInterface, int i10) {
            t.j(this$0, "this$0");
            t.j(item, "$item");
            if (this$0.shouldShowDownloadMasterDialog(((Feed) item).ndcId)) {
                return;
            }
            new FlagReportOptionDialog.Builder(this$0.context).nvObject((NVObject) item).build().show();
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter
        @Nullable
        protected String getCommunityTimestamp(int i10) {
            return this.this$0.getResponseTime();
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(this.this$0.curKey)) {
                return 0;
            }
            return super.getCount();
        }

        @Override // com.narvii.master.search.GlobalSearchOthersResultFragment.MoreSearchResultHost
        public boolean hasMoreResult() {
            GlobalSearchResultSection globalSearchResultSection = this.storySection;
            return globalSearchResultSection != null && globalSearchResultSection.hitsTotal > 4;
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter, com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @NotNull final Object item, @Nullable View view, @Nullable View view2) {
            t.j(item, "item");
            if (view2 == null || view2.getId() != R.id.headline_feed_options) {
                return super.onItemClick(listAdapter, i10, item, view, view2);
            }
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            Object service = getService("affiliations");
            t.i(service, "getService(...)");
            ((AffiliationsService) service).contains(((Feed) item).ndcId);
            actionSheetDialog.addItem(R.string.flag_for_review, 0);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.master.search.k
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i11) {
                    GlobalSearchOthersResultFragment.PostSectionAdapter.onItemClick$lambda$0(this.f2417a, item, dialogInterface, i11);
                }
            });
            actionSheetDialog.show();
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void setSection(@Nullable GlobalSearchResultSection globalSearchResultSection) {
            ArrayList arrayList;
            ArrayList arrayList2;
            this.storySection = globalSearchResultSection;
            if (globalSearchResultSection != null) {
                arrayList2 = globalSearchResultSection.resultList;
            } else {
                arrayList = null;
            }
            if (arrayList == null) {
                arrayList = arrayList2;
                arrayList = new ArrayList();
            }
            arrayList = arrayList2;
            this._list = arrayList;
            GlobalSearchResultSection globalSearchResultSection2 = this.storySection;
            setFeedRelatedCommunityList(globalSearchResultSection2 != null ? globalSearchResultSection2.communityInfoMapping : null);
            GlobalSearchResultSection globalSearchResultSection3 = this.storySection;
            setUserProgfileMapping(globalSearchResultSection3 != null ? globalSearchResultSection3.userProfileMapping : null);
            HeadlineLaunchHelper headlineLaunchHelperLaunchHelper = launchHelper();
            if (headlineLaunchHelperLaunchHelper != null) {
                GlobalSearchResultSection globalSearchResultSection4 = this.storySection;
                headlineLaunchHelperLaunchHelper.setCommunityMap(globalSearchResultSection4 != null ? globalSearchResultSection4.communityInfoMapping : null, this.this$0.getResponseTime());
            }
            this._isEnd = true;
            notifyDataSetChanged();
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            this._isEnd = true;
            notifyDataSetChanged();
        }
    }

    public final class SimpleSearchSectionAdapter extends AdriftAdapter {

        @Nullable
        private NVAdapter host;
        private final int sectionType;
        private final boolean showBottomDivider;
        private final boolean showTopDivider;

        public /* synthetic */ SimpleSearchSectionAdapter(GlobalSearchOthersResultFragment globalSearchOthersResultFragment, int i10, boolean z6, boolean z10, int i11, kotlin.jvm.internal.k kVar) {
            this(i10, (i11 & 2) != 0 ? false : z6, (i11 & 4) != 0 ? false : z10);
        }

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        @Nullable
        public String getAreaName() {
            int i10 = this.sectionType;
            if (i10 == 3) {
                return "TopicSearchResult";
            }
            if (i10 != 4) {
                return null;
            }
            return "PostSearchResult";
        }

        @Nullable
        public final NVAdapter getHost$Amino_bundle() {
            return this.host;
        }

        @NotNull
        public final String getSectionTitle(int i10) {
            if (i10 == 3) {
                String string = GlobalSearchOthersResultFragment.this.getString(R.string.more_topics);
                t.i(string, "getString(...)");
                return string;
            }
            if (i10 != 4) {
                return "";
            }
            String string2 = GlobalSearchOthersResultFragment.this.getString(R.string.more_posts);
            t.i(string2, "getString(...)");
            return string2;
        }

        public final boolean getShowBottomDivider() {
            return this.showBottomDivider;
        }

        public final boolean getShowTopDivider() {
            return this.showTopDivider;
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return true;
        }

        public final void setAttachHost(@NotNull NVAdapter attachHost) {
            t.j(attachHost, "attachHost");
            this.host = attachHost;
        }

        public final void setHost$Amino_bundle(@Nullable NVAdapter nVAdapter) {
            this.host = nVAdapter;
        }

        public SimpleSearchSectionAdapter(int i10, boolean z6, boolean z10) {
            super(GlobalSearchOthersResultFragment.this);
            this.sectionType = i10;
            this.showTopDivider = z6;
            this.showBottomDivider = z10;
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            NVAdapter nVAdapter;
            if (TextUtils.isEmpty(GlobalSearchOthersResultFragment.this.curKey)) {
                return 0;
            }
            OnItemClickListener onItemClickListener = this.host;
            if (onItemClickListener == null || !(onItemClickListener instanceof MoreSearchResultHost)) {
                return super.getCount();
            }
            t.h(onItemClickListener, "null cannot be cast to non-null type com.narvii.master.search.GlobalSearchOthersResultFragment.MoreSearchResultHost");
            return (!((MoreSearchResultHost) onItemClickListener).hasMoreResult() || (nVAdapter = this.host) == null || nVAdapter.getCount() <= 0) ? 0 : 1;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@NotNull ListAdapter adapter, int i10, @NotNull Object item, @NotNull View cell, @Nullable View view) {
            t.j(adapter, "adapter");
            t.j(item, "item");
            t.j(cell, "cell");
            int i11 = this.sectionType;
            int i12 = 3;
            if (i11 != 3) {
                i12 = 4;
                if (i11 != 4) {
                    i12 = -1;
                }
            }
            if (i12 == -1 || !(GlobalSearchOthersResultFragment.this.getParentFragment() instanceof GlobalSearchTabFragment)) {
                return super.onItemClick(adapter, i10, item, cell, view);
            }
            logClickEvent(ActSemantic.listViewEnter);
            Intent intent = FragmentWrapperActivity.intent(GlobalSearchBaseFragment.class);
            intent.putExtra("section_type", i12);
            intent.putExtra("search_key", GlobalSearchOthersResultFragment.this.curKey);
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }

        @Override // android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            String str;
            int i11;
            int i12;
            View viewCreateView = createView(R.layout.item_search_simple_section, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(getSectionTitle(this.sectionType));
            TextView textView = (TextView) viewCreateView.findViewById(R.id.search_key);
            if (GlobalSearchOthersResultFragment.this.curKey != null) {
                str = GlobalSearchOthersResultFragment.this.curKey;
            } else {
                str = "";
            }
            textView.setText(str);
            int i13 = 0;
            if (this.host == null) {
                i11 = 0;
            } else {
                i11 = 4;
            }
            textView.setVisibility(i11);
            View viewFindViewById = viewCreateView.findViewById(R.id.top_divider);
            if (this.showTopDivider) {
                i12 = 0;
            } else {
                i12 = 8;
            }
            viewFindViewById.setVisibility(i12);
            View viewFindViewById2 = viewCreateView.findViewById(R.id.bottom_divider);
            if (!this.showBottomDivider) {
                i13 = 8;
            }
            viewFindViewById2.setVisibility(i13);
            t.g(viewCreateView);
            return viewCreateView;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class TopicSectionAdapter extends BaseSearchTopicAdapter {
        final /* synthetic */ GlobalSearchOthersResultFragment this$0;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        @Nullable
        public String getAreaName() {
            return "TopicsSearchResult";
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter
        protected boolean hasMoreButton() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TopicSectionAdapter(@NotNull GlobalSearchOthersResultFragment globalSearchOthersResultFragment, NVContext ctx) {
            super(globalSearchOthersResultFragment, ctx);
            t.j(ctx, "ctx");
            this.this$0 = globalSearchOthersResultFragment;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void createMoreButton$lambda$0(TopicSectionAdapter this$0, GlobalSearchOthersResultFragment this$1, View view) {
            t.j(this$0, "this$0");
            t.j(this$1, "this$1");
            this$0.logClickEvent(ActSemantic.listViewEnter);
            Intent intent = FragmentWrapperActivity.intent(GlobalSearchBaseFragment.class);
            intent.putExtra("section_type", 3);
            intent.putExtra("search_key", this$1.curKey);
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this$0, intent);
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter
        @Nullable
        protected View createMoreButton(@NotNull NVFlowLayout flowLayout) {
            t.j(flowLayout, "flowLayout");
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.global_search_topic_more, (ViewGroup) flowLayout, false);
            final GlobalSearchOthersResultFragment globalSearchOthersResultFragment = this.this$0;
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.search.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GlobalSearchOthersResultFragment.TopicSectionAdapter.createMoreButton$lambda$0(this.f2419a, globalSearchOthersResultFragment, view);
                }
            });
            return viewInflate;
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter, com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(this.this$0.curKey)) {
                return 0;
            }
            return super.getCount();
        }

        public final void setSection(@Nullable GlobalSearchResultSection globalSearchResultSection) {
            ArrayList<NVObject> arrayList = globalSearchResultSection != null ? globalSearchResultSection.resultList : null;
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            setList(arrayList);
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class TrendingTopicAdapter extends BaseSearchTopicAdapter {
        final /* synthetic */ GlobalSearchOthersResultFragment this$0;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        @NotNull
        public String getAreaName() {
            return "TrendingTopics";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TrendingTopicAdapter(@NotNull GlobalSearchOthersResultFragment globalSearchOthersResultFragment, NVContext ctx) {
            super(globalSearchOthersResultFragment, ctx);
            t.j(ctx, "ctx");
            this.this$0 = globalSearchOthersResultFragment;
        }

        @Override // com.narvii.master.search.trending.FlowLayoutAdapter, com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            if (this.this$0.showSearchHistory()) {
                return super.getCount();
            }
            return 0;
        }

        private final void sendTopicReq() {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/topic/trending");
            ContentLanguageService contentLanguageService = this.this$0.contentLanguageService;
            ApiService apiService = null;
            if (contentLanguageService == null) {
                t.B("contentLanguageService");
                contentLanguageService = null;
            }
            ApiRequest apiRequestBuild = builderPath.param("language", contentLanguageService.getRequestPrefLanguageWithLocalAsDefault()).build();
            ApiService apiService2 = this.this$0.apiService;
            if (apiService2 == null) {
                t.B("apiService");
            } else {
                apiService = apiService2;
            }
            final Class<TopicSuggestResponse> cls = TopicSuggestResponse.class;
            apiService.exec(apiRequestBuild, new ApiResponseListener<TopicSuggestResponse>(cls) { // from class: com.narvii.master.search.GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(@Nullable ApiRequest apiRequest, @Nullable TopicSuggestResponse topicSuggestResponse) throws Exception {
                    List<StoryTopic> list;
                    super.onFinish(apiRequest, topicSuggestResponse);
                    this.this$0.getList().clear();
                    if (topicSuggestResponse != null && (list = topicSuggestResponse.topicList) != null) {
                        this.this$0.getList().addAll(list);
                    }
                    this.this$0.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                    super.onFail(apiRequest, i10, list, str, apiResponse, th);
                    this.this$0.getList().clear();
                    this.this$0.notifyDataSetChanged();
                }
            });
        }

        @Override // com.narvii.master.search.GlobalSearchOthersResultFragment.BaseSearchTopicAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendTopicReq();
        }
    }

    /* JADX INFO: renamed from: com.narvii.master.search.GlobalSearchOthersResultFragment$onCreate$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.l<String, l0> {
        AnonymousClass1() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(String str) {
            invoke2(str);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull String text) {
            t.j(text, "text");
            ChangeSearchTextListener changeSearchTextListener = GlobalSearchOthersResultFragment.this.changeSearchTextListener;
            if (changeSearchTextListener != null) {
                changeSearchTextListener.changeSearchText(text, true);
            }
            GlobalSearchOthersResultFragment.this.onSearch(null, text);
        }
    }

    /* JADX INFO: renamed from: com.narvii.master.search.GlobalSearchOthersResultFragment$onCreate$2, reason: invalid class name */
    /* synthetic */ class AnonymousClass2 extends q implements e8.a<Boolean> {
        AnonymousClass2(Object obj) {
            super(0, obj, GlobalSearchOthersResultFragment.class, "showSearchHistory", "showSearchHistory()Z", 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // e8.a
        @NotNull
        public final Boolean invoke() {
            return Boolean.valueOf(((GlobalSearchOthersResultFragment) this.receiver).showSearchHistory());
        }
    }

    @Nullable
    public final MyMergerAdapter getMergeAdapter() {
        return this.mergeAdapter;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "global_others_search";
    }

    @Nullable
    public final String getResponseTime() {
        return this.responseTime;
    }

    @Override // com.narvii.app.theme.NVThemeFragment, com.narvii.app.theme.NVThemeOwner
    public boolean isDarkNVTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    public final void setAminoIdMatchedAdapter(@NotNull AminoIdMatchedAdapter aminoIdMatchedAdapter) {
        t.j(aminoIdMatchedAdapter, "<set-?>");
        this.aminoIdMatchedAdapter = aminoIdMatchedAdapter;
    }

    @Override // com.narvii.master.search.ChangeSearchTextRegister
    public void setChangeSearchTextListener(@Nullable ChangeSearchTextListener changeSearchTextListener) {
        this.changeSearchTextListener = changeSearchTextListener;
    }

    public final void setMergeAdapter(@Nullable MyMergerAdapter myMergerAdapter) {
        this.mergeAdapter = myMergerAdapter;
    }

    public final void setPostSectionAdapter(@NotNull PostSectionAdapter postSectionAdapter) {
        t.j(postSectionAdapter, "<set-?>");
        this.postSectionAdapter = postSectionAdapter;
    }

    public final void setResponseTime(@Nullable String str) {
        this.responseTime = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onRequestFinish(AllSearchResultResponse allSearchResultResponse) {
        if (allSearchResultResponse == null || !isAdded()) {
            return;
        }
        HashMap map = new HashMap();
        List<GlobalSearchResultSection> list = allSearchResultResponse.sectionList;
        if (list != null) {
            for (GlobalSearchResultSection globalSearchResultSection : list) {
                String sectionType = globalSearchResultSection.sectionType;
                if (sectionType != null) {
                    t.i(sectionType, "sectionType");
                    t.g(globalSearchResultSection);
                    map.put(sectionType, globalSearchResultSection);
                }
            }
        }
        TopicSectionAdapter topicSectionAdapter = this.topicSectionAdapter;
        if (topicSectionAdapter == null) {
            t.B("topicSectionAdapter");
            topicSectionAdapter = null;
        }
        topicSectionAdapter.setSection((GlobalSearchResultSection) map.get(GlobalSearchResultSection.SECTION_TYPE_TOPIC));
        getPostSectionAdapter().setSection((GlobalSearchResultSection) map.get("POST"));
        MyMergerAdapter myMergerAdapter = this.mergeAdapter;
        if (myMergerAdapter != null) {
            myMergerAdapter.notifyDataSetChanged();
        }
    }

    private final void searchText(String str) {
        if (Utils.isStringEquals(str, this.curKey)) {
            return;
        }
        if (str == null) {
            str = "";
        }
        this.curKey = str;
        sendRequest();
        getAminoIdMatchedAdapter().notifyKeyChange(this.curKey);
        MyMergerAdapter myMergerAdapter = this.mergeAdapter;
        if (myMergerAdapter != null) {
            myMergerAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendRequest() {
        ApiService apiService = null;
        if (this.apiRequest != null) {
            ApiService apiService2 = this.apiService;
            if (apiService2 == null) {
                t.B("apiService");
                apiService2 = null;
            }
            apiService2.abort(this.apiRequest);
        }
        if (TextUtils.isEmpty(this.curKey)) {
            MyMergerAdapter myMergerAdapter = this.mergeAdapter;
            if (myMergerAdapter != null) {
                myMergerAdapter.notifyDataSetChanged();
                return;
            }
            return;
        }
        this.requestSent = false;
        MyMergerAdapter myMergerAdapter2 = this.mergeAdapter;
        if (myMergerAdapter2 != null) {
            myMergerAdapter2.notifyDataSetChanged();
        }
        ApiRequest.Builder builderParam = new ApiRequest.Builder().global().path("/search/others").param("q", this.curKey).param("searchId", SearchUtils.getSearchId(this)).param("ignoreMembership", 1);
        ContentLanguageService contentLanguageService = this.contentLanguageService;
        if (contentLanguageService == null) {
            t.B("contentLanguageService");
            contentLanguageService = null;
        }
        this.apiRequest = builderParam.param("language", contentLanguageService.getRequestPrefLanguageWithLocalAsDefault()).build();
        ApiService apiService3 = this.apiService;
        if (apiService3 == null) {
            t.B("apiService");
        } else {
            apiService = apiService3;
        }
        apiService.exec(this.apiRequest, new ApiResponseListener<AllSearchResultResponse>(AllSearchResultResponse.class) { // from class: com.narvii.master.search.GlobalSearchOthersResultFragment.sendRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                t.j(req, "req");
                super.onFail(req, i10, list, str, apiResponse, th);
                GlobalSearchOthersResultFragment.this.errorMsg = str;
                GlobalSearchOthersResultFragment.this.requestSent = true;
                MyMergerAdapter mergeAdapter = GlobalSearchOthersResultFragment.this.getMergeAdapter();
                if (mergeAdapter != null) {
                    mergeAdapter.notifyDataSetChanged();
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @NotNull AllSearchResultResponse resp) throws Exception {
                t.j(req, "req");
                t.j(resp, "resp");
                super.onFinish(req, resp);
                GlobalSearchOthersResultFragment.this.apiRequest = null;
                GlobalSearchOthersResultFragment.this.requestSent = true;
                GlobalSearchOthersResultFragment.this.setResponseTime(resp.timestamp);
                GlobalSearchOthersResultFragment.this.onRequestFinish(resp);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean showSearchHistory() {
        return TextUtils.isEmpty(this.curKey);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.narvii.list.NVListFragment
    @Nullable
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        this.mergeAdapter = new MyMergerAdapter(this, this);
        SearchHistoryDelegate searchHistoryDelegate = this.searchHistoryDelegate;
        TopicSectionAdapter topicSectionAdapter = null;
        if (searchHistoryDelegate == null) {
            t.B("searchHistoryDelegate");
            searchHistoryDelegate = null;
        }
        searchHistoryDelegate.addSearchHistoryAdapters(this.mergeAdapter);
        SectionHeaderAdapter sectionHeaderAdapter = new SectionHeaderAdapter(this, R.string.search_trending_topics);
        TrendingTopicAdapter trendingTopicAdapter = new TrendingTopicAdapter(this, this);
        sectionHeaderAdapter.setHost$Amino_bundle(trendingTopicAdapter);
        MyMergerAdapter myMergerAdapter = this.mergeAdapter;
        if (myMergerAdapter != null) {
            myMergerAdapter.addAdapter(sectionHeaderAdapter);
        }
        MyMergerAdapter myMergerAdapter2 = this.mergeAdapter;
        if (myMergerAdapter2 != null) {
            myMergerAdapter2.addAdapter(trendingTopicAdapter);
        }
        setAminoIdMatchedAdapter(new AminoIdMatchedAdapter(this));
        MyMergerAdapter myMergerAdapter3 = this.mergeAdapter;
        if (myMergerAdapter3 != null) {
            myMergerAdapter3.addAdapter(getAminoIdMatchedAdapter());
        }
        SectionHeaderAdapter sectionHeaderAdapter2 = new SectionHeaderAdapter(this, R.string.topic_s);
        TopicSectionAdapter topicSectionAdapter2 = new TopicSectionAdapter(this, this);
        this.topicSectionAdapter = topicSectionAdapter2;
        sectionHeaderAdapter2.setAttachHost(topicSectionAdapter2);
        MyDividerAdapter myDividerAdapter = new MyDividerAdapter(this);
        TopicSectionAdapter topicSectionAdapter3 = this.topicSectionAdapter;
        if (topicSectionAdapter3 == null) {
            t.B("topicSectionAdapter");
        } else {
            topicSectionAdapter = topicSectionAdapter3;
        }
        myDividerAdapter.setAdapter(topicSectionAdapter);
        MyMergerAdapter myMergerAdapter4 = this.mergeAdapter;
        if (myMergerAdapter4 != null) {
            myMergerAdapter4.addAdapter(sectionHeaderAdapter2);
        }
        MyMergerAdapter myMergerAdapter5 = this.mergeAdapter;
        if (myMergerAdapter5 != null) {
            myMergerAdapter5.addAdapter(myDividerAdapter);
        }
        SectionHeaderAdapter sectionHeaderAdapter3 = new SectionHeaderAdapter(this, R.string.posts);
        HeadlineDividerAdapter headlineDividerAdapter = new HeadlineDividerAdapter(this);
        setPostSectionAdapter(new PostSectionAdapter(this, this));
        headlineDividerAdapter.setAdapter(getPostSectionAdapter());
        sectionHeaderAdapter3.setAttachHost(getPostSectionAdapter());
        MyMergerAdapter myMergerAdapter6 = this.mergeAdapter;
        if (myMergerAdapter6 != null) {
            myMergerAdapter6.addAdapter(sectionHeaderAdapter3);
        }
        MyMergerAdapter myMergerAdapter7 = this.mergeAdapter;
        if (myMergerAdapter7 != null) {
            myMergerAdapter7.addAdapter(headlineDividerAdapter);
        }
        SimpleSearchSectionAdapter simpleSearchSectionAdapter = new SimpleSearchSectionAdapter(this, 4, true, false, 4, null);
        simpleSearchSectionAdapter.setAttachHost(getPostSectionAdapter());
        MyMergerAdapter myMergerAdapter8 = this.mergeAdapter;
        if (myMergerAdapter8 != null) {
            myMergerAdapter8.addAdapter(simpleSearchSectionAdapter);
        }
        return this.mergeAdapter;
    }

    @NotNull
    public final AminoIdMatchedAdapter getAminoIdMatchedAdapter() {
        AminoIdMatchedAdapter aminoIdMatchedAdapter = this.aminoIdMatchedAdapter;
        if (aminoIdMatchedAdapter != null) {
            return aminoIdMatchedAdapter;
        }
        t.B("aminoIdMatchedAdapter");
        return null;
    }

    @Override // com.narvii.list.NVListFragment
    @Nullable
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @NotNull
    public final PostSectionAdapter getPostSectionAdapter() {
        PostSectionAdapter postSectionAdapter = this.postSectionAdapter;
        if (postSectionAdapter != null) {
            return postSectionAdapter;
        }
        t.B("postSectionAdapter");
        return null;
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_global_all_search, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(@NotNull ListView list, @Nullable Bundle bundle) {
        t.j(list, "list");
        super.onListViewCreated(list, bundle);
        list.setDivider(null);
        list.setDividerHeight(0);
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(@Nullable SearchBar searchBar, @NotNull String text) {
        t.j(text, "text");
        searchText(text);
        SearchHistoryDelegate searchHistoryDelegate = this.searchHistoryDelegate;
        if (searchHistoryDelegate == null) {
            t.B("searchHistoryDelegate");
            searchHistoryDelegate = null;
        }
        searchHistoryDelegate.addSearchHistory(text);
    }

    @Override // com.narvii.search.SwitchSearchListener
    public void onSwitchSearch(@Nullable String str) {
        if (Utils.isStringEquals(str, this.curKey)) {
            return;
        }
        if (str == null || str.length() == 0 || StringUtils.isTrimEmpty(str)) {
            onTextChanged(null, null);
        } else {
            SearchUtils.logSwitchSearch(this, str);
            onSearch(null, str);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        sendRequest();
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected String emptyMessage() {
        String string = getString(R.string.normal_empty_list);
        t.i(string, "getString(...)");
        return string;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setScrollToHideKeyboard(true);
        Object service = getService("content_language");
        t.i(service, "getService(...)");
        this.contentLanguageService = (ContentLanguageService) service;
        Object service2 = getService("api");
        t.i(service2, "getService(...)");
        this.apiService = (ApiService) service2;
        SearchHistoryDelegate searchHistoryDelegate = new SearchHistoryDelegate(this, SearchPrefsHelper.PREFS_KEY_OTHERS);
        this.searchHistoryDelegate = searchHistoryDelegate;
        searchHistoryDelegate.setOnSearchHistory(new AnonymousClass1());
        SearchHistoryDelegate searchHistoryDelegate2 = this.searchHistoryDelegate;
        if (searchHistoryDelegate2 == null) {
            t.B("searchHistoryDelegate");
            searchHistoryDelegate2 = null;
        }
        searchHistoryDelegate2.setShowSearchHistory(new AnonymousClass2(this));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        sendRequest();
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(@Nullable SearchBar searchBar, @Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            this.curKey = null;
            sendRequest();
            getAminoIdMatchedAdapter().notifyKeyChange(null);
            MyMergerAdapter myMergerAdapter = this.mergeAdapter;
            if (myMergerAdapter != null) {
                myMergerAdapter.notifyDataSetChanged();
            }
        }
    }
}
