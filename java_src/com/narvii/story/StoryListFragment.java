package com.narvii.story;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.support.design.widget.BottomSheetBehavior;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.PagerSnapHelper;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.SnapHelper;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.text.TextUtils;
import android.util.Property;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.comment.CommentHelper;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.feed.FeedRequestHelper;
import com.narvii.influencer.FanClub;
import com.narvii.language.ContentLanguageService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.ActType;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.master.MasterTabFragment;
import com.narvii.model.Blog;
import com.narvii.model.Comment;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.model.LinkSummary;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.QuizOption;
import com.narvii.model.QuizQuestion;
import com.narvii.model.Scene;
import com.narvii.model.StrategyInfo;
import com.narvii.model.User;
import com.narvii.model.api.BlogListResponse;
import com.narvii.monetization.avatarframe.SwipeableFragment;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.nvplayer.BufferingQuit;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.IVideoListener;
import com.narvii.nvplayer.NVMediaSource;
import com.narvii.nvplayer.NVPlayerManager;
import com.narvii.nvplayer.NVVideoException;
import com.narvii.nvplayer.WindowIndexChangeListener;
import com.narvii.nvplayer.exoplayer.ExoPreloadUtil;
import com.narvii.nvplayer.exoplayer.NVExoPlayer;
import com.narvii.nvplayerview.ISurfaceListener;
import com.narvii.nvplayerview.NVVideoDebugView;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.nvplayerview.broadcast.NetworkConnectChangeReceiver;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.PageView;
import com.narvii.paging.PageViewUtils;
import com.narvii.paging.adapter.NVRecyclerViewAdapter;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.source.DataSource;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.source.PagingConfiguration;
import com.narvii.paging.source.SinglePageDataSource;
import com.narvii.paging.state.PageStatusView;
import com.narvii.scene.ScenePlayListener;
import com.narvii.scene.ScenePlayRecord;
import com.narvii.scene.poll.PollExtensionKt;
import com.narvii.scene.quiz.QuizQuestionResult;
import com.narvii.setting.VideoAutoPlayChangeListener;
import com.narvii.setting.VideoAutoPlayService;
import com.narvii.share.ShareButtonSaveStory;
import com.narvii.share.ShareDialog;
import com.narvii.share.SharePayload;
import com.narvii.story.StoryDownloadHelper;
import com.narvii.story.base.StoryDataSource;
import com.narvii.story.base.StoryListAdapterKt;
import com.narvii.story.comment.StoryCommentListFragment;
import com.narvii.story.detail.StoryUserView;
import com.narvii.story.quiz.StoryQuizRankingListFragment;
import com.narvii.story.swipe.IStorySwipeListener;
import com.narvii.story.swipe.StoryItemTouchCallback;
import com.narvii.story.vote.StoryVoteListFragment;
import com.narvii.story.widgets.GuideViewHelper;
import com.narvii.story.widgets.StoryGuideViewClick;
import com.narvii.story.widgets.StoryGuideViewDoubleTap;
import com.narvii.story.widgets.StoryGuideViewSwipe;
import com.narvii.story.widgets.StoryItemClickListener;
import com.narvii.story.widgets.StoryItemPlayControlListener;
import com.narvii.story.widgets.StoryItemView;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.ImagePreloadUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.RequestResult;
import com.narvii.util.SplashUtils;
import com.narvii.util.StoryUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.image.NVImageLoader;
import com.narvii.widget.EasyButton;
import com.narvii.widget.NVImageView;
import com.narvii.widget.RoundFrameLayout;
import com.narvii.widget.recycleview.NVRecyclerView;
import com.narvii.widgets.IStoryPollQuizPlayListener;
import com.narvii.widgets.StoryProgressBar;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class StoryListFragment extends NVRecyclerViewFragment implements View.OnClickListener, IVideoListener, ISurfaceListener, WindowIndexChangeListener, NetworkConnectChangeReceiver.IWifiStateChangeListener, VideoAutoPlayChangeListener, FragmentOnBackListener, IStoryBottomSheetListener, ScenePlayListener, IStorySwipeListener, IStoryLongClickListener, IStoryPollQuizPlayListener, IStoryShareListener {
    public static String ACTIVITY_VISIBLE_HINT_EXCLUSIVE = "activityVisibleHintExclusive";
    public static final int HORIZONTAL = 1;
    public static String KEY_AUTO_LOAD_NEXT_PAGE = "auto_load";
    public static String KEY_BACK_DIRECTLY = "backDirectly";
    public static String KEY_FEED = "init_feed";
    public static String KEY_FEED_COMMUNITY = "init_feed_community";
    public static String KEY_FEED_ID = "id";
    public static String KEY_FEED_USER = "init_feed_user";
    public static String KEY_FORCE_VIDEO_AUTO_PLAY = "force_video_auto_play";
    public static String KEY_IMMERSION_MODE = "immersionMode";
    public static String KEY_IS_OFFSET_PAGING = "isOffsetPaging";
    public static String KEY_JUST_CREATED = "justCreated";
    public static String KEY_KEY_WORD = "search_keyword";
    public static String KEY_LOAD_RAW_VIDEO = "load_raw_video";
    public static String KEY_PATH_SUFFIX = "story_path_suffix";
    public static String KEY_SHOW_COMMENT_BAR = "showComment";
    public static String KEY_SPECIFIC_PARAMS = "specific_params";
    public static String KEY_SPECIFIC_PATH = "specific_path";
    public static String KEY_TOPIC_ID = "topic_id";
    public static String KEY_TYPE = "type";
    public static String KEY_UID = "profileUid";
    private static final int PAUSE_REASON_DIALOG = 3;
    private static final int PAUSE_REASON_FORCE = -1;
    private static final int PAUSE_REASON_LONG_CLICK = 2;
    private static final int PAUSE_REASON_NOTHING = 0;
    private static final int PAUSE_REASON_ON_ACTIVE_CHANGED = 1;
    public static String SHOW_IN_SAME_ACTIVITY = "showInSameActivity";
    private static final String TAG = "StoryListFragment";
    public static final int VERTICAL = 0;
    private static float VOLUME_WHEN_PLAY_POLL_QUIZ = 0.5f;
    private AccountService accountService;
    private View bottomBgView;
    private RoundFrameLayout bottomContainer;
    private FrameLayout bottomLayout;
    private BottomSheetBehavior<FrameLayout> bottomSheetBehavior;
    private View btnBack;
    private CommunityService communityService;
    private ConfigService configService;
    private ConnectivityManager connectivityManager;
    private Blog curStory;
    private FrameLayout defaultBottomLayout;
    private RecyclerView dummyRecyclerView;
    private GuideViewHelper guideViewHelper;
    private Blog initFeed;
    private boolean interstitialPageShow;
    private boolean isImmersionMode;
    private boolean isPreview;
    ItemTouchHelper itemTouchHelper;
    private Runnable itemTouchRunnable;
    private ContentLanguageService languageService;
    private WeakReference<StoryItemView> lastStoryItemView;
    private INVPlayer mPlayer;
    private NVVideoView mVideoView;
    private NVMediaSource mediaSource;
    private View parentView;
    private boolean playBtnClicked;
    private SharedPreferences prefs;
    ShareDialog shareDialog;
    private DataSource sharedDataSource;
    private boolean showingQuizResult;
    private SingleStoryAdapter singleStoryAdapter;
    private StoryCommentListFragment storyCommentFragment;
    private StoryDownloadHelper storyDownloadHelper;
    private StoryItemView storyItemViewSnapShot;
    private StoryVoteListFragment storyLikeFragment;
    private String storyType;
    private int topicId;
    private boolean videoAutoPlay;
    NVVideoDebugView videoDebugView;
    private boolean wifiActive;
    boolean pendingClickNext = false;
    boolean playingPollOrQuiz = false;
    HashMap<String, ScenePlayRecord> pollPlayRecordHashMap = new HashMap<>();
    HashMap<String, ScenePlayRecord> quizPlayRecordHashMap = new HashMap<>();
    private HashSet<Integer> playerPauseSet = new HashSet<>();
    private int orientation = 1;
    private SparseArray<Community> communityMapping = new SparseArray<>();
    private int currentPos = -1;
    private boolean needToSeekBeforePlay = false;
    private boolean autoLoadNextPage = true;
    private boolean mediaSourceCached = false;
    private int targetPosInSharedDataSource = -1;
    private boolean isAtionBarShown = true;
    private String specificPath = null;
    private HashMap<String, Object> specificParams = null;
    private EventDispatcher<StoryListVisibleChangeListener> visibleEventDispatcher = new EventDispatcher<>();
    private Runnable runnable = new AnonymousClass2();
    private boolean manualSetPlayer = false;
    private Runnable guideRunnable = new Runnable() { // from class: com.narvii.story.StoryListFragment.4
        @Override // java.lang.Runnable
        public void run() {
            if (!StoryListFragment.this.isActive() || StoryListFragment.this.isShowingPageAboveVideo() || StoryListFragment.this.isShowingPopupViews()) {
                return;
            }
            if (StoryListFragment.this.guideViewHelper.hasGuideShown(StoryGuideViewClick.KEY_HAS_GUIDE_SHOWN)) {
                if (!StoryListFragment.this.guideViewHelper.hasGuideShown(StoryGuideViewSwipe.KEY_HAS_GUIDE_SHOWN)) {
                    StoryListFragment.this.guideViewHelper.checkAndShowGuideView(StoryListFragment.this.getActivity(), StoryGuideViewSwipe.KEY_HAS_GUIDE_SHOWN, StoryGuideViewSwipe.class);
                    return;
                }
                if (!StoryListFragment.this.guideViewHelper.hasGuideShown(StoryGuideViewDoubleTap.KEY_HAS_GUIDE_SHOWN)) {
                    StoryListFragment.this.guideViewHelper.checkAndShowGuideView(StoryListFragment.this.getActivity(), StoryGuideViewDoubleTap.KEY_HAS_GUIDE_SHOWN, StoryGuideViewDoubleTap.class);
                    return;
                } else {
                    if (StoryListFragment.this.storyItemViewSnapShot == null) {
                        return;
                    }
                    View viewFindViewById = StoryListFragment.this.storyItemViewSnapShot.findViewById(R.id.story_user_container);
                    if (viewFindViewById instanceof StoryUserView) {
                        ((StoryUserView) viewFindViewById).showTooltip();
                        return;
                    }
                    return;
                }
            }
            Bundle bundle = new Bundle();
            View view = StoryListFragment.this.getView();
            if (view != null) {
                bundle.putInt("height", view.getHeight());
                bundle.putInt("top", view.findViewById(R.id.fake_actionbar).getHeight() + Utils.getStatusBarHeight(StoryListFragment.this.getContext()));
            }
            StoryListFragment.this.guideViewHelper.setOnGuideEventListener(new GuideViewHelper.OnGuideEventListener() { // from class: com.narvii.story.StoryListFragment.4.1
                @Override // com.narvii.story.widgets.GuideViewHelper.OnGuideEventListener
                public void onGuideDismiss(String str) {
                    if (StoryGuideViewClick.KEY_HAS_GUIDE_SHOWN.equals(str)) {
                        StoryListFragment storyListFragment = StoryListFragment.this;
                        storyListFragment.showStoryGuide(storyListFragment.getCurrentBlog());
                    }
                }
            });
            StoryListFragment.this.guideViewHelper.checkAndShowGuideView(StoryListFragment.this.getActivity(), StoryGuideViewClick.KEY_HAS_GUIDE_SHOWN, StoryGuideViewClick.class, bundle);
        }
    };
    private boolean playerViewNull = false;
    private boolean active = false;
    private boolean isPlayError = false;
    StoryItemClickListener storyPageTurningListener = new AnonymousClass9();
    StoryItemPlayControlListener storyItemPlayControlListener = new StoryItemPlayControlListener() { // from class: com.narvii.story.StoryListFragment.10
        @Override // com.narvii.story.widgets.StoryItemPlayControlListener
        public void onPlayNextStory(int i, Blog blog, String str, boolean z) {
            StoryListFragment storyListFragment = StoryListFragment.this;
            storyListFragment.pendingClickNext = true;
            storyListFragment.sendNextStoryLog(i, blog, str, z ? ActType.autoNextStory : ActType.click);
            ((NVRecyclerViewFragment) StoryListFragment.this).recyclerView.smoothScrollToPosition(i + 1);
        }

        @Override // com.narvii.story.widgets.StoryItemPlayControlListener
        public void onReplayStory(int i, Blog blog) {
            if (StoryListFragment.this.storyItemViewSnapShot != null) {
                StoryListFragment.this.storyItemViewSnapShot.progressBar.updatePlayedPollQuiz();
                StoryListFragment.this.storyItemViewSnapShot.resetProgressBar();
            }
            StoryListFragment.this.resetPollQuiz();
            if (StoryListFragment.this.mPlayer != null) {
                StoryListFragment.this.mPlayer.setVolume(1.0f);
                StoryListFragment.this.mPlayer.seekToWindow(0);
            }
            StoryListFragment.this.hideInterstitialPage(true);
            boolean z = StoryListFragment.this.autoLoadNextPage && StoryListFragment.this.currentPos < ((NVRecyclerViewFragment) StoryListFragment.this).adapter.getSize() - 1;
            StoryItemView storyItemView = StoryListFragment.this.storyItemViewSnapShot;
            StoryListFragment storyListFragment = StoryListFragment.this;
            storyItemView.initInterstitialPage(storyListFragment, storyListFragment.curStory, (Community) StoryListFragment.this.communityMapping.get(StoryListFragment.this.curStory.getPublishNdcId()), z, !StoryListFragment.this.isShowingPopupViews());
            StoryListFragment.this.onBottomSheetHide();
        }
    };
    Fragment bottomSheetFragment = null;
    int type = -1;
    private BottomSheetBehavior.BottomSheetCallback bottomSheetCallback = new BottomSheetBehavior.BottomSheetCallback() { // from class: com.narvii.story.StoryListFragment.11
        @Override // android.support.design.widget.BottomSheetBehavior.BottomSheetCallback
        public void onSlide(View view, float f) {
        }

        @Override // android.support.design.widget.BottomSheetBehavior.BottomSheetCallback
        public void onStateChanged(View view, int i) {
            Fragment fragment = StoryListFragment.this.bottomSheetFragment;
            if (fragment instanceof NVFragment) {
                if (i == 3) {
                    fragment.setUserVisibleHint(true);
                } else {
                    if (i != 4) {
                        return;
                    }
                    fragment.setUserVisibleHint(false);
                }
            }
        }
    };

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected boolean isRefreshEnable() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onPositionDiscontinuity(int i) {
        IVideoListener.CC.$default$onPositionDiscontinuity(this, i);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
        IVideoListener.CC.$default$onSurfaceSizeChanged(this, i, i2);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onVideoSizeChanged(int i, int i2, int i3, float f) {
        IVideoListener.CC.$default$onVideoSizeChanged(this, i, i2, i3, f);
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public /* synthetic */ void surfaceSizeChanged(Surface surface, int i, int i2) {
        ISurfaceListener.CC.$default$surfaceSizeChanged(this, surface, i, i2);
    }

    public static Bundle getAnimationBundles(View view) {
        Bundle bundle = new Bundle();
        if (view != null) {
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            bundle.putInt("cellWidth", view.getMeasuredWidth());
            bundle.putInt("cellHeight", view.getMeasuredHeight());
            bundle.putInt("centerX", iArr[0] + (view.getMeasuredWidth() / 2));
            bundle.putInt("centerY", iArr[1] + (view.getMeasuredHeight() / 2));
            bundle.putInt("targetWidth", Utils.getScreenWidth(view.getContext()));
            bundle.putInt("targetHeight", (int) (Utils.getScreenHeight(view.getContext()) - view.getContext().getResources().getDimension(R.dimen.master_tab_bar_height)));
        }
        return bundle;
    }

    @Override // com.narvii.scene.ScenePlayListener
    public void onScenePlayRecordGenerated(String str, ScenePlayRecord scenePlayRecord) {
        StoryProgressBar storyProgressBar;
        if (scenePlayRecord != null) {
            int i = scenePlayRecord.interactionType;
            if (i == 2) {
                this.pollPlayRecordHashMap.put(str, scenePlayRecord);
            } else if (i == 1 && !this.quizPlayRecordHashMap.containsKey(str)) {
                this.quizPlayRecordHashMap.put(str, scenePlayRecord);
            }
            StoryItemView storyItemView = this.storyItemViewSnapShot;
            if (storyItemView == null || (storyProgressBar = storyItemView.progressBar) == null) {
                return;
            }
            storyProgressBar.updatePlayedPollQuiz();
        }
    }

    @Override // com.narvii.scene.ScenePlayListener
    public void onScenePlayEnd(String str) {
        List<Scene> list;
        this.playingPollOrQuiz = false;
        onPlayPollQuizChanged();
        StoryItemView storyItemView = this.storyItemViewSnapShot;
        if (storyItemView == null) {
            return;
        }
        storyItemView.hidePollQuiz();
        Blog blog = this.curStory;
        if (blog == null || (list = blog.sceneList) == null) {
            return;
        }
        if (blog.currentWindowIndex + 1 < list.size()) {
            this.mPlayer.setVolume(1.0f);
            this.mPlayer.seekToWindow(this.curStory.currentWindowIndex + 1);
            setPlayWhenReady(true, 0);
            return;
        }
        if (!this.isPreview) {
            Blog blog2 = this.curStory;
            if (blog2.currentWindowIndex == blog2.sceneList.size() - 1) {
                this.mPlayer.setVolume(VOLUME_WHEN_PLAY_POLL_QUIZ);
                if (this.curStory.containsSceneQuiz()) {
                    this.storyItemViewSnapShot.showQuizResult(getQuizQuestionResult(), !isShowingPopupViews());
                    this.showingQuizResult = true;
                    onPlayPollQuizChanged();
                    return;
                } else {
                    boolean z = this.autoLoadNextPage && this.currentPos < this.adapter.getSize() - 1;
                    StoryItemView storyItemView2 = this.storyItemViewSnapShot;
                    Blog blog3 = this.curStory;
                    storyItemView2.showInterstitialPage(this, blog3, this.communityMapping.get(blog3.getPublishNdcId()), z, !isShowingPopupViews());
                    this.interstitialPageShow = true;
                    reAttachItemTouch();
                    return;
                }
            }
        }
        this.mPlayer.setVolume(1.0f);
        this.mPlayer.seekToWindow(0);
        setPlayWhenReady(true, 0);
    }

    private void onPlayPollQuizChanged() {
        reAttachItemTouch();
    }

    private ScenePlayRecord getPlayRecord(String str, boolean z) {
        if (z) {
            return this.quizPlayRecordHashMap.get(str);
        }
        return this.pollPlayRecordHashMap.get(str);
    }

    @Override // com.narvii.widgets.IStoryPollQuizPlayListener
    public ScenePlayRecord getPollQuizPlayRecord(String str) {
        ScenePlayRecord playRecord = getPlayRecord(str, true);
        return playRecord == null ? getPlayRecord(str, false) : playRecord;
    }

    /* renamed from: com.narvii.story.StoryListFragment$1, reason: invalid class name */
    class AnonymousClass1 extends ShareButtonSaveStory {
        AnonymousClass1(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.share.ShareButtonSaveStory
        public void onClickWithPermissionGranted(SharePayload sharePayload) {
            StoryListFragment.this.setPlayWhenReady(false, 3);
            Blog blog = (Blog) sharePayload.object;
            int i = StoryListFragment.this.curStory != null ? StoryListFragment.this.curStory.currentWindowIndex : -1;
            StoryListFragment.this.storyDownloadHelper.setOnActionFinished(Utils.functionUnit(new Callback() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$1$LZnvsQWT0bz7vqfBFUiPDb8pbAU
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f$0.lambda$onClickWithPermissionGranted$0$StoryListFragment$1((Boolean) obj);
                }
            }));
            StoryListFragment.this.storyDownloadHelper.downloadStory(blog, i);
        }

        public /* synthetic */ void lambda$onClickWithPermissionGranted$0$StoryListFragment$1(Boolean bool) {
            StoryListFragment.this.setPlayWhenReady(true, 3);
        }
    }

    @Override // com.narvii.story.IStoryShareListener
    public void onShareStory(Blog blog) {
        this.shareDialog = ShareDialog.getShareDialogFromStory(this, blog, new AnonymousClass1(this));
        this.shareDialog.show();
    }

    public static class IntentBuilder {
        Intent intent = FragmentWrapperActivity.intent(StoryListFragment.class);

        public IntentBuilder(Feed feed) {
            this.intent.putExtra(StoryListFragment.KEY_FEED, JacksonUtils.writeAsString(feed));
        }

        public IntentBuilder topicId(int i) {
            this.intent.putExtra(StoryListFragment.KEY_TOPIC_ID, i);
            return this;
        }

        public IntentBuilder source(String str) {
            this.intent.putExtra(StoryListFragment.KEY_TYPE, str);
            return this;
        }

        public IntentBuilder showCommentBar(boolean z) {
            this.intent.putExtra(StoryListFragment.KEY_SHOW_COMMENT_BAR, z);
            return this;
        }

        public IntentBuilder autoLoadNextPage(boolean z) {
            this.intent.putExtra(StoryListFragment.KEY_AUTO_LOAD_NEXT_PAGE, z);
            return this;
        }

        public IntentBuilder forceVideoAutoPlay(boolean z) {
            this.intent.putExtra(StoryListFragment.KEY_FORCE_VIDEO_AUTO_PLAY, z);
            return this;
        }

        public IntentBuilder pathSuffix(String str) {
            this.intent.putExtra(StoryListFragment.KEY_PATH_SUFFIX, str);
            return this;
        }

        public IntentBuilder initFeedUser(User user) {
            this.intent.putExtra(StoryListFragment.KEY_FEED_USER, JacksonUtils.writeAsString(user));
            return this;
        }

        public IntentBuilder initFeedCommunity(Community community) {
            this.intent.putExtra(StoryListFragment.KEY_FEED_COMMUNITY, JacksonUtils.writeAsString(community));
            return this;
        }

        public IntentBuilder uid(String str) {
            this.intent.putExtra(StoryListFragment.KEY_UID, str);
            return this;
        }

        public IntentBuilder searchKeyWord(String str) {
            this.intent.putExtra(StoryListFragment.KEY_KEY_WORD, str);
            return this;
        }

        public IntentBuilder loadRawVideo(Boolean bool) {
            this.intent.putExtra(StoryListFragment.KEY_LOAD_RAW_VIDEO, bool);
            return this;
        }

        public IntentBuilder justCreated(boolean z) {
            this.intent.putExtra(StoryListFragment.KEY_JUST_CREATED, z);
            return this;
        }

        public Intent build() {
            return this.intent;
        }
    }

    /* renamed from: com.narvii.story.StoryListFragment$2, reason: invalid class name */
    class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StoryListFragment.this.visibleEventDispatcher.dispatch(new Callback() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$2$XLg0TnpqRpm0Fss4VGU2AltvwEk
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    ((StoryListVisibleChangeListener) obj).onStoryListShown();
                }
            });
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        List<Fragment> fragments;
        super.onCreate(bundle);
        this.languageService = (ContentLanguageService) getService("content_language");
        this.configService = (ConfigService) getService("config");
        this.accountService = (AccountService) getService("account");
        this.communityService = (CommunityService) getService("community");
        this.initFeed = (Blog) JacksonUtils.readAs(getStringParam(KEY_FEED), Blog.class);
        Community community = (Community) JacksonUtils.readAs(getStringParam(KEY_FEED_COMMUNITY), Community.class);
        if (community != null) {
            this.communityMapping.put(community.id, community);
        }
        for (int i = 0; i < this.communityMapping.size(); i++) {
            Community community2 = this.communityMapping.get(this.communityMapping.keyAt(i));
            if (community2 != null) {
                this.communityService.updateLiteCommunity(community2);
            }
        }
        this.storyType = getStringParam(KEY_TYPE);
        if (TextUtils.isEmpty(this.storyType)) {
            this.storyType = StoryApi.DISCOVER_LIST;
        }
        this.isImmersionMode = getBooleanParam(KEY_IMMERSION_MODE);
        this.isPreview = getBooleanParam("preview");
        this.topicId = getIntParam(KEY_TOPIC_ID, -1);
        this.autoLoadNextPage = getBooleanParam(KEY_AUTO_LOAD_NEXT_PAGE, true);
        if (this.isPreview) {
            this.autoLoadNextPage = false;
        }
        setTitle((CharSequence) null);
        findTargetPositionInSharedDatasource();
        if (getActivity().getActionBar() != null) {
            if (getBooleanParam(SHOW_IN_SAME_ACTIVITY)) {
                this.isAtionBarShown = getActivity().getActionBar().isShowing();
            }
            getActivity().getActionBar().hide();
        }
        if (bundle != null) {
            Utils.post(this.runnable);
        } else {
            this.runnable.run();
        }
        if (getBooleanParam(ACTIVITY_VISIBLE_HINT_EXCLUSIVE) && getActivity() != null && getActivity().getSupportFragmentManager() != null && (fragments = getActivity().getSupportFragmentManager().getFragments()) != null) {
            for (Fragment fragment : fragments) {
                if (fragment != this) {
                    fragment.setUserVisibleHint(false);
                }
            }
        }
        if (getBooleanParam(KEY_FORCE_VIDEO_AUTO_PLAY, false)) {
            this.videoAutoPlay = true;
        } else {
            updateWifiActive();
            updateVideoAutoPlay();
            NetworkConnectChangeReceiver.getInstance(getContext()).registerWifiStateChangeListener(this);
            VideoAutoPlayService.INSTANCE.registerVideoAutoPlayChangeListener(this);
        }
        this.specificPath = getStringParam(KEY_SPECIFIC_PATH);
        this.specificParams = JacksonUtils.readMapAs(getStringParam(KEY_SPECIFIC_PARAMS), String.class, Object.class);
        this.needToSeekBeforePlay = Build.VERSION.SDK_INT < 23;
        getActivity().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.guideViewHelper = new GuideViewHelper(this);
        if (bundle != null) {
            this.isAtionBarShown = bundle.getBoolean("isAtionBarShown", true);
            this.manualSetPlayer = bundle.getBoolean("manualSetPlayer", false);
        }
        if (getBooleanParam(KEY_JUST_CREATED, false)) {
            new PushNotificationHelper(this).showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_CREATE_POST);
        }
        this.storyDownloadHelper = new StoryDownloadHelper(this);
        this.storyDownloadHelper.setDownloadClickListener(new StoryDownloadHelper.OnStoryDownloadClickListener() { // from class: com.narvii.story.StoryListFragment.3
            @Override // com.narvii.story.StoryDownloadHelper.OnStoryDownloadClickListener
            public void onDownloadScene() {
                ShareDialog shareDialog = StoryListFragment.this.shareDialog;
                if (shareDialog != null) {
                    LogEvent.clickBuilder(shareDialog, ActSemantic.save).area("SaveArea").extraParam("saveType", "saveScene").send();
                }
            }

            @Override // com.narvii.story.StoryDownloadHelper.OnStoryDownloadClickListener
            public void onDownloadStory() {
                ShareDialog shareDialog = StoryListFragment.this.shareDialog;
                if (shareDialog != null) {
                    LogEvent.clickBuilder(shareDialog, ActSemantic.save).area("SaveArea").extraParam("saveType", "saveStory").send();
                }
            }
        });
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("isAtionBarShown", this.isAtionBarShown);
        INVPlayer iNVPlayer = this.mPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.seekToWindow(0);
        }
        bundle.putBoolean("manualSetPlayer", true);
    }

    public void addStoryVisibleChangeListener(StoryListVisibleChangeListener storyListVisibleChangeListener) {
        this.visibleEventDispatcher.addListener(storyListVisibleChangeListener);
    }

    public void removeStoryVisibleChangeListener(StoryListVisibleChangeListener storyListVisibleChangeListener) {
        this.visibleEventDispatcher.removeListener(storyListVisibleChangeListener);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected boolean showGlobalPageStatus() {
        return this.initFeed == null;
    }

    public void setSharedDataSource(DataSource dataSource) {
        this.sharedDataSource = dataSource;
        if (dataSource instanceof StoryDataSource) {
            StoryDataSource storyDataSource = (StoryDataSource) dataSource;
            if (storyDataSource.getCommunityInfoMapping() != null) {
                for (Map.Entry<Integer, Community> entry : storyDataSource.getCommunityInfoMapping().entrySet()) {
                    this.communityMapping.put(entry.getKey().intValue(), entry.getValue());
                    CommunityService communityService = this.communityService;
                    if (communityService != null) {
                        communityService.updateLiteCommunity(entry.getValue());
                    }
                }
            }
        }
        findTargetPositionInSharedDatasource();
    }

    private void findTargetPositionInSharedDatasource() {
        DataSource dataSource;
        if (this.targetPosInSharedDataSource != -1 || (dataSource = this.sharedDataSource) == null || this.initFeed == null) {
            return;
        }
        this.targetPosInSharedDataSource = dataSource.getPageStorage() != null ? this.sharedDataSource.getPageStorage().getPosition(this.initFeed) : -1;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        SplashUtils.cancelSplash(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showStoryGuide(Feed feed) {
        if (this.isPreview) {
            return;
        }
        if (feed != null && feed.isFansOnly() && !feed.isContentAccessible()) {
            Utils.handler.removeCallbacks(this.guideRunnable);
        } else {
            if (this.guideViewHelper.hasGuideShown(StoryGuideViewDoubleTap.KEY_HAS_GUIDE_SHOWN) && StoryUserView.isTooltipShown) {
                return;
            }
            Utils.handler.removeCallbacks(this.guideRunnable);
            Utils.postDelayed(this.guideRunnable, 2000L);
        }
    }

    @Override // android.support.v4.app.Fragment
    public Animator onCreateAnimator(int i, boolean z, int i2) {
        int intParam = getIntParam("targetWidth", 0);
        int intParam2 = getIntParam("targetHeight", 0);
        int intParam3 = getIntParam("cellWidth", 0);
        int intParam4 = getIntParam("cellHeight", 0);
        int intParam5 = getIntParam("centerX", 0);
        int intParam6 = getIntParam("centerY", 0);
        float f = intParam;
        float f2 = (intParam3 * 1.0f) / f;
        float f3 = intParam2;
        float f4 = (intParam4 * 1.0f) / f3;
        if (intParam == 0 || intParam2 == 0 || intParam3 == 0 || intParam5 == 0 || intParam4 == 0 || intParam6 == 0) {
            return super.onCreateAnimator(i, z, i2);
        }
        if (i == 4097) {
            if (z) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat((Object) null, (Property<Object, Float>) View.SCALE_X, f2, 1.0f);
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat((Object) null, (Property<Object, Float>) View.SCALE_Y, f4, 1.0f);
                ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat((Object) null, (Property<Object, Float>) View.TRANSLATION_X, intParam5 - (f / 2.0f), 0.0f);
                ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat((Object) null, (Property<Object, Float>) View.TRANSLATION_Y, intParam6 - (f3 / 2.0f), 0.0f);
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.setDuration(300L);
                animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4);
                return animatorSet;
            }
        } else if (i == 8194 && !z) {
            ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat((Object) null, (Property<Object, Float>) View.SCALE_X, 1.0f, f2);
            ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat((Object) null, (Property<Object, Float>) View.SCALE_Y, 1.0f, f4);
            ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat((Object) null, (Property<Object, Float>) View.TRANSLATION_X, 0.0f, intParam5 - (f / 2.0f));
            ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat((Object) null, (Property<Object, Float>) View.TRANSLATION_Y, 0.0f, intParam6 - (f3 / 2.0f));
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.setDuration(200L);
            animatorSet2.playTogether(objectAnimatorOfFloat5, objectAnimatorOfFloat6, objectAnimatorOfFloat7, objectAnimatorOfFloat8);
            return animatorSet2;
        }
        return super.onCreateAnimator(i, z, i2);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.parentView = layoutInflater.inflate(R.layout.fragment_story_list, viewGroup, false);
        return this.parentView;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.dummyRecyclerView = (RecyclerView) view.findViewById(R.id.dummy_recycle_view);
        view.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        if (getRecyclerView() != null) {
            getRecyclerView().setBackground(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
            getRecyclerView().setScrollingTouchSlop(1);
        }
        this.btnBack = view.findViewById(R.id.back);
        this.btnBack.setOnClickListener(this);
        if (isGlobalInteractionScope() && this.isPreview) {
            View viewFindViewById = view.findViewById(R.id.actionbar_back);
            TextView textView = (TextView) viewFindViewById.findViewById(R.id.text);
            textView.setText(R.string.close_preview);
            textView.setOnClickListener(getBooleanParam(KEY_BACK_DIRECTLY, false) ? new View.OnClickListener() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$FlPq08sn_QIHlJlw2Fqukomq7DM
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$onViewCreated$0$StoryListFragment(view2);
                }
            } : NVActivity.BACK_CLICK_LISTENER);
            viewFindViewById.setVisibility(0);
            this.btnBack.setVisibility(8);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.recyclerView.setTransitionName("renderView");
        }
        this.recyclerView.setKeepScreenOn(true);
        int i = this.targetPosInSharedDataSource;
        if (i != -1) {
            this.recyclerView.scrollToPosition(i);
        }
        this.defaultBottomLayout = (FrameLayout) this.parentView.findViewById(R.id.bottom_layout);
        BottomSheetBehavior.from(this.defaultBottomLayout).setPeekHeight(0);
        PageStatusView pageStatusView = this.pageStatusView;
        if (pageStatusView != null && this.initFeed == null) {
            pageStatusView.setErrorView(R.layout.story_error_view);
            this.pageStatusView.setDarkThemeColor(-2130706433);
        }
        if (bundle != null && getParentFragment() != null && (getParentFragment().getParentFragment() instanceof MasterTabFragment)) {
            setBottomSheetLayout(((MasterTabFragment) getParentFragment().getParentFragment()).bottomSheetLayout);
        }
        StoryItemTouchCallback storyItemTouchCallback = new StoryItemTouchCallback();
        storyItemTouchCallback.setSwipeListener(this);
        this.itemTouchHelper = new ItemTouchHelper(storyItemTouchCallback);
        this.itemTouchHelper.attachToRecyclerView(this.recyclerView);
        this.videoDebugView = (NVVideoDebugView) view.findViewById(R.id.video_debug_view);
        if (NVVideoView.isDebug()) {
            this.videoDebugView.setVisibility(0);
        }
    }

    public /* synthetic */ void lambda$onViewCreated$0$StoryListFragment(View view) {
        finish();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected SnapHelper createSnapHelper() {
        return new PagerSnapHelper();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected int firstShownPosition() {
        int i = this.targetPosInSharedDataSource;
        return i == -1 ? super.firstShownPosition() : i;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected void onSnapPotionChanged(int i, int i2, Object obj) {
        super.onSnapPotionChanged(i, i2, obj);
        tryUploadQuizResult();
        this.isPlayError = false;
        pauseVideo();
        Blog blog = this.curStory;
        if (blog != null) {
            blog.currentWindowIndex = 0;
        }
        if (obj instanceof Blog) {
            this.curStory = (Blog) obj;
        }
        if (this.curStory == null && (this.adapter.getItem(i2) instanceof Blog)) {
            this.curStory = (Blog) this.adapter.getItem(i2);
        }
        Blog blog2 = this.curStory;
        if (blog2 != null) {
            if (this.communityMapping.get(blog2.getPublishNdcId()) == null && this.configService.getCommunityId() == 0) {
                this.communityService.fetchLiteCommunity(this.curStory.getPublishNdcId(), new Callback<Community>() { // from class: com.narvii.story.StoryListFragment.5
                    @Override // com.narvii.util.Callback
                    public void call(Community community) {
                        if (community != null && StoryListFragment.this.communityMapping.get(community.id) == null) {
                            StoryListFragment.this.communityMapping.put(community.id, community);
                        }
                        StoryListFragment.this.notifyItemChange();
                    }
                });
            }
            PollExtensionKt.initPollPlayRecord(this.curStory.sceneList, this.pollPlayRecordHashMap, isGlobalInteractionScope());
        }
        notifyItemChange(i2);
        int firstVisiblePosition = i - this.recyclerView.getFirstVisiblePosition();
        if (firstVisiblePosition >= 0 && firstVisiblePosition < this.recyclerView.getChildCount()) {
            View viewFindViewById = this.recyclerView.getChildAt(firstVisiblePosition).findViewById(R.id.story_item);
            if (viewFindViewById instanceof StoryItemView) {
                ((StoryItemView) viewFindViewById).resetIndex();
            }
        }
        StoryItemView storyItemView = this.storyItemViewSnapShot;
        if (storyItemView != null) {
            storyItemView.resetIndex();
            this.storyItemViewSnapShot.progressBar.updatePlayedPollQuiz();
        }
        resetPollQuiz();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetPollQuiz() {
        Blog blog = this.curStory;
        if (blog != null) {
            blog.shuffleSceneQuizOptions();
        }
        this.quizPlayRecordHashMap.clear();
        this.playingPollOrQuiz = false;
        this.showingQuizResult = false;
        onPlayPollQuizChanged();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected void onScrollNext(View view, View view2, int i, int i2) {
        NVRecyclerView nVRecyclerView;
        super.onScrollNext(view, view2, i, i2);
        if (this.pendingClickNext || (nVRecyclerView = this.recyclerView) == null || !(nVRecyclerView.getAdapter() instanceof NVRecyclerViewAdapter)) {
            return;
        }
        NVRecyclerViewAdapter nVRecyclerViewAdapter = (NVRecyclerViewAdapter) this.recyclerView.getAdapter();
        NVObject item = nVRecyclerViewAdapter.getItem(i);
        Blog blog = item instanceof Blog ? (Blog) item : null;
        NVObject item2 = nVRecyclerViewAdapter.getItem(i2);
        Blog blog2 = item2 instanceof Blog ? (Blog) item2 : null;
        getLogEventBuilder().actType(getScrollActType(i2, i)).actSemantic(i2 > i ? ActSemantic.nextStory : ActSemantic.preStory).extraParam("currentSceneId", StoryUtils.getSceneId(blog, blog == null ? 0 : blog.currentWindowIndex)).extraParam("targetStoryId", blog2 != null ? blog2.id() : null).send();
    }

    private ActType getScrollActType(int i, int i2) {
        return this.orientation == 0 ? i < i2 ? ActType.downScroll : ActType.upScroll : i < i2 ? ActType.rightScroll : ActType.leftScroll;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected void onPlayerViewChanged(final int i, final View view) {
        List<Scene> list;
        this.currentPos = i;
        this.playerViewNull = false;
        super.onPlayerViewChanged(i, view);
        destroyStoryVoteAndCommentFragment();
        hideInterstitialPage(true);
        this.pendingClickNext = false;
        if (view == null) {
            this.playerViewNull = true;
            return;
        }
        this.storyItemViewSnapShot = (StoryItemView) view.findViewById(R.id.story_item);
        StoryItemView storyItemView = this.storyItemViewSnapShot;
        if (storyItemView != null) {
            storyItemView.setBottomSheetListener(this);
            this.storyItemViewSnapShot.setStoryShareListener(this);
            this.storyItemViewSnapShot.setStoryLongClickListener(this);
            this.storyItemViewSnapShot.progressBar.setStoryQuizPollPlayListener(this);
        }
        StoryItemView storyItemView2 = this.storyItemViewSnapShot;
        if (storyItemView2 == null) {
            this.playerViewNull = true;
            return;
        }
        storyItemView2.pauseProgressAnimation();
        if (this.mPlayer != null) {
            setPlayWhenReady(false, -1);
            this.mPlayer.reset();
        }
        if (this.recyclerView != null) {
            for (int i2 = 0; i2 < this.recyclerView.getChildCount(); i2++) {
                View viewFindViewById = this.recyclerView.getChildAt(i2).findViewById(R.id.story_item);
                if ((viewFindViewById instanceof StoryItemView) && viewFindViewById != this.storyItemViewSnapShot) {
                    ((StoryItemView) viewFindViewById).changeInterstitialPageId(false);
                }
            }
        }
        this.storyItemViewSnapShot.changeInterstitialPageId(true);
        this.storyItemViewSnapShot.setPlayBtnVisibility(4);
        this.storyItemViewSnapShot.setLoadingViewVisibility(4);
        Blog blog = this.curStory;
        boolean z = !(this.videoAutoPlay || this.playBtnClicked) || (blog != null && (blog.needHidden || !blog.isAccessibleByUser(this.accountService.getUserAccount())));
        this.storyItemViewSnapShot.setStoryPlayEnable(!z);
        if (z) {
            handleLastStoryItemView();
            EasyButton easyButton = (EasyButton) this.storyItemViewSnapShot.findViewById(R.id.play);
            this.storyItemViewSnapShot.setPlayBtnVisibility(0);
            easyButton.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$ah8YdqHcRqmMd2ED0lracUpkGNY
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$onPlayerViewChanged$1$StoryListFragment(i, view, view2);
                }
            });
            Blog blog2 = this.curStory;
            if (blog2 == null || (list = blog2.sceneList) == null) {
                return;
            }
            final int size = list.size();
            if (size >= 2) {
                EasyButton easyButton2 = (EasyButton) this.storyItemViewSnapShot.findViewById(R.id.next);
                EasyButton easyButton3 = (EasyButton) this.storyItemViewSnapShot.findViewById(R.id.pre);
                this.storyItemViewSnapShot.setPreBtnVisibility(this.curStory.currentWindowIndex > 0 ? 0 : 4);
                StoryItemView storyItemView3 = this.storyItemViewSnapShot;
                Blog blog3 = this.curStory;
                storyItemView3.setNexBtnVisibility(blog3.currentWindowIndex >= blog3.sceneList.size() - 1 ? 4 : 0);
                easyButton2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$ofMm0YkrBcEBycl-ViwDvXrK8Ic
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$onPlayerViewChanged$2$StoryListFragment(size, view2);
                    }
                });
                easyButton3.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$8GGHf7IIWlfzRmQD14mhT0GkHqc
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$onPlayerViewChanged$3$StoryListFragment(size, view2);
                    }
                });
            }
            this.lastStoryItemView = new WeakReference<>(this.storyItemViewSnapShot);
            return;
        }
        prepareVideoView(i, view, true);
        boolean z2 = this.autoLoadNextPage && this.currentPos < this.adapter.getSize() - 1;
        if (ViewCompat.isAttachedToWindow(this.storyItemViewSnapShot)) {
            StoryItemView storyItemView4 = this.storyItemViewSnapShot;
            Blog blog4 = this.curStory;
            storyItemView4.initInterstitialPage(this, blog4, this.communityMapping.get(blog4.getPublishNdcId()), z2, !isShowingPopupViews());
        }
    }

    public /* synthetic */ void lambda$onPlayerViewChanged$1$StoryListFragment(int i, View view, View view2) {
        int i2 = this.curStory.currentWindowIndex;
        StoryItemView storyItemView = this.storyItemViewSnapShot;
        if (storyItemView == null) {
            return;
        }
        this.playBtnClicked = true;
        storyItemView.setPlayBtnVisibility(4);
        this.storyItemViewSnapShot.setLoadingViewVisibility(0);
        prepareVideoView(i, view, false);
        this.mPlayer.seekToWindow(i2);
        setPlayWhenReady(true, -1);
    }

    public /* synthetic */ void lambda$onPlayerViewChanged$2$StoryListFragment(int i, View view) {
        StoryItemView storyItemView = this.storyItemViewSnapShot;
        if (storyItemView == null) {
            return;
        }
        Blog blog = this.curStory;
        blog.currentWindowIndex++;
        storyItemView.setSceneIndex(blog.currentWindowIndex);
        if (this.curStory.currentWindowIndex >= i - 1) {
            this.storyItemViewSnapShot.setNexBtnVisibility(4);
        }
        if (this.curStory.currentWindowIndex > 0) {
            this.storyItemViewSnapShot.setPreBtnVisibility(0);
        }
    }

    public /* synthetic */ void lambda$onPlayerViewChanged$3$StoryListFragment(int i, View view) {
        StoryItemView storyItemView = this.storyItemViewSnapShot;
        if (storyItemView == null) {
            return;
        }
        r0.currentWindowIndex--;
        storyItemView.setSceneIndex(this.curStory.currentWindowIndex);
        if (this.curStory.currentWindowIndex <= 0) {
            this.storyItemViewSnapShot.setPreBtnVisibility(4);
        }
        if (this.curStory.currentWindowIndex < i - 1) {
            this.storyItemViewSnapShot.setNexBtnVisibility(0);
        }
    }

    private void handleLastStoryItemView() {
        WeakReference<StoryItemView> weakReference = this.lastStoryItemView;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.lastStoryItemView.get().getCoverImg().setVisibility(0);
        this.lastStoryItemView.get().getVideoView().addSurfaceListener(null);
        this.lastStoryItemView.get().setLoadingViewVisibility(4);
        this.lastStoryItemView.get().setNexBtnVisibility(4);
        this.lastStoryItemView.get().setPreBtnVisibility(4);
        if (this.videoAutoPlay) {
            this.lastStoryItemView.get().setPlayBtnVisibility(4);
        }
        this.lastStoryItemView = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void prepareVideoView(int i, View view, boolean z) {
        NVObject item;
        StrategyInfo strategyInfo;
        ObjectNode objectNode;
        List<Media> list;
        handleLastStoryItemView();
        resetDebugInfo();
        if (this.recyclerView.getLayoutManager() == null || !(this.recyclerView.getAdapter() instanceof NVRecyclerViewAdapter) || (item = ((NVRecyclerViewAdapter) this.recyclerView.getAdapter()).getItem(i)) == null) {
            return;
        }
        this.mPlayer = NVPlayerManager.getNVPlayer(getActivity());
        this.mPlayer.setVolume(1.0f);
        this.mediaSource = new NVMediaSource();
        this.mediaSource.setLoop(this.isPreview);
        Blog blog = (Blog) item;
        this.mediaSource.mediaList = blog.getPreviewVideoList(false);
        if (getBooleanParam(KEY_LOAD_RAW_VIDEO, false)) {
            for (int i2 = 0; i2 < this.mediaSource.mediaList.size(); i2++) {
                if (this.mediaSource.mediaList.get(0) != null) {
                    this.mediaSource.mediaList.get(0).url = Utils.getRawVideoUrl(this.mediaSource.mediaList.get(0).url);
                }
            }
            this.mediaSource.setNotCache(true);
        }
        this.mediaSource.setNvObject(blog);
        boolean z2 = view instanceof NVContext;
        this.mediaSource.setNVContext(z2 ? (NVContext) view : this);
        this.mediaSource.setAreaName("VideoArea");
        this.mediaSource.setPollOrQuiz(blog.containsPollOrQuiz());
        this.mVideoView = this.storyItemViewSnapShot.getVideoView();
        NVMediaSource mediaSource = this.mPlayer.getMediaSource();
        Surface surface = this.mVideoView.getSurface();
        this.mVideoView.addSurfaceListener(this);
        this.mPlayer.setVideoListener(this);
        this.mPlayer.addWindowIndexChangeListener(this);
        this.mPlayer.setVolume(1.0f);
        this.mediaSourceCached = false;
        if ((this.mPlayer instanceof NVExoPlayer) && (list = this.mediaSource.mediaList) != null && list.size() > 0) {
            INVPlayer iNVPlayer = this.mPlayer;
            if (iNVPlayer.isCached(this.mediaSource.getVideoUrlWithRes(0, iNVPlayer.isLoadLowResVideo()), 0L, this.mPlayer.getPreCachedSize())) {
                this.mediaSourceCached = true;
            }
        }
        if (!this.mediaSource.isPollOrQuiz() && Utils.isEqualsNotNull(mediaSource, this.mediaSource) && !this.isImmersionMode && !this.mediaSource.isPollOrQuiz() && this.mPlayer.getPlayerState() != 1) {
            if (mediaSource != null) {
                mediaSource.setNvObject(blog);
                mediaSource.setNVContext(z2 ? (NVContext) view : this);
                mediaSource.setAreaName("VideoArea");
                this.mPlayer.getVideoLogHelper().resetIds();
            }
            notifyItemChange();
            if (surface != null) {
                this.mPlayer.setVideoSurface(surface);
                if (this.needToSeekBeforePlay) {
                    this.needToSeekBeforePlay = false;
                    this.mPlayer.seekTo(Math.max(this.mPlayer.getCurrentPosition() - 1000, 0L), true);
                }
                setPlayWhenReady(z, -1);
            }
        } else {
            this.curStory.currentWindowIndex = 0;
            if (surface != null) {
                this.mPlayer.quickSetting(getActivity(), this.mediaSource, this.mVideoView.getSurface());
                setPlayWhenReady(z, -1);
            } else {
                this.mPlayer.quickSetting(getActivity(), this.mediaSource, null);
            }
            preloadNextStories(i + 1);
            preloadCurrentStory(i);
        }
        this.lastStoryItemView = new WeakReference<>(this.storyItemViewSnapShot);
        if (!NVVideoView.isDebug() || (strategyInfo = (StrategyInfo) JacksonUtils.readAs(blog.getStrategyInfo(), StrategyInfo.class)) == null || (objectNode = strategyInfo.debugInfo) == null) {
            return;
        }
        this.videoDebugView.setStrategyInfoText(objectNode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void preloadCurrentStory(int i) {
        Blog blog;
        List<Scene> list;
        int i2;
        if (!this.videoAutoPlay || (blog = this.curStory) == null || (list = blog.sceneList) == null || (i2 = blog.currentWindowIndex) < 0 || i2 >= list.size() - 1) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Blog blog2 = this.curStory;
        arrayList.add(blog2.sceneList.get(blog2.currentWindowIndex + 1).media);
        INVPlayer iNVPlayer = this.mPlayer;
        if (iNVPlayer instanceof NVExoPlayer) {
            ExoPreloadUtil.INSTANCE.startPreload(arrayList, (NVExoPlayer) iNVPlayer, getContext().getApplicationContext(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void preloadNextStories(int i) {
        List<Scene> list;
        if (this.videoAutoPlay && i < this.adapter.getSize() && (this.adapter.getItem(i) instanceof Blog)) {
            ArrayList arrayList = new ArrayList();
            Blog blog = (Blog) this.adapter.getItem(i);
            if (blog != null && (list = blog.sceneList) != null && list.size() >= 1 && blog.sceneList.get(0) != null) {
                arrayList.add(blog.sceneList.get(0).media);
            }
            INVPlayer iNVPlayer = this.mPlayer;
            if (iNVPlayer instanceof NVExoPlayer) {
                ExoPreloadUtil.INSTANCE.startPreload(arrayList, (NVExoPlayer) iNVPlayer, getContext().getApplicationContext(), true);
            }
        }
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceCreated(Surface surface) {
        this.mPlayer.setVideoSurface(surface);
        if (this.needToSeekBeforePlay) {
            this.needToSeekBeforePlay = false;
            this.mPlayer.seekTo(Math.max(this.mPlayer.getCurrentPosition() - 1000, 0L), true);
        }
        if (this.storyItemViewSnapShot != null) {
            setPlayWhenReady(true, 0);
        }
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceDestroyed(Surface surface) {
        INVPlayer iNVPlayer = this.mPlayer;
        if (iNVPlayer == null || iNVPlayer.getPlayerState() == 1 || !this.mPlayer.getPlayWhenReady() || this.mPlayer.getVideoSurface() != surface) {
            return;
        }
        this.mPlayer.setPlayWhenReady(false);
    }

    private void pauseVideo() {
        INVPlayer iNVPlayer = this.mPlayer;
        if (iNVPlayer == null || !iNVPlayer.getPlayWhenReady()) {
            return;
        }
        this.mPlayer.setPlayWhenReady(false);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onRenderedFirstFrame() {
        StoryItemView storyItemView = this.storyItemViewSnapShot;
        if (storyItemView != null) {
            storyItemView.getCoverImg().setVisibility(8);
        }
        NVRecyclerView nVRecyclerView = this.recyclerView;
        if (nVRecyclerView == null || !(nVRecyclerView.getAdapter() instanceof NVRecyclerViewAdapter)) {
            return;
        }
        showStoryGuide(getCurrentBlog());
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onRenderFirstFrameInterval(long j) {
        if (NVVideoView.isDebug()) {
            this.videoDebugView.setFromSettingToFirstFrameText(j);
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onVideoSizeChanged(int i, int i2) {
        NVVideoView nVVideoView = this.mVideoView;
        if (nVVideoView != null) {
            nVVideoView.setVideoSize(i, i2);
        }
        if (NVVideoView.isDebug()) {
            this.videoDebugView.setResolutionText(i, i2);
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onCachedBytesRead(long j, long j2) {
        if (NVVideoView.isDebug()) {
            Utils.post(new Runnable() { // from class: com.narvii.story.StoryListFragment.6
                @Override // java.lang.Runnable
                public void run() {
                    StoryListFragment.this.videoDebugView.setHitCacheText("true");
                }
            });
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPlayerStateChanged(boolean z, int i) {
        NVMediaSource nVMediaSource;
        int i2;
        if (NVVideoView.isDebug()) {
            this.videoDebugView.setPlayerStatus(i);
        }
        StoryItemView storyItemView = this.storyItemViewSnapShot;
        if (storyItemView != null) {
            if (i == 2) {
                if (z) {
                    if (this.mediaSourceCached) {
                        this.mediaSourceCached = false;
                        return;
                    }
                    storyItemView.setLoadingViewVisibility(0);
                }
            } else if (i == 3) {
                storyItemView.setLoadingViewVisibility(4);
            } else if (i == 4 && (nVMediaSource = this.mediaSource) != null && nVMediaSource.isPollOrQuiz() && (i2 = this.currentPos) >= 0) {
                preloadCurrentStory(i2);
            }
            if (i == 3) {
                if (this.mPlayer.getPlayWhenReady()) {
                    this.storyItemViewSnapShot.resumeProgressAnimation();
                }
            } else {
                this.storyItemViewSnapShot.pauseProgressAnimation();
            }
            if (i == 1 && this.isPlayError) {
                setPlayPreAndNextButtons();
            } else {
                this.isPlayError = false;
            }
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPlayerError(NVVideoException nVVideoException) {
        this.playBtnClicked = false;
        this.isPlayError = true;
        onErrorDebug(nVVideoException);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onErrorDebug(NVVideoException nVVideoException) {
        if (NVVideoView.isDebug()) {
            this.videoDebugView.setErrorText(nVVideoException.getMessage());
        }
    }

    public void resetDebugInfo() {
        if (NVVideoView.isDebug()) {
            this.videoDebugView.reset();
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public boolean shouldPauseForPageAboveVideo(int i) {
        Blog blog;
        List<Scene> list;
        Scene scene;
        if (isShowingPageAboveVideo()) {
            loopScene(i);
            return true;
        }
        if (this.storyItemViewSnapShot != null && (blog = this.curStory) != null && (list = blog.sceneList) != null && i >= 0 && i < list.size() && (scene = this.curStory.sceneList.get(i)) != null && scene.sceneId != null) {
            if (scene.containsPollOrQuiz()) {
                this.guideViewHelper.hideGuideViewIfExist(getActivity(), true);
                this.storyItemViewSnapShot.showPollQuiz(scene, getPlayRecord(scene.sceneId, scene.getQuizQuestion() != null), this);
                this.playingPollOrQuiz = true;
                onPlayPollQuizChanged();
                loopScene(i);
                return true;
            }
            if (!this.isPreview && this.curStory.containsSceneQuiz() && i == this.curStory.sceneList.size() - 1) {
                this.guideViewHelper.hideGuideViewIfExist(getActivity(), true);
                this.storyItemViewSnapShot.showQuizResult(getQuizQuestionResult(), !isShowingPopupViews());
                this.showingQuizResult = true;
                onPlayPollQuizChanged();
                loopScene(i);
                return true;
            }
            if (!this.isPreview && i == this.curStory.sceneList.size() - 1) {
                this.interstitialPageShow = true;
                reAttachItemTouch();
                boolean z = this.autoLoadNextPage && this.currentPos < this.adapter.getSize() - 1;
                StoryItemView storyItemView = this.storyItemViewSnapShot;
                Blog blog2 = this.curStory;
                storyItemView.showInterstitialPage(this, blog2, this.communityMapping.get(blog2.getPublishNdcId()), z, !isShowingPopupViews());
                loopScene(i);
                return true;
            }
        }
        return false;
    }

    private void loopScene(int i) {
        this.mPlayer.getVideoLogHelper().setNoLoggingNextPlay();
        this.mPlayer.setVolume(VOLUME_WHEN_PLAY_POLL_QUIZ);
        this.mPlayer.seekToWindow(i);
        this.mPlayer.setPlayWhenReady(true);
    }

    public List<QuizQuestionResult> getQuizQuestionResult() {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.quizPlayRecordHashMap.keySet().iterator();
        while (it.hasNext()) {
            ScenePlayRecord scenePlayRecord = this.quizPlayRecordHashMap.get(it.next());
            if (scenePlayRecord != null) {
                Object obj = scenePlayRecord.result;
                if (obj instanceof QuizQuestionResult) {
                    arrayList.add((QuizQuestionResult) obj);
                }
            }
        }
        return arrayList;
    }

    private void setPlayPreAndNextButtons() {
        List<Scene> list;
        final int size;
        if (this.mPlayer == null) {
            this.mPlayer = NVPlayerManager.getNVPlayer(getActivity());
        }
        if (this.storyItemViewSnapShot == null || !Utils.isEqualsNotNull(this.mediaSource, this.mPlayer.getMediaSource())) {
            return;
        }
        NVToast.makeText(getContext(), R.string.failed_to_play, 0).show();
        EasyButton easyButton = (EasyButton) this.storyItemViewSnapShot.findViewById(R.id.play);
        this.storyItemViewSnapShot.getCoverImg().setVisibility(0);
        this.storyItemViewSnapShot.setLoadingViewVisibility(4);
        this.storyItemViewSnapShot.setPlayBtnVisibility(0);
        int currentWindowIndex = this.mPlayer.getCurrentWindowIndex() >= 0 ? this.mPlayer.getCurrentWindowIndex() : 0;
        long currentPosition = this.mPlayer.getCurrentPosition();
        long duration = this.mPlayer.getDuration();
        if (currentPosition > 0 && duration > 0 && duration - currentPosition < 200) {
            currentWindowIndex++;
        }
        this.storyItemViewSnapShot.setSceneIndex(currentWindowIndex);
        easyButton.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$TMZaAmPEJ52ryajGWeBbQuZcVKc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$setPlayPreAndNextButtons$4$StoryListFragment(view);
            }
        });
        Blog blog = this.curStory;
        if (blog != null && (list = blog.sceneList) != null && (size = list.size()) >= 2) {
            EasyButton easyButton2 = (EasyButton) this.storyItemViewSnapShot.findViewById(R.id.next);
            EasyButton easyButton3 = (EasyButton) this.storyItemViewSnapShot.findViewById(R.id.pre);
            this.storyItemViewSnapShot.setPreBtnVisibility(this.curStory.currentWindowIndex > 0 ? 0 : 4);
            StoryItemView storyItemView = this.storyItemViewSnapShot;
            Blog blog2 = this.curStory;
            storyItemView.setNexBtnVisibility(blog2.currentWindowIndex >= blog2.sceneList.size() + (-1) ? 4 : 0);
            easyButton2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$Mcmy20C0z11iDPwdmb1EnNvC8zM
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$setPlayPreAndNextButtons$5$StoryListFragment(size, view);
                }
            });
            easyButton3.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$oUc5ubg0-cMnsRUCmqj9dKqmnyo
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$setPlayPreAndNextButtons$6$StoryListFragment(size, view);
                }
            });
        }
        this.lastStoryItemView = new WeakReference<>(this.storyItemViewSnapShot);
    }

    public /* synthetic */ void lambda$setPlayPreAndNextButtons$4$StoryListFragment(View view) {
        this.playBtnClicked = true;
        onPlayerViewChanged(this.currentPos, this.storyItemViewSnapShot);
    }

    public /* synthetic */ void lambda$setPlayPreAndNextButtons$5$StoryListFragment(int i, View view) {
        StoryItemView storyItemView = this.storyItemViewSnapShot;
        if (storyItemView == null) {
            return;
        }
        Blog blog = this.curStory;
        blog.currentWindowIndex++;
        storyItemView.setSceneIndex(blog.currentWindowIndex);
        if (this.curStory.currentWindowIndex >= i - 1) {
            this.storyItemViewSnapShot.setNexBtnVisibility(4);
        }
        if (this.curStory.currentWindowIndex > 0) {
            this.storyItemViewSnapShot.setPreBtnVisibility(0);
        }
    }

    public /* synthetic */ void lambda$setPlayPreAndNextButtons$6$StoryListFragment(int i, View view) {
        StoryItemView storyItemView = this.storyItemViewSnapShot;
        if (storyItemView == null) {
            return;
        }
        r0.currentWindowIndex--;
        storyItemView.setSceneIndex(this.curStory.currentWindowIndex);
        if (this.curStory.currentWindowIndex <= 0) {
            this.storyItemViewSnapShot.setPreBtnVisibility(4);
        }
        if (this.curStory.currentWindowIndex < i - 1) {
            this.storyItemViewSnapShot.setNexBtnVisibility(0);
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPreloadStrategyChanged(String str) {
        if (NVVideoView.isDebug()) {
            this.videoDebugView.setPreloadText(str);
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onVideoSupportLowResVideo(boolean z) {
        if (NVVideoView.isDebug()) {
            this.videoDebugView.setSupportLowResText(z);
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        MasterTabFragment parentMasterTabFragment;
        Fragment currentFragment;
        NVMediaSource nVMediaSource;
        if (this.active != z) {
            this.active = z;
            if (this.mediaSource == null) {
                return;
            }
            StoryItemView storyItemView = this.storyItemViewSnapShot;
            if (storyItemView != null) {
                storyItemView.onActiveChanged(z);
            }
            if (z) {
                INVPlayer iNVPlayer = this.mPlayer;
                if (iNVPlayer != null) {
                    iNVPlayer.setVolume(isShowingPageAboveVideo() ? VOLUME_WHEN_PLAY_POLL_QUIZ : 1.0f);
                    this.mPlayer.addWindowIndexChangeListener(this);
                    this.mPlayer.setVideoListener(this);
                }
                INVPlayer iNVPlayer2 = this.mPlayer;
                NVMediaSource mediaSource = iNVPlayer2 != null ? iNVPlayer2.getMediaSource() : null;
                if ((this.videoAutoPlay || this.playBtnClicked) && this.mPlayer != null && (nVMediaSource = this.mediaSource) != null && this.mVideoView != null) {
                    if (nVMediaSource.equals(mediaSource)) {
                        if (this.mVideoView.getSurface() != null) {
                            this.mPlayer.setVideoSurface(this.mVideoView.getSurface());
                            if (isShowingPageAboveVideo()) {
                                this.mPlayer.getVideoLogHelper().setNoLoggingNextPlay();
                            }
                            if (this.curStory != null) {
                                int currentWindowIndex = this.mPlayer.getCurrentWindowIndex();
                                int i = this.curStory.currentWindowIndex;
                                if (currentWindowIndex != i) {
                                    this.mPlayer.seekToWindow(i);
                                }
                            }
                            setPlayWhenReady(true, 1);
                            return;
                        }
                        if (Build.VERSION.SDK_INT < 23) {
                            this.needToSeekBeforePlay = true;
                            return;
                        }
                        return;
                    }
                    this.mPlayer.quickSetting(getActivity(), this.mediaSource, this.mVideoView.getSurface());
                    setPlayWhenReady(true, 1);
                    Blog blog = this.curStory;
                    if (blog != null) {
                        this.mPlayer.seekToWindow(blog.currentWindowIndex);
                        return;
                    }
                    return;
                }
                setPlayPreAndNextButtons();
                return;
            }
            if (!isFinishing() && (parentMasterTabFragment = getParentMasterTabFragment()) != null && (currentFragment = parentMasterTabFragment.getCurrentFragment()) != null && currentFragment != getParentFragment()) {
                NVPlayerManager.getNVPlayer(getContext()).getVideoLogHelper().storyQuitOnBuffering(BufferingQuit.TAB);
            }
            INVPlayer iNVPlayer3 = this.mPlayer;
            if (iNVPlayer3 != null) {
                iNVPlayer3.setVolume(1.0f);
                setPlayWhenReady(false, 1);
                this.mPlayer.removeWindowIndexChangeListener(this);
            }
        }
    }

    private MasterTabFragment getParentMasterTabFragment() {
        Fragment parentFragment = this;
        while (parentFragment.getParentFragment() != null) {
            parentFragment = parentFragment.getParentFragment();
            if (parentFragment instanceof MasterTabFragment) {
                return (MasterTabFragment) parentFragment;
            }
        }
        return null;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        INVPlayer iNVPlayer = this.mPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.removeWindowIndexChangeListener(this);
            this.mPlayer.clearVideoListener(this);
        }
        NetworkConnectChangeReceiver.getInstance(getContext()).unRegisterWifiStateChangeListener(this);
        VideoAutoPlayService.INSTANCE.unRegisterVideoAutoPlayChangeListener(this);
        if (this.bottomSheetBehavior != null && this.bottomSheetFragment != null) {
            removeBottomSheetFragment();
        }
        destroyStoryVoteAndCommentFragment();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.paging.NVRecyclerViewFragment
    public RecyclerView.LayoutManager createLayoutManager() {
        if (this.orientation == 1) {
            return new LinearLayoutManager(getContext(), 0, 0 == true ? 1 : 0) { // from class: com.narvii.story.StoryListFragment.7
                @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
                public boolean canScrollHorizontally() {
                    return StoryListFragment.this.autoLoadNextPage;
                }
            };
        }
        return new LinearLayoutManager(getContext()) { // from class: com.narvii.story.StoryListFragment.8
            @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
            public boolean canScrollVertically() {
                return StoryListFragment.this.autoLoadNextPage;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.paging.NVRecyclerViewFragment
    public NVRecyclerViewAdapter createAdapter() {
        if (this.initFeed != null) {
            return new Adapter(this.sharedDataSource);
        }
        SingleStoryAdapter singleStoryAdapter = new SingleStoryAdapter();
        this.singleStoryAdapter = singleStoryAdapter;
        return singleStoryAdapter;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        if (this.guideViewHelper.pressBackKey(nVActivity)) {
            return true;
        }
        Fragment fragmentFindFragmentByTag = getFragmentManager().findFragmentByTag(StoryQuizRankingListFragment.TAG);
        if (!(fragmentFindFragmentByTag instanceof SwipeableFragment)) {
            fragmentFindFragmentByTag = nVActivity.getSupportFragmentManager().findFragmentByTag(StoryQuizRankingListFragment.TAG);
        }
        if (fragmentFindFragmentByTag instanceof SwipeableFragment) {
            ((SwipeableFragment) fragmentFindFragmentByTag).dismiss();
            return true;
        }
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.bottomSheetBehavior;
        if (bottomSheetBehavior != null && bottomSheetBehavior.getState() == 3) {
            changeBottomSheetBehaviorState(4);
            return true;
        }
        if (this.bottomSheetBehavior != null && this.bottomSheetFragment != null) {
            removeBottomSheetFragment();
        }
        NVPlayerManager.getNVPlayer(getContext()).getVideoLogHelper().storyQuitOnBuffering(BufferingQuit.BACK);
        tryUploadQuizResult();
        StoryItemView storyItemView = this.storyItemViewSnapShot;
        if (storyItemView != null) {
            storyItemView.hidePollQuiz();
        }
        return dismissCurrentPage();
    }

    private void tryUploadQuizResult() {
        if (this.curStory == null || this.isPreview || this.showingQuizResult || this.quizPlayRecordHashMap.isEmpty() || !this.accountService.hasAccount()) {
            return;
        }
        List<QuizQuestionResult> quizQuestionResult = getQuizQuestionResult();
        ((ApiService) getService("api")).exec(ApiRequest.builder().communityId(this.curStory.ndcId).path("blog/" + this.curStory.id() + "/quiz/result").post().tag(ApiService.ASYNC_CALL_TAG).param("mode", 0).param("quizAnswerList", JacksonUtils.DEFAULT_MAPPER.valueToTree(quizQuestionResult)).signature(1).build(), ApiResponseListener.IGNORE_RESPONSE_LISTENER);
    }

    private void changeBottomSheetBehaviorState(int i) {
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.bottomSheetBehavior;
        if (bottomSheetBehavior != null) {
            bottomSheetBehavior.setState(i);
        }
        Fragment fragment = this.bottomSheetFragment;
        if ((fragment instanceof StoryCommentListFragment) && i == 3) {
            ((StoryCommentListFragment) fragment).tryToShowPost();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.back) {
            onBackPressed((NVActivity) getActivity());
        } else if (id == R.id.bottom_bg && this.bottomSheetBehavior.getState() == 3) {
            changeBottomSheetBehaviorState(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dismissCurrentPage() {
        List<Fragment> fragments;
        if (getActivity() != null && getActivity().getActionBar() != null && this.isAtionBarShown && getBooleanParam(SHOW_IN_SAME_ACTIVITY)) {
            getActivity().getActionBar().show();
        }
        setVisibleHint(false);
        this.visibleEventDispatcher.dispatch(new Callback() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$NR9ARnt3jkU7Mv8QHx_sA7fCgAE
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((StoryListVisibleChangeListener) obj).onStoryListDismissed();
            }
        });
        if (getBooleanParam(ACTIVITY_VISIBLE_HINT_EXCLUSIVE) && getActivity() != null && getActivity().getSupportFragmentManager() != null && (fragments = getActivity().getSupportFragmentManager().getFragments()) != null) {
            for (Fragment fragment : fragments) {
                if (fragment != this) {
                    fragment.setUserVisibleHint(true);
                }
            }
        }
        Blog blog = this.curStory;
        if (blog != null && blog.containsPollOrQuiz()) {
            this.curStory.currentWindowIndex = 0;
        }
        if (getParentFragment() != null) {
            getParentFragment().getChildFragmentManager().beginTransaction().setTransition(FragmentTransaction.TRANSIT_FRAGMENT_CLOSE).remove(this).commitAllowingStateLoss();
            return true;
        }
        if (getFragmentManager() != null && getFragmentManager().getFragments().size() > 1) {
            getFragmentManager().beginTransaction().setTransition(FragmentTransaction.TRANSIT_FRAGMENT_CLOSE).remove(this).commitAllowingStateLoss();
            return true;
        }
        if (getActivity() != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                getActivity().finishAfterTransition();
            } else {
                finish();
            }
        }
        return false;
    }

    @Override // com.narvii.nvplayer.WindowIndexChangeListener
    public void onWindowIndexChanged(int i) {
        List<Scene> list;
        QuizQuestion quizQuestion;
        List<QuizOption> listQuizOptions;
        String str;
        Blog blog = this.curStory;
        if (blog != null && (list = blog.sceneList) != null && i >= 0 && i < list.size() && (quizQuestion = this.curStory.sceneList.get(i).getQuizQuestion()) != null && (listQuizOptions = quizQuestion.quizOptions()) != null) {
            Iterator<QuizOption> it = listQuizOptions.iterator();
            while (it.hasNext()) {
                Media firstMedia = it.next().getFirstMedia();
                if (firstMedia != null && (str = firstMedia.url) != null) {
                    ImagePreloadUtils.preloadImageUrl(str);
                }
            }
        }
        if (i != -1) {
            Blog blog2 = this.curStory;
            if (i != blog2.currentWindowIndex) {
                blog2.currentWindowIndex = i;
                notifyItemChange();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyItemChange() {
        RecyclerView.LayoutManager layoutManager = this.recyclerView.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            final int iFindFirstCompletelyVisibleItemPosition = ((LinearLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
            if (this.adapter != null) {
                Utils.post(new Runnable() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$P7Cig6qHFlXwMw_M3zEGAFIFFfs
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$notifyItemChange$8$StoryListFragment(iFindFirstCompletelyVisibleItemPosition);
                    }
                });
            }
        }
    }

    public /* synthetic */ void lambda$notifyItemChange$8$StoryListFragment(int i) {
        this.adapter.notifyItemChanged(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Blog getCurrentBlog() {
        RecyclerView.LayoutManager layoutManager;
        View playerView;
        NVRecyclerView nVRecyclerView = this.recyclerView;
        if (nVRecyclerView == null || (layoutManager = nVRecyclerView.getLayoutManager()) == null || (playerView = getPlayerView()) == null) {
            return null;
        }
        int position = layoutManager.getPosition(playerView);
        if (this.recyclerView.getAdapter() instanceof NVRecyclerViewAdapter) {
            NVObject item = ((NVRecyclerViewAdapter) this.recyclerView.getAdapter()).getItem(position);
            if (item instanceof Blog) {
                return (Blog) item;
            }
        }
        return null;
    }

    class SingleStoryAdapter extends NVRecyclerViewAdapter implements NotificationListener {
        SinglePageDataSource<Blog> dataSource;
        String error;
        FeedRequestHelper helper;
        boolean requestFinished;
        private Blog story;

        public SingleStoryAdapter() {
            super(StoryListFragment.this);
            this.helper = new FeedRequestHelper(StoryListFragment.this);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void onAttach() {
            super.onAttach();
            this.requestFinished = false;
            StoryListFragment.this.updateViews();
            this.helper.sendBlogDetailRequest(StoryListFragment.this.getStringParam(StoryListFragment.KEY_FEED_ID), -1, ((NVFragment) StoryListFragment.this)._pushTrackId, new Callback() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$SingleStoryAdapter$_xqh-eCeqK0FJVd5AsBUum5tJVc
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f$0.lambda$onAttach$1$StoryListFragment$SingleStoryAdapter((RequestResult) obj);
                }
            });
        }

        public /* synthetic */ void lambda$onAttach$1$StoryListFragment$SingleStoryAdapter(RequestResult requestResult) {
            this.requestFinished = true;
            if (requestResult.code == 0) {
                this.story = (Blog) requestResult.object;
                this.dataSource.loadInitData();
            } else {
                this.error = requestResult.errorMessage;
            }
            notifyDataSetChanged();
            this.dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$SingleStoryAdapter$T_NORcvMDld-i3WZQbvvpKkAooc
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    ((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj).onDataSetChanged();
                }
            });
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
        public DataSource createDataSource(NVContext nVContext) {
            this.dataSource = new SinglePageDataSource<Blog>(nVContext) { // from class: com.narvii.story.StoryListFragment.SingleStoryAdapter.1
                @Override // com.narvii.paging.source.SinglePageDataSource
                public List pageData() {
                    ArrayList arrayList = new ArrayList();
                    if (SingleStoryAdapter.this.story != null) {
                        arrayList.add(SingleStoryAdapter.this.story);
                    }
                    return arrayList;
                }
            };
            return this.dataSource;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            StoryItemViewHolder storyItemViewHolder = StoryListFragment.this.new StoryItemViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(StoryListFragment.this.getBooleanParam(StoryListFragment.KEY_SHOW_COMMENT_BAR, true) ? R.layout.item_story_with_comment : R.layout.item_story, viewGroup, false));
            View view = storyItemViewHolder.itemView;
            if (view instanceof PageView) {
                ((PageView) view).setNvContext(this.context);
            }
            return storyItemViewHolder;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if ((viewHolder instanceof StoryItemViewHolder) && getItem(i) != null) {
                ((StoryItemViewHolder) viewHolder).bindStory((Blog) getItem(i), i, false);
            }
            PageViewUtils.onBindViewHolder(StoryListFragment.this, viewHolder, i);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean isListShow() {
            return super.isListShow();
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean isLoading() {
            return !this.requestFinished;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public String getErrorMessage() {
            Blog blog;
            if (TextUtils.isEmpty(this.error) && ((blog = this.story) == null || blog.status != 9 || Utils.isEqualsNotNull(StoryListFragment.this.accountService.getUserId(), this.story.uid()))) {
                return null;
            }
            return StoryListFragment.this.getString(R.string.story_not_existed);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            EasyButton easyButton;
            String str;
            SinglePageDataSource<Blog> singlePageDataSource;
            Object obj = notification.obj;
            if (obj instanceof Blog) {
                Blog blog = (Blog) obj;
                if (blog.type == 9 && (singlePageDataSource = this.dataSource) != null && singlePageDataSource.getPageStorage() != null) {
                    List<T> dataList = this.dataSource.getPageStorage().getDataList();
                    if (dataList != 0) {
                        notification = StoryListAdapterKt.filterStoryNofication(dataList, blog, notification);
                    }
                    if (StoryListFragment.this.curStory != null) {
                        notification = StoryListAdapterKt.filterStoryNofication(Collections.singletonList(StoryListFragment.this.curStory), blog, notification);
                    }
                }
            }
            if ((notification.obj instanceof Blog) && ((str = notification.action) == "update" || str == "edit")) {
                if (Utils.isEqualsNotNull(StoryListFragment.this.curStory.id(), ((Blog) notification.obj).id())) {
                    ((Blog) notification.obj).currentWindowIndex = StoryListFragment.this.curStory.currentWindowIndex;
                }
                if (notification.action == "edit") {
                    StoryListFragment.this.resetPollQuiz();
                }
                this.dataSource.updateItem((Blog) notification.obj);
                StoryListFragment.this.notifyItemChange();
                if (notification.action == "edit") {
                    StoryListFragment.this.storyItemViewSnapShot.progressBar.updatePlayedPollQuiz();
                    Utils.post(new Runnable() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$SingleStoryAdapter$QRLLPuxFDwQLdaf2cNdyQoyMv80
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onNotification$2$StoryListFragment$SingleStoryAdapter();
                        }
                    });
                }
            }
            if ((notification.obj instanceof Blog) && "delete".equals(notification.action)) {
                Object obj2 = notification.obj;
                if (Utils.isEqualsNotNull(StoryListFragment.this.curStory != null ? StoryListFragment.this.curStory.id() : null, obj2 == null ? null : ((Blog) obj2).id())) {
                    StoryListFragment.this.dismissCurrentPage();
                }
            }
            if ((notification.obj instanceof Comment) && ("new".equals(notification.action) || "delete".equals(notification.action))) {
                Comment comment = (Comment) notification.obj;
                Blog blog2 = StoryListFragment.this.curStory;
                if (blog2 != null) {
                    CommentHelper.updateFeedWithComment(blog2, comment, notification.action);
                    this.dataSource.updateItem(blog2);
                    StoryListFragment.this.notifyItemChange();
                }
            }
            if (notification.obj instanceof FanClub) {
                boolean z = false;
                for (T t : this.dataSource.getPageStorage().getDataList()) {
                    if (Utils.isEqualsNotNull(t.uid(), ((FanClub) notification.obj).targetUid)) {
                        if (t instanceof Feed) {
                            ((Feed) t).needHidden = !((FanClub) notification.obj).isActive();
                        }
                        z = true;
                    }
                }
                if (z) {
                    ((NVRecyclerViewFragment) StoryListFragment.this).adapter.notifyDataSetChanged();
                }
                if (!Utils.isEqualsNotNull(StoryListFragment.this.curStory.uid(), ((FanClub) notification.obj).targetUid) || !((FanClub) notification.obj).isActive() || StoryListFragment.this.storyItemViewSnapShot == null || (easyButton = (EasyButton) StoryListFragment.this.storyItemViewSnapShot.findViewById(R.id.play)) == null) {
                    return;
                }
                easyButton.performClick();
            }
        }

        public /* synthetic */ void lambda$onNotification$2$StoryListFragment$SingleStoryAdapter() {
            StoryListFragment storyListFragment = StoryListFragment.this;
            storyListFragment.onPlayerViewChanged(storyListFragment.currentPos, StoryListFragment.this.storyItemViewSnapShot);
        }
    }

    class Adapter extends PagingRecyclerViewAdapter<Blog, BlogListResponse> implements NotificationListener {
        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean isDarkTheme() {
            return true;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected int pageStatusLayoutId() {
            return R.layout.item_page_load_state_story;
        }

        public Adapter(DataSource dataSource) {
            super(StoryListFragment.this, dataSource);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
        public boolean autoLoadNextPage() {
            return StoryListFragment.this.autoLoadNextPage;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
        protected boolean autoLoadInitData() {
            return StoryListFragment.this.sharedDataSource == null && StoryListFragment.this.autoLoadNextPage;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected RecyclerView.ViewHolder onCreateItemViewHolder(ViewGroup viewGroup, int i) {
            return StoryListFragment.this.new StoryItemViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(StoryListFragment.this.getBooleanParam(StoryListFragment.KEY_SHOW_COMMENT_BAR, true) ? R.layout.item_story_with_comment : R.layout.item_story, viewGroup, false));
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onBindItemViewHolder(android.support.v7.widget.RecyclerView.ViewHolder r5, int r6) {
            /*
                r4 = this;
                boolean r0 = r5 instanceof com.narvii.story.StoryListFragment.StoryItemViewHolder
                if (r0 == 0) goto L57
                com.narvii.model.NVObject r0 = r4.getItem(r6)
                if (r0 == 0) goto L57
                com.narvii.story.StoryListFragment r0 = com.narvii.story.StoryListFragment.this
                boolean r0 = com.narvii.story.StoryListFragment.access$1100(r0)
                r1 = 0
                r2 = 1
                if (r0 == 0) goto L2c
                com.narvii.paging.source.DataSource<T extends com.narvii.model.NVObject> r0 = r4.dataSource
                boolean r3 = r0 instanceof com.narvii.paging.source.PageDataSource
                if (r3 == 0) goto L2d
                com.narvii.paging.source.PageDataSource r0 = (com.narvii.paging.source.PageDataSource) r0
                boolean r0 = r0.get_isEnd()
                if (r0 == 0) goto L2d
                com.narvii.paging.source.DataSource<T extends com.narvii.model.NVObject> r0 = r4.dataSource
                int r0 = r0.getSize()
                int r0 = r0 - r2
                if (r6 == r0) goto L2c
                goto L2d
            L2c:
                r2 = 0
            L2d:
                com.narvii.story.StoryListFragment$StoryItemViewHolder r5 = (com.narvii.story.StoryListFragment.StoryItemViewHolder) r5
                com.narvii.model.NVObject r0 = r4.getItem(r6)
                com.narvii.model.Blog r0 = (com.narvii.model.Blog) r0
                r5.bindStory(r0, r6, r2)
                com.narvii.story.StoryListFragment r0 = com.narvii.story.StoryListFragment.this
                boolean r0 = com.narvii.story.StoryListFragment.access$2000(r0)
                if (r0 == 0) goto L57
                com.narvii.story.StoryListFragment r0 = com.narvii.story.StoryListFragment.this
                com.narvii.story.StoryListFragment.access$2002(r0, r1)
                com.narvii.story.StoryListFragment r0 = com.narvii.story.StoryListFragment.this
                int r1 = r6 + (-1)
                com.narvii.model.NVObject r2 = r4.getItem(r6)
                r0.onSnapPotionChanged(r1, r6, r2)
                com.narvii.story.StoryListFragment r0 = com.narvii.story.StoryListFragment.this
                com.narvii.story.widgets.StoryItemView r5 = r5.storyItemView
                r0.onPlayerViewChanged(r6, r5)
            L57:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.story.StoryListFragment.Adapter.onBindItemViewHolder(android.support.v7.widget.RecyclerView$ViewHolder, int):void");
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<Blog, BlogListResponse> createPageDataSource(NVContext nVContext) {
            ArrayList arrayList = new ArrayList();
            if (StoryListFragment.this.initFeed != null) {
                arrayList.add(StoryListFragment.this.initFeed);
            }
            return new PageDataSource<Blog, BlogListResponse>(nVContext, arrayList, StoryListFragment.this.getBooleanParam(StoryListFragment.KEY_IS_OFFSET_PAGING) ? PagingConfiguration.OFFSET_CONFIG : PagingConfiguration.TOKEN_CONFIG) { // from class: com.narvii.story.StoryListFragment.Adapter.1
                @Override // com.narvii.paging.source.PageDataSource
                protected ApiRequest createRequest() {
                    if (!TextUtils.isEmpty(StoryListFragment.this.specificPath)) {
                        ApiRequest.Builder builder = ApiRequest.builder();
                        builder.path(StoryListFragment.this.specificPath);
                        if (StoryListFragment.this.specificParams != null) {
                            for (Map.Entry entry : StoryListFragment.this.specificParams.entrySet()) {
                                builder.param((String) entry.getKey(), URLEncoder.encode(String.valueOf(entry.getValue())));
                            }
                            if (StoryListFragment.this.initFeed != null) {
                                builder.param("refererObjectId", StoryListFragment.this.initFeed.id());
                            }
                        }
                        return builder.build();
                    }
                    ApiRequest.Builder builder2 = ApiRequest.builder();
                    String string = "/feed/story";
                    if (StoryListFragment.this.topicId != -1) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("topic/");
                        sb.append(StoryListFragment.this.topicId);
                        sb.append("/feed/story");
                        sb.append(TextUtils.isEmpty(StoryListFragment.this.getStringParam(StoryListFragment.KEY_PATH_SUFFIX)) ? "" : "/" + StoryListFragment.this.getStringParam(StoryListFragment.KEY_PATH_SUFFIX));
                        string = sb.toString();
                    }
                    builder2.path(string);
                    if (StoryListFragment.this.topicId == -1 || !StoryApi.COMMUNITY_PLAYER.equals(StoryListFragment.this.storyType)) {
                        builder2.param("type", StoryListFragment.this.storyType);
                    } else {
                        builder2.param("type", StoryApi.TOPIC_PLAYER);
                    }
                    if (StoryApi.isPlayerType(StoryListFragment.this.storyType)) {
                        if (StoryListFragment.this.initFeed != null) {
                            builder2.param("refererObjectId", StoryListFragment.this.initFeed.id());
                        }
                        if (StoryListFragment.this.topicId != -1) {
                            builder2.param("refererTopicId", Integer.valueOf(StoryListFragment.this.topicId));
                        }
                    }
                    if (StoryApi.USER_PROFILE_PLAYER.equals(StoryListFragment.this.storyType)) {
                        builder2.param("profileUid", StoryListFragment.this.getStringParam(StoryListFragment.KEY_UID));
                    }
                    if (StoryApi.GLOBAL_SEARCH_PLAYER.equals(StoryListFragment.this.storyType)) {
                        builder2.param("q", StoryListFragment.this.getStringParam(StoryListFragment.KEY_KEY_WORD));
                    }
                    builder2.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, StoryListFragment.this.languageService.getRequestPrefLanguageWithLocalAsDefault());
                    builder2.param("v", StoryApi.STORY_VERSION);
                    builder2.tag("fromStart", Boolean.valueOf(get_nextPageToken() == null));
                    if (StoryApi.COMMUNITY_PLAYER.equals(StoryListFragment.this.storyType) && ((ConfigService) Adapter.this.getService("config")).getCommunityId() <= 0) {
                        Log.e("request community player in global");
                    }
                    return builder2.build();
                }

                @Override // com.narvii.paging.source.PageDataSource
                protected Class<BlogListResponse> responseType() {
                    return BlogListResponse.class;
                }

                @Override // com.narvii.paging.source.PageDataSource
                public void onPageResponse(ApiRequest apiRequest, BlogListResponse blogListResponse, int i) {
                    Map<Integer, Community> map = blogListResponse.communityInfoMapping;
                    if (map != null) {
                        for (Map.Entry<Integer, Community> entry : map.entrySet()) {
                            if (entry != null && entry.getKey() != null) {
                                StoryListFragment.this.communityMapping.put(entry.getKey().intValue(), entry.getValue());
                                if (StoryListFragment.this.communityService != null) {
                                    StoryListFragment.this.communityService.updateLiteCommunity(entry.getValue());
                                }
                            }
                        }
                    }
                    super.onPageResponse(apiRequest, (ApiRequest) blogListResponse, i);
                    if (apiRequest.tagBoolean("fromStart", false)) {
                        StoryListFragment.this.preloadNextStories(1);
                    }
                    StoryListFragment.this.notifyItemChange();
                    if (StoryListFragment.this.manualSetPlayer) {
                        StoryListFragment.this.manualSetPlayer = false;
                        if (StoryListFragment.this.currentPos != 0 || StoryListFragment.this.initFeed == null) {
                            StoryListFragment storyListFragment = StoryListFragment.this;
                            storyListFragment.onPlayerViewChanged(storyListFragment.currentPos, StoryListFragment.this.storyItemViewSnapShot);
                        }
                    }
                }
            };
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            EasyButton easyButton;
            String str;
            DataSource<T> dataSource;
            Object obj = notification.obj;
            if (obj instanceof Blog) {
                Blog blog = (Blog) obj;
                if (blog.type == 9 && (dataSource = this.dataSource) != 0 && dataSource.getPageStorage() != null) {
                    List dataList = this.dataSource.getPageStorage().getDataList();
                    if (dataList != null) {
                        notification = StoryListAdapterKt.filterStoryNofication(dataList, blog, notification);
                    }
                    if (StoryListFragment.this.curStory != null) {
                        notification = StoryListAdapterKt.filterStoryNofication(Collections.singletonList(StoryListFragment.this.curStory), blog, notification);
                    }
                }
            }
            if ((notification.obj instanceof Blog) && ((str = notification.action) == "update" || str == "edit")) {
                if (Utils.isEqualsNotNull(StoryListFragment.this.curStory == null ? null : StoryListFragment.this.curStory.id(), ((Blog) notification.obj).id())) {
                    ((Blog) notification.obj).currentWindowIndex = StoryListFragment.this.curStory.currentWindowIndex;
                    StoryListFragment.this.curStory = (Blog) notification.obj;
                    PollExtensionKt.initPollPlayRecord(StoryListFragment.this.curStory.sceneList, StoryListFragment.this.pollPlayRecordHashMap, isGlobalInteractionScope());
                    if (notification.action == "edit") {
                        StoryListFragment.this.resetPollQuiz();
                    }
                    updateItem((Blog) notification.obj);
                    StoryListFragment.this.storyItemViewSnapShot.progressBar.updatePlayedPollQuiz();
                    if (notification.action == "edit") {
                        Utils.post(new Runnable() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$Adapter$TQCu_KnFMfJBB4XHmZzOlaH6M00
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onNotification$0$StoryListFragment$Adapter();
                            }
                        });
                    }
                }
            }
            if ((notification.obj instanceof Blog) && "delete".equals(notification.action)) {
                Object obj2 = notification.obj;
                if (Utils.isEqualsNotNull(StoryListFragment.this.curStory != null ? StoryListFragment.this.curStory.id() : null, obj2 == null ? null : ((Blog) obj2).id())) {
                    StoryListFragment.this.dismissCurrentPage();
                }
            }
            if ((notification.obj instanceof Comment) && ("new".equals(notification.action) || "delete".equals(notification.action))) {
                Comment comment = (Comment) notification.obj;
                Blog itemById = getItemById(comment.parentId);
                if (itemById != null) {
                    if (StoryListFragment.this.sharedDataSource == null) {
                        CommentHelper.updateFeedWithComment(itemById, comment, notification.action);
                    }
                    updateItem(itemById);
                }
            }
            boolean z = false;
            if (notification.obj instanceof FanClub) {
                boolean z2 = false;
                for (NVObject nVObject : this.dataSource.getPageStorage().getDataList()) {
                    if (Utils.isEqualsNotNull(nVObject.uid(), ((FanClub) notification.obj).targetUid)) {
                        if (nVObject instanceof Feed) {
                            ((Feed) nVObject).needHidden = !((FanClub) notification.obj).isActive();
                        }
                        z2 = true;
                    }
                }
                if (z2) {
                    ((NVRecyclerViewFragment) StoryListFragment.this).adapter.notifyDataSetChanged();
                }
                if (Utils.isEqualsNotNull(StoryListFragment.this.curStory.uid(), ((FanClub) notification.obj).targetUid) && ((FanClub) notification.obj).isActive() && StoryListFragment.this.storyItemViewSnapShot != null && (easyButton = (EasyButton) StoryListFragment.this.storyItemViewSnapShot.findViewById(R.id.play)) != null) {
                    easyButton.performClick();
                }
            }
            if ((notification.obj instanceof User) && "update".equals(notification.action)) {
                for (NVObject nVObject2 : this.dataSource.getPageStorage().getDataList()) {
                    if (nVObject2 instanceof Feed) {
                        Feed feed = (Feed) nVObject2;
                        if (((User) notification.obj).isSameUser(feed.author)) {
                            feed.author = (User) notification.obj;
                            z = true;
                        }
                    }
                }
                if (z) {
                    ((NVRecyclerViewFragment) StoryListFragment.this).adapter.notifyDataSetChanged();
                }
            }
        }

        public /* synthetic */ void lambda$onNotification$0$StoryListFragment$Adapter() {
            StoryListFragment storyListFragment = StoryListFragment.this;
            storyListFragment.onPlayerViewChanged(storyListFragment.currentPos, StoryListFragment.this.storyItemViewSnapShot);
        }
    }

    /* renamed from: com.narvii.story.StoryListFragment$9, reason: invalid class name */
    class AnonymousClass9 implements StoryItemClickListener {
        AnonymousClass9() {
        }

        @Override // com.narvii.story.widgets.StoryItemClickListener
        public void onPrevDirectionClicked(int i, Blog blog) {
            if (StoryListFragment.this.isShowingPageAboveVideo() || StoryListFragment.this.storyItemViewSnapShot == null) {
                return;
            }
            if (StoryListFragment.this.videoAutoPlay || StoryListFragment.this.playBtnClicked) {
                if (StoryListFragment.this.storyItemViewSnapShot.isPlayBtnVisible()) {
                    StoryListFragment.this.startPlay();
                    return;
                }
                if (blog == null) {
                    return;
                }
                if (blog.currentWindowIndex <= 0) {
                    StoryListFragment.this.getLogEventBuilder().actClick().actSemantic(ActSemantic.preScene).extraParam("currentSceneId", StoryUtils.getSceneId(blog, blog.currentWindowIndex)).extraParam("targetSceneId", StoryUtils.getSceneId(blog, 0)).send();
                    blog.currentWindowIndex = 0;
                    StoryListFragment.this.mPlayer.seekToWindow(0);
                    StoryListFragment.this.notifyItemChange(i);
                    return;
                }
                StoryListFragment.this.getLogEventBuilder().actClick().actSemantic(ActSemantic.preScene).extraParam("currentSceneId", StoryUtils.getSceneId(blog, blog.currentWindowIndex)).extraParam("targetSceneId", StoryUtils.getSceneId(blog, blog.currentWindowIndex - 1)).send();
                blog.currentWindowIndex--;
                StoryListFragment.this.mPlayer.seekToWindow(blog.currentWindowIndex);
                StoryListFragment.this.notifyItemChange(i);
            }
        }

        @Override // com.narvii.story.widgets.StoryItemClickListener
        public void onNextDirectionClicked(final int i, Blog blog) {
            if (StoryListFragment.this.isShowingPageAboveVideo() || StoryListFragment.this.storyItemViewSnapShot == null) {
                return;
            }
            if (StoryListFragment.this.videoAutoPlay || StoryListFragment.this.playBtnClicked) {
                if (StoryListFragment.this.storyItemViewSnapShot.isPlayBtnVisible()) {
                    StoryListFragment.this.startPlay();
                    return;
                }
                if (blog == null || StoryListFragment.this.curStory == null || StoryListFragment.this.shouldPauseForPageAboveVideo(blog.currentWindowIndex)) {
                    return;
                }
                List<Scene> list = blog.sceneList;
                int size = list == null ? 0 : list.size();
                int i2 = blog.currentWindowIndex;
                if (i2 >= size - 1) {
                    StoryListFragment.this.sendNextStoryLog(i, blog, null, ActType.click);
                    if (i >= ((NVRecyclerViewFragment) StoryListFragment.this).adapter.getSize() - 1) {
                        if (StoryListFragment.this.autoLoadNextPage && (((NVRecyclerViewFragment) StoryListFragment.this).adapter instanceof PagingRecyclerViewAdapter)) {
                            ((PagingRecyclerViewAdapter) ((NVRecyclerViewFragment) StoryListFragment.this).adapter).loadNextPage(new PageRequestCallback() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$9$9rdKlzu_dZF1DukhVY1g2uRk-wk
                                @Override // com.narvii.paging.source.PageRequestCallback
                                public final void onPageRequestFinished(int i3) {
                                    this.f$0.lambda$onNextDirectionClicked$0$StoryListFragment$9(i, i3);
                                }
                            });
                        } else {
                            StoryListFragment.this.getLogEventBuilder().actClick().actSemantic(ActSemantic.nextScene).extraParam("currentSceneId", StoryUtils.getSceneId(blog, blog.currentWindowIndex)).extraParam("targetSceneId", StoryUtils.getSceneId(blog, 0)).send();
                            blog.currentWindowIndex = 0;
                            StoryListFragment.this.mPlayer.seekToWindow(0);
                            StoryListFragment.this.notifyItemChange(i);
                        }
                    } else {
                        blog.currentWindowIndex = 0;
                        ((NVRecyclerViewFragment) StoryListFragment.this).recyclerView.smoothScrollToPosition(i + 1);
                        StoryListFragment.this.pendingClickNext = true;
                    }
                    StoryListFragment.this.preloadNextStories(i + 1);
                    return;
                }
                if (i2 + 1 < size) {
                    StoryListFragment.this.getLogEventBuilder().actClick().actSemantic(ActSemantic.nextScene).extraParam("currentSceneId", StoryUtils.getSceneId(blog, blog.currentWindowIndex)).extraParam("targetSceneId", StoryUtils.getSceneId(blog, blog.currentWindowIndex + 1)).send();
                }
                blog.currentWindowIndex++;
                StoryListFragment.this.preloadCurrentStory(i);
                StoryListFragment.this.mPlayer.seekToWindow(blog.currentWindowIndex);
                StoryListFragment.this.notifyItemChange(i);
            }
        }

        public /* synthetic */ void lambda$onNextDirectionClicked$0$StoryListFragment$9(int i, int i2) {
            if (i2 == 0) {
                RecyclerView.LayoutManager layoutManager = ((NVRecyclerViewFragment) StoryListFragment.this).recyclerView.getLayoutManager();
                if ((layoutManager instanceof LinearLayoutManager) && ((LinearLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition() == i) {
                    ((NVRecyclerViewFragment) StoryListFragment.this).recyclerView.smoothScrollToPosition(i + 1);
                    StoryListFragment.this.pendingClickNext = true;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void sendNextStoryLog(int r3, com.narvii.model.Blog r4, java.lang.String r5, com.narvii.logging.ActType r6) {
        /*
            r2 = this;
            int r3 = r3 + 1
            com.narvii.paging.adapter.NVRecyclerViewBaseAdapter r0 = r2.adapter
            int r0 = r0.getSize()
            if (r3 >= r0) goto L1b
            com.narvii.paging.adapter.NVRecyclerViewBaseAdapter r0 = r2.adapter
            java.lang.Object r3 = r0.getItem(r3)
            boolean r0 = r3 instanceof com.narvii.model.Blog
            if (r0 == 0) goto L1b
            com.narvii.model.Blog r3 = (com.narvii.model.Blog) r3
            java.lang.String r3 = r3.id()
            goto L1c
        L1b:
            r3 = 0
        L1c:
            com.narvii.logging.LogEvent$Builder r0 = r2.getLogEventBuilder()
            com.narvii.logging.LogEvent$Builder r0 = r0.actClick()
            com.narvii.logging.ActSemantic r1 = com.narvii.logging.ActSemantic.nextStory
            com.narvii.logging.LogEvent$Builder r0 = r0.actSemantic(r1)
            int r1 = r4.currentWindowIndex
            java.lang.String r4 = com.narvii.util.StoryUtils.getSceneId(r4, r1)
            java.lang.String r1 = "currentSceneId"
            com.narvii.logging.LogEvent$Builder r4 = r0.extraParam(r1, r4)
            java.lang.String r0 = "targetStoryId"
            com.narvii.logging.LogEvent$Builder r3 = r4.extraParam(r0, r3)
            if (r5 == 0) goto L41
            r3.area(r5)
        L41:
            if (r6 == 0) goto L46
            r3.actType(r6)
        L46:
            r3.send()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.story.StoryListFragment.sendNextStoryLog(int, com.narvii.model.Blog, java.lang.String, com.narvii.logging.ActType):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyItemChange(final int i) {
        if (this.adapter != null) {
            this.recyclerView.post(new Runnable() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$fRhpWC-M845H4bImSgdIve8jHJ8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$notifyItemChange$9$StoryListFragment(i);
                }
            });
        }
    }

    public /* synthetic */ void lambda$notifyItemChange$9$StoryListFragment(int i) {
        this.adapter.notifyItemChanged(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LogEvent.Builder getLogEventBuilder() {
        KeyEvent.Callback playerView = getPlayerView();
        NVContext nVContext = playerView instanceof NVContext ? (NVContext) playerView : this;
        String storyPlayId = NVPlayerManager.getNVPlayer(getContext()).getVideoLogHelper().getStoryPlayId();
        if (this.isPreview) {
            nVContext = null;
        }
        return LogEvent.builder(nVContext).extraParam("storyPlayId", storyPlayId).object(getCurrentBlog()).area("VideoArea");
    }

    class StoryItemViewHolder extends RecyclerView.ViewHolder {
        StoryItemView storyItemView;

        public StoryItemViewHolder(View view) {
            super(view);
            this.storyItemView = (StoryItemView) view.findViewById(R.id.story_item);
            this.storyItemView.setOrientation(StoryListFragment.this.orientation == 0 ? 0 : 1);
            if (view instanceof PageView) {
                ((PageView) view).sendPageViewEventToThirdParty(true);
            }
        }

        public void bindStory(Blog blog, int i, boolean z) {
            Drawable drawableCachedDrawable;
            Community community = (Community) StoryListFragment.this.communityMapping.get(blog.getPublishNdcId());
            if (Utils.isEqualsNotNull(blog == null ? null : blog.id(), StoryListFragment.this.initFeed == null ? null : StoryListFragment.this.initFeed.id())) {
                drawableCachedDrawable = cachedDrawable(blog.getExtraCoverMedia() == null ? null : blog.getExtraCoverMedia().url);
            } else {
                drawableCachedDrawable = null;
            }
            StoryItemView storyItemView = this.storyItemView;
            NVImageView nVImageView = storyItemView.imgStoryThumb;
            nVImageView.defaultDrawable = drawableCachedDrawable;
            nVImageView.loadingDrawable = drawableCachedDrawable;
            storyItemView.setIsImmersionModel(StoryListFragment.this.isImmersionMode);
            this.storyItemView.setStory(blog, i, community, z, StoryListFragment.this.isPreview);
            this.storyItemView.setStoryItemClickListener(StoryListFragment.this.storyPageTurningListener);
            this.storyItemView.setStoryItemPlayControlListener(StoryListFragment.this.storyItemPlayControlListener);
            if (Utils.isEqualsNotNull(blog.id(), StoryListFragment.this.curStory != null ? StoryListFragment.this.curStory.id() : null)) {
                blog.currentWindowIndex = StoryListFragment.this.curStory.currentWindowIndex;
            }
            this.storyItemView.setSceneIndex(blog.currentWindowIndex);
            View view = this.itemView;
            if (view instanceof PageView) {
                ((PageView) view).setStrategyObject(blog);
            }
        }

        public Drawable cachedDrawable(String str) {
            Bitmap diskCachedBitmap;
            if (str == null || (diskCachedBitmap = ((NVImageLoader) StoryListFragment.this.getService("imageLoader")).getDiskCachedBitmap(NVImageView.replaceUrl(str, "00"))) == null) {
                return null;
            }
            return new BitmapDrawable(diskCachedBitmap);
        }
    }

    private void updateWifiActive() {
        try {
            if (this.connectivityManager == null) {
                this.connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
            }
            NetworkInfo activeNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
            boolean z = true;
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting() || activeNetworkInfo.getType() != 1) {
                z = false;
            }
            this.wifiActive = z;
        } catch (Exception unused) {
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    public void updateVideoAutoPlay() {
        if (this.prefs == null) {
            this.prefs = (SharedPreferences) getService("prefs");
        }
        int i = this.prefs.getInt(INVPlayer.VIDEO_AUTO_PLAY_PREFS_KEY, 0);
        if (i == 0) {
            this.videoAutoPlay = true;
        } else if (i == 1) {
            this.videoAutoPlay = this.wifiActive;
        } else {
            this.videoAutoPlay = false;
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    public void updateViews() {
        super.updateViews();
        if (this.initFeed != null || this.singleStoryAdapter == null) {
            return;
        }
        boolean z = (TextUtils.isEmpty(this.adapter.getErrorMessage()) || this.singleStoryAdapter.story == null || this.singleStoryAdapter.story.status != 9) ? false : true;
        this.pageStatusView.setBackgroundColor(z ? -11449517 : 0);
        if (z) {
            this.pageStatusView.setVisibility(0);
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.nvplayerview.broadcast.NetworkConnectChangeReceiver.IWifiStateChangeListener
    public void onWifiStateChange(boolean z) {
        if (z != this.wifiActive) {
            this.wifiActive = z;
            updateVideoAutoPlay();
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.setting.VideoAutoPlayChangeListener
    public void videoAutoPlayChange(int i) {
        if (i == 0) {
            this.videoAutoPlay = true;
        } else if (i == 1) {
            this.videoAutoPlay = this.wifiActive;
        } else {
            this.videoAutoPlay = false;
        }
    }

    public void setBottomSheetLayout(FrameLayout frameLayout) {
        if (frameLayout == null) {
            return;
        }
        this.bottomLayout = frameLayout;
        this.bottomContainer = (RoundFrameLayout) this.bottomLayout.findViewById(this.bottomLayout == this.defaultBottomLayout ? R.id.default_bottom_container : R.id.bottom_container);
        float fDpToPx = Utils.dpToPx(getContext(), 15.0f);
        this.bottomContainer.setCornerRadius(new float[]{fDpToPx, fDpToPx, fDpToPx, fDpToPx, 0.0f, 0.0f, 0.0f, 0.0f});
        this.bottomContainer.setOnClickListener(this);
        this.bottomBgView = this.bottomLayout.findViewById(R.id.bottom_bg);
        this.bottomBgView.setOnClickListener(this);
        this.bottomSheetBehavior = BottomSheetBehavior.from(this.bottomLayout);
        this.bottomSheetBehavior.setPeekHeight(0);
        this.bottomSheetBehavior.setBottomSheetCallback(this.bottomSheetCallback);
    }

    @Override // com.narvii.story.IStoryBottomSheetListener
    public void onBottomSheetShow(int i) {
        StoryItemView storyItemView = this.storyItemViewSnapShot;
        if (storyItemView != null && storyItemView.isFansOnly()) {
            this.storyItemViewSnapShot.performBecomeFansClick();
            return;
        }
        if (this.bottomLayout == null) {
            setBottomSheetLayout((FrameLayout) this.parentView.findViewById(R.id.bottom_layout));
        }
        Blog currentBlog = getCurrentBlog();
        if (currentBlog == null) {
            return;
        }
        if (this.type == i) {
            changeBottomSheetBehaviorState(3);
            return;
        }
        removeBottomSheetFragment();
        this.type = i;
        int i2 = this.bottomLayout == this.defaultBottomLayout ? R.id.default_bottom_container : R.id.bottom_container;
        String str = this.bottomLayout == this.defaultBottomLayout ? "defaultBottomSheetFragment" : "bottomSheetFragment";
        if (i == 0) {
            if (this.storyLikeFragment == null) {
                this.storyLikeFragment = new StoryVoteListFragment();
                this.storyLikeFragment.setBottomSheetListener(this);
                this.storyLikeFragment.setStoryVoteListener(new StoryVoteListFragment.IStoryVoteListener() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$kfZoMnuUjzOEt9MPDXL9FocCxWs
                    @Override // com.narvii.story.vote.StoryVoteListFragment.IStoryVoteListener
                    public final void cancelVote() {
                        this.f$0.lambda$onBottomSheetShow$10$StoryListFragment();
                    }
                });
                Bundle bundle = new Bundle();
                LogUtils.takeLogContextInfoWhenStartPage(bundle);
                bundle.putString("blog", JacksonUtils.writeAsString(currentBlog));
                bundle.putString("community", JacksonUtils.writeAsString(this.communityMapping.get(currentBlog.getPublishNdcId())));
                this.storyLikeFragment.setArguments(bundle);
            }
            this.bottomSheetFragment = this.storyLikeFragment;
            if (this.bottomLayout == this.defaultBottomLayout) {
                getChildFragmentManager().beginTransaction().replace(i2, this.bottomSheetFragment, str).commitAllowingStateLoss();
            } else {
                getActivity().getSupportFragmentManager().beginTransaction().replace(i2, this.bottomSheetFragment, str).commitAllowingStateLoss();
            }
        } else if (i == 1) {
            if (this.storyCommentFragment == null) {
                this.storyCommentFragment = new StoryCommentListFragment();
            }
            Bundle bundle2 = new Bundle();
            LogUtils.takeLogContextInfoWhenStartPage(bundle2);
            bundle2.putString("blog", JacksonUtils.writeAsString(currentBlog));
            bundle2.putString("community", JacksonUtils.writeAsString(this.communityMapping.get(currentBlog.getPublishNdcId())));
            this.storyCommentFragment.setArguments(bundle2);
            this.bottomSheetFragment = this.storyCommentFragment;
            if (this.bottomLayout == this.defaultBottomLayout) {
                getChildFragmentManager().beginTransaction().replace(i2, this.bottomSheetFragment, str).commitAllowingStateLoss();
            } else {
                getActivity().getSupportFragmentManager().beginTransaction().replace(i2, this.bottomSheetFragment, str).commitAllowingStateLoss();
            }
        }
        changeBottomSheetBehaviorState(3);
    }

    public /* synthetic */ void lambda$onBottomSheetShow$10$StoryListFragment() {
        StoryItemView storyItemView = this.storyItemViewSnapShot;
        if (storyItemView != null) {
            storyItemView.performVote();
        }
    }

    @Override // com.narvii.story.IStoryBottomSheetListener
    public void onBottomSheetHide() {
        changeBottomSheetBehaviorState(4);
    }

    private void removeBottomSheetFragment() {
        if (getActivity() == null || getActivity().getSupportFragmentManager() == null) {
            return;
        }
        if (this.bottomSheetFragment != null) {
            if (this.bottomLayout == this.defaultBottomLayout) {
                getChildFragmentManager().beginTransaction().remove(this.bottomSheetFragment).commitAllowingStateLoss();
            } else {
                getActivity().getSupportFragmentManager().beginTransaction().remove(this.bottomSheetFragment).commitNowAllowingStateLoss();
            }
        } else {
            String str = this.bottomLayout == this.defaultBottomLayout ? "defaultBottomSheetFragment" : "bottomSheetFragment";
            if (this.bottomLayout == this.defaultBottomLayout) {
                Fragment fragmentFindFragmentByTag = getChildFragmentManager().findFragmentByTag(str);
                if (fragmentFindFragmentByTag != null) {
                    getChildFragmentManager().beginTransaction().remove(fragmentFindFragmentByTag).commitAllowingStateLoss();
                }
            } else {
                Fragment fragmentFindFragmentByTag2 = getActivity().getSupportFragmentManager().findFragmentByTag(str);
                if (fragmentFindFragmentByTag2 != null) {
                    getActivity().getSupportFragmentManager().beginTransaction().remove(fragmentFindFragmentByTag2).commitNowAllowingStateLoss();
                }
            }
        }
        this.bottomSheetFragment = null;
    }

    private void destroyStoryVoteAndCommentFragment() {
        this.storyCommentFragment = null;
        this.storyLikeFragment = null;
        this.type = -1;
    }

    @Override // com.narvii.story.swipe.IStorySwipeListener
    public void onSwipeUp() {
        LinkSummary storyLinkSummary;
        Blog blog = this.curStory;
        if (blog != null && (storyLinkSummary = blog.getStoryLinkSummary()) != null) {
            StoryUtils.getLogEventClickBuilder(getPlayerView(), this.curStory, this.isPreview).area("VideoArea").actType(ActType.upScroll).actSemantic(ActSemantic.checkDetail).send();
            NVContext pageViewParent = PageViewUtils.getPageViewParent(getPlayerView());
            if (pageViewParent == null) {
                pageViewParent = this;
            }
            new StoryLinkHelper(pageViewParent).openLink(storyLinkSummary, this.isPreview, this.communityMapping.get(this.curStory.getPublishNdcId()));
        }
        reAttachItemTouch();
    }

    @Override // com.narvii.story.swipe.IStorySwipeListener
    public void onSwipeDown() {
        reAttachItemTouch();
    }

    private void reAttachItemTouch() {
        if (this.itemTouchRunnable == null) {
            this.itemTouchRunnable = new Runnable() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$FU4IvhGvkO2oxUNFYhE9Bx_wZRM
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$reAttachItemTouch$11$StoryListFragment();
                }
            };
        }
        Utils.post(this.itemTouchRunnable);
    }

    public /* synthetic */ void lambda$reAttachItemTouch$11$StoryListFragment() {
        ItemTouchHelper itemTouchHelper = this.itemTouchHelper;
        if (itemTouchHelper != null) {
            itemTouchHelper.attachToRecyclerView(this.dummyRecyclerView);
            if (isShowingPageAboveVideo()) {
                return;
            }
            this.itemTouchHelper.attachToRecyclerView(this.recyclerView);
        }
    }

    @Override // com.narvii.story.IStoryLongClickListener
    public void onStoryLongClicked() {
        StoryItemView storyItemView = this.storyItemViewSnapShot;
        if (storyItemView == null || storyItemView.isPlayBtnVisible()) {
            return;
        }
        this.storyItemViewSnapShot.pauseProgressAnimation();
        setPlayWhenReady(false, 2);
        EasyButton easyButton = (EasyButton) this.storyItemViewSnapShot.findViewById(R.id.play);
        easyButton.setVisibility(0);
        easyButton.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.-$$Lambda$StoryListFragment$cScypPf4iWPft7yYSBCOHY34nfI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onStoryLongClicked$12$StoryListFragment(view);
            }
        });
    }

    public /* synthetic */ void lambda$onStoryLongClicked$12$StoryListFragment(View view) {
        setPlayWhenReady(true, 2);
        this.storyItemViewSnapShot.resumeProgressAnimation();
        this.storyItemViewSnapShot.setPlayBtnVisibility(4);
    }

    @Override // android.support.v4.app.Fragment, com.narvii.app.NVContext, android.content.Context
    public void startActivity(Intent intent) {
        if (getPlayerView() instanceof PageView) {
            ((PageView) getPlayerView()).takeLogContextInfo();
        }
        super.startActivity(intent);
    }

    @Override // android.support.v4.app.Fragment
    public void startActivityForResult(Intent intent, int i) {
        if (getPlayerView() instanceof PageView) {
            ((PageView) getPlayerView()).takeLogContextInfo();
        }
        super.startActivityForResult(intent, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideInterstitialPage(boolean z) {
        Blog blog;
        if (this.storyItemViewSnapShot == null || (blog = this.curStory) == null || blog.sceneList == null || this.mPlayer == null) {
            return;
        }
        this.interstitialPageShow = false;
        reAttachItemTouch();
        if (z) {
            this.storyItemViewSnapShot.hideInterstitialPage(this);
        } else {
            this.storyItemViewSnapShot.hideInterstitialView();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getStrategyInfo() {
        if (getPlayerView() instanceof PageView) {
            ((PageView) getPlayerView()).getStrategyInfo();
        }
        return super.getStrategyInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isShowingPageAboveVideo() {
        return this.playingPollOrQuiz || this.showingQuizResult || this.interstitialPageShow;
    }

    public boolean isShowingPopupViews() {
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.bottomSheetBehavior;
        if (bottomSheetBehavior != null && bottomSheetBehavior.getState() == 3) {
            return true;
        }
        FragmentActivity activity = getActivity();
        if ((activity instanceof NVActivity) && StoryQuizRankingListFragment.isFragmentShowing((NVActivity) activity)) {
            return true;
        }
        return (activity == null || activity.hasWindowFocus()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPlay() {
        INVPlayer iNVPlayer = this.mPlayer;
        if (iNVPlayer == null || iNVPlayer.getPlayWhenReady()) {
            return;
        }
        this.storyItemViewSnapShot.setPlayBtnVisibility(4);
        setPlayWhenReady(true, -1);
        this.storyItemViewSnapShot.resumeProgressAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayWhenReady(boolean z, int i) {
        if (this.mPlayer == null || this.storyItemViewSnapShot == null) {
            return;
        }
        if (i == -1) {
            this.playerPauseSet.clear();
            this.mPlayer.setPlayWhenReady(z);
            return;
        }
        if (z) {
            if (i != 0) {
                this.playerPauseSet.remove(Integer.valueOf(i));
            }
            if (this.playerPauseSet.isEmpty()) {
                this.mPlayer.setPlayWhenReady(true);
                StoryItemView storyItemView = this.storyItemViewSnapShot;
                if (storyItemView != null) {
                    storyItemView.resumeProgressAnimation();
                    return;
                }
                return;
            }
            return;
        }
        if (i != 0) {
            this.playerPauseSet.add(Integer.valueOf(i));
        }
        this.mPlayer.setPlayWhenReady(false);
        StoryItemView storyItemView2 = this.storyItemViewSnapShot;
        if (storyItemView2 != null) {
            storyItemView2.pauseProgressAnimation();
        }
    }
}
