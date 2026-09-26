package com.narvii.feed;

import android.content.DialogInterface;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.comment.CommentHelper;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.feed.quizzes.share.QuizShareFragment;
import com.narvii.feed.vote.VoteAnimationHelper;
import com.narvii.feed.vote.VotePopupDialog;
import com.narvii.feed.vote.VoterListFragment;
import com.narvii.headlines.ExternalPostPreviewFragment;
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
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.poll.PollOptionListLayout;
import com.narvii.share.BaseShareButtonRepost;
import com.narvii.share.ShareDarkRoomFragment;
import com.narvii.share.ShareDarkRoomHelper;
import com.narvii.share.ShareDialog;
import com.narvii.share.SharePayload;
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
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.util.statistics.constants.UserPropConstants;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseFeedListAdapter<T extends Feed, E extends ListResponse<? extends T>> extends NVPagedAdapter<T, E> implements NotificationListener, NVActivity.DispatchTouchEventListener {
    private static final int EXTERNAL_POST_IMAGE_THRESHOLD = 2;
    private static final int TYPE_ADS = 24;
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
    private static final int TYPE_REPOST_TOPIC = 8;
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
    Callback voteCallback;
    protected View voteIconView;

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
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

    protected boolean allowShowDisable() {
        return false;
    }

    public void comment(Feed feed) {
        comment(feed, -1);
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

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        int feedBlogLayout;
        FeedListItem feedListItem;
        Feed feed = (Feed) obj;
        int itemType = getItemType(obj);
        boolean z6 = false;
        if (view == null) {
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
                case 21:
                default:
                    return createErrorItem(viewGroup, null, "ERR");
                case 22:
                    feedBlogLayout = R.layout.feed_blog_unknown;
                    break;
                case 23:
                    feedBlogLayout = R.layout.feed_disable_ref_object;
                    break;
                case 24:
                    feedBlogLayout = R.layout.ad_item;
                    break;
            }
            feedListItem = (FeedListItem) this.inflater.inflate(feedBlogLayout, viewGroup, false);
            feedListItem.setStatSource(this.source, this.loggingSource, this.loggingOrigin);
            View viewFindViewById = feedListItem.findViewById(R.id.user_click);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(this.subviewClickListener);
            }
            View viewFindViewById2 = feedListItem.findViewById(R.id.feed_toolbar_vote);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setOnClickListener(this.subviewClickListener);
                viewFindViewById2.setOnLongClickListener(this.subviewLongClickListener);
            }
            View viewFindViewById3 = feedListItem.findViewById(R.id.feed_toolbar_comment);
            if (viewFindViewById3 != null) {
                viewFindViewById3.setOnClickListener(this.subviewClickListener);
            }
            View viewFindViewById4 = feedListItem.findViewById(R.id.feed_toolbar_share);
            if (viewFindViewById4 != null) {
                viewFindViewById4.setOnClickListener(this.subviewClickListener);
            }
            View viewFindViewById5 = feedListItem.findViewById(R.id.feed_external_toolbar_more);
            if (viewFindViewById5 != null) {
                viewFindViewById5.setOnClickListener(this.subviewClickListener);
            }
            View viewFindViewById6 = feedListItem.findViewById(R.id.start_quiz);
            if (viewFindViewById6 != null) {
                viewFindViewById6.setOnClickListener(this.subviewClickListener);
            }
        } else {
            if (!(view instanceof FeedListItem)) {
                return view;
            }
            feedListItem = (FeedListItem) view;
        }
        PollOptionListLayout pollOptionListLayout = feedListItem.polloptList;
        if (pollOptionListLayout != null) {
            pollOptionListLayout.setVoteCallback(this.voteCallback);
        }
        View viewFindViewById7 = feedListItem.findViewById(R.id.start_quiz);
        if (viewFindViewById7 != null) {
            resetStartQuizView(viewFindViewById7);
        }
        if (itemType == 22) {
            feedListItem.setUnknownFeed(feed);
        } else if (itemType == 12) {
            feedListItem.setDisabledFeed(feed);
        } else {
            feedListItem.setFeed(feed);
        }
        int i10 = (itemType == 5 || itemType == 4) ? 0 : R.id.image;
        List<Media> feedPreviewMediaList = feed.getFeedPreviewMediaList();
        NVVideoListDelegate.markVideoCell((View) feedListItem, i10, (feed.isContentAccessible() && feedPreviewMediaList != null && feedPreviewMediaList.size() == 1) ? feed.getPreviewVideoList(false) : Collections.emptyList(), (feed.getFeedPreviewMediaList() == null || feed.getFeedPreviewMediaList().size() <= 0) ? null : feed.getFeedPreviewMediaList().get(0), (NVObject) feed, 0, true);
        HashSet<String> hashSet = this.progressList;
        feedListItem.setProgress(hashSet != null && hashSet.contains(feed.id()));
        if ((feed instanceof Blog) && ((Blog) feed).type == 8) {
            z6 = true;
        }
        feedListItem.setDarkTheme(this.darkTheme, z6, this.backgroundColor);
        return feedListItem;
    }

    protected boolean ignoreExtension() {
        return false;
    }

    protected void onFeedQuizStarted(Blog blog) {
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        ExternalSource externalSource;
        if (obj instanceof Feed) {
            Feed feed = (Feed) obj;
            if (view2 == null) {
                AccountService accountService = (AccountService) getService("account");
                if (feed.isiModeDisableForUser(accountService != null ? accountService.getUserProfile() : null)) {
                    final AlertDialog alertDialog = new AlertDialog(getContext());
                    View viewInflate = this.inflater.inflate(R.layout.feed_disable_by_imod_layout, (ViewGroup) null);
                    if (viewInflate.findViewById(R.id.action) != null) {
                        viewInflate.findViewById(R.id.action).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.feed.BaseFeedListAdapter.2
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
                    openFeedDetail(feed, i10);
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
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                        return true;
                    }
                }
                Intent intent2 = UserProfileFragment.intent(this, feed.author);
                if (intent2 == null) {
                    return true;
                }
                intent2.putExtra(ExternalPostPreviewFragment.SOURCE, "Feed");
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent2);
                return true;
            }
            if (view2.getId() == R.id.feed_toolbar_vote) {
                this.voteIconView = view2.findViewById(R.id.feed_toolbar_vote_icon);
                Intent intent3 = new Intent("vote");
                intent3.putExtra("feed", JacksonUtils.writeAsString(feed));
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
                feedHelper.startQuizInterceptor = new FeedHelper.StartQuizInterceptor() { // from class: com.narvii.feed.BaseFeedListAdapter.3
                    @Override // com.narvii.feed.FeedHelper.StartQuizInterceptor
                    public boolean startQuizAfterRequestFinish() {
                        return BaseFeedListAdapter.this.isLoadingQuiz;
                    }
                };
                feedHelper.startQuizListener = new FeedHelper.StartQuizListener() { // from class: com.narvii.feed.BaseFeedListAdapter.4
                    @Override // com.narvii.feed.FeedHelper.StartQuizListener
                    public void onQuizStartFailed() {
                        BaseFeedListAdapter baseFeedListAdapter = BaseFeedListAdapter.this;
                        baseFeedListAdapter.resetStartQuizView(baseFeedListAdapter.loadingQuizView);
                        BaseFeedListAdapter.this.setLoadingQuizView(null);
                    }

                    @Override // com.narvii.feed.FeedHelper.StartQuizListener
                    public void onQuizStarted() {
                        BaseFeedListAdapter.this.onFeedQuizStarted(blog2);
                        BaseFeedListAdapter baseFeedListAdapter = BaseFeedListAdapter.this;
                        baseFeedListAdapter.resetStartQuizView(baseFeedListAdapter.loadingQuizView);
                        BaseFeedListAdapter.this.setLoadingQuizView(null);
                    }
                };
                Intent intentOpenFeedDetailIntent = openFeedDetailIntent(blog2, i10);
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
                ((StatisticsService) this.context.getService("statistics")).event("Start Quiz").source(this.source).userPropInc("Start Quiz Total");
                return true;
            }
        }
        return super.onItemClick(listAdapter, i10, obj, view, view2);
    }

    protected void onVoteSuccess(Feed feed, int i10) {
    }

    protected boolean shouldFilterFeatureFeed() {
        return false;
    }

    protected boolean showAllLike() {
        return false;
    }

    public void showMore(Feed feed) {
        showMore(feed, false);
    }

    protected boolean showRepostOnShare() {
        return true;
    }

    protected boolean useDefaultImpressionCollector() {
        return true;
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

    public void comment(Feed feed, int i10) {
        comment(feed, i10, false);
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
        int i10 = blog.type;
        if (i10 == 0) {
            return 0;
        }
        if (i10 == 1 && (blog.refObject instanceof Item)) {
            return 1;
        }
        if (i10 == 2) {
            Feed feed2 = blog.refObject;
            if (!(feed2 instanceof Blog)) {
                return feed2 instanceof Item ? 7 : 11;
            }
            Blog blog2 = (Blog) feed2;
            if (feed2.isDisabled()) {
                return 23;
            }
            int i11 = blog2.type;
            if (i11 == 3) {
                return 8;
            }
            if (i11 == 6) {
                return 9;
            }
            if (i11 == 4) {
                return 10;
            }
            if (i11 == 8) {
                return 18;
            }
            return i11 == 7 ? 19 : 6;
        }
        if (i10 == 3) {
            return 3;
        }
        if (i10 == 4) {
            return 5;
        }
        if (i10 == 5) {
            return blog.extensions != null ? 2 : 0;
        }
        if (i10 == 6) {
            return 4;
        }
        if (i10 == 7) {
            return 13;
        }
        if (i10 != 8) {
            return i10 == 11 ? 24 : 22;
        }
        int size = CollectionUtils.getSize(blog.mediaList);
        boolean zIsEmpty = TextUtils.isEmpty(blog.title());
        if (size == 0) {
            return 15;
        }
        return (size > 2 || zIsEmpty) ? 17 : 16;
    }

    protected void logFeedClickEvent(Feed feed) {
        logClickEvent(feed, ActSemantic.checkDetail);
    }

    protected void longClickToVote(final Feed feed, final View view) {
        VotePopupDialog votePopupDialog = new VotePopupDialog(getContext());
        votePopupDialog.setFeed(feed);
        votePopupDialog.setPosition(view);
        votePopupDialog.setVoteListener(new Callback<Integer>() { // from class: com.narvii.feed.BaseFeedListAdapter.5
            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                BaseFeedListAdapter.this.voteIconView = view;
                Intent intent = new Intent("vote");
                intent.putExtra("feed", JacksonUtils.writeAsString(feed));
                intent.putExtra("voteValue", num.intValue());
                BaseFeedListAdapter.this.ensureLogin(intent);
            }
        });
        votePopupDialog.show();
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

    @Override // com.narvii.list.NVAdapter
    protected void onLoginResult(boolean z6, Intent intent) {
        if (!z6 || !"vote".equals(intent.getAction())) {
            super.onLoginResult(z6, intent);
            return;
        }
        Feed feed = (Feed) JacksonUtils.readUsing(intent.getStringExtra("feed"), new Feed.FeedDeserializer());
        if (intent.hasExtra("voteValue")) {
            vote(feed, Integer.valueOf(intent.getIntExtra("voteValue", 0)));
        } else {
            vote(feed, null);
        }
    }

    @Override // com.narvii.list.NVAdapter
    public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if ((!(obj instanceof Blog) && !(obj instanceof Item)) || view2 == null || view2.getId() != R.id.feed_toolbar_vote) {
            return super.onLongClick(listAdapter, i10, obj, view, view2);
        }
        longClickToVote((Feed) obj, view2.findViewById(R.id.feed_toolbar_vote_icon));
        return true;
    }

    public void onNotification(Notification notification) {
        String str;
        Feed feed;
        Feed feed2;
        Object obj = notification.obj;
        boolean z6 = false;
        if (obj instanceof Feed) {
            Feed feed3 = (Feed) obj;
            if (list() != null) {
                for (T t5 : rawList()) {
                    if ((t5 instanceof Blog) && (feed2 = ((Blog) t5).refObject) != null && Utils.isIdEquals(feed2, feed3)) {
                        Blog blog = (Blog) t5.m1622clone();
                        blog.refObject = feed3;
                        Notification notification2 = new Notification(notification.action, blog);
                        notification2.parentId = notification.parentId;
                        notification2.uid = notification.uid;
                        notification = notification2;
                        break;
                    }
                }
                for (T t10 : rawList()) {
                    if (Utils.isIdEquals(feed3, t10)) {
                        Feed feed4 = (Feed) feed3.m1622clone();
                        feed4.ndcId = t10.ndcId;
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
            boolean z10 = false;
            for (T t11 : rawList()) {
                if (Utils.isEqualsNotNull(notification.parentId, t11.id()) && ((t11 instanceof Blog) || (t11 instanceof Item))) {
                    CommentHelper.updateFeedWithComment(t11, (Comment) notification.obj, notification.action);
                    z10 = true;
                }
                if ((t11 instanceof Blog) && (feed = ((Blog) t11).refObject) != null && Utils.isEqualsNotNull(notification.parentId, feed.id()) && (feed instanceof Item)) {
                    CommentHelper.updateFeedWithComment(feed, (Comment) notification.obj, notification.action);
                    z10 = true;
                }
            }
            if (z10) {
                notifyDataSetChanged();
            }
        }
        if (notification.obj instanceof FanClub) {
            boolean z11 = false;
            for (T t12 : rawList()) {
                if (Utils.isEqualsNotNull(t12.uid(), ((FanClub) notification.obj).targetUid)) {
                    if (t12 instanceof Feed) {
                        t12.needHidden = !((FanClub) notification.obj).isActive();
                    }
                    z11 = true;
                }
            }
            if (z11) {
                notifyDataSetChanged();
            }
        }
        if ((notification.obj instanceof User) && "update".equals(notification.action)) {
            for (T t13 : rawList()) {
                if (t13 instanceof Feed) {
                    T t14 = t13;
                    if (((User) notification.obj).isSameUser(t14.author)) {
                        t14.author = (User) notification.obj;
                        z6 = true;
                    }
                }
            }
            if (z6) {
                notifyDataSetChanged();
            }
        }
    }

    protected Intent openFeedDetailIntent(Feed feed, int i10) {
        return new FeedHelper(this).getFeedContinuousIntent(feed, rawList(), pageSize(), this.apiRequestList, this.responseSizeList, this.pageTokenList, this.apiRequestTimeStamp);
    }

    public void share(final Feed feed) {
        if (feed instanceof Blog) {
            Blog blog = (Blog) feed;
            if (blog.type == 6) {
                new ShareDarkRoomHelper(this.context).saveDynamicThemeBg(((NVFragment) this.context).getActivity());
                QuizShareFragment.startQuizShareIntent(this.context, blog, new Callback<Intent>() { // from class: com.narvii.feed.BaseFeedListAdapter.8
                    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                        if (p1 == null) {
                            return;
                        }
                        p0.startActivity(p1);
                    }

                    @Override // com.narvii.util.Callback
                    public void call(Intent intent) {
                        try {
                            intent.putExtra(ShareDarkRoomFragment.KEY_STATISTIC_SOURCE, BaseFeedListAdapter.this.shareSource);
                            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(BaseFeedListAdapter.this, intent);
                        } catch (Exception unused) {
                        }
                    }
                });
                return;
            }
        }
        if (feed != null) {
            ShareDialog.getShareDialogFromFeed(this, feed, showRepostOnShare() ? new BaseShareButtonRepost(this.context) { // from class: com.narvii.feed.BaseFeedListAdapter.9
                @Override // com.narvii.share.ShareButtonCustomInfo
                public void onClick(SharePayload sharePayload) {
                    new FeedHelper(((NVAdapter) BaseFeedListAdapter.this).context).source("Feed").repost(feed);
                }
            } : null).setSource(this.shareSource).show();
        }
    }

    public void showMore(Feed feed, boolean z6) {
        FeedHelper feedHelper = new FeedHelper(this.context);
        feedHelper.source("Feed");
        feedHelper.loggingSource = this.loggingSource;
        feedHelper.loggingOrigin = this.loggingOrigin;
        feedHelper.showShareFeedDialog(feed, z6);
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
                    actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.feed.BaseFeedListAdapter.6
                        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                            if (p1 == null) {
                                return;
                            }
                            p0.startActivity(p1);
                        }

                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i10) {
                            if (i10 == 0) {
                                BaseFeedListAdapter.this.vote(feed, 0);
                            } else if (i10 == 1) {
                                Intent intent = FragmentWrapperActivity.intent(VoterListFragment.class);
                                intent.putExtra("nvObject", JacksonUtils.writeAsString(feed));
                                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(BaseFeedListAdapter.this, intent);
                            }
                        }
                    });
                    actionSheetDialog.show();
                    return;
                }
                logClickEvent(feed, targetVotedValue == 0 ? ActSemantic.dislike : ActSemantic.like);
                if (targetVotedValue != 0) {
                    FirebaseLogManager.logEvent(this.context, ((StatisticsService) getService("statistics")).event(EventConstants.LikePost.LIKE_POST).userPropInc(UserPropConstants.PostEvents.LIKES_TOTAL).param(EventConstants.PostType.POST_TYPE, StatisticHelper.getStatisticSource(this, feed, 1)).source(this.source));
                }
                VoteHelper voteHelper = new VoteHelper(this);
                voteHelper.loggingSource = this.loggingSource;
                voteHelper.loggingOrigin = this.loggingOrigin;
                voteHelper.vote(feed, Integer.valueOf(targetVotedValue), new VoteHelper.OnVoteListenerAdapter() { // from class: com.narvii.feed.BaseFeedListAdapter.7
                    @Override // com.narvii.story.detail.VoteHelper.OnVoteListenerAdapter, com.narvii.story.detail.VoteHelper.OnVoteListener
                    public void onVoteEnd(boolean z6) {
                        BaseFeedListAdapter.this.progressList.remove(feed.id());
                        BaseFeedListAdapter.this.notifyDataSetChanged();
                        if (z6) {
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
        AccountService accountService = (AccountService) getService("account");
        this.account = accountService;
        this.curUser = accountService.getUserProfile();
        if (getContext() instanceof NVActivity) {
            ((NVActivity) getContext()).addDispatchTouchEventListener(this);
        }
        this.pushNotificationHelper = new PushNotificationHelper(nVContext);
    }

    public void comment(Feed feed, int i10, boolean z6) {
        String strName;
        String strName2;
        if (((feed instanceof Blog) || (feed instanceof Item)) && feed.getTotalCommentsCount() == 0) {
            Intent intent = new Intent(getContext(), (Class<?>) CommentPostActivity.class);
            intent.putExtra("parentType", feed.objectType());
            intent.putExtra("parentId", feed.id());
            if (feed instanceof Blog) {
                intent.putExtra("parentSubType", ((Blog) feed).type);
            }
            intent.putExtra("feed", JacksonUtils.writeAsString(feed));
            if (i10 != -1) {
                intent.putExtra("__communityId", feed.ndcId);
            }
            intent.putExtra(NVActivity.INTERACTION_SCOPE, isGlobalInteractionScope());
            intent.putExtra(EventConstants.CommentPost.STAT_PARENT_TYPE, StatisticHelper.getStatisticSource(this, feed, 1));
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
            if (z6) {
                strName = LoggingSource.GuestComment.name();
            } else {
                LoggingSource loggingSource = this.loggingSource;
                strName = loggingSource == null ? null : loggingSource.name();
            }
            intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, strName);
            LoggingOrigin loggingOrigin = this.loggingOrigin;
            intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN, loggingOrigin != null ? loggingOrigin.name() : null);
            intent.putExtra("autoJoin", z6);
            intent.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, FeedExtensionKt.isAnnouncement(feed));
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            this.pushNotificationHelper.checkRemindDialogWhenPostFinished();
            return;
        }
        CommentListFragment.IntentBuilder intentBuilder = new CommentListFragment.IntentBuilder();
        if (i10 != -1) {
            intentBuilder.communityId(feed.ndcId);
        }
        CommentListFragment.IntentBuilder intentBuilderSource = intentBuilder.feed(JacksonUtils.writeAsString(feed)).type(feed.objectType()).id(feed.id()).source(this.source);
        if (z6) {
            strName2 = LoggingSource.GuestComment.name();
        } else {
            LoggingSource loggingSource2 = this.loggingSource;
            strName2 = loggingSource2 == null ? null : loggingSource2.name();
        }
        CommentListFragment.IntentBuilder intentBuilderLoggingSource = intentBuilderSource.loggingSource(strName2);
        LoggingOrigin loggingOrigin2 = this.loggingOrigin;
        Intent intentBuild = intentBuilderLoggingSource.loggingOrigin(loggingOrigin2 != null ? loggingOrigin2.name() : null).autoJoin(z6).isAnnouncement(FeedExtensionKt.isAnnouncement(feed)).build();
        intentBuild.putExtra(NVActivity.INTERACTION_SCOPE, isGlobalInteractionScope());
        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intentBuild);
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public Object getItem(int i10) {
        Feed feed;
        Object item = super.getItem(i10);
        if (item instanceof Blog) {
            Blog blog = (Blog) item;
            if (blog.type == 1 && (feed = blog.refObject) != null) {
                return feed;
            }
        }
        return item;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.app.NVInteractionScope
    public boolean isGlobalInteractionScope() {
        return super.isGlobalInteractionScope();
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        if (useDefaultImpressionCollector()) {
            addImpressionCollector(new LinearImpressionCollector(Feed.class));
        }
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected void onPageResponse(ApiRequest apiRequest, E e, int i10) {
        Pagination pagination;
        super.onPageResponse(apiRequest, e, i10);
        this.apiRequestTimeStamp.add(e.timestamp);
        this.apiRequestList.add(apiRequest.url());
        int size = 0;
        if (e.list() != null) {
            size = filterResponseList(e.list(), 0).size();
        }
        this.responseSizeList.add(Integer.valueOf(size));
        if (this.paginationType == 1 && (pagination = e.paging) != null && !TextUtils.isEmpty(pagination.nextPageToken)) {
            this.pageTokenList.add(e.paging.nextPageToken);
        }
    }

    protected void openFeedDetail(Feed feed, int i10) {
        Intent intentOpenFeedDetailIntent = openFeedDetailIntent(feed, i10);
        if (fromQuizFeedList()) {
            intentOpenFeedDetailIntent.putExtra("fromQuizFeedList", true);
        }
        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intentOpenFeedDetailIntent);
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int pageSize() {
        return super.pageSize();
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void refresh(int i10, Callback<Integer> callback) {
        super.refresh(i10, callback);
        this.pageTokenList.clear();
        this.apiRequestTimeStamp.clear();
        this.responseSizeList.clear();
        this.apiRequestList.clear();
    }
}
