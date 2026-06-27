package com.narvii.master.home.discover.adapter;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.support.v4.app.FragmentManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.master.home.discover.DiscoverFragment;
import com.narvii.master.home.discover.DiscoverTabFragment;
import com.narvii.master.home.discover.ITopicNotInterestedHost;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.nvplayer.delegate.DiscoverModuleVideoListDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.paging.source.DataSource;
import com.narvii.paging.source.DataSourceInterceptor;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.storage.PageOperationCallback;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryHelper;
import com.narvii.story.StoryListFragment;
import com.narvii.story.StoryListVisibleChangeListener;
import com.narvii.story.base.StoryListAdapter;
import com.narvii.story.widgets.StoryCardView;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.TopicRelatedDiscoverFragment;
import com.narvii.topic.TopicTabFragmentKt;
import com.narvii.topic.model.ModuleItemCountHost;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.topic.model.discover.SerialRequestChild;
import com.narvii.topic.model.discover.SerialRequestHelper;
import com.narvii.topic.model.discover.SerialRequestParent;
import com.narvii.topic.model.discover.SubRequestHost;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: GeneralStoryCardAdapter.kt */
/* loaded from: classes3.dex */
public class GeneralStoryCardAdapter extends StoryListAdapter implements ModuleItemCountHost, SerialRequestChild, SubRequestHost, NotificationListener, ITopicNotInterestedHost {
    public static final Companion Companion = new Companion(null);
    private static final int DAY_TIME = 86400000;
    private static final int MAX_SIZE = 4;
    private static final int MAX_WIDGET_DISPLAY_INTERVAL = 7;
    private static final int MIN_POLL_QUIZ_COUNT = 5;
    private final SerialRequestHelper childHelper;
    private final NVContext ctx;
    private boolean firstSendRequest;
    private boolean hide;
    private final boolean inModuleList;
    private final ContentModule module;
    private final ModuleDisplayConfig moduleDisplayConfig;

    public boolean forceShowLoading() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GeneralStoryCardAdapter(NVContext ctx, ContentModule module, ModuleDisplayConfig moduleDisplayConfig, boolean z) {
        super(ctx);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(module, "module");
        this.ctx = ctx;
        this.module = module;
        this.moduleDisplayConfig = moduleDisplayConfig;
        this.inModuleList = z;
        this.firstSendRequest = true;
        this.childHelper = new SerialRequestHelper(this, this);
    }

    public /* synthetic */ GeneralStoryCardAdapter(NVContext nVContext, ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(nVContext, contentModule, (i & 4) != 0 ? null : moduleDisplayConfig, (i & 8) != 0 ? false : z);
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final boolean getInModuleList() {
        return this.inModuleList;
    }

    @Override // com.narvii.story.base.StoryListAdapter
    public ApiRequest createApiRequest() {
        ApiRequest.Builder requestFromModule;
        if (this.childHelper.isReadyToRequest() && (requestFromModule = this.module.getRequestFromModule()) != null) {
            return requestFromModule.build();
        }
        return null;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        addImpressionCollector(new ModuleDivideColumnIPC(Blog.class, this.module));
    }

    @Override // com.narvii.story.base.StoryListAdapter
    public int itemCellLayoutId() {
        int iHashCode;
        ModuleDisplayConfig moduleDisplayConfig = this.moduleDisplayConfig;
        if (moduleDisplayConfig != null && moduleDisplayConfig.isPagingLoad) {
            return R.layout.item_cell_story_with_author;
        }
        String displayStyle = this.module.getDisplayStyle();
        return (displayStyle != null && ((iHashCode = displayStyle.hashCode()) == -1681038202 ? displayStyle.equals(ContentModule.STYLE_POLL_STORY_CARD) : iHashCode == 1439720112 && displayStyle.equals(ContentModule.STYLE_QUIZ_STORY_CARD))) ? R.layout.item_cell_pollquiz_story_module_related : R.layout.item_cell_general_story_module_related;
    }

    @Override // com.narvii.story.base.StoryListAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    public String getAreaName() {
        if (this.inModuleList) {
            String str = this.module.moduleType;
            Intrinsics.checkExpressionValueIsNotNull(str, "module.moduleType");
            return str;
        }
        return super.getAreaName();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
    public boolean autoLoadNextPage() {
        ModuleDisplayConfig moduleDisplayConfig = this.moduleDisplayConfig;
        return moduleDisplayConfig != null && moduleDisplayConfig.isPagingLoad;
    }

    @Override // com.narvii.story.base.StoryListAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.hide) {
            return 0;
        }
        ModuleDisplayConfig moduleDisplayConfig = this.moduleDisplayConfig;
        if (moduleDisplayConfig != null && moduleDisplayConfig.isPagingLoad) {
            return super.getItemCount();
        }
        if (getErrorMessage() != null) {
            return 0;
        }
        return Math.min(super.getItemCount(), 4);
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected boolean showPageLoadingStatus() {
        ModuleDisplayConfig moduleDisplayConfig = this.moduleDisplayConfig;
        if (moduleDisplayConfig != null && moduleDisplayConfig.isPagingLoad && this.childHelper.isRequestFinished()) {
            return super.showPageLoadingStatus();
        }
        return false;
    }

