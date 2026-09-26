package com.narvii.amino.speeddial;

import ai.medialab.medialabads2.banners.MediaLabAdView;
import ai.medialab.medialabads2.data.AdSize;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.NestedScrollingChild;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.account.AccountService;
import com.narvii.ad.AdsConstants;
import com.narvii.amino.master.R;
import com.narvii.amino.speeddial.mode.SpeedDialResponse;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.checkin.CheckInHelper;
import com.narvii.checkin.CheckInPrefsHelper;
import com.narvii.checkin.CheckInResult;
import com.narvii.checkin.CheckInService;
import com.narvii.checkin.CheckInStreakBar;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.leaderboard.LeaderBoardTabFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.ImpressionUtils;
import com.narvii.logging.Impression.StandaloneRecyclerImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.CommunityHelper;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.members.PeopleListFragment;
import com.narvii.model.ChatThread;
import com.narvii.model.CheckInHistory;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.FakeHeightViewWrapper;
import com.narvii.widget.PushButton;
import com.narvii.widget.TintButton;
import com.narvii.widget.headercollapse.HeaderCollapsibleLayout;
import com.narvii.widget.headercollapse.NVNestedScrollingChildHelper;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes9.dex */
public class SpeedDialHeaderLayout extends LinearLayout implements View.OnClickListener, NestedScrollingChild, CheckInService.CheckInResponseListener, AffiliationsService.AffiliationChangeListener {
    private AccountService accountService;
    private HashSet<View> adObstructions;
    private MediaLabAdView adView;
    private AffiliationsService affiliationsService;
    private View btnAddScreenRoom;
    private View btnRemoveScreenRoom;
    private ViewGroup checkInContainer;
    private ViewGroup checkInModule;
    private CheckInPrefsHelper checkInPrefsHelper;
    private CheckInService checkInService;
    private CheckInStreakBar checkInStreakBar;
    private ViewGroup checkInSuccessContainer;
    private PushButton checkinButton;
    private TintButton checkinClose;
    private ProgressBar checkinProgress;
    private TextView checkinText;
    private CommunityIconView communityIconView;
    private TextView communityName;
    private CommunityService communityService;
    private ConfigService configService;
    private NVContext ctx;
    private FakeHeightViewWrapper fakeHeightViewWrapper;
    public StandaloneRecyclerImpressionCollector<ChatThread> ipc;
    private boolean isCheckingIn;
    private TextView leaderBoard;
    private ViewGroup liveMarqueeContainer;
    private ViewGroup liveMarqueePlaceHolder;
    private LinearLayout mainContent;
    private AutoSizingTextView memberCount;
    private ViewGroup memberLayout;
    private TextView memberText;
    private NVNestedScrollingChildHelper nestedChildHelper;
    private OnHeaderInvalidatedListener onHeaderInvalidatedListener;
    private NVContext pageContext;
    private AccountService.ProfileListener profileListener;
    Random random;
    private SpeedDialResponse response;
    private SpeedDialRecycleView speedDialRecycleView;

