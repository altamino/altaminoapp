package com.narvii.detail;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.account.AccountService;
import com.narvii.amino.CommunityNavBarFragment;
import com.narvii.amino.CommunityPreferenceHelper;
import com.narvii.amino.HomeFragment;
import com.narvii.amino.mastes.R;
import com.narvii.app.DrawerActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.blog.detail.BlogDetailFragment;
import com.narvii.chat.rtc.RtcService;
import com.narvii.comment.CommentHelper;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CBBHost;
import com.narvii.community.CommunityService;
import com.narvii.community.JoinCommunityDialog;
import com.narvii.config.ConfigService;
import com.narvii.feed.FeedContinuousViewer;
import com.narvii.feed.FeedHelper;
import com.narvii.feed.quizzes.share.QuizShareFragment;
import com.narvii.headlines.HeadlineLoggingHelper;
import com.narvii.influencer.FanClub;
import com.narvii.influencer.FanClubSubscriptionDialog;
import com.narvii.influencer.FansOnlyPostMask;
import com.narvii.item.detail.ItemDetailFragment;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.HoverAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.livelayer.LiveLayerActivity;
import com.narvii.livelayer.LiveLayerFragment;
import com.narvii.livelayer.LiveLayerHost;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.CommunityHelper;
import com.narvii.model.Blog;
import com.narvii.model.Comment;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserListResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.nvplayer.delegate.FeedDetailVideoDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.poweruser.PowerFeedHelper;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.semicontext.SemiActivity;
import com.narvii.share.BaseShareButtonRepost;
import com.narvii.share.ShareDarkRoomFragment;
import com.narvii.share.ShareDarkRoomHelper;
import com.narvii.share.ShareDialog;
import com.narvii.share.SharePayload;
import com.narvii.share.ShareViewHelper;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryListFragment;
import com.narvii.tipping.TippingHelper;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.ToolTipHelper;
import com.narvii.util.Tooltip;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.deviceid.DeviceIDService;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.statistics.TmpValue;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.FeedBottomLayout;
import com.narvii.widget.NVListView;
import com.narvii.widget.ProxyView;
import com.narvii.widget.ScrollInterceptNestedFrameLayout;
import java.util.ArrayList;
import java.util.List;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
public abstract class FeedDetailFragment<T extends Feed> extends DetailFragment implements NotificationListener, AffiliationsService.AffiliationChangeListener, HoverAdapter {
    public static final String HEADER_AREA = "HeaderArea";
    public static final String KEY_HIDE_BOTTOM_BAR = "key_hide_bottom_bar";
    private static final int THRESHOLD = 50;
    protected static final String VOTE_FROM_BOTTOM = "voteFromBottom";
    AffiliationsService affiliationsService;
    RealtimeBlurView blurView;
    private boolean checkTooltipNextActive;
    ConfigService configService;
    protected FeedContinuousViewer continuousLoader;
    protected FeedContinuousViewer.ContinuousLoaderListener continuousLoaderListener;
    private FansOnlyPostMask fansOnlyPostMask;
    protected boolean fromHeadline;
    HeadlineLoggingHelper headlineLoggingHelper;
    private boolean hideBottomBar;
    boolean isVoteAnimationFinished;
    private long lastDuration;
    private long lastEnterTime;
    View listViewRoot;
    protected boolean notJoined;
    private int oldFirstVisibleItem;
    private int oldTop;
    private SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener;
    protected LiveLayerOnlineBar onlineMemberBar;
    private CommunityPreferenceHelper preferenceHelper;
    public Runnable requestOnlineMembersRunnable;
    ToolTipHelper tippingTooltipHelper;
    boolean tippingTooltipTried;
    ToolTipHelper toolTipHelper;
    public String topic;
    public final TmpValue<Boolean> blockPass = new TmpValue<>();
    View.OnClickListener addCommentClickListener = new View.OnClickListener() { // from class: com.narvii.detail.FeedDetailFragment.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FeedDetailFragment feedDetailFragment = FeedDetailFragment.this;
            if (feedDetailFragment.preview) {
                DetailFragment.showPreviewToast(feedDetailFragment.getContext());
                return;
            }
            FeedDetailAdapter<T> feedDetailAdapter = feedDetailFragment.getFeedDetailAdapter();
            if (feedDetailAdapter != null) {
                feedDetailAdapter.commentNew();
            }
        }
    };
    View.OnClickListener pageClickListener = new View.OnClickListener() { // from class: com.narvii.detail.FeedDetailFragment.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (FeedDetailFragment.this.getActivity() == null) {
                return;
            }
            Intent intent = LiveLayerActivity.intent(LiveLayerFragment.class);
            intent.putExtra("customFinishAnimOut", R.anim.activity_push_bottom_out);
            intent.putExtra("customFinishAnimIn", 0);
            intent.putExtra("Source", LiveLayerHost.getSource(FeedDetailFragment.this.getActivity()));
            intent.putExtra("pageTopic", FeedDetailFragment.this.topic);
            LiveLayerActivity.prepare(FeedDetailFragment.this.getActivity());
            FeedDetailFragment.this.blockPass.set(true);
            FeedDetailFragment.this.startActivity(intent);
            FeedDetailFragment.this.getActivity().overridePendingTransition(R.anim.activity_push_bottom_in, 0);
        }
    };
    Runnable checkTooltipRunnable = new Runnable() { // from class: com.narvii.detail.FeedDetailFragment.3
        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            FeedDetailFragment.this.tryShowTippingTooltip();
        }
    };
    Runnable showPageMembersRunnable = new Runnable() { // from class: com.narvii.detail.FeedDetailFragment.4
        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            LiveLayerHost liveLayerHost;
            FeedDetailFragment feedDetailFragment = FeedDetailFragment.this;
            if (feedDetailFragment.onlineMemberBar == null || (liveLayerHost = (LiveLayerHost) feedDetailFragment.getService("liveLayerHost")) == null || liveLayerHost.onlineBar.isTapping()) {
                return;
            }
            FeedDetailFragment.this.showLiveLayer(false);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(FeedDetailFragment.this.getContext(), R.anim.fade_in);
            FeedDetailFragment.this.onlineMemberBar.goFold(false);
            FeedDetailFragment.this.onlineMemberBar.setVisibility(0);
            FeedDetailFragment.this.onlineMemberBar.startAnimation(animationLoadAnimation);
        }
    };
    LiveLayerOnlineBar.OnFoldChangedListener onFoldChangedListener = new LiveLayerOnlineBar.OnFoldChangedListener() { // from class: com.narvii.detail.FeedDetailFragment.5
        @Override // com.narvii.livelayer.LiveLayerOnlineBar.OnFoldChangedListener
        public void onFoldChanged(boolean z) {
            if (!z) {
                LiveLayerOnlineBar liveLayerOnlineBar = FeedDetailFragment.this.onlineMemberBar;
                if (liveLayerOnlineBar == null || !liveLayerOnlineBar.isAvatarShown()) {
                    return;
                }
                Utils.handler.removeCallbacks(FeedDetailFragment.this.showPageMembersRunnable);
                Utils.handler.postDelayed(FeedDetailFragment.this.showPageMembersRunnable, 2000L);
                return;
            }
            Utils.handler.removeCallbacks(FeedDetailFragment.this.showPageMembersRunnable);
        }
    };
    private AbsListView.OnScrollListener logggingListener = new AbsListView.OnScrollListener() { // from class: com.narvii.detail.FeedDetailFragment.15
        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            if (FeedDetailFragment.this.getFeedDetailAdapter() == null || FeedDetailFragment.this.getFeedDetailAdapter().touchFeedContentEnd || FeedDetailFragment.this.getPosOfCommentHeader() == -1 || i + i2 <= FeedDetailFragment.this.getPosOfCommentHeader()) {
                return;
            }
            FeedDetailFragment.this.getFeedDetailAdapter().touchFeedContentEnd = true;
        }
    };
    AbsListView.OnScrollListener onScrollListener = new AbsListView.OnScrollListener() { // from class: com.narvii.detail.FeedDetailFragment.16
        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            View childAt = absListView.getChildAt(0);
            int top = childAt != null ? childAt.getTop() : 0;
            int i4 = i2 + i;
            if (i == FeedDetailFragment.this.oldFirstVisibleItem) {
                if (top > FeedDetailFragment.this.oldTop) {
                    if (top - FeedDetailFragment.this.oldTop > 50) {
                        FeedDetailFragment.this.onUpScrolling();
                    }
                } else if (top < FeedDetailFragment.this.oldTop && FeedDetailFragment.this.oldTop - top > 50) {
                    FeedDetailFragment.this.onDownScrolling();
                }
            } else if (i < FeedDetailFragment.this.oldFirstVisibleItem) {
                FeedDetailFragment.this.onUpScrolling();
            } else {
                FeedDetailFragment.this.onDownScrolling();
            }
            if (i4 == i3) {
                int unused = FeedDetailFragment.this.oldFirstVisibleItem;
            }
            FeedDetailFragment.this.oldTop = top;
            FeedDetailFragment.this.oldFirstVisibleItem = i;
        }
    };
    View.OnClickListener bottomItemsClickListener = new View.OnClickListener() { // from class: com.narvii.detail.FeedDetailFragment.19
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.bottom_broadcast /* 2131296586 */:
                    FeedDetailFragment.this.bottomActionBroadCast();
                    break;
                case R.id.bottom_feature /* 2131296593 */:
                    FeedDetailFragment.this.bottomActionFeaturePost();
                    break;
                case R.id.bottom_go_next_leader /* 2131296595 */:
                case R.id.bottom_go_next_normal /* 2131296597 */:
                    FeedDetailFragment.this.bottomActionGoNext();
                    break;
                case R.id.bottom_mod_menu /* 2131296601 */:
                    FeedDetailFragment.this.bottomActionModMenu();
                    break;
                case R.id.bottom_save /* 2131296605 */:
                    FeedDetailFragment.this.sendSBBLogEvent(ActSemantic.save);
                    FeedDetailFragment.this.bookmark("Post Detail SBB");
                    break;
                case R.id.bottom_share /* 2131296606 */:
                    FeedDetailFragment.this.bottomActionShare();
                    break;
                case R.id.bottom_tipping /* 2131296610 */:
                    FeedDetailFragment.this.bottomActionTipping();
                    break;
                case R.id.bottom_vote /* 2131296613 */:
                    FeedDetailFragment.this.bottomActionVote();
                    break;
                case R.id.healine_bottom_comment_container /* 2131297541 */:
                    FeedDetailFragment.this.bottomComment();
                    break;
                case R.id.healine_bottom_more_container /* 2131297542 */:
                    final int[] iArr = new int[7];
                    ActionSheetDialog actionSheetDialog = new ActionSheetDialog(FeedDetailFragment.this.getContext());
                    char c = 1;
                    iArr[0] = R.string.share;
                    actionSheetDialog.addItem(R.string.share, 0);
                    AffiliationsService affiliationsService = (AffiliationsService) FeedDetailFragment.this.getService("affiliations");
                    if (!FeedDetailFragment.this.isGlobalInteractionScope() && FeedDetailFragment.this.getFeed() != null && affiliationsService.contains(FeedDetailFragment.this.getFeed().ndcId)) {
                        iArr[1] = R.string.bookmark;
                        actionSheetDialog.addItem(R.string.bookmark, 0);
                        c = 2;
                    }
                    iArr[c] = R.string.flag_for_review;
                    actionSheetDialog.addItem(R.string.flag_for_review, 0);
                    actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.detail.FeedDetailFragment.19.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            int i2 = iArr[i];
                            if (i2 == R.string.bookmark) {
                                FeedDetailFragment.this.handleBookMark();
                            } else if (i2 == R.string.flag_for_review) {
                                new FeedHelper(FeedDetailFragment.this).flagForReview(FeedDetailFragment.this.getFeed());
                            } else {
                                if (i2 != R.string.share) {
                                    return;
                                }
                                FeedDetailFragment.this.bottomActionShare();
                            }
                        }
                    });
                    actionSheetDialog.show();
                    break;
                case R.id.healine_bottom_share_container /* 2131297543 */:
                    FeedDetailFragment.this.bottomActionShare();
                    break;
                case R.id.healine_bottom_vote_container /* 2131297544 */:
                    FeedDetailFragment.this.bottomActionVote();
                    break;
            }
        }
    };

    protected void bookmark(String str) {
    }

    protected void bottomComment() {
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    public abstract FeedDetailAdapter<T> getFeedDetailAdapter();

    protected abstract String getLiveLayerTopic();

    @Override // com.narvii.app.NVFragment
    protected boolean hasVisitorBar() {
        return true;
    }

    protected void onVoteClicked() {
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean setSectionHeaderTag() {
        return false;
    }

    protected void showModerationDialog() {
    }

    protected void unVote() {
    }

    @Override // com.narvii.list.NVListFragment
    public void updateListViewConfig() {
    }

    protected void vote(Integer num, ApiService apiService, boolean z) {
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.configService = (ConfigService) getService("config");
        this.configService.getCommunityId();
        this.topic = getLiveLayerTopic() + ":" + id();
        this.continuousLoader = new FeedContinuousViewer();
        this.affiliationsService = (AffiliationsService) getService("affiliations");
        this.notJoined = isCurrentUserNotJoined();
        if (!isEmbedFragment()) {
            getActivity().setVolumeControlStream(3);
        }
        this.fromHeadline = getBooleanParam("fromHeadline", false);
        this.hideBottomBar = getBooleanParam(KEY_HIDE_BOTTOM_BAR, false);
        this.headlineLoggingHelper = new HeadlineLoggingHelper(this);
        if (!this.fromHeadline && !this.preview) {
            setHasOptionsMenu(true);
        }
        if (this.fromHeadline && isRootFragment() && getFragmentManager().findFragmentByTag("communityNavBar") == null) {
            CommunityNavBarFragment communityNavBarFragment = new CommunityNavBarFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("showBackButton", true);
            communityNavBarFragment.setArguments(bundle2);
            getFragmentManager().beginTransaction().add(android.R.id.content, communityNavBarFragment, "communityNavBar").commit();
        }
        this.affiliationsService.addAffiliationChangeListener(this);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.feed_detail_frame, viewGroup, false);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        LiveLayerOnlineBar liveLayerOnlineBar;
        super.onActiveChanged(z);
        LiveLayerHost liveLayerHost = (LiveLayerHost) getService("liveLayerHost");
        if (liveLayerHost != null && (liveLayerOnlineBar = liveLayerHost.onlineBar) != null) {
            liveLayerOnlineBar.setOnBarClickListener(z ? this.pageClickListener : liveLayerHost.onClickListener);
            if (shouldShowMemberOnThisPage()) {
                liveLayerHost.onlineBar.setOnFoldChangedListener(z ? this.onFoldChangedListener : null);
            }
        }
        if (this.onlineMemberBar != null) {
            if (((SharedPreferences) getService("prefs")).getBoolean("liveLayerFold", false)) {
                this.onlineMemberBar.setVisibility(8);
                showLiveLayer(true, false);
            }
            if (this.onlineMemberBar.getVisibility() == 0 && this.onlineMemberBar.isAvatarShown()) {
                showLiveLayer(false, false);
            }
        }
        tryReportActiveStatus();
        if (isActive() && (getActivity() instanceof DrawerActivity)) {
            ((DrawerActivity) getActivity()).updatePostEntryFrameVisible(hasPostEntry().booleanValue());
        }
        if (z) {
            this.lastEnterTime = System.currentTimeMillis();
        } else {
            this.lastDuration += System.currentTimeMillis() - this.lastEnterTime;
        }
        if (z) {
            configLiverBar();
            if (this.checkTooltipNextActive) {
                Utils.postDelayed(this.checkTooltipRunnable, 500L);
                return;
            }
            return;
        }
        Utils.handler.removeCallbacks(this.checkTooltipRunnable);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        this.blurView = (RealtimeBlurView) view.findViewById(R.id.overlay_blur_bg);
        super.onViewCreated(view, bundle);
        this.listViewRoot = view.findViewById(R.id.list_frame);
        getFeedDetailAdapter().registerDataSetObserver(new DataSetObserver() { // from class: com.narvii.detail.FeedDetailFragment.6
            @Override // android.database.DataSetObserver
            public void onChanged() {
                FeedDetailFragment.this.invalidateOptionsMenu();
            }
        });
        this.onlineMemberBar = (LiveLayerOnlineBar) getView().findViewById(R.id.page_online_bar);
        this.onlineMemberBar.setVisibility(8);
        this.onlineMemberBar.setLift(getOnlineBarLift());
        this.requestOnlineMembersRunnable = new Runnable() { // from class: com.narvii.detail.FeedDetailFragment.7
            @Override // java.lang.Runnable
            public void run() {
                FeedDetailFragment.this.requestOnlineMembersOnThisPage();
            }
        };
        if (shouldShowMemberOnThisPage()) {
            Utils.postDelayed(this.requestOnlineMembersRunnable, 2000L);
        }
        this.fansOnlyPostMask = (FansOnlyPostMask) view.findViewById(R.id.fans_only_post_mask);
        this.fansOnlyPostMask.setBecomeFansClickListener(new FansOnlyPostMask.BecomeFansClickListener() { // from class: com.narvii.detail.FeedDetailFragment.8
            @Override // com.narvii.influencer.FansOnlyPostMask.BecomeFansClickListener
            public void onBecomeFansClicked() {
                FeedDetailFragment.this.ensureLogin(new Intent("becomeFans"));
            }
        });
        updatePrivateContentView();
        updateListViewRoot();
    }

    protected boolean isCurrentUserNotJoined() {
        int i;
        if (isGlobalInteractionScope()) {
            Feed feed = getFeed();
            if (feed == null && getStringParam(CommunityDetailFragment.KEY_COMMUNITY) != null && !this.preview) {
                feed = (Feed) JacksonUtils.readUsing(getStringParam(CommunityDetailFragment.KEY_COMMUNITY), new Feed.FeedDeserializer());
            }
            if (this.preview || feed == null || (i = feed.ndcId) == 0) {
                return false;
            }
            return !this.affiliationsService.contains(i);
        }
        return !this.affiliationsService.contains(this.configService.getCommunityId());
    }

    private boolean shouldShowMemberOnThisPage() {
        return (((ConfigService) getService("config")).getCommunityId() == 0 || isEmbedFragment() || id() == null || (isAdded() && isGlobalInteractionScope())) ? false : true;
    }

    private ProxyView getLiveLayerView() {
        if (getView() == null || getView().getRootView() == null) {
            return null;
        }
        return (ProxyView) getView().getRootView().findViewById(R.id.live_layer_proxy_view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLiveLayer(boolean z) {
        showLiveLayer(z, true);
    }

    private void showLiveLayer(boolean z, boolean z2) {
        LiveLayerHost liveLayerHost;
        LiveLayerOnlineBar liveLayerOnlineBar;
        if (!isActive() || (liveLayerHost = (LiveLayerHost) getService("liveLayerHost")) == null || (liveLayerOnlineBar = liveLayerHost.onlineBar) == null) {
            return;
        }
        liveLayerOnlineBar.setVisibility(z ? 0 : 4);
        if (z2) {
            liveLayerHost.onlineBar.startAnimation(AnimationUtils.loadAnimation(getContext(), z ? R.anim.fade_in : R.anim.fade_out));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestOnlineMembersOnThisPage() {
        LiveLayerService liveLayerService = (LiveLayerService) getService("liveLayer");
        if (liveLayerService == null) {
            return;
        }
        liveLayerService.requestOnlineMembers(this.topic, 10, true, new Callback<UserListResponse>() { // from class: com.narvii.detail.FeedDetailFragment.9
            @Override // com.narvii.util.Callback
            public void call(UserListResponse userListResponse) {
                if (FeedDetailFragment.this.isDestoryed()) {
                    return;
                }
                FeedDetailFragment.this.onlineMemberBar.setOnAvatarShownChangeListener(new LiveLayerOnlineBar.OnAvatarShownChangeListener() { // from class: com.narvii.detail.FeedDetailFragment.9.1
                    @Override // com.narvii.livelayer.LiveLayerOnlineBar.OnAvatarShownChangeListener
                    public void onAvatarShownChanged(boolean z) throws Resources.NotFoundException {
                        LiveLayerHost liveLayerHost;
                        SharedPreferences sharedPreferences = (SharedPreferences) FeedDetailFragment.this.getService("prefs");
                        if ((z && sharedPreferences.getBoolean("liveLayerFold", false)) || (liveLayerHost = (LiveLayerHost) FeedDetailFragment.this.getService("liveLayerHost")) == null || liveLayerHost.onlineBar.isTapping()) {
                            return;
                        }
                        Animation animationLoadAnimation = AnimationUtils.loadAnimation(FeedDetailFragment.this.getContext(), z ? R.anim.fade_in : R.anim.fade_out);
                        FeedDetailFragment.this.onlineMemberBar.setVisibility(z ? 0 : 8);
                        FeedDetailFragment.this.onlineMemberBar.startAnimation(animationLoadAnimation);
                        FeedDetailFragment.this.showLiveLayer(!z);
                    }
                });
                FeedDetailFragment.this.onlineMemberBar.setOnFoldChangedListener(new LiveLayerOnlineBar.OnFoldChangedListener() { // from class: com.narvii.detail.FeedDetailFragment.9.2
                    @Override // com.narvii.livelayer.LiveLayerOnlineBar.OnFoldChangedListener
                    public void onFoldChanged(boolean z) throws Resources.NotFoundException {
                        if (z) {
                            Animation animationLoadAnimation = AnimationUtils.loadAnimation(FeedDetailFragment.this.getContext(), R.anim.fade_out);
                            FeedDetailFragment.this.onlineMemberBar.setVisibility(8);
                            FeedDetailFragment.this.onlineMemberBar.startAnimation(animationLoadAnimation);
                            ((LiveLayerHost) FeedDetailFragment.this.getService("liveLayerHost")).onlineBar.goFold(z);
                            FeedDetailFragment.this.showLiveLayer(true);
                        }
                    }
                });
                FeedDetailFragment.this.onlineMemberBar.setUserList(userListResponse.userList, userListResponse.userProfileCount);
                FeedDetailFragment feedDetailFragment = FeedDetailFragment.this;
                feedDetailFragment.onlineMemberBar.setOnBarClickListener(feedDetailFragment.pageClickListener);
                FeedDetailFragment feedDetailFragment2 = FeedDetailFragment.this;
                feedDetailFragment2.onlineMemberBar.subscribeTopic(feedDetailFragment2.topic);
            }
        });
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        LiveLayerOnlineBar liveLayerOnlineBar;
        if (this.topic != null && (liveLayerOnlineBar = this.onlineMemberBar) != null) {
            liveLayerOnlineBar.unsubscribeTopic();
        }
        Runnable runnable = this.requestOnlineMembersRunnable;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        if (this.onSharedPreferenceChangeListener != null) {
            this.preferenceHelper.getPrefs().unregisterOnSharedPreferenceChangeListener(this.onSharedPreferenceChangeListener);
        }
        super.onDestroy();
        this.affiliationsService.removeAffiliationChangeListener(this);
        if (this.fromHeadline) {
            long jCurrentTimeMillis = (this.lastEnterTime == 0 ? 0L : System.currentTimeMillis() - this.lastEnterTime) + this.lastDuration;
            this.headlineLoggingHelper.logPostDetailViewQuit(getFeed(), jCurrentTimeMillis > 0 ? jCurrentTimeMillis : 0L, (getFeedDetailAdapter() == null || !getFeedDetailAdapter().touchFeedContentEnd) ? 0 : 100, getStringParam("channelId"));
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getOnlineBarLift() {
        return ViewUtils.getBannerLift(this, 16) + ((showBottomBar() && this.continuousLoader.isFeedBottomBarVisible() && isMeAccessibleToThisPost()) ? (int) (getResources().getDimensionPixelSize(R.dimen.feed_bottom_height) - Utils.dpToPx(getContext(), 10.0f)) : super.getOnlineBarLift());
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasOnlineBar() {
        if (isAdded()) {
            return Boolean.valueOf(!isGlobalInteractionScope());
        }
        return null;
    }

    private void attachSBB() {
        ArrayList listUsing = JacksonUtils.readListUsing(getStringParam(FeedContinuousViewer.KEY_CONTINUOUS_FEED_LIST), new Feed.FeedDeserializer());
        String stringParam = getStringParam(FeedContinuousViewer.KEY_CONTINUOUS_FEED_REQUEST);
        String stringParam2 = getStringParam(FeedContinuousViewer.KEY_CONTINUOUS_FEED_TIMESTAMP);
        int intParam = getIntParam(FeedContinuousViewer.KEY_CONTINUOUS_FEED_CURRENT_POSITION);
        boolean booleanParam = getBooleanParam(FeedContinuousViewer.KEY_CONTINUOUS_FEED_FILTER_FEATURE);
        String stringParam3 = getStringParam(FeedContinuousViewer.KEY_CONTINUOUS_FEED_NEXT_TOKEN);
        int intParam2 = getIntParam(FeedContinuousViewer.KEY_CONTINUOUS_FEED_PAGE_SIZE);
        if (showBottomBar()) {
            this.continuousLoader.AttachFeedDetailFragment(this, stringParam, stringParam2, intParam, booleanParam, listUsing, this.fromHeadline, stringParam3, intParam2);
            this.continuousLoaderListener = new FeedContinuousViewer.ContinuousLoaderListener() { // from class: com.narvii.detail.FeedDetailFragment.10
                @Override // com.narvii.feed.FeedContinuousViewer.ContinuousLoaderListener
                public void onStart(int i, Object obj) {
                    if (i == R.id.bottom_vote) {
                        FeedDetailFragment.this.continuousLoader.setIsVotting(true);
                        FeedDetailFragment feedDetailFragment = FeedDetailFragment.this;
                        feedDetailFragment.continuousLoader.updateVoteIcon(feedDetailFragment.getFeed(), true);
                    }
                }

                @Override // com.narvii.feed.FeedContinuousViewer.ContinuousLoaderListener
                public void onFinish(int i, Object obj) {
                    if (i == R.id.bottom_vote) {
                        FeedDetailFragment.this.continuousLoader.setIsVotting(false);
                        FeedDetailFragment feedDetailFragment = FeedDetailFragment.this;
                        feedDetailFragment.continuousLoader.updateVoteIcon(feedDetailFragment.getFeed(), false);
                    }
                }

                @Override // com.narvii.feed.FeedContinuousViewer.ContinuousLoaderListener
                public void onFail(int i, Object obj) {
                    if (i == R.id.bottom_vote) {
                        FeedDetailFragment feedDetailFragment = FeedDetailFragment.this;
                        feedDetailFragment.continuousLoader.updateVoteIcon(feedDetailFragment.getFeed(), false);
                    }
                }
            };
            this.continuousLoader.configureBottomBarEvent(this.bottomItemsClickListener);
            this.continuousLoader.setBottomAnimationListener(new FeedBottomLayout.BottomAnimationListener() { // from class: com.narvii.detail.FeedDetailFragment.11
                @Override // com.narvii.widget.FeedBottomLayout.BottomAnimationListener
                public void onAnimationFinished() {
                    FeedDetailFragment feedDetailFragment = FeedDetailFragment.this;
                    feedDetailFragment.continuousLoader.updateVoteIcon(feedDetailFragment.getFeed().getVotedValue(FeedDetailFragment.this.isGlobalInteractionScope()), false, FeedDetailFragment.this.getFeed().getTotalVotesCount());
                    FeedDetailFragment.this.isVoteAnimationFinished = true;
                }
            });
            this.continuousLoader.setGoNextButtonVisible((listUsing == null || getBooleanParam("fromLink")) ? false : true);
            View viewFindViewById = getView().findViewById(R.id.ad_container);
            if (viewFindViewById != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams();
                marginLayoutParams.bottomMargin = getResources().getDimensionPixelSize(R.dimen.feed_bottom_height) - Utils.dpToPxInt(getContext(), 10.0f);
                viewFindViewById.setLayoutParams(marginLayoutParams);
            }
        }
    }

    private boolean allowBottomTooltip() {
        return (getActivity() == null || isEmbedFragment() || this.notJoined || this.fromHeadline || this.preview || !isMeAccessibleToThisPost() || isFinishing() || isDestoryed()) ? false : true;
    }

    public void onFeedObjectResponse() {
        if (this.tippingTooltipTried) {
            return;
        }
        this.tippingTooltipTried = true;
        Utils.postDelayed(new Runnable() { // from class: com.narvii.detail.FeedDetailFragment.12
            @Override // java.lang.Runnable
            public void run() throws Resources.NotFoundException {
                FeedDetailFragment.this.tryShowTippingTooltip();
            }
        }, ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS);
    }

    protected void tryShowTippingTooltip() throws Resources.NotFoundException {
        String userId;
        Feed feed;
        FeedContinuousViewer feedContinuousViewer;
        User user;
        this.checkTooltipNextActive = false;
        if (!allowBottomTooltip() || (userId = ((AccountService) getService("account")).getUserId()) == null || (feed = getFeed()) == null || this.tippingTooltipHelper != null || (feedContinuousViewer = this.continuousLoader) == null || feedContinuousViewer.bottomView == null || isTippingTooltipDone() || feed.status == 9 || (user = feed.author) == null || Utils.isEqualsNotNull(user.id(), userId)) {
            return;
        }
        View viewFindViewById = this.continuousLoader.bottomView.findViewById(R.id.bottom_tipping);
        if (!isActive()) {
            this.checkTooltipNextActive = true;
        } else if (viewFindViewById.isShown()) {
            Tooltip tooltipBuild = Tooltip.builder().anchorView(viewFindViewById).rootView(getVoteTooltipContainer()).text(getString(R.string.tipping_tooltip_message)).onClickListener(new View.OnClickListener() { // from class: com.narvii.detail.FeedDetailFragment.13
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    FeedDetailFragment.this.tippingTooltipDone();
                }
            }).build();
            this.tippingTooltipHelper = new ToolTipHelper();
            this.tippingTooltipHelper.showToolTip(tooltipBuild);
        }
    }

    private View getVoteTooltipContainer() {
        if (getView() == null || getView().getRootView() == null) {
            return null;
        }
        return getView().getRootView().findViewById(R.id.layout_above_post_entry);
    }

    public static Intent intent(Feed feed) {
        return intent(feed, StoryApi.COMMUNITY_PLAYER);
    }

    public static Intent intent(Feed feed, String str) {
        Feed feed2;
        if (feed instanceof Blog) {
            Blog blog = (Blog) feed;
            if (blog.type == 1 && (feed2 = blog.refObject) != null) {
                return intent(feed2);
            }
            if (blog.type == 9) {
                return new StoryListFragment.IntentBuilder(blog).autoLoadNextPage(true).source(str).build();
            }
            Intent intent = FragmentWrapperActivity.intent(BlogDetailFragment.class);
            intent.putExtra("id", blog.id());
            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(blog));
            intent.putExtra(CommentListFragment.COMMENT_KEY_IS_ANNOUNCEMENT, blog.isGlobalAnnouncement);
            return intent;
        }
        if (feed instanceof Item) {
            Item item = (Item) feed;
            Intent intent2 = FragmentWrapperActivity.intent(ItemDetailFragment.class);
            intent2.putExtra("id", item.id());
            intent2.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(item));
            return intent2;
        }
        if (feed == null) {
            return null;
        }
        Log.e("unknown feed type " + feed.getClass());
        return null;
    }

    public static Intent intent(NVContext nVContext, Feed feed, List<? extends Feed> list, String str, String str2, int i) {
        return intent(nVContext, feed, list, str, str2, i, null, 0);
    }

    public static Intent intent(NVContext nVContext, Feed feed, List<? extends Feed> list, String str, String str2, int i, String str3, int i2) {
        Intent intent = intent(feed);
        if (FeedHelper.isFeedContinuousOpen(nVContext) && intent != null && i >= 0 && list != null) {
            Utils.safeAddExtraInIntent(intent, FeedContinuousViewer.KEY_CONTINUOUS_FEED_LIST, list.size() > 0 ? JacksonUtils.writeAsString(list) : null);
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_REQUEST, str);
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_TIMESTAMP, str2);
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_CURRENT_POSITION, i);
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_NEXT_TOKEN, str3);
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_PAGE_SIZE, i2);
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_PAGE_SIZE, i2);
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_FILTER_FEATURE, true);
        }
        return intent;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.valueOf(!FeedHelper.isFeedContinuousOpen(this));
    }

    @Override // com.narvii.list.NVListFragment
    protected void onHoveItemCreated(View view) {
        if (view != null) {
            Feed feed = getFeed();
            int sBBBlurOverlayColor = getSBBBlurOverlayColor((feed == null || feed.getBackgroundMedia() != null) ? 0 : feed.getBackgroundColor());
            ViewGroup.LayoutParams layoutParams = this.blurView.getLayoutParams();
            if (layoutParams != null) {
                ListView listView = getListView();
                view.measure(View.MeasureSpec.makeMeasureSpec(listView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(listView.getHeight(), Integer.MIN_VALUE));
                layoutParams.height = getHoverTopOffset() + getHoveFrameMarginTop() + view.getMeasuredHeight();
                this.blurView.setLayoutParams(layoutParams);
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    viewGroup.getChildAt(i).setOnClickListener(null);
                    viewGroup.getChildAt(i).setClickable(false);
                }
            }
            view.setOnClickListener(this.addCommentClickListener);
            this.blurView.setVisibility(0);
            this.blurView.setOverlayColor(sBBBlurOverlayColor);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onHoverRecycled() {
        super.onHoverRecycled();
        this.blurView.setVisibility(8);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (this instanceof BlogDetailFragment) {
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("inBlogDetail", true);
            bundle2.putBoolean("preview", this.preview);
        }
        setHoverAdapter(this);
        this.preferenceHelper = new CommunityPreferenceHelper(getContext());
        Utils.postDelayed(new AnonymousClass14(listView), 200L);
        attachSBB();
        if ((listView instanceof NVListView) && this.fromHeadline) {
            ((NVListView) listView).addOnScrollListener(this.logggingListener);
        }
    }

    /* renamed from: com.narvii.detail.FeedDetailFragment$14, reason: invalid class name */
    class AnonymousClass14 implements Runnable {
        final /* synthetic */ ListView val$list;

        AnonymousClass14(ListView listView) {
            this.val$list = listView;
        }

        @Override // java.lang.Runnable
        public void run() {
            ListView listView = this.val$list;
            if (listView instanceof NVListView) {
                ((NVListView) listView).addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.detail.FeedDetailFragment.14.1
                    @Override // android.widget.AbsListView.OnScrollListener
                    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                    }

                    @Override // android.widget.AbsListView.OnScrollListener
                    public void onScrollStateChanged(AbsListView absListView, int i) throws Resources.NotFoundException {
                        if (i == 1) {
                            FeedDetailFragment feedDetailFragment = FeedDetailFragment.this;
                            if (feedDetailFragment.notJoined && feedDetailFragment.toolTipHelper == null && !feedDetailFragment.preferenceHelper.getJoinAminoShowBefore() && (FeedDetailFragment.this.getActivity() instanceof SemiActivity)) {
                                View viewFindViewById = ((SemiActivity) FeedDetailFragment.this.getActivity()).getActionBar().getCustomView().findViewById(R.id.actionbar_join_btn);
                                FeedDetailFragment.this.toolTipHelper = new ToolTipHelper();
                                FeedDetailFragment.this.toolTipHelper.showToolTip(Tooltip.builder().anchorView(viewFindViewById).textId(R.string.tooltip_join_amino).isRightAlign(true).endFinger().onClickListener(new View.OnClickListener() { // from class: com.narvii.detail.FeedDetailFragment.14.1.1
                                    @Override // android.view.View.OnClickListener
                                    public void onClick(View view) {
                                        new CommunityPreferenceHelper(FeedDetailFragment.this.getContext()).setJoinAminoShowBefore(true);
                                    }
                                }).build());
                                FeedDetailFragment.this.onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.narvii.detail.FeedDetailFragment.14.1.2
                                    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) throws Resources.NotFoundException {
                                        ToolTipHelper toolTipHelper;
                                        if (FeedDetailFragment.this.preferenceHelper.getPREFS_JOIN_AMINO_SHOWED().equals(str) && sharedPreferences.getBoolean(str, false) && (toolTipHelper = FeedDetailFragment.this.toolTipHelper) != null) {
                                            toolTipHelper.hideToolTip();
                                        }
                                    }
                                };
                                FeedDetailFragment.this.preferenceHelper.getPrefs().registerOnSharedPreferenceChangeListener(FeedDetailFragment.this.onSharedPreferenceChangeListener);
                            }
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getPosOfCommentHeader() {
        if (getFeedDetailAdapter() == null) {
            return -1;
        }
        int count = getFeedDetailAdapter().getCount();
        for (int i = 0; i < count; i++) {
            if (getFeedDetailAdapter().getItem(i) == DetailAdapter.COMMENT_HEADER) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void tryReportActiveStatus() {
        if (isActive()) {
            if (this.preview || TextUtils.isEmpty(id()) || getFeed() == null || !LiveLayerUtils.isStatusOk(getFeed()) || this.liveLayerTarget != null || ((ConfigService) getService("config")).getCommunityId() == 0) {
                return;
            }
            LiveLayerService liveLayerService = (LiveLayerService) getService("liveLayer");
            this.liveLayerTarget = NVObject.objectTypeName(objectType()) + "/" + id();
            if (getFeed() instanceof Blog) {
                this.params.put("blogType", Integer.valueOf(((Blog) getFeed()).type));
            }
            String stringParam = getStringParam(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN);
            if (stringParam != null) {
                this.params.put("eventOrigin", stringParam);
            }
            liveLayerService.reportActive(this.actions, this.liveLayerTarget, this.params);
            return;
        }
        if (this.liveLayerTarget != null) {
            LiveLayerService liveLayerService2 = (LiveLayerService) getService("liveLayer");
            String stringParam2 = getStringParam(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN);
            if (stringParam2 != null) {
                this.params.put("eventOrigin", stringParam2);
            }
            liveLayerService2.reportInactive(this.actions, this.liveLayerTarget, this.params);
            this.liveLayerTarget = null;
        }
    }

    public T getFeed() {
        FeedDetailAdapter<T> feedDetailAdapter = getFeedDetailAdapter();
        if (feedDetailAdapter == null) {
            return null;
        }
        return feedDetailAdapter.getObject();
    }

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorDarkColor() {
        Feed feed = getFeed();
        if (feed == null || feed.getBackgroundMedia() == null) {
            return super.getSelectorDarkColor();
        }
        return 1157627903;
    }

    public boolean isMine() {
        Feed feed = getFeed();
        if (feed != null) {
            return Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), feed.uid());
        }
        return false;
    }

    public boolean isMineWithCommunityCheck() {
        Feed feed = getFeed();
        if (feed == null) {
            return false;
        }
        return (feed.ndcId == 0) == isGlobalInteractionScope() && isMine();
    }

    @Override // android.support.v4.app.Fragment
    public void startActivity(Intent intent, Bundle bundle) {
        super.startActivity(intent, bundle);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.share, 1, R.string.share).setIcon(R.drawable.ic_community_share).setShowAsAction(2);
        menu.add(0, R.string.repost, 1, R.string.repost);
        menu.add(0, R.string.copy_link, 1, R.string.copy_link);
        menu.add(0, R.string.edit, 5, R.string.edit);
        menu.add(0, R.string.delete, 5, R.string.delete).setShowAsAction(0);
        menu.add(0, R.string.flag_for_review, 8, R.string.flag_for_review).setShowAsAction(0);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean zIsMine;
        boolean z;
        User user;
        super.onPrepareOptionsMenu(menu);
        Feed feed = getFeed();
        boolean z2 = (feed == null || feed.status == 9) ? false : true;
        if (feed == null || (user = feed.author) == null || user.uid == null) {
            zIsMine = false;
            z = false;
        } else {
            zIsMine = isMine();
            z = !zIsMine;
        }
        menu.findItem(R.string.share).setVisible(z2);
        menu.findItem(R.string.copy_link).setVisible(z2);
        menu.findItem(R.string.repost).setVisible(z2 && z);
        menu.findItem(R.string.edit).setVisible(feed != null && zIsMine);
        menu.findItem(R.string.delete).setVisible(feed != null && zIsMine);
        menu.findItem(R.string.flag_for_review).setVisible(z2 && z);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.string.copy_link /* 2131690229 */:
                sendHeaderAreaLog(ActSemantic.copyLink);
                ShareViewHelper shareViewHelper = new ShareViewHelper(this);
                shareViewHelper.source = "Post Detail Menu";
                shareViewHelper.copyLink(getFeed());
                return true;
            case R.string.delete /* 2131690312 */:
                new FeedHelper(this).delete(getFeed(), false);
                return true;
            case R.string.edit /* 2131690445 */:
                FeedHelper feedHelper = new FeedHelper(this);
                feedHelper.source = "Post Detail View";
                feedHelper.loggingSource = LoggingSource.PostDetailView;
                feedHelper.refreshAndEdit(getFeed());
                return true;
            case R.string.flag_for_review /* 2131691221 */:
                sendHeaderAreaLog(ActSemantic.flag);
                new FeedHelper(this).flagForReview(getFeed());
                return true;
            case R.string.repost /* 2131693280 */:
                sendHeaderAreaLog(ActSemantic.repost);
                new FeedHelper(this).source("Navbar").repost(getFeed());
                return true;
            case R.string.share /* 2131693474 */:
                sendHeaderAreaLog(ActSemantic.share);
                shareFeed("Post Detail Navbar");
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    protected void sendHeaderAreaLog(ActSemantic actSemantic) {
        LogEvent.Builder builderActClick = LogEvent.builder(this).actClick();
        String str = LogUtils.optionMenuClickArea;
        if (str == null) {
            str = HEADER_AREA;
        }
        builderActClick.area(str).object(getFeed()).actSemantic(actSemantic).send();
    }

    @Override // com.narvii.detail.DetailFragment
    protected boolean shouldBlockClick(Object obj) {
        this.notJoined = isCurrentUserNotJoined();
        if (this.notJoined) {
            if ((obj instanceof Media) || obj == FeedDetailAdapter.SHARE || obj == DetailAdapter.COMMENT_HEADER || obj == DetailAdapter.COMMENT_ADD || obj == DetailAdapter.TIPPING || (obj instanceof CommentListAdapter.ReadMore) || (obj instanceof Comment)) {
                return false;
            }
            Community community = (Community) JacksonUtils.readAs(getStringParam(RtcService.KEY_COMMUNITY), Community.class);
            if (isInVisitorMode()) {
                JoinCommunityDialog.showInnerJoinDialog(this);
                return true;
            }
            JoinCommunityDialog.join(this, community);
            return true;
        }
        return super.shouldBlockClick(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void sendFeedUpdateGlobalNotification(Feed feed) {
        if (feed == null || !this.fromHeadline) {
            return;
        }
        Notification notification = new Notification("update", feed.m46clone());
        NotificationCenter notificationCenter = (NotificationCenter) NVApplication.instance().getService("notification");
        if (notificationCenter != null) {
            notificationCenter.sendNotification(notification);
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        String str;
        Feed feed = getFeed();
        if (feed != null && (str = notification.id) != null && str.equals(feed.id()) && notification.action == "delete") {
            finish();
        }
        if ((notification.obj instanceof FanClub) && getFeedDetailAdapter() != null && getFeed() != null && Utils.isEqualsNotNull(getFeed().uid(), ((FanClub) notification.obj).targetUid) && getFeed().needHidden) {
            FanClub fanClub = ((AccountService) getService("account")).getFanClub(((FanClub) notification.obj).targetUid);
            if (fanClub != null && fanClub.isActive()) {
                getFeed().needHidden = false;
                FansOnlyPostMask fansOnlyPostMask = this.fansOnlyPostMask;
                if (fansOnlyPostMask != null) {
                    fansOnlyPostMask.setVisibility(8);
                }
                getFeedDetailAdapter().notifyDataSetChanged();
            }
            getFeedDetailAdapter().refresh(0, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUpScrolling() {
        this.continuousLoader.showBottomBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDownScrolling() {
        this.continuousLoader.hideBottomBar();
    }

    private void loadNextPage() {
        FeedContinuousViewer feedContinuousViewer = this.continuousLoader;
        if (feedContinuousViewer != null) {
            feedContinuousViewer.loadNextFeed(true);
        }
    }

    private void shareFeed(final String str) {
        final Feed feed = getFeed();
        if (feed instanceof Blog) {
            Blog blog = (Blog) feed;
            if (blog.type == 6) {
                new ShareDarkRoomHelper(this).saveDynamicThemeBg(getActivity());
                QuizShareFragment.startQuizShareIntent(this, blog, new Callback<Intent>() { // from class: com.narvii.detail.FeedDetailFragment.17
                    @Override // com.narvii.util.Callback
                    public void call(Intent intent) {
                        try {
                            intent.putExtra(ShareDarkRoomFragment.KEY_STATISTIC_SOURCE, str);
                            FeedDetailFragment.this.startActivity(intent);
                        } catch (Exception unused) {
                        }
                    }
                });
                return;
            }
        }
        if (feed != null) {
            ShareDialog.getShareDialogFromFeed(this, feed, new BaseShareButtonRepost(this) { // from class: com.narvii.detail.FeedDetailFragment.18
                @Override // com.narvii.share.ShareButtonCustomInfo
                public void onClick(SharePayload sharePayload) {
                    new FeedHelper(FeedDetailFragment.this).source(str).repost(feed);
                }
            }).setSource(str).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateteBottomLayout(Feed feed) {
        FeedContinuousViewer feedContinuousViewer;
        if (feed == null || (feedContinuousViewer = this.continuousLoader) == null) {
            return;
        }
        feedContinuousViewer.updateBottomView(feed.getVotedValue(isGlobalInteractionScope()), feed.getTotalCommentsCount(), feed.getTotalVotesCount());
        FeedDetailAdapter<T> feedDetailAdapter = getFeedDetailAdapter();
        if (feedDetailAdapter != null) {
            this.continuousLoader.showTipping(feedDetailAdapter.allowTipping(false));
        }
    }

    protected boolean showBottomBar() {
        return (isEmbedFragment() || this.hideBottomBar || this.preview || !FeedHelper.isFeedContinuousOpen(this)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean newPreview() {
        return this.preview && id() == null;
    }

    protected void updateSBB(int i) {
        if (getListView() != null) {
            View viewFindViewById = ((View) getListView().getParent()).findViewById(R.id.sbb_blur_bg);
            if (viewFindViewById instanceof RealtimeBlurView) {
                ((RealtimeBlurView) viewFindViewById).setOverlayColor(getSBBBlurOverlayColor(i));
                viewFindViewById.invalidate();
            }
            this.continuousLoader.setDarkTheme(isDarkTheme());
            this.continuousLoader.setGoNextButtonEnable(!getBooleanParam("fromLink"));
        }
    }

    private int getSBBBlurOverlayColor(int i) {
        if (!hasBackground()) {
            return -788529153;
        }
        if (i == 0) {
            return 1006632960;
        }
        return Color.argb(100, Color.red(i), Color.green(i), Color.blue(i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void tippingTooltipDone() {
        ToolTipHelper toolTipHelper = this.tippingTooltipHelper;
        if (toolTipHelper != null) {
            toolTipHelper.hideToolTip();
        }
        ((SharedPreferences) getService("prefs")).edit().putBoolean("tooltip_tipping_done", true).apply();
    }

    protected boolean isTippingTooltipDone() {
        return ((SharedPreferences) getService("prefs")).getBoolean("tooltip_tipping_done", false);
    }

    protected void sendSBBLogEvent(ActSemantic actSemantic) {
        LogEvent.clickBuilder(this, actSemantic).area("BottomArea").object(getFeed()).send();
    }

    protected void bottomActionTipping() {
        sendSBBLogEvent(ActSemantic.prop);
        tippingTooltipDone();
        if (shouldShowLoginPage()) {
            return;
        }
        TippingHelper tippingHelper = new TippingHelper(this);
        tippingHelper.source("SBB");
        Feed feed = getFeed();
        if (tippingHelper.isTipAuthor(feed)) {
            tippingHelper.openTippingList(feed, getCommunity(getPublishNdcId()));
        } else {
            tippingHelper.openTipDialog(feed, getFeedDetailAdapter());
        }
    }

    protected Community getCommunity(int i) {
        Community community = ((CommunityService) getService("community")).getCommunity(i);
        return community == null ? (Community) JacksonUtils.readAs(getStringParam(RtcService.KEY_COMMUNITY), Community.class) : community;
    }

    protected int getPublishNdcId() {
        Feed feed = getFeed();
        if (feed == null) {
            return 0;
        }
        return feed instanceof Blog ? ((Blog) feed).getPublishNdcId() : feed.ndcId;
    }

    protected void bottomActionShare() {
        shareFeed("Post Detail SBB");
    }

    protected void bottomActionVote() {
        Feed feed = getFeed();
        if (feed == null) {
            return;
        }
        if (feed.getVotedValue(isGlobalInteractionScope()) == 0) {
            if (this.fromHeadline) {
                vote(4, null, true);
                return;
            } else {
                ensureLogin(new Intent(VOTE_FROM_BOTTOM));
                return;
            }
        }
        unVote();
    }

    protected void bottomActionGoNext() {
        sendSBBLogEvent(ActSemantic.nextPost);
        loadNextPage();
    }

    protected void bottomActionModMenu() {
        showModerationDialog();
    }

    protected void bottomActionFeaturePost() {
        new PowerFeedHelper(this, getFeed()).showFeatureDialog(null);
    }

    protected void bottomActionBroadCast() {
        new PowerFeedHelper(this, getFeed()).sendBroadCast();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleBookMark() {
        AffiliationsService affiliationsService = (AffiliationsService) getService("affiliations");
        final int intParam = getIntParam("__communityId");
        if (affiliationsService.contains(intParam)) {
            bookmark("Post Detail SBB");
            return;
        }
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setMessage(R.string.headline_join_amino_first);
        aCMAlertDialog.addButton(R.string.cancel, null);
        aCMAlertDialog.addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.detail.FeedDetailFragment.20
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FeedDetailFragment.this.getActivity() instanceof SemiActivity) {
                    ((SemiActivity) FeedDetailFragment.this.getActivity()).showCommunityDetailPage(false);
                    return;
                }
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", intParam);
                FeedDetailFragment.this.startActivity(intent);
            }
        });
        aCMAlertDialog.show();
    }

    private void sendNoInterestRequest(final Feed feed) {
        if (feed == null) {
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.detail.FeedDetailFragment.21
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                Notification notification = new Notification("delete", feed);
                NotificationCenter notificationCenter = (NotificationCenter) NVApplication.instance().getService("notification");
                if (notificationCenter != null) {
                    notificationCenter.sendNotification(notification);
                }
                FeedDetailFragment.this.getActivity().finish();
            }
        };
        ContentLanguageService contentLanguageService = (ContentLanguageService) getService("content_language");
        String deviceId = ((DeviceIDService) getService("deviceid")).getDeviceId();
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.global().path("headline/feedback/report").post();
        builder.param("type", 1);
        builder.param("deviceID", deviceId);
        builder.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, contentLanguageService.getRequestPrefLanguageWithLocalAsDefault());
        builder.param(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, Integer.valueOf(getIntParam("__communityId")));
        builder.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(feed instanceof Item ? 2 : 1));
        builder.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, feed.id());
        builder.param("channel", getStringParam("channelId"));
        ((ApiService) getService("api")).exec(builder.build(), progressDialog.dismissListener);
        progressDialog.show();
    }

    @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
    public void onAffiliationChanged() {
        FeedDetailAdapter<T> feedDetailAdapter;
        boolean zIsCurrentUserNotJoined = isCurrentUserNotJoined();
        boolean z = zIsCurrentUserNotJoined != this.notJoined;
        this.notJoined = zIsCurrentUserNotJoined;
        if (!z || (feedDetailAdapter = getFeedDetailAdapter()) == null) {
            return;
        }
        feedDetailAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isMeAccessibleToThisPost() {
        if (getFeed() == null) {
            return false;
        }
        return getFeed().isContentAccessible();
    }

    protected void updateFansOnlyMask() {
        if (this.fansOnlyPostMask == null || getFeed() == null) {
            return;
        }
        this.fansOnlyPostMask.setVisibility((shouldShowNotAvailable(getFeed()) || isMeAccessibleToThisPost() || !(getFeed() == null || getFeed().isFansOnly())) ? 8 : 0);
        this.fansOnlyPostMask.setAuthor(getFeed() == null ? null : getFeed().author);
        this.fansOnlyPostMask.setMarginBottomHeight(fansOnlyPostMarginBottom());
    }

    protected int fansOnlyPostMarginBottom() {
        if (!isFloatingSwipeable() && isEmbedFragment()) {
            return getResources().getDimensionPixelSize(R.dimen.cbb_height);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVListFragment
    public void updateViews() {
        super.updateViews();
        updatePrivateContentView();
        updateListViewRoot();
    }

    private void updateListViewRoot() {
        View view = this.listViewRoot;
        if (view instanceof ScrollInterceptNestedFrameLayout) {
            ((ScrollInterceptNestedFrameLayout) view).setShouldInterceptScrollEvent(!isMeAccessibleToThisPost());
        }
    }

    private void updatePrivateContentView() {
        configLiverBar();
        updateFansOnlyMask();
    }

    private void configLiverBar() {
        LiveLayerHost liveLayerHost;
        LiveLayerOnlineBar liveLayerOnlineBar;
        CBBHost cBBHost;
        boolean z = true;
        boolean z2 = (isMeAccessibleToThisPost() || isEmbedFragment()) ? false : true;
        if (getActivity() instanceof DrawerActivity) {
            ((DrawerActivity) getActivity()).setLiverLayerBarVisible(hasOnlineBar().booleanValue() && !z2);
            DrawerActivity drawerActivity = (DrawerActivity) getActivity();
            if (hasOnlineBar().booleanValue() && !z2) {
                z = false;
            }
            drawerActivity.setDisableCBB(z);
            if ((getParentFragment() instanceof HomeFragment) && !((HomeFragment) getParentFragment()).isFragmentSelected(this)) {
                return;
            }
            if (((DrawerActivity) getActivity()).hasCBB() && (cBBHost = (CBBHost) getService("cbbHost")) != null) {
                cBBHost.setLift(isMeAccessibleToThisPost() ? getCBBLift() : 0);
            }
            if (((DrawerActivity) getActivity()).hasOnlineBar() && (liveLayerHost = (LiveLayerHost) getService("liveLayerHost")) != null && (liveLayerOnlineBar = liveLayerHost.onlineBar) != null) {
                liveLayerOnlineBar.setLift(getOnlineBarLift());
            }
        }
        LiveLayerOnlineBar liveLayerOnlineBar2 = this.onlineMemberBar;
        if (liveLayerOnlineBar2 != null) {
            liveLayerOnlineBar2.setLift(getOnlineBarLift());
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected void onLoginResult(boolean z, Intent intent) {
        if (z && "becomeFans".equals(intent.getAction())) {
            if (!checkCommunityJoined()) {
                return;
            }
            if (Utils.isEqualsNotNull(this.accountService.getUserId(), getFeed() == null ? null : getFeed().uid())) {
                if (getFeedDetailAdapter() != null) {
                    getFeedDetailAdapter().refresh(0, null);
                }
            } else if (getFeed() != null && !getFeed().author.isInfluencer()) {
                NVToast.makeText(getContext(), R.string.this_fan_club_closed_hint, 1).show();
            } else if (getFeed() != null && !TextUtils.isEmpty(getFeed().uid())) {
                FanClubSubscriptionDialog.showSubscriptionDialog(this, getFeed().uid(), "Page Detailed View");
            }
        }
        super.onLoginResult(z, intent);
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new FeedDetailVideoDelegate(this, getActivity());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean checkCommunityJoined() {
        this.notJoined = isCurrentUserNotJoined();
        if (!this.notJoined) {
            return true;
        }
        Community community = (Community) JacksonUtils.readAs(getStringParam(RtcService.KEY_COMMUNITY), Community.class);
        if (isInVisitorMode()) {
            JoinCommunityDialog.showInnerJoinDialog(this);
            return false;
        }
        JoinCommunityDialog.join(this, community);
        return false;
    }

    public class CommentFooterAdapter extends NVAdapter {
        CommunityService communityService;

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public CommentFooterAdapter(NVContext nVContext) {
            super(nVContext);
            this.communityService = (CommunityService) getService("community");
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (FeedDetailFragment.this.getFeed() == null || FeedDetailFragment.this.getFeed().getCommentsCount(FeedDetailFragment.this.isGlobalInteractionScope() ^ true) <= 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(FeedDetailFragment.this.hasBackground() ? R.layout.fragment_story_vote_footer : R.layout.fragment_story_vote_footer_dark, viewGroup, view);
            if (isGlobalInteractionScope()) {
                Community community = this.communityService.getCommunity(FeedDetailFragment.this.getFeed().ndcId);
                if (community == null) {
                    community = (Community) JacksonUtils.readAs(FeedDetailFragment.this.getStringParam(RtcService.KEY_COMMUNITY), Community.class);
                }
                if (community != null) {
                    TextView textView = (TextView) viewCreateView.findViewById(R.id.total_likes_from);
                    int commentsCount = FeedDetailFragment.this.getFeed().getCommentsCount(!isGlobalInteractionScope());
                    if (commentsCount > 1) {
                        textView.setText(getContext().getString(R.string.story_all_comments_from, Integer.valueOf(commentsCount)));
                    } else {
                        textView.setText(getContext().getString(R.string.story_comment_from, Integer.valueOf(commentsCount)));
                    }
                    ((CommunityIconView) viewCreateView.findViewById(R.id.community_icon)).setImageUrl(community.icon);
                    ((TextView) viewCreateView.findViewById(R.id.community_name)).setText(community.name);
                    viewCreateView.setOnClickListener(this.subviewClickListener);
                }
            } else {
                viewCreateView.findViewById(R.id.guest_like_container).setVisibility(4);
                TextView textView2 = (TextView) viewCreateView.findViewById(R.id.guest_like_text);
                textView2.setVisibility(0);
                textView2.setText(getContext().getString(R.string.guest_comments, Integer.valueOf(FeedDetailFragment.this.getFeed().getCommentsCount(true ^ isGlobalInteractionScope()))));
            }
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 == null || view2.getId() != R.id.footer_layout) {
                return false;
            }
            LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area(isGlobalInteractionScope() ? "CommunityCommentsBar" : "GuestCommentsBar").send();
            if (!((AffiliationsService) getService("affiliations")).contains(FeedDetailFragment.this.getFeed().ndcId)) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                aCMAlertDialog.setMessage(R.string.headline_join_amino_first);
                aCMAlertDialog.addButton(R.string.cancel, null);
                aCMAlertDialog.addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.detail.-$$Lambda$FeedDetailFragment$CommentFooterAdapter$KwKzc_xnhpZq8KHl3txoTQXm1cw
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        this.f$0.lambda$onItemClick$0$FeedDetailFragment$CommentFooterAdapter(view3);
                    }
                });
                aCMAlertDialog.show();
                return true;
            }
            openDetailList();
            return true;
        }

        public /* synthetic */ void lambda$onItemClick$0$FeedDetailFragment$CommentFooterAdapter(View view) {
            tryJoinCommunity();
        }

        private void tryJoinCommunity() {
            new CommunityHelper(this).joinCommunity(FeedDetailFragment.this.getFeed().ndcId, null, new Callback<Boolean>() { // from class: com.narvii.detail.FeedDetailFragment.CommentFooterAdapter.1
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    if (bool.booleanValue()) {
                        CommentFooterAdapter.this.openDetailList();
                    }
                }
            });
            Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
            intent.putExtra("id", FeedDetailFragment.this.getFeed().ndcId);
            intent.putExtra("__communityId", isGlobalInteractionScope() ? FeedDetailFragment.this.getPublishNdcId() : 0);
            intent.putExtra("__model", !isGlobalInteractionScope());
            startActivity(intent);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void openDetailList() {
            Intent commentIntent = CommentHelper.getCommentIntent(this, FeedDetailFragment.this.getFeed(), false, false);
            commentIntent.putExtra(NVActivity.INTERACTION_SCOPE, !isGlobalInteractionScope());
            commentIntent.putExtra("community", JacksonUtils.writeAsString(((CommunityService) getService("community")).getCommunity(FeedDetailFragment.this.getFeed().ndcId)));
            if (isGlobalInteractionScope()) {
                commentIntent.putExtra("__model", true);
            }
            startActivity(commentIntent);
        }
    }

    @Override // com.narvii.detail.DetailFragment
    public NVObject getDetailNVObject() {
        return getFeed();
    }
}
