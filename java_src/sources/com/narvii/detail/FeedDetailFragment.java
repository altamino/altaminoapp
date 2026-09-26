package com.narvii.detail;

import ai.medialab.medialabads2.banners.MediaLabAdView;
import ai.medialab.medialabads2.data.AdSize;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.DataSetObserver;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
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
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.account.AccountService;
import com.narvii.amino.CommunityNavBarFragment;
import com.narvii.amino.CommunityPreferenceHelper;
import com.narvii.amino.HomeFragment;
import com.narvii.amino.master.R;
import com.narvii.app.DrawerActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
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
import com.narvii.headlines.ExternalPostPreviewFragment;
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
import com.narvii.master.search.SearchPrefsHelper;
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
import com.narvii.semicontext.SemiActivity;
import com.narvii.share.BaseShareButtonRepost;
import com.narvii.share.ShareDarkRoomFragment;
import com.narvii.share.ShareDarkRoomHelper;
import com.narvii.share.ShareDialog;
import com.narvii.share.SharePayload;
import com.narvii.share.ShareViewHelper;
import com.narvii.tipping.TippingHelper;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.LiveLayerUtils;
import com.narvii.util.Log;
import com.narvii.util.MLUtilsKt;
import com.narvii.util.NVToast;
import com.narvii.util.StatisticHelper;
import com.narvii.util.ToolTipHelper;
import com.narvii.util.Tooltip;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.TmpValue;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.util.statistics.constants.UserPropConstants;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.FeedBottomLayout;
import com.narvii.widget.NVListView;
import com.narvii.widget.ProxyView;
import com.narvii.widget.ScrollInterceptNestedFrameLayout;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
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
    View.OnClickListener addCommentClickListener = new View.OnClickListener() { // from class: com.narvii.detail.e
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f2252a.lambda$new$0(view);
        }
    };
    View.OnClickListener pageClickListener = new View.OnClickListener() { // from class: com.narvii.detail.FeedDetailFragment.1
        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (FeedDetailFragment.this.getActivity() == null) {
                return;
            }
            Intent intent = LiveLayerActivity.intent(LiveLayerFragment.class);
            intent.putExtra("customFinishAnimOut", R.anim.activity_push_bottom_out);
            intent.putExtra("customFinishAnimIn", 0);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, LiveLayerHost.getSource(FeedDetailFragment.this.getActivity()));
            intent.putExtra("pageTopic", FeedDetailFragment.this.topic);
            LiveLayerActivity.prepare(FeedDetailFragment.this.getActivity());
            FeedDetailFragment.this.blockPass.set(Boolean.TRUE);
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(FeedDetailFragment.this, intent);
            FeedDetailFragment.this.getActivity().overridePendingTransition(R.anim.activity_push_bottom_in, 0);
        }
    };
    Runnable checkTooltipRunnable = new Runnable() { // from class: com.narvii.detail.f
        @Override // java.lang.Runnable
        public final void run() {
            this.f2253a.tryShowTippingTooltip();
        }
    };
    Runnable showPageMembersRunnable = new Runnable() { // from class: com.narvii.detail.FeedDetailFragment.2
        @Override // java.lang.Runnable
        public void run() {
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
    LiveLayerOnlineBar.OnFoldChangedListener onFoldChangedListener = new LiveLayerOnlineBar.OnFoldChangedListener() { // from class: com.narvii.detail.FeedDetailFragment.3
        @Override // com.narvii.livelayer.LiveLayerOnlineBar.OnFoldChangedListener
        public void onFoldChanged(boolean z6) {
            if (z6) {
                Utils.handler.removeCallbacks(FeedDetailFragment.this.showPageMembersRunnable);
                return;
            }
            LiveLayerOnlineBar liveLayerOnlineBar = FeedDetailFragment.this.onlineMemberBar;
            if (liveLayerOnlineBar == null || !liveLayerOnlineBar.isAvatarShown()) {
                return;
            }
            Handler handler = Utils.handler;
            handler.removeCallbacks(FeedDetailFragment.this.showPageMembersRunnable);
            handler.postDelayed(FeedDetailFragment.this.showPageMembersRunnable, 2000L);
        }
    };
    private AbsListView.OnScrollListener logggingListener = new AbsListView.OnScrollListener() { // from class: com.narvii.detail.FeedDetailFragment.10
        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            if (FeedDetailFragment.this.getFeedDetailAdapter() == null || FeedDetailFragment.this.getFeedDetailAdapter().touchFeedContentEnd || FeedDetailFragment.this.getPosOfCommentHeader() == -1 || i10 + i11 <= FeedDetailFragment.this.getPosOfCommentHeader()) {
                return;
            }
            FeedDetailFragment.this.getFeedDetailAdapter().touchFeedContentEnd = true;
        }
    };
    AbsListView.OnScrollListener onScrollListener = new AbsListView.OnScrollListener() { // from class: com.narvii.detail.FeedDetailFragment.11
        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            View childAt = absListView.getChildAt(0);
            int top = childAt != null ? childAt.getTop() : 0;
            int i13 = i11 + i10;
            if (i10 == FeedDetailFragment.this.oldFirstVisibleItem) {
                if (top > FeedDetailFragment.this.oldTop) {
                    if (top - FeedDetailFragment.this.oldTop > 50) {
                        FeedDetailFragment.this.onUpScrolling();
                    }
                } else if (top < FeedDetailFragment.this.oldTop && FeedDetailFragment.this.oldTop - top > 50) {
                    FeedDetailFragment.this.onDownScrolling();
                }
            } else if (i10 < FeedDetailFragment.this.oldFirstVisibleItem) {
                FeedDetailFragment.this.onUpScrolling();
            } else {
                FeedDetailFragment.this.onDownScrolling();
            }
            if (i13 == i12) {
                int unused = FeedDetailFragment.this.oldFirstVisibleItem;
            }
            FeedDetailFragment.this.oldTop = top;
            FeedDetailFragment.this.oldFirstVisibleItem = i10;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
        }
    };
    View.OnClickListener bottomItemsClickListener = new View.OnClickListener() { // from class: com.narvii.detail.FeedDetailFragment.14
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.bottom_broadcast /* 2131362281 */:
                    FeedDetailFragment.this.bottomActionBroadCast();
                    break;
                case R.id.bottom_feature /* 2131362285 */:
                    FeedDetailFragment.this.bottomActionFeaturePost();
                    break;
                case R.id.bottom_go_next_leader /* 2131362287 */:
                case R.id.bottom_go_next_normal /* 2131362289 */:
                    FeedDetailFragment.this.bottomActionGoNext();
                    break;
                case R.id.bottom_mod_menu /* 2131362293 */:
                    FeedDetailFragment.this.bottomActionModMenu();
                    break;
                case R.id.bottom_save /* 2131362297 */:
                    FeedDetailFragment.this.sendSBBLogEvent(ActSemantic.save);
                    FeedDetailFragment.this.bookmark("Post Detail SBB");
                    break;
                case R.id.bottom_share /* 2131362298 */:
                    FeedDetailFragment.this.bottomActionShare();
                    break;
                case R.id.bottom_tipping /* 2131362302 */:
                    FeedDetailFragment.this.bottomActionTipping();
                    break;
                case R.id.bottom_vote /* 2131362305 */:
                    FeedDetailFragment.this.bottomActionVote();
                    break;
                case R.id.healine_bottom_comment_container /* 2131363419 */:
                    FeedDetailFragment.this.bottomComment();
                    break;
                case R.id.healine_bottom_more_container /* 2131363420 */:
                    final int[] iArr = new int[7];
                    ActionSheetDialog actionSheetDialog = new ActionSheetDialog(FeedDetailFragment.this.getContext());
                    iArr[0] = R.string.share;
                    actionSheetDialog.addItem(R.string.share, 0);
                    AffiliationsService affiliationsService = (AffiliationsService) FeedDetailFragment.this.getService("affiliations");
                    char c7 = 1;
                    if (!FeedDetailFragment.this.isGlobalInteractionScope() && FeedDetailFragment.this.getFeed() != null && affiliationsService.contains(FeedDetailFragment.this.getFeed().ndcId)) {
                        iArr[1] = R.string.bookmark;
                        actionSheetDialog.addItem(R.string.bookmark, 0);
                        c7 = 2;
                    }
                    iArr[c7] = R.string.flag_for_review;
                    actionSheetDialog.addItem(R.string.flag_for_review, 0);
                    actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.detail.FeedDetailFragment.14.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i10) {
                            int i11 = iArr[i10];
                            if (i11 == R.string.bookmark) {
                                FeedDetailFragment.this.handleBookMark();
                            } else if (i11 == R.string.flag_for_review) {
                                new FeedHelper(FeedDetailFragment.this).flagForReview(FeedDetailFragment.this.getFeed());
                            } else {
                                if (i11 != R.string.share) {
                                    return;
                                }
                                FeedDetailFragment.this.bottomActionShare();
                            }
                        }
                    });
                    actionSheetDialog.show();
                    break;
                case R.id.healine_bottom_share_container /* 2131363421 */:
                    FeedDetailFragment.this.bottomActionShare();
                    break;
                case R.id.healine_bottom_vote_container /* 2131363422 */:
                    FeedDetailFragment.this.bottomActionVote();
                    break;
            }
        }
    };

    public class CommentFooterAdapter extends NVAdapter {
        CommunityService communityService;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public CommentFooterAdapter(NVContext nVContext) {
            super(nVContext);
            this.communityService = (CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void openDetailList() {
            Intent commentIntent = CommentHelper.getCommentIntent(this, FeedDetailFragment.this.getFeed(), false, false);
            commentIntent.putExtra(NVActivity.INTERACTION_SCOPE, !isGlobalInteractionScope());
            commentIntent.putExtra(SearchPrefsHelper.PREFS_KEY_COMMUNITY, JacksonUtils.writeAsString(((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(FeedDetailFragment.this.getFeed().ndcId)));
            if (isGlobalInteractionScope()) {
                commentIntent.putExtra("__model", true);
            }
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, commentIntent);
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
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (FeedDetailFragment.this.getFeed() == null || FeedDetailFragment.this.getFeed().getCommentsCount(FeedDetailFragment.this.isGlobalInteractionScope() ^ true) <= 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
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
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 == null || view2.getId() != R.id.footer_layout) {
                return false;
            }
            LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area(isGlobalInteractionScope() ? "CommunityCommentsBar" : "GuestCommentsBar").send();
            if (((AffiliationsService) getService("affiliations")).contains(FeedDetailFragment.this.getFeed().ndcId)) {
                openDetailList();
                return true;
            }
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setMessage(R.string.headline_join_amino_first);
            aCMAlertDialog.addButton(R.string.cancel, null);
            aCMAlertDialog.addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.detail.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    this.f2256a.lambda$onItemClick$0(view3);
                }
            });
            aCMAlertDialog.show();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(View view) {
            tryJoinCommunity();
        }
    }

    public static Intent intent(Feed feed) {
        Feed feed2;
        if (feed instanceof Blog) {
            Blog blog = (Blog) feed;
            if (blog.type == 1 && (feed2 = blog.refObject) != null) {
                return intent(feed2);
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

    public static void safedk_Fragment_startActivity_bbf01433422f9a2703493ed5b15482ed(Fragment p0, Intent p1, Bundle p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V");
        if (p1 == null) {
            return;
        }
        super.startActivity(p1, p5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLiveLayer(boolean z6) {
        showLiveLayer(z6, true);
    }

    @CallSuper
    protected void bookmark(String str) {
    }

    protected void bottomComment() {
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
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

    protected void tryShowTippingTooltip() {
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
            Tooltip tooltipBuild = Tooltip.builder().anchorView(viewFindViewById).rootView(getVoteTooltipContainer()).text(getString(R.string.tipping_tooltip_message)).onClickListener(new View.OnClickListener() { // from class: com.narvii.detail.FeedDetailFragment.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    FeedDetailFragment.this.tippingTooltipDone();
                }
            }).build();
            ToolTipHelper toolTipHelper = new ToolTipHelper();
            this.tippingTooltipHelper = toolTipHelper;
            toolTipHelper.showToolTip(tooltipBuild);
        }
    }

    protected void unVote() {
    }

    @Override // com.narvii.list.NVListFragment
    public void updateListViewConfig() {
    }

    protected void vote(Integer num, ApiService apiService, boolean z6) {
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
            this.continuousLoaderListener = new FeedContinuousViewer.ContinuousLoaderListener() { // from class: com.narvii.detail.FeedDetailFragment.5
                @Override // com.narvii.feed.FeedContinuousViewer.ContinuousLoaderListener
                public void onFail(int i10, Object obj) {
                    if (i10 == R.id.bottom_vote) {
                        FeedDetailFragment feedDetailFragment = FeedDetailFragment.this;
                        feedDetailFragment.continuousLoader.updateVoteIcon(feedDetailFragment.getFeed(), false);
                    }
                }

                @Override // com.narvii.feed.FeedContinuousViewer.ContinuousLoaderListener
                public void onFinish(int i10, Object obj) {
                    if (i10 == R.id.bottom_vote) {
                        FeedDetailFragment.this.continuousLoader.setIsVotting(false);
                        FeedDetailFragment feedDetailFragment = FeedDetailFragment.this;
                        feedDetailFragment.continuousLoader.updateVoteIcon(feedDetailFragment.getFeed(), false);
                    }
                }

                @Override // com.narvii.feed.FeedContinuousViewer.ContinuousLoaderListener
                public void onStart(int i10, Object obj) {
                    if (i10 == R.id.bottom_vote) {
                        FeedDetailFragment.this.continuousLoader.setIsVotting(true);
                        FeedDetailFragment feedDetailFragment = FeedDetailFragment.this;
                        feedDetailFragment.continuousLoader.updateVoteIcon(feedDetailFragment.getFeed(), true);
                    }
                }
            };
            this.continuousLoader.configureBottomBarEvent(this.bottomItemsClickListener);
            this.continuousLoader.setBottomAnimationListener(new FeedBottomLayout.BottomAnimationListener() { // from class: com.narvii.detail.FeedDetailFragment.6
                @Override // com.narvii.widget.FeedBottomLayout.BottomAnimationListener
                public void onAnimationFinished() {
                    FeedDetailFragment feedDetailFragment = FeedDetailFragment.this;
                    feedDetailFragment.continuousLoader.updateVoteIcon(feedDetailFragment.getFeed().getVotedValue(FeedDetailFragment.this.isGlobalInteractionScope()), false, FeedDetailFragment.this.getFeed().getTotalVotesCount());
                    FeedDetailFragment.this.isVoteAnimationFinished = true;
                }
            });
            this.continuousLoader.setGoNextButtonVisible((listUsing == null || getBooleanParam("fromLink")) ? false : true);
        }
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
        aCMAlertDialog.addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.detail.FeedDetailFragment.15
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FeedDetailFragment.this.getActivity() instanceof SemiActivity) {
                    ((SemiActivity) FeedDetailFragment.this.getActivity()).showCommunityDetailPage(false);
                    return;
                }
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", intParam);
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(FeedDetailFragment.this, intent);
            }
        });
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        if (this.preview) {
            DetailFragment.showPreviewToast(getContext());
            return;
        }
        FeedDetailAdapter<T> feedDetailAdapter = getFeedDetailAdapter();
        if (feedDetailAdapter != null) {
            feedDetailAdapter.commentNew();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onListViewCreated$5(ListView listView) {
        if (listView instanceof NVListView) {
            ((NVListView) listView).addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.detail.FeedDetailFragment.9
                @Override // android.widget.AbsListView.OnScrollListener
                public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
                }

                @Override // android.widget.AbsListView.OnScrollListener
                public void onScrollStateChanged(AbsListView absListView, int i10) {
                    if (i10 == 1) {
                        FeedDetailFragment feedDetailFragment = FeedDetailFragment.this;
                        if (feedDetailFragment.notJoined && feedDetailFragment.toolTipHelper == null && !feedDetailFragment.preferenceHelper.getJoinAminoShowBefore() && (FeedDetailFragment.this.getActivity() instanceof SemiActivity)) {
                            View viewFindViewById = ((SemiActivity) FeedDetailFragment.this.getActivity()).getActionBar().getCustomView().findViewById(R.id.actionbar_join_btn);
                            FeedDetailFragment.this.toolTipHelper = new ToolTipHelper();
                            FeedDetailFragment.this.toolTipHelper.showToolTip(Tooltip.builder().anchorView(viewFindViewById).textId(R.string.tooltip_join_amino).isRightAlign(true).endFinger().onClickListener(new View.OnClickListener() { // from class: com.narvii.detail.FeedDetailFragment.9.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view) {
                                    new CommunityPreferenceHelper(FeedDetailFragment.this.getContext()).setJoinAminoShowBefore(true);
                                }
                            }).build());
                            FeedDetailFragment.this.onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.narvii.detail.FeedDetailFragment.9.2
                                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                                public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                                    ToolTipHelper toolTipHelper;
                                    if (str == null || !FeedDetailFragment.this.preferenceHelper.getPREFS_JOIN_AMINO_SHOWED().equals(str) || !sharedPreferences.getBoolean(str, false) || (toolTipHelper = FeedDetailFragment.this.toolTipHelper) == null) {
                                        return;
                                    }
                                    toolTipHelper.hideToolTip();
                                }
                            };
                            FeedDetailFragment.this.preferenceHelper.getPrefs().registerOnSharedPreferenceChangeListener(FeedDetailFragment.this.onSharedPreferenceChangeListener);
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$1() {
        ensureLogin(new Intent("becomeFans"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestOnlineMembersOnThisPage$2(boolean z6) {
        LiveLayerHost liveLayerHost;
        SharedPreferences sharedPreferences = (SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY);
        if ((z6 && sharedPreferences.getBoolean("liveLayerFold", false)) || (liveLayerHost = (LiveLayerHost) getService("liveLayerHost")) == null || liveLayerHost.onlineBar.isTapping()) {
            return;
        }
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), z6 ? R.anim.fade_in : R.anim.fade_out);
        this.onlineMemberBar.setVisibility(z6 ? 0 : 8);
        this.onlineMemberBar.startAnimation(animationLoadAnimation);
        showLiveLayer(!z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestOnlineMembersOnThisPage$3(boolean z6) {
        if (z6) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.fade_out);
            this.onlineMemberBar.setVisibility(8);
            this.onlineMemberBar.startAnimation(animationLoadAnimation);
            ((LiveLayerHost) getService("liveLayerHost")).onlineBar.goFold(z6);
            showLiveLayer(true);
        }
    }

    private void loadNextPage() {
        FeedContinuousViewer feedContinuousViewer = this.continuousLoader;
        if (feedContinuousViewer != null) {
            feedContinuousViewer.loadNextFeed(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDownScrolling() {
        this.continuousLoader.hideBottomBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUpScrolling() {
        this.continuousLoader.showBottomBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestOnlineMembersOnThisPage() {
        LiveLayerService liveLayerService = (LiveLayerService) getService("liveLayer");
        if (liveLayerService == null) {
            return;
        }
        liveLayerService.requestOnlineMembers(this.topic, 10, true, new Callback() { // from class: com.narvii.detail.d
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f2251a.lambda$requestOnlineMembersOnThisPage$4((UserListResponse) obj);
            }
        });
    }

    private void sendNoInterestRequest(final Feed feed) {
        if (feed == null) {
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.detail.FeedDetailFragment.16
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
        String strK = a0.b.k();
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.global().path("headline/feedback/report").post();
        builder.param("type", 1);
        builder.param(a0.a.o, strK);
        builder.param("language", contentLanguageService.getRequestPrefLanguageWithLocalAsDefault());
        builder.param(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, Integer.valueOf(getIntParam("__communityId")));
        builder.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(feed instanceof Item ? 2 : 1));
        builder.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, feed.id());
        builder.param("channel", getStringParam("channelId"));
        ((ApiService) getService("api")).exec(builder.build(), progressDialog.dismissListener);
        progressDialog.show();
    }

    private boolean shouldShowMemberOnThisPage() {
        return (((ConfigService) getService("config")).getCommunityId() == 0 || isEmbedFragment() || id() == null || (isAdded() && isGlobalInteractionScope())) ? false : true;
    }

    private void showLiveLayer(boolean z6, boolean z10) {
        LiveLayerHost liveLayerHost;
        LiveLayerOnlineBar liveLayerOnlineBar;
        if (!isActive() || (liveLayerHost = (LiveLayerHost) getService("liveLayerHost")) == null || (liveLayerOnlineBar = liveLayerHost.onlineBar) == null) {
            return;
        }
        liveLayerOnlineBar.setVisibility(z6 ? 0 : 4);
        if (z10) {
            liveLayerHost.onlineBar.startAnimation(AnimationUtils.loadAnimation(getContext(), z6 ? R.anim.fade_in : R.anim.fade_out));
        }
    }

    private void updateListViewRoot() {
        View view = this.listViewRoot;
        if (view instanceof ScrollInterceptNestedFrameLayout) {
            ((ScrollInterceptNestedFrameLayout) view).setShouldInterceptScrollEvent(!isMeAccessibleToThisPost());
        }
    }

    protected void bottomActionBroadCast() {
        new PowerFeedHelper(this, getFeed()).sendBroadCast();
    }

    protected void bottomActionFeaturePost() {
        new PowerFeedHelper(this, getFeed()).showFeatureDialog(null);
    }

    protected void bottomActionGoNext() {
        sendSBBLogEvent(ActSemantic.nextPost);
        loadNextPage();
    }

    protected void bottomActionShare() {
        shareFeed("Post Detail SBB");
    }

    protected void bottomActionTipping() {
        sendSBBLogEvent(ActSemantic.prop);
        tippingTooltipDone();
        if (shouldShowLoginPage()) {
            return;
        }
        TippingHelper tippingHelper = new TippingHelper(this);
        tippingHelper.source(EventConstants.LikePost.SBB);
        Feed feed = getFeed();
        if (tippingHelper.isTipAuthor(feed)) {
            tippingHelper.openTippingList(feed, getCommunity(getPublishNdcId()));
        } else {
            tippingHelper.openTipDialog(feed, getFeedDetailAdapter());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public View getAdView(View view) {
        if (view instanceof MediaLabAdView) {
            Log.v("ItemDetailFragment", "MediaLab MedRect - Returning old ad view");
            return view;
        }
        MediaLabAdView mediaLabAdView = this.adView;
        if (mediaLabAdView == null || !mediaLabAdView.showPreloadedAd()) {
            return view;
        }
        Log.v("FeedDetailFragment", "MediaLab MedRect - New ad view ready");
        this.adView.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, (getContext().getResources().getDimensionPixelSize(R.dimen.ad_divider_padding) * 2) + AdSize.MEDIUM_RECTANGLE.getHeightPx(getContext())));
        MLUtilsKt.centerMRECView(this.adView);
        return this.adView;
    }

    protected Community getCommunity(int i10) {
        Community community = ((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(i10);
        return community == null ? (Community) JacksonUtils.readAs(getStringParam(RtcService.KEY_COMMUNITY), Community.class) : community;
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new FeedDetailVideoDelegate(this, getActivity());
    }

    protected boolean isTippingTooltipDone() {
        return ((SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY)).getBoolean("tooltip_tipping_done", false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean newPreview() {
        return this.preview && id() == null;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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
            long jCurrentTimeMillis = this.lastDuration + (this.lastEnterTime == 0 ? 0L : System.currentTimeMillis() - this.lastEnterTime);
            this.headlineLoggingHelper.logPostDetailViewQuit(getFeed(), jCurrentTimeMillis > 0 ? jCurrentTimeMillis : 0L, (getFeedDetailAdapter() == null || !getFeedDetailAdapter().touchFeedContentEnd) ? 0 : 100, getStringParam("channelId"));
        }
    }

    public void onFeedObjectResponse() {
        if (this.tippingTooltipTried) {
            return;
        }
        this.tippingTooltipTried = true;
        Utils.postDelayed(new Runnable() { // from class: com.narvii.detail.FeedDetailFragment.7
            @Override // java.lang.Runnable
            public void run() {
                FeedDetailFragment.this.tryShowTippingTooltip();
            }
        }, 3000L);
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
                for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                    viewGroup.getChildAt(i10).setOnClickListener(null);
                    viewGroup.getChildAt(i10).setClickable(false);
                }
            }
            view.setOnClickListener(this.addCommentClickListener);
            this.blurView.setVisibility(0);
            this.blurView.setOverlayColor(sBBBlurOverlayColor);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected void onLoginResult(boolean z6, Intent intent) {
        if (z6 && "becomeFans".equals(intent.getAction())) {
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
                FanClubSubscriptionDialog.showSubscriptionDialog(this, getFeed().uid(), EventConstants.LikePost.PAGE_DETAILED_VIEW);
            }
        }
        super.onLoginResult(z6, intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void sendFeedUpdateGlobalNotification(Feed feed) {
        if (feed == null || !this.fromHeadline) {
            return;
        }
        Notification notification = new Notification("update", feed.m1622clone());
        NotificationCenter notificationCenter = (NotificationCenter) NVApplication.instance().getService("notification");
        if (notificationCenter != null) {
            notificationCenter.sendNotification(notification);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void tippingTooltipDone() {
        ToolTipHelper toolTipHelper = this.tippingTooltipHelper;
        if (toolTipHelper != null) {
            toolTipHelper.hideToolTip();
        }
        ((SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY)).edit().putBoolean("tooltip_tipping_done", true).apply();
    }

    protected void updateFansOnlyMask() {
        if (this.fansOnlyPostMask == null || getFeed() == null) {
            return;
        }
        this.fansOnlyPostMask.setVisibility((shouldShowNotAvailable(getFeed()) || isMeAccessibleToThisPost() || !(getFeed() == null || getFeed().isFansOnly())) ? 8 : 0);
        this.fansOnlyPostMask.setAuthor(getFeed() == null ? null : getFeed().author);
        this.fansOnlyPostMask.setMarginBottomHeight(fansOnlyPostMarginBottom());
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

    private boolean allowBottomTooltip() {
        if (getActivity() != null && !isEmbedFragment() && !this.notJoined && !this.fromHeadline && !this.preview && isMeAccessibleToThisPost() && !isFinishing() && !isDestoryed()) {
            return true;
        }
        return false;
    }

    private void configLiverBar() {
        boolean z6;
        boolean z10;
        LiveLayerHost liveLayerHost;
        LiveLayerOnlineBar liveLayerOnlineBar;
        CBBHost cBBHost;
        boolean z11 = true;
        int cBBLift = 0;
        if (!isMeAccessibleToThisPost() && !isEmbedFragment()) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (getActivity() instanceof DrawerActivity) {
            DrawerActivity drawerActivity = (DrawerActivity) getActivity();
            if (hasOnlineBar().booleanValue() && !z6) {
                z10 = true;
            } else {
                z10 = false;
            }
            drawerActivity.setLiverLayerBarVisible(z10);
            DrawerActivity drawerActivity2 = (DrawerActivity) getActivity();
            if (hasOnlineBar().booleanValue() && !z6) {
                z11 = false;
            }
            drawerActivity2.setDisableCBB(z11);
            if ((getParentFragment() instanceof HomeFragment) && !((HomeFragment) getParentFragment()).isFragmentSelected(this)) {
                return;
            }
            if (((DrawerActivity) getActivity()).hasCBB() && (cBBHost = (CBBHost) getService("cbbHost")) != null) {
                if (isMeAccessibleToThisPost()) {
                    cBBLift = getCBBLift();
                }
                cBBHost.setLift(cBBLift);
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

    private ProxyView getLiveLayerView() {
        if (getView() == null || getView().getRootView() == null) {
            return null;
        }
        return (ProxyView) getView().getRootView().findViewById(R.id.live_layer_proxy_view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getPosOfCommentHeader() {
        if (getFeedDetailAdapter() != null) {
            int count = getFeedDetailAdapter().getCount();
            for (int i10 = 0; i10 < count; i10++) {
                if (getFeedDetailAdapter().getItem(i10) == DetailAdapter.COMMENT_HEADER) {
                    return i10;
                }
            }
            return -1;
        }
        return -1;
    }

    private int getSBBBlurOverlayColor(int i10) {
        if (hasBackground()) {
            if (i10 == 0) {
                return 1006632960;
            }
            return Color.argb(100, Color.red(i10), Color.green(i10), Color.blue(i10));
        }
        return -788529153;
    }

    private View getVoteTooltipContainer() {
        if (getView() == null || getView().getRootView() == null) {
            return null;
        }
        return getView().getRootView().findViewById(R.id.layout_above_post_entry);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestOnlineMembersOnThisPage$4(UserListResponse userListResponse) {
        if (isDestoryed()) {
            return;
        }
        this.onlineMemberBar.setOnAvatarShownChangeListener(new LiveLayerOnlineBar.OnAvatarShownChangeListener() { // from class: com.narvii.detail.a
            @Override // com.narvii.livelayer.LiveLayerOnlineBar.OnAvatarShownChangeListener
            public final void onAvatarShownChanged(boolean z6) {
                this.f2247a.lambda$requestOnlineMembersOnThisPage$2(z6);
            }
        });
        this.onlineMemberBar.setOnFoldChangedListener(new LiveLayerOnlineBar.OnFoldChangedListener() { // from class: com.narvii.detail.b
            @Override // com.narvii.livelayer.LiveLayerOnlineBar.OnFoldChangedListener
            public final void onFoldChanged(boolean z6) {
                this.f2248a.lambda$requestOnlineMembersOnThisPage$3(z6);
            }
        });
        this.onlineMemberBar.setUserList(userListResponse.userList, userListResponse.userProfileCount);
        this.onlineMemberBar.setOnBarClickListener(this.pageClickListener);
        this.onlineMemberBar.subscribeTopic(this.topic);
    }

    private void shareFeed(final String str) {
        final Feed feed = getFeed();
        if (feed instanceof Blog) {
            Blog blog = (Blog) feed;
            if (blog.type == 6) {
                new ShareDarkRoomHelper(this).saveDynamicThemeBg(getActivity());
                QuizShareFragment.startQuizShareIntent(this, blog, new Callback<Intent>() { // from class: com.narvii.detail.FeedDetailFragment.12
                    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                        if (p1 == null) {
                            return;
                        }
                        p0.startActivity(p1);
                    }

                    @Override // com.narvii.util.Callback
                    public void call(Intent intent) {
                        try {
                            intent.putExtra(ShareDarkRoomFragment.KEY_STATISTIC_SOURCE, str);
                            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(FeedDetailFragment.this, intent);
                        } catch (Exception unused) {
                        }
                    }
                });
                return;
            }
        }
        if (feed != null) {
            ShareDialog.getShareDialogFromFeed(this, feed, new BaseShareButtonRepost(this) { // from class: com.narvii.detail.FeedDetailFragment.13
                @Override // com.narvii.share.ShareButtonCustomInfo
                public void onClick(SharePayload sharePayload) {
                    new FeedHelper(FeedDetailFragment.this).source(str).repost(feed);
                }
            }).setSource(str).show();
        }
    }

    private void updatePrivateContentView() {
        configLiverBar();
        updateFansOnlyMask();
    }

    protected void bottomActionModMenu() {
        showModerationDialog();
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
            }
            ensureLogin(new Intent(VOTE_FROM_BOTTOM));
            StatisticsService statisticsService = (StatisticsService) getService("statistics");
            StatisticsEventBuilder statisticsEventBuilderSource = statisticsService.event(EventConstants.LikePost.LIKE_POST).param(EventConstants.LikePost.SBB, true).param(EventConstants.PostType.POST_TYPE, StatisticHelper.getStatisticSource(this, feed, 1)).source(EventConstants.LikePost.PAGE_DETAILED_VIEW);
            statisticsEventBuilderSource.userPropInc(UserPropConstants.PostEvents.LIKES_TOTAL);
            FirebaseLogManager.logEvent(this, statisticsEventBuilderSource);
            return;
        }
        unVote();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean checkCommunityJoined() {
        boolean zIsCurrentUserNotJoined = isCurrentUserNotJoined();
        this.notJoined = zIsCurrentUserNotJoined;
        if (zIsCurrentUserNotJoined) {
            Community community = (Community) JacksonUtils.readAs(getStringParam(RtcService.KEY_COMMUNITY), Community.class);
            if (isInVisitorMode()) {
                JoinCommunityDialog.showInnerJoinDialog(this);
                return false;
            }
            JoinCommunityDialog.join(this, community);
            return false;
        }
        return true;
    }

    protected int fansOnlyPostMarginBottom() {
        if (isFloatingSwipeable() || !isEmbedFragment()) {
            return 0;
        }
        return getResources().getDimensionPixelSize(R.dimen.cbb_height);
    }

    @Override // com.narvii.detail.DetailFragment
    public NVObject getDetailNVObject() {
        return getFeed();
    }

    public T getFeed() {
        FeedDetailAdapter<T> feedDetailAdapter = getFeedDetailAdapter();
        if (feedDetailAdapter == null) {
            return null;
        }
        return feedDetailAdapter.getObject();
    }

    @Override // com.narvii.app.NVFragment
    public int getOnlineBarLift() {
        if (showBottomBar() && this.continuousLoader.isFeedBottomBarVisible() && isMeAccessibleToThisPost()) {
            return (int) (getResources().getDimensionPixelSize(R.dimen.feed_bottom_height) - Utils.dpToPx(getContext(), 10.0f));
        }
        return super.getOnlineBarLift();
    }

    protected int getPublishNdcId() {
        Feed feed = getFeed();
        if (feed == null) {
            return 0;
        }
        int i10 = feed.ndcId;
        if (feed instanceof Blog) {
            return ((Blog) feed).getPublishNdcId();
        }
        return i10;
    }

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorDarkColor() {
        Feed feed = getFeed();
        if (feed != null && feed.getBackgroundMedia() != null) {
            return 1157627903;
        }
        return super.getSelectorDarkColor();
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasOnlineBar() {
        if (isAdded()) {
            return Boolean.valueOf(!isGlobalInteractionScope());
        }
        return null;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.valueOf(!FeedHelper.isFeedContinuousOpen(this));
    }

    protected boolean isCurrentUserNotJoined() {
        int i10;
        if (isGlobalInteractionScope()) {
            Feed feed = getFeed();
            if (feed == null && getStringParam(CommunityDetailFragment.KEY_COMMUNITY) != null && !this.preview) {
                feed = (Feed) JacksonUtils.readUsing(getStringParam(CommunityDetailFragment.KEY_COMMUNITY), new Feed.FeedDeserializer());
            }
            if (this.preview || feed == null || (i10 = feed.ndcId) == 0) {
                return false;
            }
            return !this.affiliationsService.contains(i10);
        }
        return !this.affiliationsService.contains(this.configService.getCommunityId());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isMeAccessibleToThisPost() {
        if (getFeed() == null) {
            return false;
        }
        return getFeed().isContentAccessible();
    }

    public boolean isMine() {
        Feed feed = getFeed();
        if (feed != null) {
            return Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), feed.uid());
        }
        return false;
    }

    public boolean isMineWithCommunityCheck() {
        boolean z6;
        Feed feed = getFeed();
        if (feed == null) {
            return false;
        }
        if (feed.ndcId == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (z6 != isGlobalInteractionScope() || !isMine()) {
            return false;
        }
        return true;
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        LiveLayerOnlineBar liveLayerOnlineBar;
        View.OnClickListener onClickListener;
        LiveLayerOnlineBar.OnFoldChangedListener onFoldChangedListener;
        super.onActiveChanged(z6);
        LiveLayerHost liveLayerHost = (LiveLayerHost) getService("liveLayerHost");
        if (liveLayerHost != null && (liveLayerOnlineBar = liveLayerHost.onlineBar) != null) {
            if (z6) {
                onClickListener = this.pageClickListener;
            } else {
                onClickListener = liveLayerHost.onClickListener;
            }
            liveLayerOnlineBar.setOnBarClickListener(onClickListener);
            if (shouldShowMemberOnThisPage()) {
                LiveLayerOnlineBar liveLayerOnlineBar2 = liveLayerHost.onlineBar;
                if (z6) {
                    onFoldChangedListener = this.onFoldChangedListener;
                } else {
                    onFoldChangedListener = null;
                }
                liveLayerOnlineBar2.setOnFoldChangedListener(onFoldChangedListener);
            }
        }
        if (this.onlineMemberBar != null) {
            if (((SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY)).getBoolean("liveLayerFold", false)) {
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
        if (z6) {
            this.lastEnterTime = System.currentTimeMillis();
        } else {
            this.lastDuration += System.currentTimeMillis() - this.lastEnterTime;
        }
        if (z6) {
            configLiverBar();
            if (this.checkTooltipNextActive) {
                Utils.postDelayed(this.checkTooltipRunnable, 500L);
                return;
            }
            return;
        }
        Utils.handler.removeCallbacks(this.checkTooltipRunnable);
    }

    @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
    public void onAffiliationChanged() {
        boolean z6;
        FeedDetailAdapter<T> feedDetailAdapter;
        boolean zIsCurrentUserNotJoined = isCurrentUserNotJoined();
        if (zIsCurrentUserNotJoined != this.notJoined) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.notJoined = zIsCurrentUserNotJoined;
        if (z6 && (feedDetailAdapter = getFeedDetailAdapter()) != null) {
            feedDetailAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ConfigService configService = (ConfigService) getService("config");
        this.configService = configService;
        configService.getCommunityId();
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
        if (this.fromHeadline && isRootFragment() && getFragmentManager().m0("communityNavBar") == null) {
            CommunityNavBarFragment communityNavBarFragment = new CommunityNavBarFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("showBackButton", true);
            communityNavBarFragment.setArguments(bundle2);
            getFragmentManager().q().c(android.R.id.content, communityNavBarFragment, "communityNavBar").j();
        }
        this.affiliationsService.addAffiliationChangeListener(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.share, 1, R.string.share).setIcon(R.drawable.ic_community_share).setShowAsAction(2);
        menu.add(0, R.string.repost, 1, R.string.repost);
        menu.add(0, R.string.copy_link, 1, R.string.copy_link);
        menu.add(0, R.string.edit, 5, R.string.edit);
        menu.add(0, R.string.delete, 5, R.string.delete).setShowAsAction(0);
        menu.add(0, R.string.flag_for_review, 8, R.string.flag_for_review).setShowAsAction(0);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.feed_detail_frame, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        View viewFindViewById;
        View view = getView();
        if (this.adView != null && view != null && (viewFindViewById = getView().findViewById(R.id.swipe_refresh)) != null) {
            this.adView.removeFriendlyObstruction(viewFindViewById);
        }
        super.onDestroyView();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onHoverRecycled() {
        super.onHoverRecycled();
        this.blurView.setVisibility(8);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(final ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (this instanceof BlogDetailFragment) {
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("inBlogDetail", true);
            bundle2.putBoolean("preview", this.preview);
        }
        setHoverAdapter(this);
        this.preferenceHelper = new CommunityPreferenceHelper(getContext());
        Utils.postDelayed(new Runnable() { // from class: com.narvii.detail.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f2249a.lambda$onListViewCreated$5(listView);
            }
        }, 200L);
        attachSBB();
        if ((listView instanceof NVListView) && this.fromHeadline) {
            ((NVListView) listView).addOnScrollListener(this.logggingListener);
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

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.string.copy_link /* 2131886921 */:
                sendHeaderAreaLog(ActSemantic.copyLink);
                ShareViewHelper shareViewHelper = new ShareViewHelper(this);
                shareViewHelper.source = "Post Detail Menu";
                shareViewHelper.copyLink(getFeed());
                return true;
            case R.string.delete /* 2131887008 */:
                new FeedHelper(this).delete(getFeed(), false);
                return true;
            case R.string.edit /* 2131887160 */:
                FeedHelper feedHelper = new FeedHelper(this);
                feedHelper.source = "Post Detail View";
                feedHelper.loggingSource = LoggingSource.PostDetailView;
                feedHelper.refreshAndEdit(getFeed());
                return true;
            case R.string.flag_for_review /* 2131888001 */:
                sendHeaderAreaLog(ActSemantic.flag);
                new FeedHelper(this).flagForReview(getFeed());
                return true;
            case R.string.repost /* 2131890169 */:
                sendHeaderAreaLog(ActSemantic.repost);
                new FeedHelper(this).source("Navbar").repost(getFeed());
                return true;
            case R.string.share /* 2131890349 */:
                sendHeaderAreaLog(ActSemantic.share);
                shareFeed("Post Detail Navbar");
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean z6;
        boolean zIsMine;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        User user;
        super.onPrepareOptionsMenu(menu);
        Feed feed = getFeed();
        boolean z14 = true;
        if (feed != null && feed.status != 9) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (feed != null && (user = feed.author) != null && user.uid != null) {
            zIsMine = isMine();
            z10 = !zIsMine;
        } else {
            zIsMine = false;
            z10 = false;
        }
        menu.findItem(R.string.share).setVisible(z6);
        menu.findItem(R.string.copy_link).setVisible(z6);
        MenuItem menuItemFindItem = menu.findItem(R.string.repost);
        if (z6 && z10) {
            z11 = true;
        } else {
            z11 = false;
        }
        menuItemFindItem.setVisible(z11);
        MenuItem menuItemFindItem2 = menu.findItem(R.string.edit);
        if (feed != null && zIsMine) {
            z12 = true;
        } else {
            z12 = false;
        }
        menuItemFindItem2.setVisible(z12);
        MenuItem menuItemFindItem3 = menu.findItem(R.string.delete);
        if (feed != null && zIsMine) {
            z13 = true;
        } else {
            z13 = false;
        }
        menuItemFindItem3.setVisible(z13);
        MenuItem menuItemFindItem4 = menu.findItem(R.string.flag_for_review);
        if (!z6 || !z10) {
            z14 = false;
        }
        menuItemFindItem4.setVisible(z14);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        this.blurView = (RealtimeBlurView) view.findViewById(R.id.overlay_blur_bg);
        super.onViewCreated(view, bundle);
        this.listViewRoot = view.findViewById(R.id.list_frame);
        getFeedDetailAdapter().registerDataSetObserver(new DataSetObserver() { // from class: com.narvii.detail.FeedDetailFragment.4
            @Override // android.database.DataSetObserver
            public void onChanged() {
                FeedDetailFragment.this.invalidateOptionsMenu();
            }
        });
        LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) getView().findViewById(R.id.page_online_bar);
        this.onlineMemberBar = liveLayerOnlineBar;
        liveLayerOnlineBar.setVisibility(8);
        this.onlineMemberBar.setLift(getOnlineBarLift());
        this.requestOnlineMembersRunnable = new Runnable() { // from class: com.narvii.detail.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f2254a.requestOnlineMembersOnThisPage();
            }
        };
        if (shouldShowMemberOnThisPage()) {
            Utils.postDelayed(this.requestOnlineMembersRunnable, 2000L);
        }
        FansOnlyPostMask fansOnlyPostMask = (FansOnlyPostMask) view.findViewById(R.id.fans_only_post_mask);
        this.fansOnlyPostMask = fansOnlyPostMask;
        fansOnlyPostMask.setBecomeFansClickListener(new FansOnlyPostMask.BecomeFansClickListener() { // from class: com.narvii.detail.h
            @Override // com.narvii.influencer.FansOnlyPostMask.BecomeFansClickListener
            public final void onBecomeFansClicked() {
                this.f2255a.lambda$onViewCreated$1();
            }
        });
        updatePrivateContentView();
        updateListViewRoot();
        View viewFindViewById = view.findViewById(R.id.swipe_refresh);
        MediaLabAdView mediaLabAdView = this.adView;
        if (mediaLabAdView != null && viewFindViewById != null) {
            mediaLabAdView.addFriendlyObstruction(viewFindViewById);
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

    protected void sendSBBLogEvent(ActSemantic actSemantic) {
        LogEvent.clickBuilder(this, actSemantic).area("BottomArea").object(getFeed()).send();
    }

    @Override // com.narvii.detail.DetailFragment
    protected boolean shouldBlockClick(Object obj) {
        boolean zIsCurrentUserNotJoined = isCurrentUserNotJoined();
        this.notJoined = zIsCurrentUserNotJoined;
        if (zIsCurrentUserNotJoined) {
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

    protected boolean showBottomBar() {
        if (!isEmbedFragment() && !this.hideBottomBar && !this.preview && FeedHelper.isFeedContinuousOpen(this)) {
            return true;
        }
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    public void startActivity(Intent intent, @Nullable Bundle bundle) {
        safedk_Fragment_startActivity_bbf01433422f9a2703493ed5b15482ed(this, intent, bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void tryReportActiveStatus() {
        if (isActive()) {
            if (!this.preview && !TextUtils.isEmpty(id()) && getFeed() != null && LiveLayerUtils.isStatusOk(getFeed()) && this.liveLayerTarget == null && ((ConfigService) getService("config")).getCommunityId() != 0) {
                LiveLayerService liveLayerService = (LiveLayerService) getService("liveLayer");
                this.liveLayerTarget = NVObject.objectTypeName(objectType()) + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + id();
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

    protected void updateSBB(int i10) {
        if (getListView() != null) {
            View viewFindViewById = ((View) getListView().getParent()).findViewById(R.id.sbb_blur_bg);
            if (viewFindViewById instanceof RealtimeBlurView) {
                ((RealtimeBlurView) viewFindViewById).setOverlayColor(getSBBBlurOverlayColor(i10));
                viewFindViewById.invalidate();
            }
            this.continuousLoader.setDarkTheme(isDarkTheme());
            this.continuousLoader.setGoNextButtonEnable(!getBooleanParam("fromLink"));
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void updateViews() {
        super.updateViews();
        updatePrivateContentView();
        updateListViewRoot();
    }

    public static Intent intent(NVContext nVContext, Feed feed, List<? extends Feed> list, String str, String str2, int i10) {
        return intent(nVContext, feed, list, str, str2, i10, null, 0);
    }

    public static Intent intent(NVContext nVContext, Feed feed, List<? extends Feed> list, String str, String str2, int i10, String str3, int i11) {
        Intent intent = intent(feed);
        if (FeedHelper.isFeedContinuousOpen(nVContext) && intent != null && i10 >= 0 && list != null) {
            Utils.safeAddExtraInIntent(intent, FeedContinuousViewer.KEY_CONTINUOUS_FEED_LIST, list.size() > 0 ? JacksonUtils.writeAsString(list) : null);
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_REQUEST, str);
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_TIMESTAMP, str2);
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_CURRENT_POSITION, i10);
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_NEXT_TOKEN, str3);
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_PAGE_SIZE, i11);
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_PAGE_SIZE, i11);
            intent.putExtra(FeedContinuousViewer.KEY_CONTINUOUS_FEED_FILTER_FEATURE, true);
        }
        return intent;
    }
}