    /* JADX INFO: renamed from: com.narvii.amino.speeddial.SpeedDialHeaderLayout$2, reason: invalid class name */
    class AnonymousClass2 extends AccountService.ProfileListener {
        AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCheckInChanged$0() {
            SpeedDialHeaderLayout.this.updateCheckinStreak();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCheckInHistoryChanged$1() {
            SpeedDialHeaderLayout.this.updateCheckinStreak();
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onCheckInChanged(boolean z6, int i10) {
            if (SpeedDialHeaderLayout.this.checkInModule.getVisibility() == 0) {
                Utils.postDelayed(new Runnable() { // from class: com.narvii.amino.speeddial.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1818a.lambda$onCheckInChanged$0();
                    }
                }, 200L);
            }
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onProfileChanged(int i10, User user) {
            if (SpeedDialHeaderLayout.this.checkInModule.getVisibility() == 0 && SpeedDialHeaderLayout.this.accountService.hasCheckInToday() && !SpeedDialHeaderLayout.this.isCheckingIn) {
                SpeedDialHeaderLayout.this.checkInModule.setVisibility(8);
                SpeedDialHeaderLayout speedDialHeaderLayout = SpeedDialHeaderLayout.this;
                speedDialHeaderLayout.notifyHeaderInvalidated((View) speedDialHeaderLayout.checkInModule, false);
            }
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onCheckInHistoryChanged(CheckInHistory checkInHistory) {
            super.onCheckInHistoryChanged(checkInHistory);
            if (SpeedDialHeaderLayout.this.checkInModule.getVisibility() == 0) {
                Utils.postDelayed(new Runnable() { // from class: com.narvii.amino.speeddial.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1819a.lambda$onCheckInHistoryChanged$1();
                    }
                }, 200L);
            }
        }
    }

    public interface OnHeaderInvalidatedListener {
        void notifyHeaderInvalidated(View view, boolean z6);
    }

    public SpeedDialHeaderLayout(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyHeaderInvalidated(View view, boolean z6) {
        ViewParent parent = getParent();
        if (parent instanceof HeaderCollapsibleLayout) {
            ((HeaderCollapsibleLayout) parent).invalidateHeader(view, z6);
            OnHeaderInvalidatedListener onHeaderInvalidatedListener = this.onHeaderInvalidatedListener;
            if (onHeaderInvalidatedListener != null) {
                onHeaderInvalidatedListener.notifyHeaderInvalidated(view, z6);
            }
        }
    }

    public static void safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Activity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    private void startCheckIn() {
        this.isCheckingIn = true;
        this.checkInService.startCheckIn(this);
    }

    @Override // com.narvii.checkin.CheckInService.CheckInResponseListener
    public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
        this.isCheckingIn = false;
        this.checkinProgress.setVisibility(8);
        this.checkinText.setVisibility(0);
        this.checkinButton.setEnabled(true);
        this.checkinButton.setForcePressed(false);
    }

    @Override // com.narvii.checkin.CheckInService.CheckInResponseListener
    public void onFinish(ApiRequest apiRequest, CheckInResult checkInResult) {
        this.isCheckingIn = false;
        Utils.postDelayed(new Runnable() { // from class: com.narvii.amino.speeddial.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f1814a.lambda$onFinish$1();
            }
        }, 1000L);
    }

    public void reConfigNormalItemViews() {
    }

    public void setOnHeaderInvalidatedListener(OnHeaderInvalidatedListener onHeaderInvalidatedListener) {
        this.onHeaderInvalidatedListener = onHeaderInvalidatedListener;
    }

