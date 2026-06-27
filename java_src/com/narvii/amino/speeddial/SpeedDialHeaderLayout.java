package com.narvii.amino.speeddial;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.support.v4.view.NestedScrollingChild;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.amino.speeddial.SpeedDialLayout;
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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

/* loaded from: classes2.dex */
public class SpeedDialHeaderLayout extends LinearLayout implements View.OnClickListener, NestedScrollingChild, CheckInService.CheckInResponseListener, AffiliationsService.AffiliationChangeListener {
    private AccountService accountService;
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

    public interface OnHeaderInvalidatedListener {
        void notifyHeaderInvalidated(View view, boolean z);
    }

    public void reConfigNormalItemViews() {
    }

    /* renamed from: com.narvii.amino.speeddial.SpeedDialHeaderLayout$2, reason: invalid class name */
    class AnonymousClass2 extends AccountService.ProfileListener {
        AnonymousClass2() {
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onProfileChanged(int i, User user) {
            if (SpeedDialHeaderLayout.this.checkInModule.getVisibility() == 0 && SpeedDialHeaderLayout.this.accountService.hasCheckInToday() && !SpeedDialHeaderLayout.this.isCheckingIn) {
                SpeedDialHeaderLayout.this.checkInModule.setVisibility(8);
                SpeedDialHeaderLayout speedDialHeaderLayout = SpeedDialHeaderLayout.this;
                speedDialHeaderLayout.notifyHeaderInvalidated((View) speedDialHeaderLayout.checkInModule, false);
            }
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onCheckInChanged(boolean z, int i) {
            if (SpeedDialHeaderLayout.this.checkInModule.getVisibility() == 0) {
                Utils.postDelayed(new Runnable() { // from class: com.narvii.amino.speeddial.-$$Lambda$SpeedDialHeaderLayout$2$9YSEcPKbxOEn7Okbm6jyAEWF44w
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onCheckInChanged$0$SpeedDialHeaderLayout$2();
                    }
                }, 200L);
            }
        }

        public /* synthetic */ void lambda$onCheckInChanged$0$SpeedDialHeaderLayout$2() {
            SpeedDialHeaderLayout.this.updateCheckinStreak();
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onCheckInHistoryChanged(CheckInHistory checkInHistory) {
            super.onCheckInHistoryChanged(checkInHistory);
            if (SpeedDialHeaderLayout.this.checkInModule.getVisibility() == 0) {
                Utils.postDelayed(new Runnable() { // from class: com.narvii.amino.speeddial.-$$Lambda$SpeedDialHeaderLayout$2$EQktnUPrX9MtKiuaMs12Cv1f3QI
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onCheckInHistoryChanged$1$SpeedDialHeaderLayout$2();
                    }
                }, 200L);
            }
        }

        public /* synthetic */ void lambda$onCheckInHistoryChanged$1$SpeedDialHeaderLayout$2() {
            SpeedDialHeaderLayout.this.updateCheckinStreak();
        }
    }

    public SpeedDialHeaderLayout(Context context) {
        this(context, null);
    }

