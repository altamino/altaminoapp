package com.narvii.feed;

import android.app.ActivityOptions;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.comment.CommentHelper;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.feed.FeedHelper;
import com.narvii.feed.quizzes.share.QuizShareFragment;
import com.narvii.feed.vote.VoteAnimationHelper;
import com.narvii.feed.vote.VotePopupDialog;
import com.narvii.feed.vote.VoterListFragment;
import com.narvii.influencer.FanClub;
import com.narvii.influencer.FansOnlyHintDialog;
import com.narvii.influencer.InfluencerHelper;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.model.Blog;
import com.narvii.model.Comment;
import com.narvii.model.ExternalSource;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ListResponse;
import com.narvii.model.api.Pagination;
import com.narvii.model.extension.FeedExtensionKt;
import com.narvii.monetization.store.SuggestUpdateDialog;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoPlayHost;
import com.narvii.nvplayerview.listener.VideoViewClickListener;
import com.narvii.poll.PollOptionListLayout;
import com.narvii.share.BaseShareButtonRepost;
import com.narvii.share.ShareDarkRoomFragment;
import com.narvii.share.ShareDarkRoomHelper;
import com.narvii.share.ShareDialog;
import com.narvii.share.SharePayload;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryHelper;
import com.narvii.story.StoryListFragment;
import com.narvii.story.StoryNotificationStub;
import com.narvii.story.detail.VoteHelper;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.StatisticHelper;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class BaseFeedListAdapter<T extends Feed, E extends ListResponse<? extends T>> extends NVPagedAdapter<T, E> implements NotificationListener, NVActivity.DispatchTouchEventListener {
    private static final int EXTERNAL_POST_IMAGE_THRESHOLD = 2;
    private static final int TYPE_BLOG = 0;
    private static final int TYPE_DISABLE = 12;
    private static final int TYPE_DISABLE_REF_OBJECT = 23;
    private static final int TYPE_EXTERNAL_POST_LESS_IMAGE = 16;
    private static final int TYPE_EXTERNAL_POST_NORMAL = 17;
    private static final int TYPE_EXTERNAL_POST_NO_IMAGE = 15;
    private static final int TYPE_EXTERNAL_POST_PROMOTED = 14;
    private static final int TYPE_IMAGE = 13;
    private static final int TYPE_ITEM = 1;
    private static final int TYPE_LINK = 2;
    private static final int TYPE_POLL = 5;
    private static final int TYPE_QUIZ = 4;
    private static final int TYPE_REPOST_BLOG = 6;
    private static final int TYPE_REPOST_EXTERNAL = 18;
    private static final int TYPE_REPOST_IMAGE = 19;
    private static final int TYPE_REPOST_ITEM = 7;
    private static final int TYPE_REPOST_NULL = 11;
    private static final int TYPE_REPOST_POLL = 10;
    private static final int TYPE_REPOST_QUIZ = 9;
    private static final int TYPE_REPOST_STORY = 21;
    private static final int TYPE_REPOST_TOPIC = 8;
    private static final int TYPE_STORY = 20;
    private static final int TYPE_TOPIC = 3;
    private static final int TYPE_UNKNOWN = 22;
    AccountService account;
    private List<String> apiRequestList;
    private List<String> apiRequestTimeStamp;
    private User curUser;
    boolean isLoadingQuiz;
    View loadingQuizView;
    public LoggingOrigin loggingOrigin;
    public LoggingSource loggingSource;
    private List<String> pageTokenList;
    protected HashSet<String> progressList;
    private PushNotificationHelper pushNotificationHelper;
    private List<Integer> responseSizeList;
    public String shareSource;
    public String source;
    VideoViewClickListener videoViewClickListener;
    Callback voteCallback;
    protected View voteIconView;

    protected boolean allowShowDisable() {
        return false;
    }

    protected boolean fromQuizFeedList() {
        return false;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "FeedsList";
    }

    protected int getFeedBlogLayout() {
        return R.layout.feed_blog_item;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 24;
    }

    protected boolean ignoreExtension() {
        return false;
    }

    protected void onFeedQuizStarted(Blog blog) {
    }

    protected void onVoteSuccess(Feed feed, int i) {
    }

    protected boolean shouldFilterFeatureFeed() {
        return false;
    }

    protected boolean showAllLike() {
        return false;
    }

    protected boolean showCommentBarInStoryDetail() {
        return true;
    }

    protected boolean showRepostOnShare() {
        return true;
    }

    protected boolean showSearchBarInStoryDetail() {
        return false;
    }

    protected boolean useDefaultImpressionCollector() {
        return true;
    }

    public BaseFeedListAdapter(NVContext nVContext) {
        super(nVContext);
        this.pageTokenList = new ArrayList();
        this.apiRequestList = new ArrayList();
        this.apiRequestTimeStamp = new ArrayList();
        this.responseSizeList = new ArrayList();
        this.shareSource = "Feed";
        this.loggingSource = LoggingSource.FeedList;
        this.voteCallback = new Callback() { // from class: com.narvii.feed.BaseFeedListAdapter.1
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if (obj instanceof Blog) {
                    BaseFeedListAdapter.this.logClickEvent(obj, ActSemantic.vote);
                }
            }
        };
        this.videoViewClickListener = new VideoViewClickListener() { // from class: com.narvii.feed.BaseFeedListAdapter.2
            @Override // com.narvii.nvplayerview.listener.VideoViewClickListener
            public void onVideoViewClicked(Media media, NVObject nVObject) {
                NVVideoView videoView = ((NVAdapter) BaseFeedListAdapter.this).context instanceof NVVideoPlayHost ? ((NVVideoPlayHost) ((NVAdapter) BaseFeedListAdapter.this).context).getVideoDelegate().getVideoView() : null;
                Blog blog = (Blog) nVObject;
                Intent storyDetailPageIntent = BaseFeedListAdapter.this.getStoryDetailPageIntent(blog);
                BaseFeedListAdapter.this.logFeedClickEvent(blog);
                if (videoView != null && Build.VERSION.SDK_INT >= 23 && (((NVAdapter) BaseFeedListAdapter.this).context instanceof NVFragment)) {
                    FragmentActivity activity = ((NVFragment) ((NVAdapter) BaseFeedListAdapter.this).context).getActivity();
                    ActivityOptions activityOptionsMakeSceneTransitionAnimation = ActivityOptions.makeSceneTransitionAnimation(activity, (View) videoView.getRenderView(), "renderView");
                    if (activity != null) {
                        activity.startActivity(storyDetailPageIntent, activityOptionsMakeSceneTransitionAnimation.toBundle());
                        return;
                    } else {
                        BaseFeedListAdapter.this.startActivity(storyDetailPageIntent);
                        return;
                    }
                }
                BaseFeedListAdapter.this.startActivity(storyDetailPageIntent);
            }

            @Override // com.narvii.nvplayerview.listener.VideoViewClickListener
            public boolean interceptClickEvent(NVObject nVObject) {
                return (nVObject instanceof Blog) && ((Blog) nVObject).type == 9;
            }
        };
        this.account = (AccountService) getService("account");
        this.curUser = this.account.getUserProfile();
        if (getContext() instanceof NVActivity) {
            ((NVActivity) getContext()).addDispatchTouchEventListener(this);
        }
        if (nVContext instanceof NVVideoPlayHost) {
            IVideoListDelegate videoDelegate = ((NVVideoPlayHost) nVContext).getVideoDelegate();
            if (videoDelegate instanceof NVVideoListDelegate) {
                ((NVVideoListDelegate) videoDelegate).setVideoViewClickListener(this.videoViewClickListener);
            }
        }
        this.pushNotificationHelper = new PushNotificationHelper(nVContext);
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        if (useDefaultImpressionCollector()) {
            addImpressionCollector(new LinearImpressionCollector(Feed.class));
        }
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public Object getItem(int i) {
        Feed feed;
        Object item = super.getItem(i);
        if (item instanceof Blog) {
            Blog blog = (Blog) item;
            if (blog.type == 1 && (feed = blog.refObject) != null) {
                return feed;
            }
        }
        return item;
    }

    @Override // com.narvii.app.NVActivity.DispatchTouchEventListener
    public void onDispatchTouchEvent() {
        if (this.isLoadingQuiz) {
            View view = this.loadingQuizView;
            if (view != null) {
                resetStartQuizView(view);
            }
            setLoadingQuizView(null);
        }
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        Feed feed = (Feed) obj;
        if (feed.isiModeDisableForUser(null)) {
            return 12;
        }
        if (!allowShowDisable() && feed.isDisabled()) {
            return 12;
        }
        if (!(feed instanceof Blog)) {
            return feed instanceof Item ? 1 : 22;
        }
        Blog blog = (Blog) feed;
        int i = blog.type;
        if (i == 0) {
            return 0;
        }
        if (i == 9) {
            return 20;
        }
        if (i == 1 && (blog.refObject instanceof Item)) {
            return 1;
        }
        int i2 = blog.type;
        if (i2 != 2) {
            if (i2 == 3) {
                return 3;
            }
            if (i2 == 4) {
                return 5;
            }
            if (i2 == 5) {
                return blog.extensions != null ? 2 : 0;
            }
            if (i2 == 6) {
                return 4;
            }
            if (i2 == 7) {
                return 13;
            }
            if (i2 != 8) {
                return 22;
            }
            int size = CollectionUtils.getSize(blog.mediaList);
            boolean zIsEmpty = TextUtils.isEmpty(blog.title());
            if (size == 0) {
                return 15;
            }
            return (size > 2 || zIsEmpty) ? 17 : 16;
        }
        Feed feed2 = blog.refObject;
        if (!(feed2 instanceof Blog)) {
            return feed2 instanceof Item ? 7 : 11;
        }
        Blog blog2 = (Blog) feed2;
        if (feed2.isDisabled()) {
            return 23;
        }
        int i3 = blog2.type;
        if (i3 == 3) {
            return 8;
        }
        if (i3 == 6) {
            return 9;
        }
        if (i3 == 4) {
            return 10;
        }
        if (i3 == 8) {
            return 18;
        }
        if (i3 == 7) {
            return 19;
        }
        return i3 == 9 ? 21 : 6;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        int feedBlogLayout;
        FeedListItem feedListItem;
        View viewFindViewById;
        Feed feed = (Feed) obj;
        int itemType = getItemType(obj);
        boolean z = false;
        if (view != null) {
            if (!(view instanceof FeedListItem)) {
                return view;
            }
            feedListItem = (FeedListItem) view;
        } else {
            switch (itemType) {
                case 0:
                    feedBlogLayout = getFeedBlogLayout();
                    break;
                case 1:
                    feedBlogLayout = R.layout.feed_item_item;
                    break;
                case 2:
                    feedBlogLayout = R.layout.feed_link_post_item;
                    break;
                case 3:
                    feedBlogLayout = R.layout.feed_topic_item;
                    break;
                case 4:
                    feedBlogLayout = R.layout.feed_quiz_item;
                    break;
                case 5:
                    feedBlogLayout = R.layout.feed_poll_item;
                    break;
                case 6:
                    feedBlogLayout = R.layout.feed_repost_blog_item;
                    break;
                case 7:
                    feedBlogLayout = R.layout.feed_repost_item_item;
                    break;
                case 8:
                    feedBlogLayout = R.layout.feed_repost_topic_item;
                    break;
                case 9:
                    feedBlogLayout = R.layout.feed_repost_quiz_item;
                    break;
                case 10:
                    feedBlogLayout = R.layout.feed_repost_poll_item;
                    break;
                case 11:
                    feedBlogLayout = R.layout.feed_repost_null_item;
                    break;
                case 12:
                    feedBlogLayout = R.layout.feed_imod_disable;
                    break;
                case 13:
                    feedBlogLayout = R.layout.feed_image_item;
                    break;
                case 14:
                    feedBlogLayout = R.layout.feed_blog_external_promoted;
                    break;
                case 15:
                    feedBlogLayout = R.layout.feed_blog_external_no_image;
                    break;
                case 16:
                    feedBlogLayout = R.layout.feed_blog_external_less_image;
                    break;
                case 17:
                    feedBlogLayout = R.layout.feed_blog_external_normal;
                    break;
                case 18:
                    feedBlogLayout = R.layout.feed_repost_external_post_item;
                    break;
                case 19:
                    feedBlogLayout = R.layout.feed_repost_image_item;
                    break;
                case 20:
                    feedBlogLayout = R.layout.feed_story_item;
                    break;
                case 21:
                    feedBlogLayout = R.layout.feed_repost_story_item;
                    break;
                case 22:
                    feedBlogLayout = R.layout.feed_blog_unknown;
                    break;
                case 23:
                    feedBlogLayout = R.layout.feed_disable_ref_object;
                    break;
                default:
                    return createErrorItem(viewGroup, null, "ERR");
            }
            feedListItem = (FeedListItem) this.inflater.inflate(feedBlogLayout, viewGroup, false);
            feedListItem.setStatSource(this.source, this.loggingSource, this.loggingOrigin);
            View viewFindViewById2 = feedListItem.findViewById(R.id.user_click);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setOnClickListener(this.subviewClickListener);
            }
            View viewFindViewById3 = feedListItem.findViewById(R.id.feed_toolbar_vote);
            if (viewFindViewById3 != null) {
                viewFindViewById3.setOnClickListener(this.subviewClickListener);
                viewFindViewById3.setOnLongClickListener(this.subviewLongClickListener);
            }
            View viewFindViewById4 = feedListItem.findViewById(R.id.feed_toolbar_comment);
            if (viewFindViewById4 != null) {
                viewFindViewById4.setOnClickListener(this.subviewClickListener);
            }
            View viewFindViewById5 = feedListItem.findViewById(R.id.feed_toolbar_share);
            if (viewFindViewById5 != null) {
                viewFindViewById5.setOnClickListener(this.subviewClickListener);
            }
            View viewFindViewById6 = feedListItem.findViewById(R.id.feed_external_toolbar_more);
            if (viewFindViewById6 != null) {
                viewFindViewById6.setOnClickListener(this.subviewClickListener);
            }
            View viewFindViewById7 = feedListItem.findViewById(R.id.start_quiz);
            if (viewFindViewById7 != null) {
                viewFindViewById7.setOnClickListener(this.subviewClickListener);
            }
            if (itemType == 20 && (viewFindViewById = feedListItem.findViewById(R.id.image)) != null) {
                viewFindViewById.setOnClickListener(this.subviewClickListener);
            }
        }
        PollOptionListLayout pollOptionListLayout = feedListItem.polloptList;
        if (pollOptionListLayout != null) {
            pollOptionListLayout.setVoteCallback(this.voteCallback);
        }
        View viewFindViewById8 = feedListItem.findViewById(R.id.start_quiz);
        if (viewFindViewById8 != null) {
            resetStartQuizView(viewFindViewById8);
        }
        if (itemType == 22) {
            feedListItem.setUnknownFeed(feed);
        } else if (itemType == 12) {
            feedListItem.setDisabledFeed(feed);
        } else {
            feedListItem.setFeed(feed);
        }
        int i = (itemType == 5 || itemType == 4) ? 0 : R.id.image;
        List<Media> feedPreviewMediaList = feed.getFeedPreviewMediaList();
        boolean z2 = feed.isContentAccessible() && feedPreviewMediaList != null && feedPreviewMediaList.size() == 1;
        List<Media> previewVideoList = z2 ? feed.getPreviewVideoList(false) : Collections.emptyList();
        List<Media> listEmptyList = (NVApplication.CLIENT_TYPE == 101 && z2 && previewVideoList.size() > 0 && previewVideoList.get(0).isVideo() && previewVideoList.get(0).type == 103) ? Collections.emptyList() : previewVideoList;
        boolean z3 = feed instanceof Blog;
        NVVideoListDelegate.markVideoCell(feedListItem, i, listEmptyList, (feed.getFeedPreviewMediaList() == null || feed.getFeedPreviewMediaList().size() <= 0) ? null : feed.getFeedPreviewMediaList().get(0), feed, 0, (z3 && ((Blog) feed).type == 9) ? false : true);
        HashSet<String> hashSet = this.progressList;
        feedListItem.setProgress(hashSet != null && hashSet.contains(feed.id()));
        if (z3 && ((Blog) feed).type == 8) {
            z = true;
        }
        feedListItem.setDarkTheme(this.darkTheme, z, this.backgroundColor);
        return feedListItem;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetStartQuizView(View view) {
        if (view == null) {
            return;
        }
        view.findViewById(R.id.start_quiz_icon).setVisibility(0);
        view.findViewById(R.id.start_quiz_text).setVisibility(0);
        view.findViewById(R.id.start_quiz_loading).setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLoadingQuizView(View view) {
        if (view == null) {
            this.isLoadingQuiz = false;
            this.loadingQuizView = null;
        } else {
            this.loadingQuizView = view;
            this.isLoadingQuiz = true;
        }
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        ExternalSource externalSource;
        if (obj instanceof Feed) {
            Feed feed = (Feed) obj;
            if (view2 == null) {
                AccountService accountService = (AccountService) getService("account");
                if (feed.isiModeDisableForUser(accountService != null ? accountService.getUserProfile() : null)) {
                    final AlertDialog alertDialog = new AlertDialog(getContext());
                    View viewInflate = this.inflater.inflate(R.layout.feed_disable_by_imod_layout, (ViewGroup) null);
                    if (viewInflate.findViewById(R.id.action) != null) {
                        viewInflate.findViewById(R.id.action).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.feed.BaseFeedListAdapter.3
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view3) {
                                alertDialog.dismiss();
                            }
                        });
                    }
                    alertDialog.setContentView(viewInflate);
                    alertDialog.show();
                } else if (getItemType(feed) == 22 || ((feed instanceof Blog) && !((Blog) feed).isknownType())) {
                    new SuggestUpdateDialog(this.context, R.string.app_upgrade_check_detail).show();
                } else {
                    logFeedClickEvent(feed);
                    openFeedDetail(feed, i);
                }
                return true;
            }
            if (view2.getId() == R.id.user_click) {
                if (feed instanceof Blog) {
                    Blog blog = (Blog) feed;
                    if (blog.type == 8 && (externalSource = blog.externalSource) != null) {
                        if (externalSource.isNotAvaileable()) {
                            new FeedHelper(this).showExternalSourceNotAvailable();
                            return true;
                        }
                        logFeedClickEvent(feed);
                        Intent intent = FragmentWrapperActivity.intent(ExternalPostListFragment.class);
                        intent.putExtra(ExternalPostListFragment.KEY_EXTERNAL_SOURCE, JacksonUtils.writeAsString(externalSource));
                        intent.putExtra(ExternalPostListFragment.KEY_SOURCE_ORIGIN_ID, externalSource.sourceId);
                        startActivity(intent);
                        return true;
                    }
                }
                Intent intent2 = UserProfileFragment.intent(this, feed.author);
                if (intent2 == null) {
                    return true;
                }
                intent2.putExtra("Source", "Feed");
                startActivity(intent2);
                return true;
            }
            if (view2.getId() == R.id.feed_toolbar_vote) {
                this.voteIconView = view2.findViewById(R.id.feed_toolbar_vote_icon);
                Intent intent3 = new Intent(StoryNotificationStub.ACTION_VOTE);
                intent3.putExtra(CommentListFragment.COMMENT_KEY_FEED, JacksonUtils.writeAsString(feed));
                ensureLogin(intent3);
                return true;
            }
            if (view2.getId() == R.id.feed_toolbar_comment) {
                if (feed.needHidden) {
                    FansOnlyHintDialog.showFansOnlyHintDialog(this.context, feed, this.source);
                    return true;
                }
                logClickEvent(feed, ActSemantic.checkComment);
                comment(feed);
                return true;
            }
            if (view2.getId() == R.id.feed_toolbar_share) {
                logClickEvent(feed, ActSemantic.share);
                share(feed);
                return true;
            }
            if (view2.getId() == R.id.feed_external_toolbar_more) {
                showMore(feed);
                return true;
            }
            if (view2.getId() == R.id.start_quiz) {
                final Blog blog2 = (Blog) feed;
                Feed feed2 = blog2.refObject;
                if (feed2 instanceof Blog) {
                    blog2 = (Blog) feed2;
                }
                logClickEvent(blog2, ActSemantic.quizStart);
                if (new InfluencerHelper(this.context).checkNeedShowFansOnlyHintDialog(blog2, this.source)) {
                    return true;
                }
                FeedHelper feedHelper = new FeedHelper(this);
                feedHelper.source("Feed");
                feedHelper.showProgressWhenLoadingQuiz = false;
                feedHelper.startQuizInterceptor = new FeedHelper.StartQuizInterceptor() { // from class: com.narvii.feed.BaseFeedListAdapter.4
                    @Override // com.narvii.feed.FeedHelper.StartQuizInterceptor
                    public boolean startQuizAfterRequestFinish() {
                        return BaseFeedListAdapter.this.isLoadingQuiz;
                    }
                };
                feedHelper.startQuizListener = new FeedHelper.StartQuizListener() { // from class: com.narvii.feed.BaseFeedListAdapter.5
                    @Override // com.narvii.feed.FeedHelper.StartQuizListener
                    public void onQuizStarted() {
                        BaseFeedListAdapter.this.onFeedQuizStarted(blog2);
                        BaseFeedListAdapter baseFeedListAdapter = BaseFeedListAdapter.this;
                        baseFeedListAdapter.resetStartQuizView(baseFeedListAdapter.loadingQuizView);
                        BaseFeedListAdapter.this.setLoadingQuizView(null);
                    }

                    @Override // com.narvii.feed.FeedHelper.StartQuizListener
                    public void onQuizStartFailed() {
                        BaseFeedListAdapter baseFeedListAdapter = BaseFeedListAdapter.this;
                        baseFeedListAdapter.resetStartQuizView(baseFeedListAdapter.loadingQuizView);
                        BaseFeedListAdapter.this.setLoadingQuizView(null);
                    }
                };
                Intent intentOpenFeedDetailIntent = openFeedDetailIntent(blog2, i);
                if (fromQuizFeedList()) {
                    intentOpenFeedDetailIntent.putExtra("fromQuizFeedList", true);
                }
                if (feedHelper.needLoadingQuizQuestions(blog2)) {
                    view2.findViewById(R.id.start_quiz_icon).setVisibility(8);
                    view2.findViewById(R.id.start_quiz_loading).setVisibility(0);
                    setLoadingQuizView(view2);
                }
                feedHelper.loggingSource = this.loggingSource;
                feedHelper.loggingOrigin = this.loggingOrigin;
                feedHelper.startQuiz(blog2, intentOpenFeedDetailIntent);
                return true;
            }
            if (feed instanceof Blog) {
                Blog blog3 = (Blog) feed;
                if (blog3.type == 9 && view2.getId() == R.id.image) {
                    if (feed.needHidden) {
                        FansOnlyHintDialog.showFansOnlyHintDialog(this.context, feed, this.source);
                        return true;
                    }
                    logFeedClickEvent(feed);
                    new StoryHelper(this.context).openStoryDetailPageInAnotherActivity(view2, getStoryDetailPageIntent(blog3));
                    return true;
                }
            }
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    public Intent getStoryDetailPageIntent(Blog blog) {
        return new StoryListFragment.IntentBuilder(blog).source(StoryApi.COMMUNITY_PLAYER).showCommentBar(showCommentBarInStoryDetail()).forceVideoAutoPlay(true).autoLoadNextPage(true).build();
    }

    protected void logFeedClickEvent(Feed feed) {
        logClickEvent(feed, ActSemantic.checkDetail);
    }

    protected void longClickToVote(final Feed feed, final View view) {
        VotePopupDialog votePopupDialog = new VotePopupDialog(getContext());
        votePopupDialog.setFeed(feed);
        votePopupDialog.setPosition(view);
        votePopupDialog.setVoteListener(new Callback<Integer>() { // from class: com.narvii.feed.BaseFeedListAdapter.6
            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                BaseFeedListAdapter.this.voteIconView = view;
                Intent intent = new Intent(StoryNotificationStub.ACTION_VOTE);
                intent.putExtra(CommentListFragment.COMMENT_KEY_FEED, JacksonUtils.writeAsString(feed));
                intent.putExtra("voteValue", num.intValue());
                BaseFeedListAdapter.this.ensureLogin(intent);
            }
        });
        votePopupDialog.show();
    }

    @Override // com.narvii.list.NVAdapter
    public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (((obj instanceof Blog) || (obj instanceof Item)) && view2 != null && view2.getId() == R.id.feed_toolbar_vote) {
            longClickToVote((Feed) obj, view2.findViewById(R.id.feed_toolbar_vote_icon));
            return true;
        }
        return super.onLongClick(listAdapter, i, obj, view, view2);
    }

    @Override // com.narvii.list.NVAdapter
    protected void onLoginResult(boolean z, Intent intent) {
        if (z && StoryNotificationStub.ACTION_VOTE.equals(intent.getAction())) {
            Feed feed = (Feed) JacksonUtils.readUsing(intent.getStringExtra(CommentListFragment.COMMENT_KEY_FEED), new Feed.FeedDeserializer());
            if (intent.hasExtra("voteValue")) {
                vote(feed, Integer.valueOf(intent.getIntExtra("voteValue", 0)));
                return;
            } else {
                vote(feed, null);
                return;
            }
        }
        super.onLoginResult(z, intent);
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int pageSize() {
        return super.pageSize();
    }

    public void onNotification(Notification notification) {
        String str;
        Feed feed;
        Feed feed2;
        Object obj = notification.obj;
        boolean z = false;
        if (obj instanceof Feed) {
            Feed feed3 = (Feed) obj;
            if (list() != null) {
                Iterator<? extends T> it = rawList().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    T next = it.next();
                    if ((next instanceof Blog) && (feed2 = ((Blog) next).refObject) != null && Utils.isIdEquals(feed2, feed3)) {
                        Blog blogDeserilizeStory = (Blog) next.m46clone();
                        blogDeserilizeStory.refObject = feed3;
                        if (blogDeserilizeStory.type == 9) {
                            blogDeserilizeStory = Blog.deserilizeStory(blogDeserilizeStory);
                            if (blogDeserilizeStory.publishToGlobal == 0) {
                                notification.action = "delete";
                            }
                        }
                        Notification notification2 = new Notification(notification.action, blogDeserilizeStory);
                        notification2.parentId = notification.parentId;
                        notification2.uid = notification.uid;
                        notification = notification2;
                    }
                }
                Iterator<? extends T> it2 = rawList().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    T next2 = it2.next();
                    if (Utils.isIdEquals(feed3, next2)) {
                        Feed feed4 = (Feed) feed3.m46clone();
                        feed4.ndcId = next2.ndcId;
                        notification = new Notification(notification.action, feed4);
                        break;
                    }
                }
            }
            String str2 = notification.action;
            if (str2 == "edit" || str2 == "update" || str2 == "delete") {
                if (ignoreExtension() && notification.action == "update") {
                    Feed feed5 = (Feed) notification.obj;
                    int iIndexOfId = Utils.indexOfId(this._list, feed5.id());
                    if (iIndexOfId >= 0) {
                        feed5.extensions = ((Feed) this._list.get(iIndexOfId)).extensions;
                    }
                }
                editList(notification, false);
            }
        }
        if ((notification.obj instanceof Comment) && ((str = notification.action) == "new" || str == "delete")) {
            boolean z2 = false;
            for (T t : rawList()) {
                if (Utils.isEqualsNotNull(notification.parentId, t.id()) && ((t instanceof Blog) || (t instanceof Item))) {
                    CommentHelper.updateFeedWithComment(t, (Comment) notification.obj, notification.action);
                    z2 = true;
                }
                if ((t instanceof Blog) && (feed = ((Blog) t).refObject) != null && Utils.isEqualsNotNull(notification.parentId, feed.id()) && (feed instanceof Item)) {
                    CommentHelper.updateFeedWithComment(feed, (Comment) notification.obj, notification.action);
                    z2 = true;
                }
            }
            if (z2) {
                notifyDataSetChanged();
            }
        }
        if (notification.obj instanceof FanClub) {
            boolean z3 = false;
            for (T t2 : rawList()) {
                if (Utils.isEqualsNotNull(t2.uid(), ((FanClub) notification.obj).targetUid)) {
                    if (t2 instanceof Feed) {
                        t2.needHidden = !((FanClub) notification.obj).isActive();
                    }
                    z3 = true;
                }
            }
            if (z3) {
                notifyDataSetChanged();
            }
        }
        if ((notification.obj instanceof User) && "update".equals(notification.action)) {
            for (T t3 : rawList()) {
                if (t3 instanceof Feed) {
                    T t4 = t3;
                    if (((User) notification.obj).isSameUser(t4.author)) {
                        t4.author = (User) notification.obj;
                        z = true;
                    }
                }
            }
            if (z) {
                notifyDataSetChanged();
            }
        }
    }

    protected void openFeedDetail(Feed feed, int i) {
        Intent intentOpenFeedDetailIntent = openFeedDetailIntent(feed, i);
        if (fromQuizFeedList()) {
            intentOpenFeedDetailIntent.putExtra("fromQuizFeedList", true);
        }
        startActivity(intentOpenFeedDetailIntent);
    }

    protected Intent openFeedDetailIntent(Feed feed, int i) {
        return new FeedHelper(this).getFeedContinuousIntent(feed, rawList(), pageSize(), this.apiRequestList, this.responseSizeList, this.pageTokenList, this.apiRequestTimeStamp);
    }

    public void vote(final Feed feed, Integer num) {
        if (feed == null) {
            return;
        }
        HashSet<String> hashSet = this.progressList;
        if (hashSet == null || !hashSet.contains(feed.id())) {
            if ((feed instanceof Blog) || (feed instanceof Item)) {
                final int targetVotedValue = VoteHelper.getTargetVotedValue(num, feed, isGlobalInteractionScope());
                if (num == null && targetVotedValue == 0) {
                    ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                    actionSheetDialog.addItem(R.string.unlike, true);
                    if (showAllLike()) {
                        actionSheetDialog.addItem(R.string.comment_all_likes, false);
                    }
                    actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.feed.BaseFeedListAdapter.7
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            if (i == 0) {
                                BaseFeedListAdapter.this.vote(feed, 0);
                            } else if (i == 1) {
                                Intent intent = FragmentWrapperActivity.intent(VoterListFragment.class);
                                intent.putExtra("nvObject", JacksonUtils.writeAsString(feed));
                                BaseFeedListAdapter.this.startActivity(intent);
                            }
                        }
                    });
                    actionSheetDialog.show();
                    return;
                }
                logClickEvent(feed, targetVotedValue == 0 ? ActSemantic.dislike : ActSemantic.like);
                VoteHelper voteHelper = new VoteHelper(this);
                voteHelper.loggingSource = this.loggingSource;
                voteHelper.loggingOrigin = this.loggingOrigin;
                voteHelper.vote(feed, Integer.valueOf(targetVotedValue), new VoteHelper.OnVoteListenerAdapter() { // from class: com.narvii.feed.BaseFeedListAdapter.8
                    @Override // com.narvii.story.detail.VoteHelper.OnVoteListenerAdapter, com.narvii.story.detail.VoteHelper.OnVoteListener
                    public void onVoteEnd(boolean z) {
                        BaseFeedListAdapter.this.progressList.remove(feed.id());
                        BaseFeedListAdapter.this.notifyDataSetChanged();
                        if (z) {
                            BaseFeedListAdapter.this.onVoteSuccess(feed, targetVotedValue);
                            if (targetVotedValue != 0) {
                                BaseFeedListAdapter baseFeedListAdapter = BaseFeedListAdapter.this;
                                if (baseFeedListAdapter.voteIconView != null) {
                                    new VoteAnimationHelper(baseFeedListAdapter.getContext()).startAnimation(BaseFeedListAdapter.this.voteIconView, targetVotedValue, null);
                                }
                            }
                        }
                    }
                });
                LiveLayerUtils.reportVoting(getParentContext(), feed, targetVotedValue);
                if (this.progressList == null) {
                    this.progressList = new HashSet<>();
                }
                this.progressList.add(feed.id());
                notifyDataSetChanged();
            }
        }
    }

    public void comment(Feed feed) {
        comment(feed, -1);
    }

    public void comment(Feed feed, int i) {
        comment(feed, i, false);
    }

    public void comment(Feed feed, int i, boolean z) {
        String strName;
        String strName2;
        boolean z2 = feed instanceof Blog;
        boolean z3 = false;
        if ((z2 || (feed instanceof Item)) && feed.getTotalCommentsCount() == 0) {
            z3 = true;
        }
        if (z3) {
            Intent intent = new Intent(getContext(), (Class<?>) CommentPostActivity.class);
            intent.putExtra("parentType", feed.objectType());
            intent.putExtra("parentId", feed.id());
            if (z2) {
                intent.putExtra("parentSubType", ((Blog) feed).type);
            }
            intent.putExtra(CommentListFragment.COMMENT_KEY_FEED, JacksonUtils.writeAsString(feed));
            if (i != -1) {
                intent.putExtra("__communityId", feed.ndcId);
            }
            intent.putExtra(NVActivity.INTERACTION_SCOPE, isGlobalInteractionScope());
            intent.putExtra("stat_parent_type", StatisticHelper.getStatisticSource(this, feed, 1));
            intent.putExtra("Source", this.source);
            if (z) {
                strName2 = LoggingSource.GuestComment.name();
            } else {
                LoggingSource loggingSource = this.loggingSource;
                strName2 = loggingSource == null ? null : loggingSource.name();
            }
            intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, strName2);
            LoggingOrigin loggingOrigin = this.loggingOrigin;
            intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN, loggingOrigin != null ? loggingOrigin.name() : null);
            intent.putExtra("autoJoin", z);
            intent.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, FeedExtensionKt.isAnnouncement(feed));
            startActivity(intent);
            this.pushNotificationHelper.checkRemindDialogWhenPostFinished();
            return;
        }
        CommentListFragment.IntentBuilder intentBuilder = new CommentListFragment.IntentBuilder();
        if (i != -1) {
            intentBuilder.communityId(feed.ndcId);
        }
        CommentListFragment.IntentBuilder intentBuilderSource = intentBuilder.feed(JacksonUtils.writeAsString(feed)).type(feed.objectType()).id(feed.id()).source(this.source);
        if (z) {
            strName = LoggingSource.GuestComment.name();
        } else {
            LoggingSource loggingSource2 = this.loggingSource;
            strName = loggingSource2 == null ? null : loggingSource2.name();
        }
        CommentListFragment.IntentBuilder intentBuilderLoggingSource = intentBuilderSource.loggingSource(strName);
        LoggingOrigin loggingOrigin2 = this.loggingOrigin;
        Intent intentBuild = intentBuilderLoggingSource.loggingOrigin(loggingOrigin2 != null ? loggingOrigin2.name() : null).autoJoin(z).isAnnouncement(FeedExtensionKt.isAnnouncement(feed)).build();
        intentBuild.putExtra(NVActivity.INTERACTION_SCOPE, isGlobalInteractionScope());
        startActivity(intentBuild);
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.app.NVInteractionScope
    public boolean isGlobalInteractionScope() {
        return super.isGlobalInteractionScope();
    }

    public void showMore(Feed feed) {
        showMore(feed, false);
    }

    public void showMore(Feed feed, boolean z) {
        FeedHelper feedHelper = new FeedHelper(this.context);
        feedHelper.source("Feed");
        feedHelper.loggingSource = this.loggingSource;
        feedHelper.loggingOrigin = this.loggingOrigin;
        feedHelper.showShareFeedDialog(feed, z);
    }

    public void share(final Feed feed) {
        if (feed instanceof Blog) {
            Blog blog = (Blog) feed;
            if (blog.type == 6) {
                new ShareDarkRoomHelper(this.context).saveDynamicThemeBg(((NVFragment) this.context).getActivity());
                QuizShareFragment.startQuizShareIntent(this.context, blog, new Callback<Intent>() { // from class: com.narvii.feed.BaseFeedListAdapter.9
                    @Override // com.narvii.util.Callback
                    public void call(Intent intent) {
                        try {
                            intent.putExtra(ShareDarkRoomFragment.KEY_STATISTIC_SOURCE, BaseFeedListAdapter.this.shareSource);
                            BaseFeedListAdapter.this.startActivity(intent);
                        } catch (Exception unused) {
                        }
                    }
                });
                return;
            }
        }
        if (feed != null) {
            ShareDialog.getShareDialogFromFeed(this, feed, showRepostOnShare() ? new BaseShareButtonRepost(this.context) { // from class: com.narvii.feed.BaseFeedListAdapter.10
                @Override // com.narvii.share.ShareButtonCustomInfo
                public void onClick(SharePayload sharePayload) {
                    new FeedHelper(((NVAdapter) BaseFeedListAdapter.this).context).source("Feed").repost(feed);
                }
            } : null).setSource(this.shareSource).show();
        }
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected void onPageResponse(ApiRequest apiRequest, E e, int i) {
        Pagination pagination;
        super.onPageResponse(apiRequest, e, i);
        this.apiRequestTimeStamp.add(e.timestamp);
        this.apiRequestList.add(apiRequest.url());
        this.responseSizeList.add(Integer.valueOf(e.list() != null ? filterResponseList(e.list(), 0).size() : 0));
        if (this.paginationType != 1 || (pagination = e.paging) == null || TextUtils.isEmpty(pagination.nextPageToken)) {
            return;
        }
        this.pageTokenList.add(e.paging.nextPageToken);
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void refresh(int i, Callback<Integer> callback) {
        super.refresh(i, callback);
        this.pageTokenList.clear();
        this.apiRequestTimeStamp.clear();
        this.responseSizeList.clear();
        this.apiRequestList.clear();
    }
}