    @Override // com.narvii.story.base.StoryListAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected void onBindItemViewHolder(RecyclerView.ViewHolder holder, int i) {
        TextView quizPollText;
        ImageView pollTagView;
        ImageView quizTagView;
        TextView quizPollText2;
        ImageView pollTagView2;
        ImageView quizTagView2;
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        super.onBindItemViewHolder(holder, i);
        Blog item = getItem(i);
        if (item == null || !(holder instanceof StoryListAdapter.StoryItemViewHolder)) {
            return;
        }
        StoryListAdapter.StoryItemViewHolder storyItemViewHolder = (StoryListAdapter.StoryItemViewHolder) holder;
        if (storyItemViewHolder.getStoryCardView() != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Date date = item.modifiedTime;
            Intrinsics.checkExpressionValueIsNotNull(date, "story.modifiedTime");
            long time = (jCurrentTimeMillis - date.getTime()) / 86400000;
            if (Intrinsics.areEqual(this.module.getDisplayStyle(), ContentModule.STYLE_POLL_STORY_CARD)) {
                StoryCardView storyCardView = storyItemViewHolder.getStoryCardView();
                if (storyCardView != null && (quizTagView2 = storyCardView.getQuizTagView()) != null) {
                    quizTagView2.setVisibility(4);
                }
                StoryCardView storyCardView2 = storyItemViewHolder.getStoryCardView();
                if (storyCardView2 != null && (pollTagView2 = storyCardView2.getPollTagView()) != null) {
                    pollTagView2.setVisibility(0);
                }
                StoryCardView storyCardView3 = storyItemViewHolder.getStoryCardView();
                if (storyCardView3 != null && (quizPollText2 = storyCardView3.getQuizPollText()) != null) {
                    if (item.totalPollVoteCount >= 5) {
                        quizPollText2.setText(getContext().getString(R.string.poll_vote_count, Integer.valueOf(item.totalPollVoteCount)));
                        quizPollText2.setVisibility(0);
                    } else if (time <= item.widgetDisplayInterval) {
                        quizPollText2.setText(getContext().getString(R.string.new_poll));
                        quizPollText2.setVisibility(0);
                    } else {
                        quizPollText2.setText("");
                        quizPollText2.setVisibility(4);
                    }
                }
            } else if (Intrinsics.areEqual(this.module.getDisplayStyle(), ContentModule.STYLE_QUIZ_STORY_CARD)) {
                StoryCardView storyCardView4 = storyItemViewHolder.getStoryCardView();
                if (storyCardView4 != null && (quizTagView = storyCardView4.getQuizTagView()) != null) {
                    quizTagView.setVisibility(0);
                }
                StoryCardView storyCardView5 = storyItemViewHolder.getStoryCardView();
                if (storyCardView5 != null && (pollTagView = storyCardView5.getPollTagView()) != null) {
                    pollTagView.setVisibility(4);
                }
                StoryCardView storyCardView6 = storyItemViewHolder.getStoryCardView();
                if (storyCardView6 != null && (quizPollText = storyCardView6.getQuizPollText()) != null) {
                    if (item.totalQuizPlayCount >= 5) {
                        quizPollText.setText(getContext().getString(R.string.quiz_play_count, Integer.valueOf(item.totalQuizPlayCount)));
                        quizPollText.setVisibility(0);
                    } else if (time <= item.widgetDisplayInterval) {
                        quizPollText.setText(getContext().getString(R.string.new_quiz));
                        quizPollText.setVisibility(0);
                    } else {
                        quizPollText.setText("");
                        quizPollText.setVisibility(4);
                    }
                }
            }
            NVVideoListDelegate.markVideoCell((View) storyItemViewHolder.getStoryCardView(), R.id.img, item.isContentAccessible() ? item.getPreviewVideoList(false) : new ArrayList<>(), (item.getFeedPreviewMediaList() == null || item.getFeedPreviewMediaList().size() <= 0) ? null : item.getFeedPreviewMediaList().get(0), (NVObject) item, 1, false);
        }
    }

    public String getPlayerType() {
        NVContext nVContext = this.context;
        if (nVContext instanceof TopicRelatedDiscoverFragment) {
            return StoryApi.TOPIC_PLAYER;
        }
        boolean z = nVContext instanceof DiscoverFragment;
        return StoryApi.DISCOVER_PLAYER;
    }

    public Integer getTopicId() {
        NVContext nVContext = this.context;
        if (nVContext instanceof TopicRelatedDiscoverFragment) {
            return Integer.valueOf(((TopicRelatedDiscoverFragment) nVContext).getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID));
        }
        return -1;
    }

    @Override // com.narvii.story.base.StoryListAdapter
    public void openStoryDetailPage(View view, Blog blog, Community community, User user) {
        StoryHelper storyHelper = new StoryHelper(this);
        View viewFindViewById = view != null ? view.findViewById(R.id.img) : null;
        NVContext nVContext = this.ctx;
        if ((nVContext instanceof DiscoverFragment) && (((DiscoverFragment) nVContext).getParentFragment() instanceof DiscoverTabFragment)) {
            ComponentCallbacks parentFragment = ((DiscoverFragment) this.ctx).getParentFragment();
            if (parentFragment != null) {
                DiscoverTabFragment discoverTabFragment = (DiscoverTabFragment) parentFragment;
                discoverTabFragment.updateMasterBottomBar(true);
                StoryHelper storyHelper2 = new StoryHelper(this);
                setDataSourceInterceptor(blog);
                storyHelper2.openStoryDetailInCurActivity(discoverTabFragment.getChildFragmentManager(), this.dataSource, blog, community, user, view, R.id.story_list_frame, ((DiscoverFragment) this.ctx).isRootFragment(), (StoryListVisibleChangeListener) parentFragment).setBottomSheetLayout(((DiscoverFragment) this.ctx).getBottomLayout());
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.master.home.discover.DiscoverTabFragment");
        }
        if (this.ctx.getContext() instanceof NVActivity) {
            setDataSourceInterceptor(blog);
            Context context = this.ctx.getContext();
            if (context == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVActivity");
            }
            FragmentManager supportFragmentManager = ((NVActivity) context).getSupportFragmentManager();
            DataSource dataSource = this.dataSource;
            NVContext nVContext2 = this.ctx;
            storyHelper.openStoryDetailInCurActivity(supportFragmentManager, dataSource, blog, community, user, viewFindViewById, android.R.id.content, true, nVContext2 instanceof StoryListVisibleChangeListener ? (StoryListVisibleChangeListener) nVContext2 : null);
            return;
        }
        new StoryHelper(this.context).openStoryDetailPageInAnotherActivity(view, new StoryListFragment.IntentBuilder(blog).initFeedCommunity(community).topicId(0).source(StoryApi.DISCOVER_PLAYER).initFeedUser(user).build());
    }

    private final void setDataSourceInterceptor(final Blog blog) {
        PageOperationCallback pageOperationCallback = this.dataSource;
        if (pageOperationCallback instanceof PageDataSource) {
            if (pageOperationCallback == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.paging.source.PageDataSource<*, *>");
            }
            ((PageDataSource) pageOperationCallback).setDataSourceInterceptor(new DataSourceInterceptor() { // from class: com.narvii.master.home.discover.adapter.GeneralStoryCardAdapter.setDataSourceInterceptor.1
                @Override // com.narvii.paging.source.DataSourceInterceptor
                public ApiRequest getInterceptedRequest(ApiRequest apiRequest) {
                    if ((apiRequest != null ? apiRequest.url() : null) == null) {
                        return apiRequest;
                    }
                    String playerType = GeneralStoryCardAdapter.this.getPlayerType();
                    if (playerType == null || playerType.length() == 0) {
                        return apiRequest;
                    }
                    Matcher matcher = Pattern.compile("(type=.*?)(&|\\$)").matcher(apiRequest.url());
                    if (!matcher.find()) {
                        return apiRequest;
                    }
                    String g0 = matcher.group(1);
                    String tUrl = apiRequest.url();
                    Intrinsics.checkExpressionValueIsNotNull(tUrl, "tUrl");
                    Intrinsics.checkExpressionValueIsNotNull(g0, "g0");
                    String strReplace$default = StringsKt__StringsJVMKt.replace$default(tUrl, g0, "type=" + GeneralStoryCardAdapter.this.getPlayerType(), false, 4, null);
                    ApiRequest.Builder builder = new ApiRequest.Builder();
                    builder._url(strReplace$default);
                    Blog blog2 = blog;
                    String strId = blog2 != null ? blog2.id() : null;
                    if (!(strId == null || strId.length() == 0)) {
                        Blog blog3 = blog;
                        builder.param("refererObjectId", blog3 != null ? blog3.id() : null);
                    }
                    Integer topicId = GeneralStoryCardAdapter.this.getTopicId();
                    if (topicId == null || topicId.intValue() != -1) {
                        builder.param("refererTopicId", GeneralStoryCardAdapter.this.getTopicId());
                    }
                    return builder.build();
                }
            });
        }
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public Blog getItem(int i) {
        Blog blog = (Blog) super.getItem(i);
        if (blog != null) {
            this.childHelper.setItemShown();
        }
        return blog;
    }

    @Override // com.narvii.story.base.StoryListAdapter, com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (Intrinsics.areEqual(notification != null ? notification.action : null, "delete")) {
            Object obj = notification.obj;
            if (obj instanceof ContentModule) {
                if (obj != null) {
                    if (!Utils.isEqualsNotNull(((ContentModule) obj).getInterestId(), this.module.getInterestId())) {
                        Object obj2 = notification.obj;
                        if (obj2 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.topic.model.discover.ContentModule");
                        }
                        if (!Utils.isEqualsNotNull(Integer.valueOf(((ContentModule) obj2).getTopicId()), Integer.valueOf(this.module.getTopicId()))) {
                            return;
                        }
                    }
                    int itemCount = getItemCount();
                    this.hide = true;
                    NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.parentAdapter;
                    NVRecyclerViewBaseAdapter parentAdapter = nVRecyclerViewBaseAdapter != null ? nVRecyclerViewBaseAdapter.getParentAdapter() : null;
                    if (parentAdapter instanceof RecyclerViewMergeAdapter) {
                        notifyItemRangeRemoved(((RecyclerViewMergeAdapter) parentAdapter).getAdapterRealPos(this), itemCount);
                        return;
                    }
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.topic.model.discover.ContentModule");
            }
        }
        super.onNotification(notification);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.source.DataSourceRefreshListener
    public void onRefreshFinishedBeforePageResponse(int i) {
        ModuleDisplayConfig moduleDisplayConfig;
        super.onRefreshFinishedBeforePageResponse(i);
        NVContext nVContext = this.ctx;
        if ((nVContext instanceof NVRecyclerViewFragment) && (moduleDisplayConfig = this.moduleDisplayConfig) != null && moduleDisplayConfig.isTopStoryModule && (((NVRecyclerViewFragment) nVContext).getVideoListDelegate() instanceof DiscoverModuleVideoListDelegate)) {
            NVContext nVContext2 = this.ctx;
            if (((NVRecyclerViewFragment) nVContext2).videoAutoPlay) {
                IVideoListDelegate videoListDelegate = ((NVRecyclerViewFragment) nVContext2).getVideoListDelegate();
                if (videoListDelegate == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.nvplayer.delegate.DiscoverModuleVideoListDelegate");
                }
                ((DiscoverModuleVideoListDelegate) videoListDelegate).forceRefresh();
            }
        }
    }

    @Override // com.narvii.master.home.discover.ITopicNotInterestedHost
    public boolean notInterested() {
        return this.hide;
    }

    /* compiled from: GeneralStoryCardAdapter.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.topic.model.ModuleItemCountHost
    public int allItemCount() {
        return getAllItemCount();
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void resetEmptyList() {
        super.resetEmptyList();
        this.childHelper.resetSerialRequestChild();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void resetList() {
        super.resetList();
        this.childHelper.resetSerialRequestChild();
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        super.refresh(i | 1 | 2, pageRequestCallback);
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isSubRequestFinish() {
        return this.childHelper.isRequestFinished();
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public int geSubResponseSize() {
        return this.dataSource.getSize();
    }

    @Override // com.narvii.topic.model.discover.SubRequestHost
    public boolean isEnd() {
        ModuleDisplayConfig moduleDisplayConfig = this.moduleDisplayConfig;
        return (moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) ? isSubRequestFinish() : isRequestEnd();
    }

    @Override // com.narvii.story.base.StoryListAdapter
    public void setFirstPageRequestFinished() {
        IVideoListDelegate videoListDelegate;
        super.setFirstPageRequestFinished();
        this.childHelper.setRequestFinished(this.module);
        NVContext nVContext = this.ctx;
        if ((nVContext instanceof NVRecyclerViewFragment) && this.firstSendRequest && (videoListDelegate = ((NVRecyclerViewFragment) nVContext).getVideoListDelegate()) != null && videoListDelegate.getPlayerPos() == -1) {
            resetVideoView();
        }
        this.firstSendRequest = false;
    }

    public final SerialRequestHelper getChildHelper() {
        return this.childHelper;
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void setSerialRequestParent(SerialRequestParent serialRequestParent) {
        Intrinsics.checkParameterIsNotNull(serialRequestParent, "serialRequestParent");
        this.childHelper.setSerialRequestParent(serialRequestParent);
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isRequestFinished() {
        return this.childHelper.isRequestFinished();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isReadyToRequest() {
        Log.d("SerialRequest", "check ready " + this.module.dataUrl);
        return this.childHelper.isReadyToRequest();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public void requestDataWhenReady() {
        this.childHelper.requestDataWhenReady();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public boolean isVisibleToUser() {
        return !TextUtils.isEmpty(getErrorMessage()) || this.childHelper.isItemShown();
    }

    @Override // com.narvii.topic.model.discover.SerialRequestChild
    public int responseSize() {
        return this.dataSource.getSize();
    }

    private final void resetVideoView() {
        NVContext nVContext = this.ctx;
        if ((nVContext instanceof NVRecyclerViewFragment) && ((NVRecyclerViewFragment) nVContext).isActive()) {
            IVideoListDelegate videoListDelegate = ((NVRecyclerViewFragment) this.ctx).getVideoListDelegate();
            if (videoListDelegate != null) {
                videoListDelegate.resetVideoView();
            }
            IVideoListDelegate videoListDelegate2 = ((NVRecyclerViewFragment) this.ctx).getVideoListDelegate();
            if (videoListDelegate2 != null) {
                videoListDelegate2.listViewFirstBecomeVisible();
            }
        }
    }
}