    public SpeedDialHeaderLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.random = new Random();
        this.isCheckingIn = false;
        this.ipc = new StandaloneRecyclerImpressionCollector<ChatThread>(ChatThread.class) { // from class: com.narvii.amino.speeddial.SpeedDialHeaderLayout.1
            @Override // com.narvii.logging.Impression.ImpressionCollector
            public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo objectInfo) {
                super.completeImpressionLogBuilder(builder, objectInfo);
                builder.area("SpeedDial");
            }
        };
        this.profileListener = new AnonymousClass2();
    }

    public void setOnHeaderInvalidatedListener(OnHeaderInvalidatedListener onHeaderInvalidatedListener) {
        this.onHeaderInvalidatedListener = onHeaderInvalidatedListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.pageContext = LogUtils.getPageContext(this);
        if (this.pageContext == null) {
            this.pageContext = this.ctx;
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.ctx = Utils.getNVContext(getContext());
        this.configService = (ConfigService) this.ctx.getService("config");
        this.communityService = (CommunityService) this.ctx.getService("community");
        this.accountService = (AccountService) this.ctx.getService("account");
        this.checkInService = (CheckInService) this.ctx.getService(CheckInPrefsHelper.SHARED_PREFS_NAME);
        this.affiliationsService = (AffiliationsService) this.ctx.getService("affiliations");
        this.affiliationsService.addAffiliationChangeListener(this);
        this.accountService.addProfileListener(this.profileListener);
        this.checkInPrefsHelper = new CheckInPrefsHelper(getContext());
        this.nestedChildHelper = new NVNestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        this.mainContent = (LinearLayout) findViewById(R.id.header_main_content);
        this.speedDialRecycleView = (SpeedDialRecycleView) findViewById(R.id.speed_recycle);
        this.ipc.setListView(this.speedDialRecycleView);
        this.speedDialRecycleView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.amino.speeddial.SpeedDialHeaderLayout.3
            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                super.onScrollStateChanged(recyclerView, i);
                SpeedDialHeaderLayout.this.logSpeedDialImpression();
            }
        });
        this.fakeHeightViewWrapper = (FakeHeightViewWrapper) findViewById(R.id.fake_height_view_wrapper);
        this.btnAddScreenRoom = findViewById(R.id.add_sr);
        this.btnRemoveScreenRoom = findViewById(R.id.remove_sr);
        this.btnAddScreenRoom.setOnClickListener(this);
        this.btnRemoveScreenRoom.setOnClickListener(this);
        this.communityIconView = (CommunityIconView) findViewById(R.id.community_icon);
        this.communityName = (TextView) findViewById(R.id.community_name);
        ViewUtils.setMontserratExtraBoldTypeface(this.communityName);
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
        this.checkInContainer = (ViewGroup) findViewById(R.id.check_in_streak_container);
        this.checkInSuccessContainer = (ViewGroup) findViewById(R.id.check_in_success_container);
        this.checkinButton.setOnClickListener(this);
        this.checkinClose.setOnClickListener(this);
        updateThemeUI();
    }

    private boolean hideCheckInModule() {
        return !isCommunityJoined() || this.accountService.hasCheckInToday() || this.checkInPrefsHelper.isHideCheckIn(this.configService.getCommunityId());
    }

    private boolean isCommunityJoined() {
        return this.affiliationsService.contains(this.configService.getCommunityId());
    }

    public void logSpeedDialImpression() {
        ImpressionUtils.logStandaloneRecyclerImpression(this.speedDialRecycleView, this.ipc, this.pageContext);
    }

    public void clearSpeedDialImpression() {
        ImpressionUtils.clearImpression(this.ipc, this.pageContext);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.nestedChildHelper.onTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.memberCount = (AutoSizingTextView) findViewById(R.id.member_count);
        this.memberText = (TextView) findViewById(R.id.member_text);
        switch (view.getId()) {
            case R.id.add_sr /* 2131296361 */:
                addFakeUserInVVChat();
                break;
            case R.id.checkin_button /* 2131296810 */:
                LogEvent.clickBuilder(this, ActSemantic.checkIn).area("CheckInButton").send();
                this.checkinText.setVisibility(8);
                this.checkinProgress.setVisibility(0);
                this.checkinButton.setForcePressed(true);
                this.checkinButton.setEnabled(false);
                this.checkInService.cacheRewardVideo();
                startCheckIn();
                break;
            case R.id.checkin_close /* 2131296811 */:
                showCloseCheckInDialog();
                break;
            case R.id.community_icon /* 2131296931 */:
            case R.id.community_name /* 2131296950 */:
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
                        getActivity().startActivity(intentCommunityDetailIntent);
                        getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                        break;
                    } else {
                        this.ctx.startActivity(intentCommunityDetailIntent);
                        break;
                    }
                }
                break;
            case R.id.leaderboard /* 2131297869 */:
                LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("Leaderboards").send();
                this.ctx.startActivity(FragmentWrapperActivity.intent(LeaderBoardTabFragment.class));
                break;
            case R.id.member_count /* 2131298013 */:
            case R.id.member_text /* 2131298020 */:
                LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("AllMembers").send();
                this.ctx.startActivity(FragmentWrapperActivity.intent(PeopleListFragment.class));
                break;
            case R.id.remove_sr /* 2131298641 */:
                this.speedDialRecycleView.removeFakeSrList();
                break;
        }
    }

    private void startCheckIn() {
        this.isCheckingIn = true;
        this.checkInService.startCheckIn(this);
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

    public void updateCommunityInfo() {
        Community community = this.communityService.getCommunity(this.configService.getCommunityId());
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this.ctx, this.configService.getCommunityId());
        int i = 8;
        if (community != null) {
            this.communityIconView.setImageUrl(community.icon);
            this.communityName.setText(community.name);
            this.memberText.setText(community.membersCount == 1 ? R.string.member : R.string.members);
            this.memberCount.setText(TextUtils.numberFormat.format(community.membersCount));
            this.memberCount.resizingFromMaxSize();
            TextView textView = this.leaderBoard;
            if (communityConfigHelper.isLeaderBoardEnable() && communityConfigHelper.isRankingModuleEnabled()) {
                i = 0;
            }
            textView.setVisibility(i);
            return;
        }
        this.communityIconView.setImageUrl(null);
        this.communityName.setText((CharSequence) null);
        this.memberCount.setText((CharSequence) null);
        this.memberText.setText((CharSequence) null);
        this.leaderBoard.setVisibility(8);
    }

    public void updateAccountInfo() {
        updateCheckinStreak();
    }

    public void updateCheckinStreak() {
        List<Integer> streakLostList = new CheckInHelper(this.ctx).getStreakLostList(this.accountService.getCheckInHistory());
        if (streakLostList == null || streakLostList.isEmpty()) {
            streakLostList = new ArrayList<>();
            streakLostList.add(4);
        }
        this.checkInStreakBar.updateCells(streakLostList);
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

    public void updateHeaderOffset(float f) {
        this.mainContent.setAlpha(1.0f - f);
    }

    public void updateSpeedDial(SpeedDialResponse speedDialResponse) {
        List<ChatThread> list;
        this.response = speedDialResponse;
        if (speedDialResponse == null || (list = speedDialResponse.threadList) == null || list.isEmpty()) {
            if (this.speedDialRecycleView.getVisibility() != 8) {
                this.speedDialRecycleView.updateSpeedDial(null);
                notifyHeaderInvalidated((View) this.speedDialRecycleView, false);
                this.fakeHeightViewWrapper.updateFakeHeight(getResources().getDimensionPixelSize(R.dimen.speed_dial_header_shadow_height));
            }
        } else {
            if (this.speedDialRecycleView.getVisibility() != 0) {
                notifyHeaderInvalidated((View) this.speedDialRecycleView, true);
                this.fakeHeightViewWrapper.updateFakeHeight(getResources().getDimensionPixelSize(R.dimen.speed_dial_header_shadow_height_large));
            }
            this.speedDialRecycleView.updateSpeedDial(speedDialResponse);
        }
        Utils.post(new Runnable() { // from class: com.narvii.amino.speeddial.SpeedDialHeaderLayout.4
            @Override // java.lang.Runnable
            public void run() {
                SpeedDialHeaderLayout.this.clearSpeedDialImpression();
                SpeedDialHeaderLayout.this.logSpeedDialImpression();
            }
        });
    }

    public void setSpeedDialItemClicked(SpeedDialLayout.SpeedDialItemClickListener speedDialItemClickListener) {
        this.speedDialRecycleView.setSpeedDialItemClickListener(speedDialItemClickListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyHeaderInvalidated(View view, boolean z) {
        ViewParent parent = getParent();
        if (parent instanceof HeaderCollapsibleLayout) {
            ((HeaderCollapsibleLayout) parent).invalidateHeader(view, z);
            OnHeaderInvalidatedListener onHeaderInvalidatedListener = this.onHeaderInvalidatedListener;
            if (onHeaderInvalidatedListener != null) {
                onHeaderInvalidatedListener.notifyHeaderInvalidated(view, z);
            }
        }
    }

    private void notifyHeaderInvalidated(HashMap<View, Boolean> map, boolean z) {
        ViewParent parent = getParent();
        if (parent instanceof HeaderCollapsibleLayout) {
            ((HeaderCollapsibleLayout) parent).invalidateHeader(map, z);
        }
    }

    private void addFakeUserInVVChat() {
        SpeedDialResponse speedDialResponse = this.response;
        if (speedDialResponse == null || speedDialResponse.userProfileListInThreadList == null) {
            return;
        }
        User user = new User();
        user.uid = "" + this.random.nextInt();
        user.icon = "https://s1.narvii.com/image/ljmusu6brr5yulr5kcbby5j4nilelxvm_00.jpg";
        List<User> list = this.response.userProfileListInThreadList.get("08e2158c-d8d8-491a-abca-240c1dd97f83");
        if (list != null) {
            list.add(user);
        }
        this.speedDialRecycleView.updateSpeedDial(this.response);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.nestedChildHelper.setNestedScrollingEnabled(z);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.nestedChildHelper.isNestedScrollingEnabled();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.nestedChildHelper.startNestedScroll(i);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.nestedChildHelper.stopNestedScroll();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.nestedChildHelper.hasNestedScrollingParent();
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.nestedChildHelper.dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.nestedChildHelper.dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.nestedChildHelper.dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.nestedChildHelper.dispatchNestedPreFling(f, f2);
    }

    public void updateThemeUI() {
        NVContext nVContext = this.ctx;
        if (nVContext != null) {
            int iColorPrimary = ((ConfigService) nVContext.getService("config")).getTheme().colorPrimary();
            findViewById(R.id.header_main_content_bg).setBackgroundDrawable(new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{iColorPrimary, Color.argb(90, Color.red(iColorPrimary), Color.green(iColorPrimary), Color.blue(iColorPrimary)), Color.argb(0, Color.red(iColorPrimary), Color.green(iColorPrimary), Color.blue(iColorPrimary))}));
            updateCheckinStreak();
        }
    }

    @Override // com.narvii.checkin.CheckInService.CheckInResponseListener
    public void onFinish(ApiRequest apiRequest, CheckInResult checkInResult) {
        this.isCheckingIn = false;
        Utils.postDelayed(new Runnable() { // from class: com.narvii.amino.speeddial.-$$Lambda$SpeedDialHeaderLayout$_A_h7FdELhOQQdwVwu-ki-RjCkQ
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onFinish$1$SpeedDialHeaderLayout();
            }
        }, 1000L);
    }

    public /* synthetic */ void lambda$onFinish$1$SpeedDialHeaderLayout() {
        this.checkInContainer.setVisibility(8);
        this.checkInSuccessContainer.setVisibility(0);
        Utils.postDelayed(new Runnable() { // from class: com.narvii.amino.speeddial.-$$Lambda$SpeedDialHeaderLayout$UJGO8GJwYJJPA22Vjg2edVg_FEY
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$null$0$SpeedDialHeaderLayout();
            }
        }, 1000L);
    }

    public /* synthetic */ void lambda$null$0$SpeedDialHeaderLayout() {
        this.checkInModule.setVisibility(8);
        notifyHeaderInvalidated((View) this.checkInModule, false);
    }

    @Override // com.narvii.checkin.CheckInService.CheckInResponseListener
    public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
        this.isCheckingIn = false;
        this.checkinProgress.setVisibility(8);
        this.checkinText.setVisibility(0);
        this.checkinButton.setEnabled(true);
        this.checkinButton.setForcePressed(false);
    }

    private void showCloseCheckInDialog() {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setMessage(R.string.comfirm_close_checkin_entry);
        aCMAlertDialog.setVerticalButtons();
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.amino.speeddial.-$$Lambda$SpeedDialHeaderLayout$AuRbZt9-ye4fQAslb3FciyRtS9U
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showCloseCheckInDialog$2$SpeedDialHeaderLayout(view);
            }
        });
        aCMAlertDialog.addButton(R.string.never_show_again, new View.OnClickListener() { // from class: com.narvii.amino.speeddial.-$$Lambda$SpeedDialHeaderLayout$VUTc50ljgWLgISoj9iYMDbIF4Nw
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showCloseCheckInDialog$3$SpeedDialHeaderLayout(view);
            }
        });
        aCMAlertDialog.addButton(R.string.cancel, null);
        aCMAlertDialog.show();
    }

    public /* synthetic */ void lambda$showCloseCheckInDialog$2$SpeedDialHeaderLayout(View view) {
        this.checkInModule.setVisibility(8);
        notifyHeaderInvalidated((View) this.checkInModule, false);
        this.checkInPrefsHelper.hideToday(this.configService.getCommunityId());
        LogEvent.clickWildcardBuilder(this, "CheckInClose").extraParam("closeType", "close").send();
    }

    public /* synthetic */ void lambda$showCloseCheckInDialog$3$SpeedDialHeaderLayout(View view) {
        this.checkInModule.setVisibility(8);
        notifyHeaderInvalidated((View) this.checkInModule, false);
        this.checkInPrefsHelper.hideAlways(this.configService.getCommunityId());
        LogEvent.clickWildcardBuilder(this, "CheckInClose").extraParam("closeType", "neverShowMeAgain").send();
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
}