    public SpeedDialHeaderLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.random = new Random();
        this.isCheckingIn = false;
        this.adObstructions = new HashSet<>();
        this.ipc = new StandaloneRecyclerImpressionCollector<ChatThread>(ChatThread.class) { // from class: com.narvii.amino.speeddial.SpeedDialHeaderLayout.1
            @Override // com.narvii.logging.Impression.ImpressionCollector
            public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo objectInfo) {
                super.completeImpressionLogBuilder(builder, objectInfo);
                builder.area("SpeedDial");
            }
        };
        this.profileListener = new AnonymousClass2();
    }

    private void addFakeUserInVVChat() {
        SpeedDialResponse speedDialResponse = this.response;
        if (speedDialResponse == null || speedDialResponse.userProfileListInThreadList == null) {
            return;
        }
        User user = new User();
        user.uid = "" + this.random.nextInt();
        user.icon = "https://s1.altamino.top/image/ljmusu6brr5yulr5kcbby5j4nilelxvm_00.jpg";
        List<User> list = this.response.userProfileListInThreadList.get("08e2158c-d8d8-491a-abca-240c1dd97f83");
        if (list != null) {
            list.add(user);
        }
        this.speedDialRecycleView.updateSpeedDial(this.response);
    }

    private Activity getActivity() {
        Object obj = this.ctx;
        if (obj instanceof Activity) {
            return (Activity) obj;
        }
        if (obj instanceof NVFragment) {
            return ((NVFragment) obj).getActivity();
        }
        return null;
    }

    private boolean hideCheckInModule() {
        return !isCommunityJoined() || this.accountService.hasCheckInToday() || this.checkInPrefsHelper.isHideCheckIn(this.configService.getCommunityId());
    }

    private boolean isCommunityJoined() {
        return this.affiliationsService.contains(this.configService.getCommunityId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFinish$0() {
        this.checkInModule.setVisibility(8);
        notifyHeaderInvalidated((View) this.checkInModule, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFinish$1() {
        this.checkInContainer.setVisibility(8);
        this.checkInSuccessContainer.setVisibility(0);
        Utils.postDelayed(new Runnable() { // from class: com.narvii.amino.speeddial.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f1815a.lambda$onFinish$0();
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCloseCheckInDialog$2(View view) {
        this.checkInModule.setVisibility(8);
        notifyHeaderInvalidated((View) this.checkInModule, false);
        this.checkInPrefsHelper.hideToday(this.configService.getCommunityId());
        LogEvent.clickWildcardBuilder(this, "CheckInClose").extraParam("closeType", "close").send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCloseCheckInDialog$3(View view) {
        this.checkInModule.setVisibility(8);
        notifyHeaderInvalidated((View) this.checkInModule, false);
        this.checkInPrefsHelper.hideAlways(this.configService.getCommunityId());
        LogEvent.clickWildcardBuilder(this, "CheckInClose").extraParam("closeType", "neverShowMeAgain").send();
    }

    private void showCloseCheckInDialog() {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setMessage(R.string.comfirm_close_checkin_entry);
        aCMAlertDialog.setVerticalButtons();
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.amino.speeddial.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1816a.lambda$showCloseCheckInDialog$2(view);
            }
        });
        aCMAlertDialog.addButton(R.string.never_show_again, new View.OnClickListener() { // from class: com.narvii.amino.speeddial.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1817a.lambda$showCloseCheckInDialog$3(view);
            }
        });
        aCMAlertDialog.addButton(R.string.cancel, null);
        aCMAlertDialog.show();
    }

    public void clearAdViewObstructions() {
        MediaLabAdView mediaLabAdView = this.adView;
        if (mediaLabAdView != null) {
            mediaLabAdView.clearFriendlyObstructions();
        }
    }

    public void clearSpeedDialImpression() {
        ImpressionUtils.clearImpression(this.ipc, this.pageContext);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f6, boolean z6) {
        return this.nestedChildHelper.dispatchNestedFling(f, f6, z6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f6) {
        return this.nestedChildHelper.dispatchNestedPreFling(f, f6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return this.nestedChildHelper.dispatchNestedPreScroll(i10, i11, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return this.nestedChildHelper.dispatchNestedScroll(i10, i11, i12, i13, iArr);
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.nestedChildHelper.hasNestedScrollingParent();
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.nestedChildHelper.isNestedScrollingEnabled();
    }

    public void logSpeedDialImpression() {
        ImpressionUtils.logStandaloneRecyclerImpression(this.speedDialRecycleView, this.ipc, this.pageContext);
    }

    @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
    public void onAffiliationChanged() {
        int visibility = this.checkInModule.getVisibility();
        this.checkInModule.setVisibility(hideCheckInModule() ? 8 : 0);
        if (visibility == 8 && this.checkInModule.getVisibility() == 0) {
            updateThemeUI();
            notifyHeaderInvalidated((View) this.checkInModule, true);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.nestedChildHelper.onTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z6) {
        this.nestedChildHelper.setNestedScrollingEnabled(z6);
    }

    public void setSpeedDialItemClicked(SpeedDialLayout.SpeedDialItemClickListener speedDialItemClickListener) {
        this.speedDialRecycleView.setSpeedDialItemClickListener(speedDialItemClickListener);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i10) {
        return this.nestedChildHelper.startNestedScroll(i10);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        this.nestedChildHelper.stopNestedScroll();
    }

    public void updateCheckinStreak() {
        List<Integer> streakLostList = new CheckInHelper(this.ctx).getStreakLostList(this.accountService.getCheckInHistory());
        if (streakLostList == null || streakLostList.isEmpty()) {
            streakLostList = new ArrayList<>();
            streakLostList.add(4);
        }
        this.checkInStreakBar.updateCells(streakLostList);
    }

    public void updateCommunityInfo() {
        Community community = this.communityService.getCommunity(this.configService.getCommunityId());
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this.ctx, this.configService.getCommunityId());
        int i10 = 8;
        if (community == null) {
            this.communityIconView.setImageUrl(null);
            this.communityName.setText((CharSequence) null);
            this.memberCount.setText((CharSequence) null);
            this.memberText.setText((CharSequence) null);
            this.leaderBoard.setVisibility(8);
            return;
        }
        this.communityIconView.setImageUrl(community.icon);
        this.communityName.setText(community.name);
        this.memberText.setText(community.membersCount == 1 ? R.string.member : R.string.members);
        this.memberCount.setText(TextUtils.numberFormat.format(community.membersCount));
        this.memberCount.resizingFromMaxSize();
        TextView textView = this.leaderBoard;
        if (communityConfigHelper.isLeaderBoardEnable() && communityConfigHelper.isRankingModuleEnabled()) {
            i10 = 0;
        }
        textView.setVisibility(i10);
    }

    public void updateHeaderOffset(float f) {
        this.mainContent.setAlpha(1.0f - f);
    }

    public void updateSpeedDial(SpeedDialResponse speedDialResponse) {
        List<ChatThread> list;
        this.response = speedDialResponse;
        if (speedDialResponse != null && (list = speedDialResponse.threadList) != null && !list.isEmpty()) {
            if (this.speedDialRecycleView.getVisibility() != 0) {
                notifyHeaderInvalidated((View) this.speedDialRecycleView, true);
                this.fakeHeightViewWrapper.updateFakeHeight(getResources().getDimensionPixelSize(R.dimen.speed_dial_header_shadow_height_large));
            }
            this.speedDialRecycleView.updateSpeedDial(speedDialResponse);
        } else if (this.speedDialRecycleView.getVisibility() != 8) {
            this.speedDialRecycleView.updateSpeedDial(null);
            notifyHeaderInvalidated((View) this.speedDialRecycleView, false);
            this.fakeHeightViewWrapper.updateFakeHeight(getResources().getDimensionPixelSize(R.dimen.speed_dial_header_shadow_height));
        }
        Utils.post(new Runnable() { // from class: com.narvii.amino.speeddial.SpeedDialHeaderLayout.4
            @Override // java.lang.Runnable
            public void run() {
                SpeedDialHeaderLayout.this.clearSpeedDialImpression();
                SpeedDialHeaderLayout.this.logSpeedDialImpression();
            }
        });
    }

    public void updateThemeUI() {
        NVContext nVContext = this.ctx;
        if (nVContext != null) {
            int iColorPrimary = ((ConfigService) nVContext.getService("config")).getTheme().colorPrimary();
            findViewById(R.id.header_main_content_bg).setBackgroundDrawable(new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{iColorPrimary, Color.argb(90, Color.red(iColorPrimary), Color.green(iColorPrimary), Color.blue(iColorPrimary)), Color.argb(0, Color.red(iColorPrimary), Color.green(iColorPrimary), Color.blue(iColorPrimary))}));
            updateCheckinStreak();
        }
    }

    private void addAdViewObstructions(Activity activity) {
        View rootView = activity.getWindow().getDecorView().getRootView();
        int[] iArr = {R.id.cbb_proxy_view, R.id.layout_above_post_entry};
        for (int i10 = 0; i10 < 2; i10++) {
            View viewFindViewById = rootView.findViewById(iArr[i10]);
            if (viewFindViewById != null) {
                this.adView.addFriendlyObstruction(viewFindViewById);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        NVContext pageContext = LogUtils.getPageContext(this);
        this.pageContext = pageContext;
        if (pageContext == null) {
            this.pageContext = this.ctx;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.memberCount = (AutoSizingTextView) findViewById(R.id.member_count);
        this.memberText = (TextView) findViewById(R.id.member_text);
        switch (view.getId()) {
            case R.id.add_sr /* 2131361954 */:
                addFakeUserInVVChat();
                break;
            case R.id.checkin_button /* 2131362532 */:
                LogEvent.clickBuilder(this, ActSemantic.checkIn).area("CheckInButton").send();
                this.checkinText.setVisibility(8);
                this.checkinProgress.setVisibility(0);
                this.checkinButton.setForcePressed(true);
                this.checkinButton.setEnabled(false);
                startCheckIn();
                break;
            case R.id.checkin_close /* 2131362533 */:
                showCloseCheckInDialog();
                break;
            case R.id.community_icon /* 2131362667 */:
            case R.id.community_name /* 2131362684 */:
                LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("CommunityBigIcon").send();
                Community community = this.communityService.getCommunity(this.configService.getCommunityId());
                Intent intentCommunityDetailIntent = new CommunityHelper(this.ctx).communityDetailIntent(community);
                if (intentCommunityDetailIntent != null) {
                    intentCommunityDetailIntent.putExtra("pageBackground", String.format("#%06X", Integer.valueOf(community.themeColor())));
                    intentCommunityDetailIntent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
                    if (isCommunityJoined()) {
                        intentCommunityDetailIntent.putExtra(CommunityDetailFragment.KEY_CURRENT_USER_JOINED, true);
                        intentCommunityDetailIntent.putExtra("showJoin", false);
                    } else {
                        intentCommunityDetailIntent.putExtra("joinOnly", true);
                    }
                    if (getActivity() != null) {
                        intentCommunityDetailIntent.putExtra("customFinishAnimIn", R.anim.fade_in);
                        intentCommunityDetailIntent.putExtra("customFinishAnimOut", R.anim.fade_out);
                        safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(getActivity(), intentCommunityDetailIntent);
                        getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                    } else {
                        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.ctx, intentCommunityDetailIntent);
                    }
                }
                break;
            case R.id.leaderboard /* 2131363792 */:
                LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("Leaderboards").send();
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.ctx, FragmentWrapperActivity.intent(LeaderBoardTabFragment.class));
                break;
            case R.id.member_count /* 2131364158 */:
            case R.id.member_text /* 2131364165 */:
                LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("AllMembers").send();
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.ctx, FragmentWrapperActivity.intent(PeopleListFragment.class));
                break;
            case R.id.remove_sr /* 2131364877 */:
                this.speedDialRecycleView.removeFakeSrList();
                break;
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        int i10;
        super.onFinishInflate();
        NVContext nVContext = Utils.getNVContext(getContext());
        this.ctx = nVContext;
        this.configService = (ConfigService) nVContext.getService("config");
        this.communityService = (CommunityService) this.ctx.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        this.accountService = (AccountService) this.ctx.getService("account");
        this.checkInService = (CheckInService) this.ctx.getService(CheckInPrefsHelper.SHARED_PREFS_NAME);
        AffiliationsService affiliationsService = (AffiliationsService) this.ctx.getService("affiliations");
        this.affiliationsService = affiliationsService;
        affiliationsService.addAffiliationChangeListener(this);
        this.accountService.addProfileListener(this.profileListener);
        this.checkInPrefsHelper = new CheckInPrefsHelper(getContext());
        this.nestedChildHelper = new NVNestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        this.mainContent = (LinearLayout) findViewById(R.id.header_main_content);
        SpeedDialRecycleView speedDialRecycleView = (SpeedDialRecycleView) findViewById(R.id.speed_recycle);
        this.speedDialRecycleView = speedDialRecycleView;
        this.ipc.setListView(speedDialRecycleView);
        this.speedDialRecycleView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.amino.speeddial.SpeedDialHeaderLayout.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
                super.onScrollStateChanged(recyclerView, i11);
                SpeedDialHeaderLayout.this.logSpeedDialImpression();
            }
        });
        this.fakeHeightViewWrapper = (FakeHeightViewWrapper) findViewById(R.id.fake_height_view_wrapper);
        this.btnAddScreenRoom = findViewById(R.id.add_sr);
        this.btnRemoveScreenRoom = findViewById(R.id.remove_sr);
        this.btnAddScreenRoom.setOnClickListener(this);
        this.btnRemoveScreenRoom.setOnClickListener(this);
        this.communityIconView = (CommunityIconView) findViewById(R.id.community_icon);
        TextView textView = (TextView) findViewById(R.id.community_name);
        this.communityName = textView;
        ViewUtils.setMontserratExtraBoldTypeface(textView);
        this.memberLayout = (ViewGroup) findViewById(R.id.member_layout);
        this.memberCount = (AutoSizingTextView) findViewById(R.id.member_count);
        this.memberText = (TextView) findViewById(R.id.member_text);
        this.leaderBoard = (TextView) findViewById(R.id.leaderboard);
        this.communityIconView.setOnClickListener(this);
        this.communityName.setOnClickListener(this);
        this.memberCount.setOnClickListener(this);
        this.memberText.setOnClickListener(this);
        this.leaderBoard.setOnClickListener(this);
        this.checkInStreakBar = (CheckInStreakBar) findViewById(R.id.check_in_streak_bar);
        this.checkinButton = (PushButton) findViewById(R.id.checkin_button);
        this.checkinText = (TextView) findViewById(R.id.checkin_text);
        this.checkinProgress = (ProgressBar) findViewById(R.id.checkin_progress);
        this.checkinClose = (TintButton) findViewById(R.id.checkin_close);
        this.checkInModule = (ViewGroup) findViewById(R.id.checkin_module);
        this.liveMarqueePlaceHolder = (ViewGroup) findViewById(R.id.live_marquee_placeholder);
        this.liveMarqueeContainer = (ViewGroup) findViewById(R.id.live_marquee_container);
        this.checkInContainer = (ViewGroup) findViewById(R.id.check_in_streak_container);
        this.checkInSuccessContainer = (ViewGroup) findViewById(R.id.check_in_success_container);
        this.checkinButton.setOnClickListener(this);
        this.checkinClose.setOnClickListener(this);
        ViewGroup viewGroup = this.checkInModule;
        if (hideCheckInModule()) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        viewGroup.setVisibility(i10);
        updateThemeUI();
    }

    public void setupAdView() {
        Activity activity = getActivity();
        if (activity != null) {
            MediaLabAdView mediaLabAdView = (MediaLabAdView) findViewById(R.id.ad_item_rectangle);
            this.adView = mediaLabAdView;
            mediaLabAdView.initialize(AdsConstants.FEED_2_AD_UNIT_NAME, AdSize.MEDIUM_RECTANGLE);
            addAdViewObstructions(activity);
            if (this.adView.showPreloadedAd()) {
                this.adView.setVisibility(0);
            }
        }
    }

    public void updateAccountInfo() {
        updateCheckinStreak();
    }

    public void updateFeaturedChatThreadList(ChatThread chatThread) {
        if (chatThread.featureType() == 5 && this.speedDialRecycleView.getVisibility() == 8) {
            notifyHeaderInvalidated((View) this.speedDialRecycleView, true);
        }
        this.speedDialRecycleView.updateFeaturedChatList(chatThread);
        if (this.speedDialRecycleView.getItemViewCount() == 0 && this.speedDialRecycleView.getVisibility() == 0) {
            notifyHeaderInvalidated((View) this.speedDialRecycleView, false);
        }
    }

    private void notifyHeaderInvalidated(HashMap<View, Boolean> map, boolean z6) {
        ViewParent parent = getParent();
        if (parent instanceof HeaderCollapsibleLayout) {
            ((HeaderCollapsibleLayout) parent).invalidateHeader(map, z6);
        }
    }
}
