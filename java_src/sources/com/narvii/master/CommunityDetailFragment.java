package com.narvii.master;

import ai.medialab.medialabads2.banners.MediaLabAdView;
import ai.medialab.medialabads2.data.AdSize;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
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
import androidx.core.content.ContextCompat;
import androidx.core.os.EnvironmentCompat;
import androidx.fragment.app.Fragment;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.account.LogoutHelper;
import com.narvii.ad.AdsConstants;
import com.narvii.ad.MediaLabAdsUtilsKt;
import com.narvii.amino.master.R;
import com.narvii.app.ComScoreSectionDispatcher;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.CommunityShareFragment;
import com.narvii.community.CommunityUserInfo;
import com.narvii.community.FullCommunityResponse;
import com.narvii.community.ReminderCheck;
import com.narvii.community.request.RequestJoinCommunityDialog;
import com.narvii.config.ConfigService;
import com.narvii.detail.DetailAdapter;
import com.narvii.detail.DetailPushUtils;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.language.LanguageManager;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.livelayer.LiveLayerActivity;
import com.narvii.livelayer.LiveLayerFragment;
import com.narvii.livelayer.LiveLayerHelper;
import com.narvii.livelayer.LiveLayerHost;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.livelayer.ws.LiveLayerWsService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.DivideColumnImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectType;
import com.narvii.master.explorer.CommunityListAdapter;
import com.narvii.master.invitation.CommunityInviteResponse;
import com.narvii.master.invitation.Invitation;
import com.narvii.master.invitation.InviteHelper;
import com.narvii.master.invitation.PasteBoardService;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.media.MediaGalleryActivity;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserListResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.model.story.StoryTopic;
import com.narvii.notification.Notification;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.share.ShareDarkRoomFragment;
import com.narvii.share.ShareDarkRoomHelper;
import com.narvii.share.ShareViewHelper;
import com.narvii.story.widgets.StoryTopicView;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.AlignSuperscriptSpan;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.EnterCommunityUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.mixpanel.MixpanelAnalytics;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.util.text.OnTagClickListener;
import com.narvii.util.ws.WsError;
import com.narvii.util.ws.WsMessage;
import com.narvii.util.ws.WsService;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.CommunityActivenessBar;
import com.narvii.widget.InfluencerRecyclerView;
import com.narvii.widget.JoinCommunityProgressLayout;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.PromotionalImageView;
import com.narvii.widget.ThumbImageView;
import com.safedk.android.utils.Logger;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class CommunityDetailFragment extends NVListFragment implements FragmentOnBackListener, WsService.WsListener {
    public static final String KEY_AUTO_JOIN = "autoJoin";
    public static final String KEY_BLOCKING_PRIVATE_COMMUNITY = "blockPrivateCommunity";
    public static final String KEY_COMMUNITY = "prefetch";
    public static final String KEY_COMMUNITY_INFO_REQUESTED = "communityInfoRequested";
    public static final String KEY_COMMUNITY_USER_INFO_CHANGED = "com.narvii.action.COMMUNITY_USER_INFO_CHANGED";
    public static final String KEY_CURRENT_USER_JOINED = "isCurrentUserJoined";
    public static final String KEY_INVITATION_CODE = "inviteCode";
    public static final String KEY_INVITATION_ID = "invitationId";
    public static final String KEY_LOGIN_AHEAD = "loginAhead";
    static final int REQUEST_CODE_LIVE_LAYER = 300;
    private RealtimeBlurView blurView;
    private ApiRequest checkEligibleRequest;
    int cid;
    PromotionalImageView communityDetailBg;
    private View communityIconActionBarLayout;
    private boolean communityInfoRequested;
    View detailFrame;
    EndorsedCommunityAdapter endorsedCommunityAdapter;
    EndorsedCommunityTitleAdapter endorsedCommunityTitleAdapter;
    private View fakeActionBar;
    private ApiRequest getSubmittedRequest;
    private TextView hoverBtnJoin;
    private View hoverContainer;
    private JoinCommunityProgressLayout hoverJoinCommunityProgress;
    private int hoverOffset;
    private View hoverPrivateLock;
    Intent intentAfterLaunch;
    private String invitationId;
    private String inviteCode;
    private InviteHelper inviteHelper;
    private boolean isCurrentUserJoined;
    private boolean isInProgress;
    private boolean isInviteCodeRequested;
    private boolean isRequested;
    private boolean isUserJoinedBeforeLaunch;
    private View joinCommunityButtonContainer;
    Intent joinLogin;
    private int joinProgress;
    LiveLayerHelper liveLayerHelper;
    LiveLayerWsService liveLayerWsService;
    private Community mCommunity;
    private CommunityLaunchHelper mLaunchHelper;
    MainAdapter mainAdapter;
    boolean offline;
    InfluencerRecyclerView.OnUserClickListener onUserClickListener;
    LiveLayerOnlineBar onlineMemberBar;
    boolean onlineMemberListRequested;
    private boolean pendingAutoLogin;
    View rootFrame;
    static final DetailAdapter.CellType HEADER = new DetailAdapter.CellType("detail.title", false);
    static final DetailAdapter.CellType TAGLINE = new DetailAdapter.CellType("detail.tagline", false);
    static final DetailAdapter.CellType CONTENT_LOADING = new DetailAdapter.CellType("detail.loading");
    static final DetailAdapter.CellType DESCRIPTION_TITLE = new DetailAdapter.CellType("detail.description");
    static final DetailAdapter.CellType DESCRIPTION_ERROR = new DetailAdapter.CellType("detail.error");
    static final DetailAdapter.CellType NO_DESCRIPTION = new DetailAdapter.CellType("detail.no.description");
    static final DetailAdapter.CellType JOIN_COMMUNITY = new DetailAdapter.CellType("detail.join.community");
    static final DetailAdapter.CellType JOIN_COMMUNITY_MARGIN = new DetailAdapter.CellType("detail.join.community.margin");
    static final DetailAdapter.CellType INFLUENCER_CELL = new DetailAdapter.CellType("detail.influencer");
    static final DetailAdapter.CellType TOPIC_CELL = new DetailAdapter.CellType("detail.topic");
    static final DetailAdapter.CellType AD_UNIT = new DetailAdapter.CellType("detail.ad.unit");
    boolean showMoreTopics = true;
    String topic = "online-members";
    final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.master.CommunityDetailFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                CommunityDetailFragment.this.mainAdapter.refresh(0, null);
                CommunityDetailFragment.this.updateAccountRelatedViews();
            } else if (CommunityDetailFragment.KEY_COMMUNITY_USER_INFO_CHANGED.equals(intent.getAction()) && CommunityDetailFragment.this.getBooleanParam(CommunityDetailFragment.KEY_BLOCKING_PRIVATE_COMMUNITY) && intent.getBooleanExtra(CommunityDetailFragment.KEY_CURRENT_USER_JOINED, false)) {
                CommunityDetailFragment.this.getActivity().finish();
            }
        }
    };
    AbsListView.OnScrollListener onScrollListener = new AbsListView.OnScrollListener() { // from class: com.narvii.master.CommunityDetailFragment.6
        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            float height = 1.0f;
            if (i10 == 1) {
                View childAt = absListView.getChildAt(0);
                height = 1.0f - ((childAt.getHeight() + childAt.getTop()) / childAt.getHeight());
            } else if (i10 < 1) {
                height = 0.0f;
            }
            if (CommunityDetailFragment.this.blurView != null) {
                CommunityDetailFragment.this.blurView.setAlpha(height);
            }
            CommunityDetailFragment.this.updateActionBarHeader(height);
            if (CommunityDetailFragment.this.fakeActionBar != null) {
                CommunityDetailFragment.this.fakeActionBar.setAlpha(height);
            }
            CommunityDetailFragment.this.updateHoverJoinButtonView();
        }
    };

    /* JADX INFO: renamed from: com.narvii.master.CommunityDetailFragment$10, reason: invalid class name */
    class AnonymousClass10 extends CommunityLaunchHelper {
        private static final long MIN_TIME_LIMIT = 1000;
        private Animation animation;
        private Runnable minTimeRunnable;
        private boolean satisfyTime;
        private long startTime;
        private Runnable updateProgressRunnable;

        @Override // com.narvii.community.CommunityLaunchHelper
        public void launch(int i10, Community community, String str, User user, String str2, ReminderCheck reminderCheck, String str3, boolean z6, int i11, Drawable drawable) {
            super.launch(i10, community, str, user, str2, reminderCheck, str3, z6, i11, drawable, CommunityDetailFragment.this.intentAfterLaunch);
            setStartTime();
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected boolean readyForFinish() {
            return this.satisfyTime;
        }

        AnonymousClass10(NVContext nVContext, String str) {
            super(nVContext, str);
            this.minTimeRunnable = new Runnable() { // from class: com.narvii.master.CommunityDetailFragment.10.1
                @Override // java.lang.Runnable
                public void run() {
                    Utils.handler.removeCallbacks(AnonymousClass10.this.updateProgressRunnable);
                    AnonymousClass10.this.satisfyTime = true;
                    if (((CommunityLaunchHelper) AnonymousClass10.this).isFinished) {
                        AnonymousClass10.this.beginFinishWork();
                    }
                }
            };
            this.updateProgressRunnable = new Runnable() { // from class: com.narvii.master.CommunityDetailFragment.10.2
                @Override // java.lang.Runnable
                public void run() {
                    Utils.postDelayed(AnonymousClass10.this.updateProgressRunnable, 500L);
                    AnonymousClass10.this.progress();
                }
            };
        }

        private void setStartTime() {
            if (this.startTime != 0) {
                return;
            }
            this.startTime = System.currentTimeMillis();
            Utils.post(this.updateProgressRunnable);
            Utils.postDelayed(this.minTimeRunnable, 1000L);
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void beginFinishWork() {
            Handler handler = Utils.handler;
            handler.removeCallbacks(this.minTimeRunnable);
            handler.removeCallbacks(this.updateProgressRunnable);
            super.beginFinishWork();
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onFail(int i10, String str) {
            CommunityDetailFragment.this.isInProgress = false;
            this.startTime = 0L;
            Handler handler = Utils.handler;
            handler.removeCallbacks(this.minTimeRunnable);
            handler.removeCallbacks(this.updateProgressRunnable);
            CommunityDetailFragment.this.updateJoinButtonStatus();
            super.onFail(i10, str);
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onFinish() {
            Handler handler = Utils.handler;
            handler.removeCallbacks(this.minTimeRunnable);
            handler.removeCallbacks(this.updateProgressRunnable);
            this.startTime = 0L;
            CommunityDetailFragment.this.isInProgress = false;
            CommunityDetailFragment.this.isCurrentUserJoined = true;
            CommunityDetailFragment.this.joinProgress = 0;
            CommunityDetailFragment.this.updateJoinButtonStatus();
            Animation animation = this.animation;
            if (animation != null) {
                animation.cancel();
            }
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(CommunityDetailFragment.this.getContext(), R.anim.community_detail_fade_out_foreground);
            animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.master.CommunityDetailFragment.10.3
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation2) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation2) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation2) {
                    CommunityDetailFragment.this.detailFrame.setVisibility(4);
                    if (AnonymousClass10.this.animation == animation2) {
                        AnonymousClass10.this._onFinish();
                        AnonymousClass10.this.animation = null;
                    }
                }
            });
            this.animation = animationLoadAnimation;
            CommunityDetailFragment.this.detailFrame.startAnimation(animationLoadAnimation);
            CommunityDetailFragment communityDetailFragment = CommunityDetailFragment.this;
            communityDetailFragment.rootFrame.startAnimation(AnimationUtils.loadAnimation(communityDetailFragment.getContext(), R.anim.community_detail_scale_background));
        }

        void _onFinish() {
            super.onFinish();
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        public void clear() {
            super.clear();
            Animation animation = this.animation;
            if (animation != null) {
                animation.cancel();
                this.animation = null;
            }
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        public void launch(int i10, Community community, String str, User user, String str2, ReminderCheck reminderCheck, String str3, boolean z6) {
            super.launch(i10, community, str, user, str2, reminderCheck, str3, z6);
        }

        @Override // com.narvii.community.CommunityLaunchHelper
        protected void onProgress(int i10, float f) {
            setStartTime();
            CommunityDetailFragment.this.joinProgress = ((int) (Math.min((System.currentTimeMillis() - this.startTime) / 1000.0f, f) * 80.0f)) + 20;
            CommunityDetailFragment.this.isInProgress = true;
            CommunityDetailFragment.this.updateJoinButtonStatus();
        }
    }

    /* JADX INFO: renamed from: com.narvii.master.CommunityDetailFragment$8, reason: invalid class name */
    class AnonymousClass8 implements View.OnClickListener {
        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        AnonymousClass8() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$0(Boolean bool) {
            Intent intent = new Intent(CommunityDetailFragment.this.getContext(), (Class<?>) LoginActivity.class);
            intent.putExtras(CommunityDetailFragment.this.joinLogin.getExtras());
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(CommunityDetailFragment.this, intent);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            new LogoutHelper(CommunityDetailFragment.this).logout(new Callback() { // from class: com.narvii.master.a
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f2303a.lambda$onClick$0((Boolean) obj);
                }
            });
        }
    }

    private class EndorsedCommunityAdapter extends CommunityListAdapter {
        @Override // com.narvii.community.BaseCommunityListAdapter
        protected boolean communityNameSpecialType() {
            return false;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "EndorsedAminos";
        }

        @Override // com.narvii.community.BaseCommunityListAdapter
        protected boolean isDarkTheme() {
            return true;
        }

        @Override // com.narvii.community.BaseCommunityListAdapter
        protected int itemViewLayoutId() {
            return R.layout.item_kindred_community;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 10;
        }

        public EndorsedCommunityAdapter() {
            super(CommunityDetailFragment.this);
            addImpressionCollector(new DivideColumnImpressionCollector(this));
            this.source = "Endorsed Communities";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            MainAdapter mainAdapter = CommunityDetailFragment.this.mainAdapter;
            if (mainAdapter != null && mainAdapter.getResponse() != null && CommunityDetailFragment.this.mainAdapter.getResponse().timestamp != null) {
                return ApiRequest.builder().path("/community/kindred").scopeCommunityId(CommunityDetailFragment.this.cid).build();
            }
            this._list = null;
            this._isEnd = true;
            notifyDataSetChanged();
            return null;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            MainAdapter mainAdapter = CommunityDetailFragment.this.mainAdapter;
            if (mainAdapter == null || mainAdapter.getObject() == null) {
                return 0;
            }
            return super.getCount();
        }
    }

    class EndorsedCommunityTitleAdapter extends AdriftAdapter {
        public EndorsedCommunityTitleAdapter() {
            super(CommunityDetailFragment.this);
            setDarkTheme(true);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            EndorsedCommunityAdapter endorsedCommunityAdapter = CommunityDetailFragment.this.endorsedCommunityAdapter;
            return (endorsedCommunityAdapter == null || endorsedCommunityAdapter.isEmpty()) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.kindred_community_header_layout, viewGroup, view);
            viewCreateView.setBackgroundDrawable(new ColorDrawable(ContextCompat.getColor(getContext(), R.color.community_detail_cell_bg)));
            return viewCreateView;
        }
    }

    private class MainAdapter extends DetailAdapter<Community, FullCommunityResponse> {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.detail.DetailAdapter
        public View createMediaView(Media media, View view, ViewGroup viewGroup) {
            View viewCreateMediaView = super.createMediaView(media, view, viewGroup);
            NVVideoListDelegate.markVideoCell(viewCreateMediaView, R.id.image, media, (Media) null, (NVObject) getObject(), 0, true);
            return viewCreateMediaView;
        }

        @Override // com.narvii.detail.DetailAdapter
        public Class<? extends Community> objectType() {
            return Community.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected Class<? extends FullCommunityResponse> responseType() {
            return FullCommunityResponse.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        public boolean showShareMediaBar() {
            return false;
        }

        public MainAdapter() {
            super(CommunityDetailFragment.this);
            setDarkTheme(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onInfluencerClicked(User user) {
            Community object;
            if (user == null || (object = getObject()) == null) {
                return;
            }
            final Intent intent = FragmentWrapperActivity.intent(UserProfileFragment.class);
            intent.putExtra("id", user.uid);
            intent.putExtra("__communityId", object.id);
            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(user));
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Community Detail Page (Influencer)");
            if (CommunityDetailFragment.this.isCurrentUserJoined) {
                new MasterHelper(CommunityDetailFragment.this).safeStartActivity(intent, object.id);
                return;
            }
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setMessage(R.string.headline_join_amino_first);
            aCMAlertDialog.addButton(R.string.cancel, null);
            aCMAlertDialog.addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.master.CommunityDetailFragment.MainAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CommunityDetailFragment communityDetailFragment = CommunityDetailFragment.this;
                    Intent intent2 = intent;
                    communityDetailFragment.joinCommunity(intent2 != null ? (Intent) intent2.clone() : null);
                }
            });
            aCMAlertDialog.show();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected View getCell(Object obj, View view, ViewGroup viewGroup) {
            List<StoryTopic> list;
            int i10 = 0;
            if (obj == CommunityDetailFragment.HEADER) {
                View viewCreateView = createView(R.layout.community_detail_header, viewGroup, view);
                ((NVImageView) viewCreateView.findViewById(R.id.icon)).setImageUrl(getObject().icon);
                TextView textView = (TextView) viewCreateView.findViewById(R.id.title);
                ViewUtils.setMontserratExtraBoldTypeface(textView);
                textView.setText(getObject().name);
                ((TextView) viewCreateView.findViewById(R.id.membercount)).setText(getObject().getMemberCount());
                ((TextView) viewCreateView.findViewById(R.id.community_language)).setText(((LanguageManager) getService("language")).getLocalDisplayText(getObject().primaryLanguage));
                CommunityActivenessBar communityActivenessBar = (CommunityActivenessBar) viewCreateView.findViewById(R.id.community_activeness_level);
                communityActivenessBar.setVisibility((getObject() == null || getObject().joinType == 2 || getObject().communityHeat < 0.0f) ? 8 : 0);
                communityActivenessBar.setActiveness(getObject().communityHeat);
                TextView textView2 = (TextView) viewCreateView.findViewById(R.id.community_id_info);
                String strValueOf = String.valueOf(getObject().endpoint);
                String string = CommunityDetailFragment.this.getString(R.string.amino_id_with_name, strValueOf);
                SpannableString spannableString = new SpannableString(string);
                if (!TextUtils.isEmpty(strValueOf)) {
                    int iLastIndexOf = string.lastIndexOf(strValueOf);
                    spannableString.setSpan(new StyleSpan(1), iLastIndexOf, string.length(), 33);
                    spannableString.setSpan(new RelativeSizeSpan(0.7f), 0, iLastIndexOf, 33);
                    spannableString.setSpan(new AlignSuperscriptSpan(0.35f, 0.7f), 0, iLastIndexOf, 33);
                }
                textView2.setText(spannableString);
                textView2.setOnClickListener(this.subviewClickListener);
                viewCreateView.findViewById(R.id.community_invite_lock).setVisibility(getObject().shouldShowLock() ? 0 : 8);
                return viewCreateView;
            }
            if (obj == CommunityDetailFragment.TAGLINE) {
                TextView textView3 = (TextView) createView(R.layout.community_detail_tagline, viewGroup, view);
                textView3.setVisibility(TextUtils.isEmpty(getObject().tagline) ? 8 : 0);
                textView3.setText(getObject().tagline);
                return textView3;
            }
            if (obj == CommunityDetailFragment.CONTENT_LOADING) {
                return createView(R.layout.detail_content_loading, viewGroup, view);
            }
            if (obj == CommunityDetailFragment.DESCRIPTION_TITLE) {
                View viewCreateView2 = createView(R.layout.community_detail_title_item, viewGroup, view);
                ((TextView) viewCreateView2.findViewById(R.id.title)).setBackgroundResource(R.color.community_detail_cell_bg);
                return viewCreateView2;
            }
            if (obj == CommunityDetailFragment.DESCRIPTION_ERROR) {
                View viewCreateView3 = createView(R.layout.community_detail_error_layout, viewGroup, view);
                ((TextView) viewCreateView3.findViewById(R.id.error_message)).setText(this.errorMsg);
                viewCreateView3.findViewById(R.id.retry).setOnClickListener(this.subviewClickListener);
                return viewCreateView3;
            }
            if (obj == CommunityDetailFragment.NO_DESCRIPTION) {
                return createView(R.layout.detail_no_description, viewGroup, view);
            }
            if (obj == CommunityDetailFragment.JOIN_COMMUNITY) {
                View viewCreateView4 = createView(R.layout.item_community_detail_join_layout, viewGroup, view);
                CommunityDetailFragment.this.joinCommunityButtonContainer = viewCreateView4.findViewById(R.id.join_community_container);
                viewCreateView4.findViewById(R.id.join_community).setOnClickListener(this.subviewClickListener);
                JoinCommunityProgressLayout joinCommunityProgressLayout = (JoinCommunityProgressLayout) viewCreateView4.findViewById(R.id.join_community);
                TextView textView4 = (TextView) viewCreateView4.findViewById(R.id.join);
                View viewFindViewById = viewCreateView4.findViewById(R.id.join_community_lock);
                CommunityDetailFragment communityDetailFragment = CommunityDetailFragment.this;
                communityDetailFragment.updateJoinButton(communityDetailFragment.mCommunity, joinCommunityProgressLayout, textView4, viewFindViewById);
                if (CommunityDetailFragment.this.isInProgress) {
                    joinCommunityProgressLayout.setProgress(CommunityDetailFragment.this.joinProgress);
                } else {
                    joinCommunityProgressLayout.cancelProgress();
                }
                return viewCreateView4;
            }
            if (obj == CommunityDetailFragment.JOIN_COMMUNITY_MARGIN) {
                return createView(R.layout.item_community_detail_join_margin, viewGroup, view);
            }
            if (obj == CommunityDetailFragment.INFLUENCER_CELL) {
                View viewCreateView5 = createView(R.layout.item_community_detail_influencer_module, viewGroup, view);
                Community object = getObject();
                InfluencerRecyclerView influencerRecyclerView = (InfluencerRecyclerView) viewCreateView5.findViewById(R.id.influencer_recycler);
                influencerRecyclerView.updateInfluencerList(object == null ? null : object.influencerList);
                CommunityDetailFragment communityDetailFragment2 = CommunityDetailFragment.this;
                if (communityDetailFragment2.onUserClickListener == null) {
                    communityDetailFragment2.onUserClickListener = new InfluencerRecyclerView.OnUserClickListener() { // from class: com.narvii.master.CommunityDetailFragment.MainAdapter.2
                        @Override // com.narvii.widget.InfluencerRecyclerView.OnUserClickListener
                        public void onUserClicked(@Nullable User user) {
                            MainAdapter.this.onInfluencerClicked(user);
                        }
                    };
                }
                influencerRecyclerView.setOnUserClickListener(CommunityDetailFragment.this.onUserClickListener);
                return viewCreateView5;
            }
            if (obj != CommunityDetailFragment.TOPIC_CELL) {
                if (obj != CommunityDetailFragment.AD_UNIT) {
                    return super.getCell(obj, view, viewGroup);
                }
                View viewCreateView6 = createView(R.layout.ad_item_rectangle, viewGroup, view);
                MediaLabAdView mediaLabAdView = (MediaLabAdView) viewCreateView6.findViewById(R.id.medialab_banner_rectangle);
                mediaLabAdView.initialize(AdsConstants.FEED_2_AD_UNIT_NAME, AdSize.MEDIUM_RECTANGLE);
                addAdViewFriendlyObstructions(CommunityDetailFragment.this.requireActivity(), mediaLabAdView);
                if (mediaLabAdView.showPreloadedAd()) {
                    mediaLabAdView.setVisibility(0);
                }
                return viewCreateView6;
            }
            View viewCreateView7 = createView(R.layout.community_detail_topic_list, viewGroup, view);
            NVFlowLayout nVFlowLayout = (NVFlowLayout) viewCreateView7.findViewById(R.id.flow_layout);
            nVFlowLayout.removeAllViews();
            nVFlowLayout.setMaxTagLines(CommunityDetailFragment.this.showMoreTopics ? 2 : Integer.MAX_VALUE);
            nVFlowLayout.setShowMore(CommunityDetailFragment.this.showMoreTopics);
            Community object2 = getObject();
            if (object2 != null && (list = object2.userAddedTopicList) != null) {
                Iterator<StoryTopic> it = list.iterator();
                while (it.hasNext()) {
                    nVFlowLayout.addView(createTopicView(it.next(), nVFlowLayout));
                    i10++;
                    if (i10 == 10) {
                        break;
                    }
                }
            }
            if (CommunityDetailFragment.this.showMoreTopics && nVFlowLayout.getChildCount() != 0) {
                nVFlowLayout.addMoreView(createMoreView(nVFlowLayout));
            }
            return viewCreateView7;
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            int iIndexOf;
            if (obj instanceof Media) {
                Community object = getObject();
                List<Media> list = object == null ? null : object.mediaList;
                if (list != null && (iIndexOf = list.indexOf(obj)) != -1) {
                    Media media = (Media) obj;
                    if (media.isVideo()) {
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, NVFullScreenVideoActivity.intent(media));
                    } else {
                        Intent intent = new Intent(getContext(), (Class<?>) MediaGalleryActivity.class);
                        intent.putExtra("parent", JacksonUtils.writeAsString(getObject()));
                        intent.putExtra("parentClass", Community.class);
                        intent.putExtra("list", JacksonUtils.writeAsString(list));
                        intent.putExtra("position", iIndexOf);
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                    }
                    return true;
                }
            }
            if (view2 != null && view2.getId() == R.id.retry) {
                onErrorRetry();
            }
            if (view2 != null && view2.getId() == R.id.community_id_info) {
                try {
                    ((ClipboardManager) getContext().getSystemService("clipboard")).setText(CommunityDetailFragment.this.mCommunity.endpoint);
                    NVToast.makeText(getContext(), R.string.share_copy_to_clipboard_success, 0).show();
                } catch (Exception unused) {
                }
                return true;
            }
            if (view2 == null || view2.getId() != R.id.join_community) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            CommunityDetailFragment.this.joinCommunity();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.detail.DetailAdapter
        public void onObjectResponse(ApiRequest apiRequest, FullCommunityResponse fullCommunityResponse) {
            CommunityDetailFragment.this.communityInfoRequested = true;
            super.onObjectResponse(apiRequest, fullCommunityResponse);
            EndorsedCommunityAdapter endorsedCommunityAdapter = CommunityDetailFragment.this.endorsedCommunityAdapter;
            if (endorsedCommunityAdapter != null) {
                endorsedCommunityAdapter.refresh(0, null);
            }
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(Community community) {
            if (community == null) {
                return;
            }
            FullCommunityResponse fullCommunityResponse = new FullCommunityResponse();
            fullCommunityResponse.community = community;
            fullCommunityResponse.isCurrentUserJoined = CommunityDetailFragment.this.isCurrentUserJoined;
            fullCommunityResponse.hasPendingMembershipRequestWithCurrentUser = CommunityDetailFragment.this.getBooleanParam("isRequested");
            setResponse(fullCommunityResponse);
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setResponse(FullCommunityResponse fullCommunityResponse) {
            super.setResponse(fullCommunityResponse);
            if (fullCommunityResponse != null) {
                if (CommunityDetailFragment.this.isAdded()) {
                    invalidateOptionsMenu();
                }
                CommunityDetailFragment.this.mCommunity = fullCommunityResponse.community;
                CommunityDetailFragment.this.isCurrentUserJoined = fullCommunityResponse.isCurrentUserJoined;
                if (CommunityDetailFragment.this.isCurrentUserJoined) {
                    ((AffiliationsService) getService("affiliations")).opAdd(CommunityDetailFragment.this.cid);
                }
                CommunityDetailFragment.this.isRequested = fullCommunityResponse.hasPendingMembershipRequestWithCurrentUser;
                if (CommunityDetailFragment.this.isCurrentUserJoined) {
                    AffiliationsService affiliationsService = (AffiliationsService) getService("affiliations");
                    if (!affiliationsService.contains(CommunityDetailFragment.this.mCommunity.id)) {
                        affiliationsService.opAdd(CommunityDetailFragment.this.mCommunity.id);
                    }
                }
                if (fullCommunityResponse.timestamp != null) {
                    sendNotification(new Notification("update", fullCommunityResponse.community));
                }
                notifyDataSetChanged();
            }
            CommunityDetailFragment.this.updateCommunityRelatedViews();
            CommunityDetailFragment.this.updateHoverView();
            CommunityDetailFragment communityDetailFragment = CommunityDetailFragment.this;
            if (communityDetailFragment.onlineMemberListRequested) {
                return;
            }
            communityDetailFragment.onlineMemberListRequested = true;
            communityDetailFragment.requestCommunityOnlineData();
        }

        private void addAdViewFriendlyObstructions(Activity activity, MediaLabAdView mediaLabAdView) {
            View rootView = activity.getWindow().getDecorView().getRootView();
            if (mediaLabAdView != null) {
                View viewFindViewById = rootView.findViewById(R.id.video_overlay);
                if (viewFindViewById != null) {
                    mediaLabAdView.addFriendlyObstruction(viewFindViewById);
                }
                if (rootView instanceof ViewGroup) {
                    Iterator<View> it = MediaLabAdsUtilsKt.findFullObstructions((ViewGroup) rootView).iterator();
                    while (it.hasNext()) {
                        mediaLabAdView.addFriendlyObstruction(it.next());
                    }
                }
            }
        }

        private View createMoreView(NVFlowLayout nVFlowLayout) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.community_topic_more, (ViewGroup) nVFlowLayout, false);
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.CommunityDetailFragment.MainAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MainAdapter mainAdapter = MainAdapter.this;
                    CommunityDetailFragment.this.showMoreTopics = false;
                    mainAdapter.notifyDataSetChanged();
                }
            });
            return viewInflate;
        }

        private View createTopicView(final StoryTopic storyTopic, NVFlowLayout nVFlowLayout) {
            StoryTopicView storyTopicView = (StoryTopicView) LayoutInflater.from(getContext()).inflate(R.layout.community_detail_topic_view, (ViewGroup) nVFlowLayout, false);
            storyTopicView.setClickable(true);
            storyTopicView.setTopic(storyTopic);
            storyTopicView.setTextMaxWidth((Utils.getScreenWidth(CommunityDetailFragment.this.getContext()) * 2) / 3);
            storyTopicView.setOnPreClickListener(new StoryTopicView.OnPreClickListener() { // from class: com.narvii.master.CommunityDetailFragment.MainAdapter.4
                @Override // com.narvii.story.widgets.StoryTopicView.OnPreClickListener
                public void onPreClick(StoryTopicView storyTopicView2, StoryTopic storyTopic2) {
                    LogEvent.clickWildcardBuilder(MainAdapter.this, "TopicList").object(storyTopic).actSemantic(ActSemantic.checkDetail).send();
                }
            });
            return storyTopicView;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void buildCells(List<Object> list) {
            Community community = (Community) getObject();
            if (community != null) {
                list.add(CommunityDetailFragment.HEADER);
                if (getObject() != null) {
                    if (!StringUtils.isTrimEmpty(((Community) getObject()).tagline)) {
                        list.add(CommunityDetailFragment.TAGLINE);
                    }
                    if (!CollectionUtils.isEmpty(community.userAddedTopicList)) {
                        list.add(CommunityDetailFragment.TOPIC_CELL);
                    }
                    if (!CollectionUtils.isEmpty(community.influencerList)) {
                        list.add(CommunityDetailFragment.INFLUENCER_CELL);
                    }
                    if (CommunityDetailFragment.this.getBooleanParam("showJoin", true) && CommunityDetailFragment.this.communityInfoRequested) {
                        Object obj = CommunityDetailFragment.JOIN_COMMUNITY_MARGIN;
                        list.add(obj);
                        list.add(CommunityDetailFragment.JOIN_COMMUNITY);
                        list.add(obj);
                    }
                }
                list.add(CommunityDetailFragment.AD_UNIT);
                if (this.errorMsg != null) {
                    list.add(CommunityDetailFragment.DESCRIPTION_ERROR);
                    return;
                }
                if (getResponse() != null && ((FullCommunityResponse) getResponse()).timestamp != null) {
                    String str = community.content;
                    list.add(CommunityDetailFragment.DESCRIPTION_TITLE);
                    if (!TextUtils.isEmpty(str)) {
                        ArrayList arrayList = new ArrayList();
                        splitSegments(str, community.mediaList, list, arrayList);
                        if (arrayList.size() > 0) {
                            list.addAll(arrayList);
                        }
                    } else if (getObject() != null) {
                        list.add(CommunityDetailFragment.NO_DESCRIPTION);
                    }
                    if (CommunityDetailFragment.this.getListView() instanceof NVListView) {
                        ((NVListView) CommunityDetailFragment.this.getListView()).setOverscrollStretchFooter(ContextCompat.getColor(getContext(), R.color.community_detail_cell_bg));
                        return;
                    }
                    return;
                }
                list.add(CommunityDetailFragment.CONTENT_LOADING);
            }
        }

        @Override // com.narvii.detail.DetailAdapter
        public View createMediaView(Media media, int i10, View view, ViewGroup viewGroup) {
            View viewCreateMediaView = super.createMediaView(media, i10, view, viewGroup);
            viewCreateMediaView.setBackgroundResource(R.color.community_detail_cell_bg);
            return viewCreateMediaView;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createRequest() {
            ApiRequest.Builder builderScopeCommunityId = ApiRequest.builder().path("community/info").param("withInfluencerList", 1).param("withTopicList", Boolean.TRUE).param("influencerListOrderStrategy", "fansCount").scopeCommunityId(CommunityDetailFragment.this.cid);
            DetailPushUtils.addPushTrackIdInRequest(builderScopeCommunityId, this);
            return builderScopeCommunityId.build();
        }

        @Override // com.narvii.detail.DetailAdapter
        public View createTextView(String str, int i10, View view, ViewGroup viewGroup, boolean z6, OnTagClickListener onTagClickListener) {
            View viewCreateTextView = super.createTextView(str, i10, view, viewGroup, z6, onTagClickListener);
            viewCreateTextView.setBackgroundResource(R.color.community_detail_cell_bg);
            ((TextView) viewCreateTextView.findViewById(R.id.text)).setTextColor(-1);
            return viewCreateTextView;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void getCellTypes(List<DetailAdapter.CellType> list) {
            super.getCellTypes(list);
            list.add(CommunityDetailFragment.HEADER);
            list.add(CommunityDetailFragment.TAGLINE);
            list.add(CommunityDetailFragment.DESCRIPTION_TITLE);
            list.add(CommunityDetailFragment.NO_DESCRIPTION);
            list.add(CommunityDetailFragment.CONTENT_LOADING);
            list.add(CommunityDetailFragment.DESCRIPTION_ERROR);
            list.add(CommunityDetailFragment.JOIN_COMMUNITY);
            list.add(CommunityDetailFragment.JOIN_COMMUNITY_MARGIN);
            list.add(CommunityDetailFragment.INFLUENCER_CELL);
            list.add(CommunityDetailFragment.TOPIC_CELL);
            list.add(CommunityDetailFragment.AD_UNIT);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void joinCommunity() {
        joinCommunity(null);
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHoverJoinButtonView() {
        View view;
        for (int i10 = 0; i10 < getListAdapter().getCount(); i10++) {
            if (getListAdapter().getItem(i10) == JOIN_COMMUNITY) {
                if (i10 == -1 || (view = this.joinCommunityButtonContainer) == null) {
                    return;
                }
                if (view.getTop() <= this.hoverOffset) {
                    this.joinCommunityButtonContainer.setVisibility(4);
                    this.hoverContainer.setVisibility(0);
                    return;
                } else {
                    this.joinCommunityButtonContainer.setVisibility(0);
                    this.hoverContainer.setVisibility(4);
                    return;
                }
            }
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951635;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "community_detail";
    }

    @Override // com.narvii.app.NVFragment
    public int getStatusBarAlpha() {
        return 0;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        return false;
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onConnect(WsService wsService) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onDisconnect(WsService wsService, Throwable th) {
        this.offline = true;
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsError(WsService wsService, WsError wsError) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsMessage(WsService wsService, WsMessage wsMessage) {
    }

    private class CommunityDetailDivideColumnAdapter extends DivideColumnAdapter {
        public CommunityDetailDivideColumnAdapter(NVContext nVContext) {
            super(nVContext);
            setDarkTheme(true);
        }

        public CommunityDetailDivideColumnAdapter(NVContext nVContext, int i10, int i11) {
            super(nVContext, i10, i11);
            setDarkTheme(true);
        }

        @Override // com.narvii.list.NVAdapter
        public View createErrorItem(ViewGroup viewGroup, View view, String str) {
            View viewCreateErrorItem = super.createErrorItem(viewGroup, view, str);
            viewCreateErrorItem.setVisibility(8);
            return viewCreateErrorItem;
        }

        @Override // com.narvii.list.NVAdapter
        public View createLoadingItem(ViewGroup viewGroup, View view) {
            View viewCreateLoadingItem = super.createLoadingItem(viewGroup, view);
            viewCreateLoadingItem.setVisibility(8);
            return viewCreateLoadingItem;
        }
    }

    private void initLaunchHelper() {
        this.mLaunchHelper = new AnonymousClass10(this, "Community Detail");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void joinCommunity(Intent intent) {
        this.intentAfterLaunch = intent;
        if (this.isCurrentUserJoined) {
            LogEvent.clickBuilder(this, ActSemantic.aminoEnter).area("JoinButton").objectId(this.cid).objectType(ObjectType.community).objectIfNotNull(this.mCommunity).send();
        } else {
            LoggingService loggingService = (LoggingService) getService("logging");
            Community community = this.mCommunity;
            int communityId = community == null ? ((ConfigService) getService("config")).getCommunityId() : community.id;
            ArrayList arrayList = new ArrayList();
            if (getStringParam("loggingObjectId") != null) {
                arrayList.add("referralObjectId");
                arrayList.add(getStringParam("loggingObjectId"));
            }
            arrayList.add(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
            arrayList.add(Integer.valueOf(communityId));
            if (getStringParam("eventOrigin") != null) {
                arrayList.add("eventOrigin");
                arrayList.add(getStringParam("eventOrigin"));
            }
            if (getStringParam("eventSource") != null) {
                arrayList.add("eventSource");
                arrayList.add(getStringParam("eventSource"));
            } else if ("Link".equals(getStringParam(ExternalPostPreviewFragment.SOURCE))) {
                arrayList.add("eventSource");
                arrayList.add(LoggingSource.Link.name());
            } else {
                arrayList.add("eventSource");
                arrayList.add(getStringParam(LoggingSource.AminoDetailViewJoinBarButton.name()));
            }
            if (getStringParam("tags") != null) {
                arrayList.add("tags");
                arrayList.add(getStringParam("tags"));
            }
            loggingService.lambda$logEvent$0("JoinAminoStarting", arrayList.toArray());
            LogEvent.clickBuilder(this, ActSemantic.aminoJoin).area("JoinButton").objectId(this.cid).objectType(ObjectType.community).objectIfNotNull(this.mCommunity).send();
        }
        if (!((AccountService) getService("account")).hasAccount()) {
            ensureLogin(this.joinLogin);
            return;
        }
        boolean z6 = this.isCurrentUserJoined;
        if (z6) {
            this.isUserJoinedBeforeLaunch = z6;
            launchCommunity(this.mainAdapter.getResponse());
            return;
        }
        int i10 = this.mCommunity.joinType;
        String str = "join";
        if (i10 == 0) {
            ensureLogin(this.joinLogin, "Join Community Button");
        } else if (i10 == 1 || i10 == 2) {
            final boolean z10 = i10 == 1;
            str = z10 ? "request invite" : "closed";
            if (!TextUtils.isEmpty(this.invitationId) && isAdded()) {
                ensureLogin(this.joinLogin, "Join Community Button");
                return;
            }
            openJoinRequest(new RequestJoinCommunityDialog.CallBack() { // from class: com.narvii.master.CommunityDetailFragment.5
                @Override // com.narvii.community.request.RequestJoinCommunityDialog.CallBack
                public void onComplete(boolean z11, String str2, String str3) {
                    if (z10) {
                        CommunityDetailFragment.this.isRequested = z11;
                    }
                    if (TextUtils.isEmpty(str2) || !CommunityDetailFragment.this.isAdded()) {
                        return;
                    }
                    CommunityDetailFragment.this.invitationId = str2;
                    CommunityDetailFragment communityDetailFragment = CommunityDetailFragment.this;
                    communityDetailFragment.ensureLogin(communityDetailFragment.joinLogin, "Join Community Button");
                }
            });
        }
        String stringParam = getStringParam(ExternalPostPreviewFragment.SOURCE);
        if (stringParam == null) {
            stringParam = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        MixpanelAnalytics mixpanelAnalytics = new MixpanelAnalytics(getContext());
        HashMap map = new HashMap();
        map.put("type", str);
        map.put("source", stringParam);
        map.put("community_id", String.valueOf(this.mCommunity.id));
        map.put("template", String.valueOf(this.mCommunity.templateId));
        map.put("category_type", getStringParam("category"));
        mixpanelAnalytics.increment("communities_joined_total", 1);
        Community community2 = this.mCommunity;
        if (community2 != null) {
            String str2 = community2.listedStatus == 2 ? "Listed" : "Unlisted";
            map.put("listing_status", str2);
            mixpanelAnalytics.increment(str2.toLowerCase() + "_communities_joined_total", 1);
        }
        if ("suggested communities".equals(getStringParam(ExternalPostPreviewFragment.SOURCE)) || "toast".equals(getStringParam(ExternalPostPreviewFragment.SOURCE)) || "toast search".equals(getStringParam(ExternalPostPreviewFragment.SOURCE))) {
            mixpanelAnalytics.increment("suggested_communities_joined_total", 1);
        }
        mixpanelAnalytics.trackEvent("community_join", map);
    }

    private void launchCommunity(FullCommunityResponse fullCommunityResponse) {
        Community community;
        User user;
        String str;
        if (getBooleanParam("joinOnly")) {
            setResult(-1);
            finish();
            return;
        }
        if (fullCommunityResponse != null) {
            Community community2 = fullCommunityResponse.community;
            CommunityUserInfo communityUserInfo = fullCommunityResponse.currentUserInfo;
            User user2 = communityUserInfo != null ? communityUserInfo.userProfile : null;
            str = fullCommunityResponse.timestamp;
            user = user2;
            community = community2;
        } else {
            community = null;
            user = null;
            str = null;
        }
        this.mLaunchHelper.launch(this.cid, community, str, user, str, null, str, false);
    }

    private void openJoinRequest(RequestJoinCommunityDialog.CallBack callBack) {
        Community community = this.mCommunity;
        new RequestJoinCommunityDialog(this, community.joinType, community, callBack, this.isRequested).show();
    }

    private void sendInviteCodeRequest() {
        PasteBoardService.SKIP.set(Boolean.TRUE, 15000L);
        PasteBoardService pasteBoardService = (PasteBoardService) getService("pasteBoard");
        if (pasteBoardService != null) {
            pasteBoardService.updateUrl(this.inviteCode);
        }
        this.inviteHelper.requestInviteIdentify(this.inviteCode, new InviteHelper.LinkIdentifyInterface() { // from class: com.narvii.master.CommunityDetailFragment.4
            @Override // com.narvii.master.invitation.InviteHelper.LinkIdentifyInterface
            public void onIdentifyError(String str) {
                CommunityDetailFragment.this.isInviteCodeRequested = true;
            }

            @Override // com.narvii.master.invitation.InviteHelper.LinkIdentifyInterface
            public void onIdentifySuccess(CommunityInviteResponse communityInviteResponse) {
                CommunityDetailFragment.this.isInviteCodeRequested = true;
                CommunityDetailFragment.this.invitationId = communityInviteResponse.invitationId;
                MainAdapter mainAdapter = CommunityDetailFragment.this.mainAdapter;
                if (mainAdapter != null) {
                    mainAdapter.notifyDataSetChanged();
                }
                CommunityDetailFragment.this.isCurrentUserJoined = communityInviteResponse.isCurrentUserJoined;
                if (CommunityDetailFragment.this.isCurrentUserJoined) {
                    ((AffiliationsService) CommunityDetailFragment.this.getService("affiliations")).opAdd(CommunityDetailFragment.this.cid);
                    return;
                }
                if (CommunityDetailFragment.this.getBooleanParam(CommunityDetailFragment.KEY_LOGIN_AHEAD) || CommunityDetailFragment.this.getBooleanParam("autoJoin")) {
                    WeakReference<LoginActivity> weakReference = LoginActivity.instance;
                    LoginActivity loginActivity = weakReference == null ? null : weakReference.get();
                    if (loginActivity != null) {
                        loginActivity.finish();
                    }
                    Intent intent = new Intent(CommunityDetailFragment.this.joinLogin);
                    intent.putExtra(SearchPrefsHelper.PREFS_KEY_COMMUNITY, JacksonUtils.writeAsString(communityInviteResponse.community));
                    Invitation invitation = communityInviteResponse.invitation;
                    if (invitation != null) {
                        intent.putExtra(LoginActivity.LOGIN_WITH_JOIN_COMMUNITY_INVITER, JacksonUtils.writeAsString(invitation.author));
                    }
                    CommunityDetailFragment.this.ensureLogin(intent, null);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shareCommunity(String str) {
        MainAdapter mainAdapter = this.mainAdapter;
        if (mainAdapter == null || mainAdapter.getObject() == null) {
            return;
        }
        new ShareDarkRoomHelper(this).saveDynamicThemeBg(getActivity());
        Intent intent = FragmentWrapperActivity.intent(CommunityShareFragment.class);
        intent.putExtra(ShareDarkRoomFragment.KEY_SHARE_OBJECT, JacksonUtils.writeAsString(this.mCommunity));
        intent.putExtra(ShareDarkRoomFragment.KEY_STATISTIC_SOURCE, str);
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    private void showMoreOptions() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getActivity());
        actionSheetDialog.addItem(R.string.share_community, 0);
        actionSheetDialog.addItem(R.string.share_copy_link, 0);
        actionSheetDialog.addItem(R.string.flag_community, true);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.master.CommunityDetailFragment.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                if (i10 == 0) {
                    CommunityDetailFragment.this.shareCommunity("Community Detail Menu");
                    dialogInterface.dismiss();
                } else if (i10 != 1) {
                    if (i10 != 2) {
                        return;
                    }
                    new FlagReportOptionDialog.Builder(CommunityDetailFragment.this).nvObject(CommunityDetailFragment.this.mCommunity).showBlockUser(false).build().show();
                } else {
                    ShareViewHelper shareViewHelper = new ShareViewHelper(CommunityDetailFragment.this);
                    shareViewHelper.source = "Community Detail Menu";
                    shareViewHelper.copyLink(CommunityDetailFragment.this.mCommunity);
                }
            }
        });
        actionSheetDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAccountRelatedViews() {
        if (getBooleanParam(KEY_BLOCKING_PRIVATE_COMMUNITY)) {
            if (((AccountService) getService("account")).hasAccount()) {
                ((NVActivity) getActivity()).setActionBarLeftTextView(R.string.account_logout).setOnClickListener(new AnonymousClass8());
            } else {
                ((NVActivity) getActivity()).setActionBarLeftView(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionBarHeader(float f) {
        ThumbImageView thumbImageView;
        View view = this.communityIconActionBarLayout;
        if (view == null || (thumbImageView = (ThumbImageView) view.findViewById(R.id.actionbar_community_icon)) == null) {
            return;
        }
        Community community = this.mCommunity;
        thumbImageView.setImageUrl(community == null ? null : community.icon);
        thumbImageView.setAlpha(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCommunityRelatedViews() {
        PromotionalImageView promotionalImageView;
        Community community = this.mCommunity;
        if (community == null || (promotionalImageView = this.communityDetailBg) == null) {
            return;
        }
        promotionalImageView.setCommunity(community);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHoverView() {
        updateJoinButton(this.mCommunity, this.hoverJoinCommunityProgress, this.hoverBtnJoin, this.hoverPrivateLock);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mainAdapter = new MainAdapter();
        this.endorsedCommunityAdapter = new EndorsedCommunityAdapter();
        this.endorsedCommunityTitleAdapter = new EndorsedCommunityTitleAdapter();
        CommunityDetailDivideColumnAdapter communityDetailDivideColumnAdapter = new CommunityDetailDivideColumnAdapter(this, (int) Utils.dpToPx(getContext(), 7.0f), (int) Utils.dpToPx(getContext(), 7.0f));
        communityDetailDivideColumnAdapter.setAdapter(this.endorsedCommunityAdapter, 3, new ColorDrawable(getResources().getColor(R.color.community_detail_cell_bg)));
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        MergeAdapter mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.master.CommunityDetailFragment.9
            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean isListShown() {
                if (TextUtils.isEmpty(CommunityDetailFragment.this.inviteCode)) {
                    return super.isListShown();
                }
                return CommunityDetailFragment.this.isInviteCodeRequested && super.isListShown();
            }
        };
        mergeAdapter.addAdapter(staticViewAdapter);
        mergeAdapter.addAdapter(this.mainAdapter, true);
        mergeAdapter.addAdapter(this.endorsedCommunityTitleAdapter);
        mergeAdapter.addAdapter(communityDetailDivideColumnAdapter);
        return mergeAdapter;
    }

    @Override // com.narvii.app.NVFragment
    protected void ensureLoginToast() {
        if (getBooleanParam(KEY_LOGIN_AHEAD)) {
            return;
        }
        super.ensureLoginToast();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getStrategyInfo() {
        Community object;
        MainAdapter mainAdapter = this.mainAdapter;
        return (mainAdapter == null || (object = mainAdapter.getObject()) == null) ? super.getStrategyInfo() : object.getStrategyInfo();
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVVideoListDelegate(this, getActivity());
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        LiveLayerOnlineBar liveLayerOnlineBar = this.onlineMemberBar;
        if (liveLayerOnlineBar != null) {
            liveLayerOnlineBar.unsubscribeTopic();
        }
        LiveLayerWsService liveLayerWsService = this.liveLayerWsService;
        if (liveLayerWsService != null) {
            liveLayerWsService.unregisterWsListener(this);
        }
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected void onLoginResult(boolean z6, final Intent intent) {
        if (z6 && "join".equals(intent.getAction())) {
            MainAdapter mainAdapter = this.mainAdapter;
            if (mainAdapter == null) {
                this.pendingAutoLogin = true;
                return;
            }
            this.pendingAutoLogin = false;
            if (this.isCurrentUserJoined) {
                return;
            }
            Community object = mainAdapter.getObject();
            final int i10 = object.id;
            this.isUserJoinedBeforeLaunch = this.isCurrentUserJoined;
            ApiRequest.Builder builderPath = ApiRequest.builder().post().communityId(object.id).path("/community/join");
            String str = this.invitationId;
            if (str != null) {
                builderPath.param(KEY_INVITATION_ID, str);
            } else if (getBooleanParam(KEY_BLOCKING_PRIVATE_COMMUNITY)) {
                openJoinRequest(new RequestJoinCommunityDialog.CallBack() { // from class: com.narvii.master.CommunityDetailFragment.11
                    @Override // com.narvii.community.request.RequestJoinCommunityDialog.CallBack
                    public void onComplete(boolean z10, String str2, String str3) {
                        if (!TextUtils.isEmpty(str2) && CommunityDetailFragment.this.isAdded()) {
                            CommunityDetailFragment.this.invitationId = str2;
                            CommunityDetailFragment.this.onLoginResult(true, intent);
                        }
                    }
                });
                return;
            }
            ApiRequest apiRequestBuild = builderPath.build();
            ApiService apiService = (ApiService) getService("api");
            Class<UserResponse> cls = UserResponse.class;
            if (getBooleanParam("joinOnly")) {
                this.joinProgress = 20;
                this.isInProgress = true;
                this.mainAdapter.notifyDataSetChanged();
                updateHoverView();
                apiService.exec(apiRequestBuild, new ApiResponseListener<UserResponse>(cls) { // from class: com.narvii.master.CommunityDetailFragment.12
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                        if (!CommunityDetailFragment.this.isAdded() || CommunityDetailFragment.this.isFinishing() || CommunityDetailFragment.this.getActivity().isFinishing()) {
                            return;
                        }
                        CommunityDetailFragment.this.isInProgress = false;
                        CommunityDetailFragment.this.isCurrentUserJoined = true;
                        CommunityDetailFragment.this.mainAdapter.notifyDataSetChanged();
                        CommunityDetailFragment.this.setResult(-1);
                        CommunityDetailFragment.this.finish();
                        CommunityDetailFragment.this.getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                        FullCommunityResponse response = CommunityDetailFragment.this.mainAdapter.getResponse();
                        Community community = response != null ? response.community : null;
                        if (community != null) {
                            CommunityDetailFragment.this.sendNotification(new Notification("new", community));
                        }
                        User user = userResponse.user;
                        if (user != null) {
                            user.ndcId = i10;
                            ((AccountService) CommunityDetailFragment.this.getService("account")).updateProfile(userResponse.user, userResponse.timestamp, i10, true);
                        }
                        ((AffiliationsService) NVApplication.instance().getService("affiliations")).opAdd(i10);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i11, list, str2, apiResponse, th);
                        CommunityDetailFragment.this.isInProgress = false;
                        CommunityDetailFragment.this.mainAdapter.notifyDataSetChanged();
                        NVToast.makeText(CommunityDetailFragment.this.getContext(), str2, 0).show();
                    }
                });
            } else {
                this.joinProgress = 20;
                this.isInProgress = true;
                updateJoinButtonStatus();
                apiService.exec(apiRequestBuild, new ApiResponseListener<UserResponse>(cls) { // from class: com.narvii.master.CommunityDetailFragment.13
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                        CommunityDetailFragment.this.isInProgress = false;
                        CommunityDetailFragment.this.mainAdapter.notifyDataSetChanged();
                        NVToast.makeText(CommunityDetailFragment.this.getContext(), str2, 0).show();
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                        Community community;
                        String str2;
                        CommunityDetailFragment.this.isInProgress = false;
                        CommunityDetailFragment.this.isCurrentUserJoined = true;
                        CommunityDetailFragment.this.mainAdapter.notifyDataSetChanged();
                        FullCommunityResponse response = CommunityDetailFragment.this.mainAdapter.getResponse();
                        if (response != null) {
                            community = response.community;
                            str2 = response.timestamp;
                        } else {
                            community = null;
                            str2 = null;
                        }
                        if (CommunityDetailFragment.this.isResumed()) {
                            CommunityLaunchHelper communityLaunchHelper = CommunityDetailFragment.this.mLaunchHelper;
                            CommunityDetailFragment communityDetailFragment = CommunityDetailFragment.this;
                            communityLaunchHelper.launch(communityDetailFragment.cid, community, str2, userResponse.user, userResponse.timestamp, null, null, false, 0, null, communityDetailFragment.intentAfterLaunch);
                        }
                        if (community != null) {
                            CommunityDetailFragment.this.sendNotification(new Notification("new", community));
                        }
                        ((AffiliationsService) NVApplication.instance().getService("affiliations")).opAdd(i10);
                    }
                });
            }
        }
        super.onLoginResult(z6, intent);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        this.mLaunchHelper.cancel();
        super.onPause();
    }

    private void initBgViews(View view) {
        this.communityDetailBg = (PromotionalImageView) view.findViewById(R.id.community_promotion_image);
        this.blurView = (RealtimeBlurView) view.findViewById(R.id.blur);
        this.communityDetailBg.setCommunity(this.mCommunity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestCommunityOnlineData() {
        Community community;
        if (!isEmbedFragment() && NVApplication.CLIENT_TYPE == 100 && (community = this.mCommunity) != null && community.joinType == 0) {
            LiveLayerHelper liveLayerHelper = new LiveLayerHelper(this, this.cid);
            this.liveLayerHelper = liveLayerHelper;
            liveLayerHelper.requestOnlineMembers(this.topic, 10, false, true, new Callback<UserListResponse>() { // from class: com.narvii.master.CommunityDetailFragment.3
                @Override // com.narvii.util.Callback
                public void call(UserListResponse userListResponse) {
                    if (CommunityDetailFragment.this.isDestoryed()) {
                        return;
                    }
                    View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.master.CommunityDetailFragment.3.1
                        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                            if (p1 == null) {
                                return;
                            }
                            p0.startActivityForResult(p1, p5);
                        }

                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (CommunityDetailFragment.this.getActivity() == null) {
                                return;
                            }
                            EnterCommunityUtils.fastEnter(CommunityDetailFragment.this.cid, "Community Detail Live Layer Bar");
                            Intent intent = LiveLayerActivity.intent(LiveLayerFragment.class);
                            intent.putExtra("customFinishAnimOut", R.anim.activity_push_bottom_out);
                            intent.putExtra("customFinishAnimIn", 0);
                            intent.putExtra(ExternalPostPreviewFragment.SOURCE, LiveLayerHost.getSource(CommunityDetailFragment.this.getActivity()));
                            intent.putExtra("__communityId", CommunityDetailFragment.this.cid);
                            intent.putExtra(NVActivity.INTERACTION_SCOPE, false);
                            intent.putExtra("fromCommunityDetail", true);
                            LiveLayerActivity.prepare(CommunityDetailFragment.this.getActivity());
                            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(CommunityDetailFragment.this, intent, 300);
                            CommunityDetailFragment.this.getActivity().overridePendingTransition(R.anim.activity_push_bottom_in, 0);
                        }
                    };
                    CommunityDetailFragment.this.onlineMemberBar.setUserList(userListResponse.userList, userListResponse.userProfileCount);
                    CommunityDetailFragment.this.onlineMemberBar.setOnBarClickListener(onClickListener);
                    CommunityDetailFragment communityDetailFragment = CommunityDetailFragment.this;
                    communityDetailFragment.onlineMemberBar.subscribeTopic(communityDetailFragment.topic);
                    CommunityDetailFragment communityDetailFragment2 = CommunityDetailFragment.this;
                    communityDetailFragment2.liveLayerWsService = (LiveLayerWsService) communityDetailFragment2.getService("liveLayerWS");
                    CommunityDetailFragment communityDetailFragment3 = CommunityDetailFragment.this;
                    communityDetailFragment3.liveLayerWsService.registerWsListener(communityDetailFragment3);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateJoinButton(Community community, JoinCommunityProgressLayout joinCommunityProgressLayout, TextView textView, View view) {
        String string;
        int i10;
        int i11;
        if (isAdded() && getActivity() != null && community != null && textView != null && view != null && joinCommunityProgressLayout != null) {
            new PackageUtils(getContext()).getCommunityIdFromPackageName();
            getString(R.string.join_the_community);
            if (this.isInProgress) {
                if (this.isUserJoinedBeforeLaunch) {
                    i11 = R.string.community_entering;
                } else {
                    i11 = R.string.community_joining;
                }
                string = getString(i11);
            } else if (this.isCurrentUserJoined) {
                string = getString(R.string.enter_amino);
            } else {
                string = getString(R.string.join_the_community);
            }
            textView.setText(string);
            boolean z6 = !TextUtils.isEmpty(this.invitationId);
            joinCommunityProgressLayout.setCurPressed(this.isInProgress);
            if (!this.isInProgress) {
                joinCommunityProgressLayout.cancelProgress();
            }
            joinCommunityProgressLayout.setProgress(this.joinProgress);
            if (!this.isCurrentUserJoined && !z6 && this.mCommunity.shouldShowLock()) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            view.setVisibility(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateJoinButtonStatus() {
        updateHoverView();
        MainAdapter mainAdapter = this.mainAdapter;
        if (mainAdapter != null) {
            mainAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.app.NVFragment
    protected void completePageViewEvent(LogEvent.Builder builder, boolean z6) {
        super.completePageViewEvent(builder, z6);
        MainAdapter mainAdapter = this.mainAdapter;
        if (mainAdapter != null && mainAdapter.getObject() != null) {
            builder.object(this.mainAdapter.getObject());
        } else {
            builder.objectId(this.cid).objectType(ObjectType.community);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@androidx.annotation.Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        setActionBarBackground(new ColorDrawable(0));
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.community_detail_icon_actionbar_layout, (ViewGroup) null);
        this.communityIconActionBarLayout = viewInflate;
        setActionBarTitleView(viewInflate);
        updateActionBarHeader(1.0f);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 300 && i11 == -1 && intent != null && intent.getBooleanExtra("join", false)) {
            joinCommunity();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        String string;
        float f;
        String str;
        Community community;
        super.onCreate(bundle);
        ComScoreSectionDispatcher.INSTANCE.sectionChangeToCommunity();
        int intParam = getIntParam("id");
        this.cid = intParam;
        if (intParam == 0) {
            finish();
        }
        Intent intent = new Intent("join");
        this.joinLogin = intent;
        intent.putExtra("communityJoinLogin", true);
        if (bundle == null) {
            string = getStringParam(KEY_COMMUNITY);
            this.isCurrentUserJoined = getBooleanParam(KEY_CURRENT_USER_JOINED, false);
            this.invitationId = getStringParam(KEY_INVITATION_ID);
            this.inviteCode = getStringParam(KEY_INVITATION_CODE);
        } else {
            string = bundle.getString(KEY_COMMUNITY);
            this.isCurrentUserJoined = bundle.getBoolean(KEY_CURRENT_USER_JOINED, false);
            this.invitationId = bundle.getString(KEY_INVITATION_ID);
            this.inviteCode = bundle.getString(KEY_INVITATION_CODE);
            this.communityInfoRequested = bundle.getBoolean(KEY_COMMUNITY_INFO_REQUESTED);
        }
        if (!TextUtils.isEmpty(string)) {
            this.mCommunity = (Community) JacksonUtils.readAs(string, Community.class);
        }
        if (this.cid == 0 && (community = this.mCommunity) != null) {
            this.cid = community.id;
        }
        setHasOptionsMenu(true);
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(KEY_COMMUNITY_USER_INFO_CHANGED));
        getActivity().getWindow().setSoftInputMode(34);
        if (bundle == null) {
            StatisticsEventBuilder statisticsEventBuilderParam = ((StatisticsService) getService("statistics")).event("Community Detail Page Opened").userPropInc("Community Detail Page Opened Total").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).param("Community ID", this.cid).param("Category Type", getStringParam("category"));
            Community community2 = this.mCommunity;
            if (community2 != null) {
                if (community2.listedStatus == 2) {
                    str = "Listed";
                } else {
                    str = "Unlisted";
                }
                statisticsEventBuilderParam.param("Listing Status", str);
                int i10 = this.mCommunity.templateId;
                if (i10 != 0) {
                    statisticsEventBuilderParam.param("Template", i10);
                }
            }
            if (getBooleanParam("standalone")) {
                statisticsEventBuilderParam.param("App Type", "Standalone");
            }
            LoggingService loggingService = (LoggingService) getService("logging");
            ArrayList arrayList = new ArrayList();
            arrayList.add(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
            arrayList.add(Integer.valueOf(this.cid));
            if (getStringParam("eventOrigin") != null) {
                arrayList.add("eventOrigin");
                arrayList.add(getStringParam("eventOrigin"));
            }
            if (getStringParam("eventSource") != null) {
                arrayList.add("eventSource");
                arrayList.add(getStringParam("eventSource"));
            } else if ("Link".equals(getStringParam(ExternalPostPreviewFragment.SOURCE))) {
                arrayList.add("eventSource");
                arrayList.add(LoggingSource.Link.name());
            }
            if (getStringParam("tags") != null) {
                arrayList.add("tags");
                arrayList.add(getStringParam("tags"));
            }
            loggingService.lambda$logEvent$0("AminoDetailViewEntered", arrayList.toArray());
        }
        initLaunchHelper();
        this.inviteHelper = new InviteHelper(this);
        if (!this.isCurrentUserJoined) {
            if (!TextUtils.isEmpty(this.inviteCode)) {
                sendInviteCodeRequest();
            } else {
                this.isInviteCodeRequested = true;
                if ((getBooleanParam(KEY_LOGIN_AHEAD) || getBooleanParam("autoJoin")) && this.mCommunity != null && !this.isCurrentUserJoined) {
                    Intent intent2 = new Intent(this.joinLogin);
                    intent2.putExtra(SearchPrefsHelper.PREFS_KEY_COMMUNITY, JacksonUtils.writeAsString(this.mCommunity));
                    intent2.putExtra(LoginActivity.LOGIN_WITH_JOIN_COMMUNITY_INVITER, getStringParam(LoginActivity.LOGIN_WITH_JOIN_COMMUNITY_INVITER));
                    ensureLogin(intent2, null);
                }
            }
        }
        int statusBarOverlaySize = getStatusBarOverlaySize() + getActionBarOverlaySize();
        this.hoverOffset = statusBarOverlaySize;
        if (statusBarOverlaySize == 0) {
            Context context = getContext();
            if (StatusBarUtils.STATUS_BAR_ENABLE) {
                f = 68.0f;
            } else {
                f = 40.0f;
            }
            this.hoverOffset = (int) Utils.dpToPx(context, f);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.share, 1, R.string.share).setIcon(R.drawable.ic_community_share).setShowAsAction(2);
        menu.add(0, R.string.more, 1, R.string.more).setIcon(R.drawable.actionbar_ops).setShowAsAction(2);
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.community_detail_layout, viewGroup, false);
        this.rootFrame = viewInflate;
        return viewInflate;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        ((NVListView) listView).setOnScrollListener(this.onScrollListener);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId != R.string.more) {
            if (itemId == R.string.share) {
                shareCommunity("Navbar");
            }
        } else {
            showMoreOptions();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean z6;
        super.onPrepareOptionsMenu(menu);
        MenuItem menuItemFindItem = menu.findItem(R.string.share);
        MainAdapter mainAdapter = this.mainAdapter;
        boolean z10 = false;
        if (mainAdapter != null && mainAdapter.getObject() != null) {
            z6 = true;
        } else {
            z6 = false;
        }
        menuItemFindItem.setVisible(z6);
        MenuItem menuItemFindItem2 = menu.findItem(R.string.more);
        MainAdapter mainAdapter2 = this.mainAdapter;
        if (mainAdapter2 != null && mainAdapter2.getObject() != null) {
            z10 = true;
        }
        menuItemFindItem2.setVisible(z10);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        setScreenName("community_description");
        this.detailFrame.setVisibility(0);
        this.detailFrame.clearAnimation();
        this.rootFrame.clearAnimation();
        if (!this.mainAdapter.isLoading()) {
            this.mainAdapter.refresh(0, null);
        }
        updateCommunityRelatedViews();
        updateAccountRelatedViews();
        if (this.pendingAutoLogin) {
            new Intent("join").putExtra(SearchPrefsHelper.PREFS_KEY_COMMUNITY, JacksonUtils.writeAsString(this.mCommunity));
            ensureLogin(this.joinLogin);
            this.pendingAutoLogin = false;
        }
        if (this.onlineMemberBar != null) {
            this.onlineMemberBar.goFold(((SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY)).getBoolean("liveLayerFold", false));
        }
        if (this.offline) {
            this.offline = false;
            requestCommunityOnlineData();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(KEY_COMMUNITY, JacksonUtils.writeAsString(this.mCommunity));
        bundle.putString(KEY_INVITATION_CODE, this.inviteCode);
        bundle.putBoolean(KEY_CURRENT_USER_JOINED, this.isCurrentUserJoined);
        bundle.putBoolean(KEY_COMMUNITY_INFO_REQUESTED, this.communityInfoRequested);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setDarkTheme(true);
        LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) view.findViewById(R.id.online_bar);
        this.onlineMemberBar = liveLayerOnlineBar;
        liveLayerOnlineBar.setCid(this.cid);
        this.detailFrame = view.findViewById(R.id.community_detail_frame);
        setTitle((CharSequence) null);
        initBgViews(view);
        this.fakeActionBar = view.findViewById(R.id.fake_action_bar_layout);
        View viewFindViewById = view.findViewById(R.id.hover_join_container);
        this.hoverContainer = viewFindViewById;
        this.hoverBtnJoin = (TextView) viewFindViewById.findViewById(R.id.join);
        this.hoverJoinCommunityProgress = (JoinCommunityProgressLayout) this.hoverContainer.findViewById(R.id.join_community);
        this.hoverPrivateLock = this.hoverContainer.findViewById(R.id.join_community_lock);
        this.hoverJoinCommunityProgress.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.CommunityDetailFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                CommunityDetailFragment.this.joinCommunity();
            }
        });
        updateHoverView();
    }
}
