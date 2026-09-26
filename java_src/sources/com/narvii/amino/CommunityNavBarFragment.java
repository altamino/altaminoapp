package com.narvii.amino;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.narvii.account.AccountService;
import com.narvii.app.ComScoreSectionDispatcher;
import com.narvii.app.DrawerActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.chat.rtc.RtcService;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityLaunchHelper;
import com.narvii.community.CommunityLaunchHelperWithIcon;
import com.narvii.community.CommunityService;
import com.narvii.community.RecentCommunityHelper;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.CommunityHelper;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.page.Page;
import com.narvii.monetization.store.MonetizationStoreMainFragment;
import com.narvii.notice.NoticeListFragment;
import com.narvii.services.incubator.IncubatorCommunityLoggingServiceProvider;
import com.narvii.util.JacksonUtils;
import com.narvii.util.SplashUtils;
import com.narvii.util.ViewUtils;
import com.narvii.util.actionbar.ActionBarLayout;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.widget.NVImageView;
import com.narvii.widget.WalletBalanceView;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class CommunityNavBarFragment extends NVFragment implements AffiliationsService.AffiliationChangeListener {
    private static final int REQUEST_JOIN = 1000;
    private AccountService accountService;
    AffiliationsService affiliationsService;
    private View alertBadge;
    WalletBalanceView balanceView;
    Community community;
    CommunityLaunchHelperWithIcon communityLaunchHelperWithIcon;
    private CommunityService communityService;
    CommunityConfigHelper configHelper;
    ConfigService configService;
    private TextView fakeTitleView;
    boolean fromGlobal;
    private boolean launchCommunityWhenJoined = true;
    private boolean hideCommunityBar = false;
    private View.OnClickListener openDrawerClickListener = new View.OnClickListener() { // from class: com.narvii.amino.CommunityNavBarFragment.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommunityNavBarFragment.this.openDrawer();
        }
    };
    private View.OnClickListener openCommunityDetailClickListener = new View.OnClickListener() { // from class: com.narvii.amino.a
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f1800a.lambda$new$0(view);
        }
    };
    private final AccountService.ProfileListener profileListener = new AccountService.ProfileListener() { // from class: com.narvii.amino.CommunityNavBarFragment.5
        @Override // com.narvii.account.AccountService.ProfileListener
        public void onNoticeCountChanged(int i10) {
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onNotificationCountChanged(int i10) {
            CommunityNavBarFragment.this.updateAlertsCount();
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onProfileChanged(int i10, User user) {
            CommunityNavBarFragment.this.updateAlertsCount();
        }
    };
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.amino.CommunityNavBarFragment.6
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (CommunityService.ACTION_COMMUNITY_CHANGED.equals(intent.getAction()) && intent.getIntExtra("id", 0) == CommunityNavBarFragment.this.configService.getCommunityId()) {
                CommunityNavBarFragment.this.onCommunityUpdated();
            }
        }
    };
    private final BroadcastReceiver accountChangedReceiver = new BroadcastReceiver() { // from class: com.narvii.amino.CommunityNavBarFragment.7
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction()) || CommunityNavBarFragment.this.isDestoryed()) {
                return;
            }
            CommunityNavBarFragment.this.updateActionBarIcon();
        }
    };
    private final BroadcastReceiver communityChangedReceiver = new BroadcastReceiver() { // from class: com.narvii.amino.CommunityNavBarFragment.8
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (CommunityService.ACTION_COMMUNITY_CHANGED.equals(intent.getAction()) && !CommunityNavBarFragment.this.isDestoryed()) {
                if (intent.getIntExtra("id", 0) == ((ConfigService) CommunityNavBarFragment.this.getService("config")).getCommunityId()) {
                    CommunityNavBarFragment communityNavBarFragment = CommunityNavBarFragment.this;
                    communityNavBarFragment.setUpTitle(communityNavBarFragment.getActivity());
                    CommunityNavBarFragment.this.updateActionBarIcon();
                    CommunityNavBarFragment.this.invalidateOptionsMenu();
                }
            }
        }
    };
    private View.OnClickListener menuClickListener = new View.OnClickListener() { // from class: com.narvii.amino.CommunityNavBarFragment.12
        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        /* JADX WARN: Code duplicated, block: B:20:0x006b  */
        /* JADX WARN: Code duplicated, block: B:23:? A[RETURN, SYNTHETIC] */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent;
            if (view == null || CommunityNavBarFragment.this.shouldShowLoginPage()) {
                return;
            }
            if (view.getId() != com.narvii.amino.master.R.id.store) {
                if (view.getId() == com.narvii.amino.master.R.id.alerts) {
                    HomeFragment homeFragment = CommunityNavBarFragment.this.getHomeFragment();
                    if (homeFragment != null) {
                        LogEvent.clickBuilder(homeFragment, ActSemantic.listViewEnter).area("AlertIcon").send();
                    }
                    intent = FragmentWrapperActivity.intent(NoticeListFragment.class);
                    intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Navbar");
                }
                if (intent != null) {
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(CommunityNavBarFragment.this, intent);
                    CommunityNavBarFragment.this.getActivity().overridePendingTransition(com.narvii.amino.master.R.anim.activity_push_left_in, com.narvii.amino.master.R.anim.activity_push_left_out);
                }
            }
            HomeFragment homeFragment2 = CommunityNavBarFragment.this.getHomeFragment();
            if (homeFragment2 != null) {
                LogEvent.clickBuilder(homeFragment2, ActSemantic.pageEnter).area("StoreIcon").send();
            }
            Intent intent2 = FragmentWrapperActivity.intent(MonetizationStoreMainFragment.class);
            intent2.putExtra(ExternalPostPreviewFragment.SOURCE, "Navbar");
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(CommunityNavBarFragment.this, intent2);
            intent = null;
            if (intent != null) {
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(CommunityNavBarFragment.this, intent);
                CommunityNavBarFragment.this.getActivity().overridePendingTransition(com.narvii.amino.master.R.anim.activity_push_left_in, com.narvii.amino.master.R.anim.activity_push_left_out);
            }
        }
    };

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public Community community() {
        return this.community;
    }

    public void hideCommunityView() {
        this.hideCommunityBar = true;
        View communityIconView = getCommunityIconView();
        if (communityIconView != null && communityIconView.getVisibility() == 0) {
            communityIconView.setVisibility(8);
        }
        TextView textView = this.fakeTitleView;
        if (textView == null || textView.getVisibility() != 0) {
            return;
        }
        this.fakeTitleView.setVisibility(8);
    }

    @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
    public void onAffiliationChanged() {
        updateActionBar(null);
        updateActionBarIcon();
    }

    public void showCommunityView() {
        this.hideCommunityBar = false;
        View communityIconView = getCommunityIconView();
        if (communityIconView != null && communityIconView.getVisibility() == 8) {
            communityIconView.setVisibility(0);
        }
        TextView textView = this.fakeTitleView;
        if (textView == null || textView.getVisibility() != 8) {
            return;
        }
        this.fakeTitleView.setVisibility(0);
    }

    private void enterCommunity() {
        new CommunityLaunchHelper(this, getStringParam(ExternalPostPreviewFragment.SOURCE)).launch(getIntParam("__communityId"), this.communityService.getCommunity(((ConfigService) getService("config")).getCommunityId()), null, null, null, null, null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean fromHeadline() {
        return getBooleanParam("fromHeadline");
    }

    private boolean isCommunityJoined() {
        return this.affiliationsService.contains(this.configService.getCommunityId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTapCommunityIcon() {
        if (this.fromGlobal) {
            showCommunityDetailPage(true);
        } else {
            openDrawer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUpTitle(Activity activity) {
        if (this.fakeTitleView == null) {
            return;
        }
        if (activity.getActionBar() != null && activity.getActionBar().getCustomView() != null) {
            final View customView = activity.getActionBar().getCustomView();
            customView.setOnClickListener(this.openDrawerClickListener);
            ActionBarLayout actionBarLayout = (ActionBarLayout) customView.findViewById(com.narvii.amino.master.R.id.actionbar);
            if (actionBarLayout != null) {
                actionBarLayout.setOnGestureListener(new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.amino.CommunityNavBarFragment.9
                    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                    public boolean onSingleTapUp(MotionEvent motionEvent) {
                        CommunityNavBarFragment communityNavBarFragment = CommunityNavBarFragment.this;
                        if (!communityNavBarFragment.fromGlobal) {
                            communityNavBarFragment.openDrawer();
                            return true;
                        }
                        if (!communityNavBarFragment.affiliationsService.contains(communityNavBarFragment.getIntParam("__communityId"))) {
                            CommunityNavBarFragment.this.onTapCommunityIcon();
                            return true;
                        }
                        CommunityNavBarFragment.this.enterCommunityWithAniamtion((NVImageView) customView.findViewById(com.narvii.amino.master.R.id.community_icon));
                        return true;
                    }
                });
            }
            customView.findViewById(com.narvii.amino.master.R.id.actionbar_title).setVisibility(8);
        }
        Community community = this.communityService.getCommunity(((ConfigService) getService("config")).getCommunityId());
        if (this.fromGlobal && community == null) {
            community = (Community) JacksonUtils.readAs(getStringParam(RtcService.KEY_COMMUNITY), Community.class);
        }
        this.fakeTitleView.setText(community != null ? community.name : null);
        ViewUtils.setMontserratExtraBoldTypeface(this.fakeTitleView);
        this.fakeTitleView.setVisibility(this.hideCommunityBar ? 8 : 0);
    }

    private void tryJoinPrivateCommunity() {
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", getIntParam("__communityId"));
        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, getStringParam(RtcService.KEY_COMMUNITY));
        intent.putExtra("joinOnly", true);
        intent.putExtra("customFinishAnimIn", com.narvii.amino.master.R.anim.fade_in);
        intent.putExtra("customFinishAnimOut", com.narvii.amino.master.R.anim.fade_out);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, getStringParam(ExternalPostPreviewFragment.SOURCE));
        if (fromHeadline()) {
            intent.putExtra("loggingObjectId", getStringParam("loggingObjectId"));
            intent.putExtra("eventOrigin", LoggingOrigin.Headlines.toString());
        }
        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, 1000);
        getActivity().overridePendingTransition(com.narvii.amino.master.R.anim.fade_in, com.narvii.amino.master.R.anim.fade_out);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAlertsCount() {
        AccountService accountService = (AccountService) getService("account");
        boolean z6 = accountService == null || !accountService.hasAccount() || accountService.getNotificationCount() + accountService.getNoticeCount() <= 0;
        View view = this.alertBadge;
        if (view != null) {
            view.setVisibility(z6 ? 4 : 0);
        }
    }

    public int communityId() {
        return getIntParam("__communityId");
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 != 1000 || i11 != -1) {
            super.onActivityResult(i10, i11, intent);
            return;
        }
        if (this.launchCommunityWhenJoined) {
            CommunityLaunchHelper communityLaunchHelper = new CommunityLaunchHelper(this, getStringParam(ExternalPostPreviewFragment.SOURCE));
            communityLaunchHelper.setAllowJoinCommuntiy(true);
            communityLaunchHelper.launch(communityId(), community(), null, null, null, null, null, false);
            if (this.community != null) {
                ((RecentCommunityHelper) getService("recentCommunities")).addRecent(this.community);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        if (!this.fromGlobal) {
            menuInflater.inflate(com.narvii.amino.master.R.menu.menu_my_chat, menu);
            View actionView = menu.findItem(com.narvii.amino.master.R.id.store).getActionView();
            if (actionView != null) {
                actionView.setOnClickListener(this.menuClickListener);
                NVImageView nVImageView = (NVImageView) actionView.findViewById(com.narvii.amino.master.R.id.store_entrance);
                nVImageView.setShowPressedMask(false);
                nVImageView.setImageUrl("assets://globalStoreIcon.webp");
            }
            View actionView2 = menu.findItem(com.narvii.amino.master.R.id.alerts).getActionView();
            if (actionView2 != null) {
                actionView2.setOnClickListener(this.menuClickListener);
                this.alertBadge = actionView2.findViewById(com.narvii.amino.master.R.id.badge);
            }
        }
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        if (this.fromGlobal) {
            this.affiliationsService.removeAffiliationChangeListener(this);
        } else {
            unregisterLocalReceiver(this.communityChangedReceiver);
            unregisterLocalReceiver(this.accountChangedReceiver);
            unregisterLocalReceiver(this.receiver);
            this.accountService.removeProfileListener(this.profileListener);
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        if (!this.fromGlobal) {
            updateAlertsCount();
        }
        boolean zIsVisitorNotJoined = isVisitorNotJoined();
        menu.findItem(com.narvii.amino.master.R.id.store).setVisible(!zIsVisitorNotJoined && this.configHelper.isPremiumFeatureEnabled());
        menu.findItem(com.narvii.amino.master.R.id.alerts).setVisible(!zIsVisitorNotJoined);
        super.onPrepareOptionsMenu(menu);
    }

    public void showCommunityDetailPage(boolean z6) {
        this.launchCommunityWhenJoined = z6;
        tryJoinPrivateCommunity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enterCommunityWithAniamtion(NVImageView nVImageView) {
        if (!isAdded()) {
            return;
        }
        Community community = this.communityService.getCommunity(((ConfigService) getService("config")).getCommunityId());
        if (this.communityLaunchHelperWithIcon == null) {
            this.communityLaunchHelperWithIcon = new CommunityLaunchHelperWithIcon(this, getStringParam(ExternalPostPreviewFragment.SOURCE), getActivity());
        }
        this.communityLaunchHelperWithIcon.launchCommunity(community, nVImageView, null);
    }

    private View getCommunityIconView() {
        View customView;
        FragmentActivity activity = getActivity();
        if (activity.getActionBar() != null && activity.getActionBar().getCustomView() != null && (customView = activity.getActionBar().getCustomView()) != null) {
            return customView.findViewById(com.narvii.amino.master.R.id.community_icon);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HomeFragment getHomeFragment() {
        if (getActivity() == null) {
            return null;
        }
        Fragment fragmentM0 = getActivity().getSupportFragmentManager().m0(Page.HOME);
        if (!(fragmentM0 instanceof HomeFragment)) {
            return null;
        }
        return (HomeFragment) fragmentM0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        showCommunityDetailInCommunity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCommunityUpdated() {
        invalidateOptionsMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openDrawer() {
        HomeFragment homeFragment = getHomeFragment();
        if (homeFragment != null) {
            LogEvent.clickBuilder(homeFragment, ActSemantic.pageEnter).area("CommunityIcon").send();
        }
        if (isVisitorNotJoined()) {
            showCommunityDetailPage(false);
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof DrawerActivity) {
            ((DrawerActivity) activity).openDrawer();
        }
    }

    private void showCommunityDetailInCommunity() {
        if (isVisitorNotJoined()) {
            showCommunityDetailPage(false);
            return;
        }
        Community community = this.communityService.getCommunity(this.configService.getCommunityId());
        Intent intentCommunityDetailIntent = new CommunityHelper(this).communityDetailIntent(community);
        if (intentCommunityDetailIntent != null) {
            intentCommunityDetailIntent.putExtra("pageBackground", String.format("#%06X", Integer.valueOf(community.themeColor())));
            intentCommunityDetailIntent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
            intentCommunityDetailIntent.putExtra(CommunityDetailFragment.KEY_CURRENT_USER_JOINED, isCommunityJoined());
            intentCommunityDetailIntent.putExtra("showJoin", !isCommunityJoined());
            intentCommunityDetailIntent.putExtra("customFinishAnimIn", com.narvii.amino.master.R.anim.fade_in);
            intentCommunityDetailIntent.putExtra("customFinishAnimOut", com.narvii.amino.master.R.anim.fade_out);
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intentCommunityDetailIntent);
            getActivity().overridePendingTransition(com.narvii.amino.master.R.anim.fade_in, com.narvii.amino.master.R.anim.fade_out);
        }
    }

    private void updateActionBar(View view) {
        int i10;
        NVActivity nVActivity = (NVActivity) getActivity();
        boolean zContains = this.affiliationsService.contains(getIntParam("__communityId"));
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        if (!zContains) {
            i10 = com.narvii.amino.master.R.layout.semi_actionbar_join_btn;
        } else {
            i10 = com.narvii.amino.master.R.layout.actionbar_enter_btn;
        }
        View viewInflate = layoutInflaterFrom.inflate(i10, (ViewGroup) null);
        View viewFindViewById = viewInflate.findViewById(com.narvii.amino.master.R.id.actionbar_join_btn);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.CommunityNavBarFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (CommunityNavBarFragment.this.fromHeadline()) {
                        IncubatorCommunityLoggingServiceProvider.HEADLINE_ENTER.set(Integer.valueOf(CommunityNavBarFragment.this.getIntParam("__communityId")));
                        new CommunityPreferenceHelper(CommunityNavBarFragment.this.getContext()).setJoinAminoShowBefore(true);
                    }
                    CommunityNavBarFragment.this.showCommunityDetailPage(true);
                }
            });
        }
        View viewFindViewById2 = viewInflate.findViewById(com.narvii.amino.master.R.id.actionbar_enter_btn);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.CommunityNavBarFragment.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (CommunityNavBarFragment.this.fromHeadline()) {
                        IncubatorCommunityLoggingServiceProvider.HEADLINE_ENTER.set(Integer.valueOf(CommunityNavBarFragment.this.getIntParam("__communityId")));
                    }
                    Community community = CommunityNavBarFragment.this.communityService.getCommunity(((ConfigService) CommunityNavBarFragment.this.getService("config")).getCommunityId());
                    CommunityNavBarFragment communityNavBarFragment = CommunityNavBarFragment.this;
                    new CommunityLaunchHelper(communityNavBarFragment, communityNavBarFragment.getStringParam(ExternalPostPreviewFragment.SOURCE)).launch(CommunityNavBarFragment.this.getIntParam("__communityId"), community, null, null, null, null, null, false);
                }
            });
        }
        nVActivity.setActionBarRightView(viewInflate);
        if (view != null) {
            viewInflate.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).rightMargin = viewInflate.getMeasuredWidth();
            ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).setMarginEnd(viewInflate.getMeasuredWidth());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionBarIcon() {
        View customView;
        String str;
        View.OnClickListener onClickListener;
        FragmentActivity activity = getActivity();
        if (activity == null || activity.getActionBar() == null || (customView = activity.getActionBar().getCustomView()) == null) {
            return;
        }
        Community community = this.communityService.getCommunity(this.configService.getCommunityId());
        if (this.fromGlobal && getStringParam(RtcService.KEY_COMMUNITY) != null) {
            community = (Community) JacksonUtils.readAs(getStringParam(RtcService.KEY_COMMUNITY), Community.class);
        }
        boolean zContains = this.affiliationsService.contains(getIntParam("__communityId"));
        final NVImageView nVImageView = (NVImageView) customView.findViewById(com.narvii.amino.master.R.id.community_icon);
        if (community == null) {
            str = null;
        } else {
            str = community.icon;
        }
        nVImageView.setImageUrl(str);
        if (!zContains) {
            nVImageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.CommunityNavBarFragment.10
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CommunityNavBarFragment.this.onTapCommunityIcon();
                }
            });
            return;
        }
        if (!this.fromGlobal) {
            onClickListener = this.openDrawerClickListener;
        } else {
            onClickListener = new View.OnClickListener() { // from class: com.narvii.amino.CommunityNavBarFragment.11
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CommunityNavBarFragment.this.enterCommunityWithAniamtion(nVImageView);
                }
            };
        }
        nVImageView.setOnClickListener(onClickListener);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        int i10;
        super.onActivityCreated(bundle);
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        View viewInflate = LayoutInflater.from(getContext()).inflate(com.narvii.amino.master.R.layout.actionbar_home, (ViewGroup) null);
        setActionBarLeftView(viewInflate);
        View viewFindViewById = viewInflate.findViewById(com.narvii.amino.master.R.id.actionbar_back);
        if (getBooleanParam("hideBackButton")) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        viewFindViewById.setVisibility(i10);
        updateActionBarIcon();
        View viewFindViewById2 = viewInflate.findViewById(com.narvii.amino.master.R.id.actionbar_back);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.CommunityNavBarFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (CommunityNavBarFragment.this.getActivity() != null) {
                        CommunityNavBarFragment.this.getActivity().onBackPressed();
                    }
                }
            });
        }
        this.fakeTitleView = (TextView) viewInflate.findViewById(com.narvii.amino.master.R.id.fake_actionbar_title);
        this.balanceView = (WalletBalanceView) viewInflate.findViewById(com.narvii.amino.master.R.id.wallet_balance_view);
        setUpTitle(activity);
        this.balanceView.refresh();
        if (this.fromGlobal) {
            updateActionBar(viewInflate);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        boolean z6;
        super.onCreate(bundle);
        this.configHelper = new CommunityConfigHelper(this);
        this.accountService = (AccountService) getService("account");
        this.communityService = (CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        this.affiliationsService = (AffiliationsService) getService("affiliations");
        this.configService = (ConfigService) getService("config");
        this.community = (Community) JacksonUtils.readAs(getStringParam(RtcService.KEY_COMMUNITY), Community.class);
        if (!getBooleanParam("fromHeadline") && !getBooleanParam(RtcService.KEY_FROM_GLOBAL_CHAT)) {
            z6 = false;
        } else {
            z6 = true;
        }
        this.fromGlobal = z6;
        if (!z6) {
            registerLocalReceiver(this.accountChangedReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
            registerLocalReceiver(this.communityChangedReceiver, new IntentFilter(CommunityService.ACTION_COMMUNITY_CHANGED));
            registerLocalReceiver(this.receiver, new IntentFilter(CommunityService.ACTION_COMMUNITY_CHANGED));
            this.accountService.addProfileListener(this.profileListener);
        } else {
            this.affiliationsService.addAffiliationChangeListener(this);
        }
        setHasOptionsMenu(!this.fromGlobal);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ComScoreSectionDispatcher.INSTANCE.sectionChangeToCommunity();
        if (getActivity() != null) {
            SplashUtils.cancelSplash(getActivity());
        }
    }
}
