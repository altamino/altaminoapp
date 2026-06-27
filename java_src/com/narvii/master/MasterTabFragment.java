package com.narvii.master;

import android.app.ActivityOptions;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.design.widget.BottomSheetBehavior;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVFragment;
import com.narvii.app.NVScrollablePagerAdapter;
import com.narvii.app.NVScrollableTabFragment;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.global.chat.AggregationChatFragment;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.community.CommunityService;
import com.narvii.community.request.ConfigurationApiResponse;
import com.narvii.community.search.MasterThemeHelper;
import com.narvii.incubator.ContentLanguagePickHelper;
import com.narvii.language.ContentLanguageService;
import com.narvii.language.LanguageChangeListener;
import com.narvii.language.LanguageManager;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.explorer.ExplorerCommunityListFragment;
import com.narvii.master.home.MyAminosFragment;
import com.narvii.master.home.discover.DiscoverTabFragment;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.master.home.profile.GlobalProfileHelper;
import com.narvii.master.search.GlobalSearchTabFragment;
import com.narvii.master.setting.ContentLanguageSetting;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.master.widget.MasterBottomBar;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.store.MonetizationStoreMainFragment;
import com.narvii.notice.AggregationNoticeFragment;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.prefs.SettingsFragment;
import com.narvii.services.EventLogProfileService;
import com.narvii.services.incubator.IncubatorNoticeService;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.PaletteUtils;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class MasterTabFragment extends NVScrollableTabFragment implements LanguageChangeListener, NotificationListener, View.OnClickListener, FragmentOnBackListener, ChatService.ChatMessageReceptor, IncubatorNoticeService.HasReminderChangeListener {
    public static final int INDEX_CHAT = 2;
    public static final int INDEX_DISCOVER = 0;
    public static final int INDEX_MY_COMMUNITY = 1;
    public static final int INDEX_PROFILE = 3;
    private AccountService accountService;
    private View alertBadge;
    private View avatarLayout;
    public FrameLayout bottomSheetLayout;
    private ChatService chatService;
    private Integer defaultIndex;
    EventLogProfileService eventLogProfileService;
    LanguageManager languageManager;
    private ContentLanguageService languageService;
    public MasterBottomBar masterBottomBar;
    private View masterTabTopOffset;
    private MasterTopBar masterTopBar;
    MembershipService membershipService;
    private IncubatorNoticeService noticeService;
    private PreferencesHelper prefsHelper;
    private AccountService.ProfileListener profileListener;
    EventDispatcher<MasterAppearanceChangedListener> masterThemeChangedListener = new EventDispatcher<>();
    public boolean isTopBarAvailable = true;
    BroadcastReceiver receiver = new AnonymousClass1();
    private final AccountService.RecentVisitorListener recentVisitorListener = new AccountService.RecentVisitorListener() { // from class: com.narvii.master.MasterTabFragment.2
        @Override // com.narvii.account.AccountService.RecentVisitorListener
        public void onVisitorCountChanged(int i, int i2) {
            MasterTabFragment.this.masterBottomBar.updateMeBadge(i > 0);
        }
    };
    View.OnClickListener languagePickListener = new View.OnClickListener() { // from class: com.narvii.master.-$$Lambda$MasterTabFragment$qFhC5LO6JaFBYX0cSVy2JiC8Idw
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f$0.lambda$new$4$MasterTabFragment(view);
        }
    };
    ViewPager.OnPageChangeListener pageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.narvii.master.MasterTabFragment.3
        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(final int i) {
            if (MasterTabFragment.this.isResumed()) {
                MasterTabFragment.this.statisticsEvent(i);
            }
            MasterTabFragment masterTabFragment = MasterTabFragment.this;
            MasterBottomBar masterBottomBar = masterTabFragment.masterBottomBar;
            if (masterBottomBar != null) {
                masterBottomBar.updateTabBottomLayout(masterTabFragment.getIndexOfRealPosition(i));
            }
            Utils.post(new Runnable() { // from class: com.narvii.master.MasterTabFragment.3.1
                @Override // java.lang.Runnable
                public void run() {
                    ComponentCallbacks fragmentAtIndex = MasterTabFragment.this.getFragmentAtIndex(i);
                    if (fragmentAtIndex instanceof MasterTopOffsetAdapter) {
                        ((MasterTopOffsetAdapter) fragmentAtIndex).resetOffset();
                    }
                    if (fragmentAtIndex == null) {
                        MasterTabFragment masterTabFragment2 = MasterTabFragment.this;
                        masterTabFragment2.isTopBarAvailable = i != masterTabFragment2.getRealPositionOfIndex(3);
                    } else if (fragmentAtIndex instanceof MasterTopBarAvailable) {
                        MasterTabFragment.this.isTopBarAvailable = ((MasterTopBarAvailable) fragmentAtIndex).isTopBarAvailable();
                    }
                    MasterTabFragment.this.masterTabTopOffset.setVisibility(MasterTabFragment.this.isTopBarAvailable ? 0 : 8);
                }
            });
        }
    };

    private Integer getDefaultLandingIndex() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void statisticsEvent(int i) {
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultOffScreenPage() {
        return 3;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Home";
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    protected boolean isScrollable() {
        return true;
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i, ChatMessageDto chatMessageDto) {
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    /* renamed from: com.narvii.master.MasterTabFragment$1, reason: invalid class name */
    class AnonymousClass1 extends BroadcastReceiver {
        AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                MasterTabFragment.this.prefsHelper.saveLandingPos(null);
                final int curIndex = MasterTabFragment.this.getCurIndex();
                Utils.post(new Runnable() { // from class: com.narvii.master.-$$Lambda$MasterTabFragment$1$YfCpKXbdk752Vb6KT1UmIvonhu8
                    @Override // java.lang.Runnable
                    public final void run() throws Resources.NotFoundException {
                        this.f$0.lambda$onReceive$0$MasterTabFragment$1(curIndex);
                    }
                });
                if (!MasterTabFragment.this.accountService.hasAccount()) {
                    MasterTabFragment.this.masterBottomBar.setUser(null);
                    MasterTabFragment masterTabFragment = MasterTabFragment.this;
                    masterTabFragment.masterBottomBar.setUnreadChatMessage(masterTabFragment.chatService.getAllUnreadThreadCount() > 0);
                }
            }
            if ((MembershipService.ACTION_MEMBERSHIP_CHANGED == intent.getAction() || MembershipService.ACTION_WALLET_CHANGED == intent.getAction() || MembershipService.ACTION_COUPONS_CHANGED == intent.getAction()) && MasterTabFragment.this.isAdded() && MasterTabFragment.this.masterTopBar != null) {
                MasterTabFragment masterTabFragment2 = MasterTabFragment.this;
                masterTabFragment2.masterBottomBar.setUser(masterTabFragment2.accountService.getUserProfile());
            }
        }

        public /* synthetic */ void lambda$onReceive$0$MasterTabFragment$1(int i) throws Resources.NotFoundException {
            MasterTabFragment.this.setCurrentItem(i);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.languageService = (ContentLanguageService) getService("content_language");
        this.languageService.registerLanguageChangeListener(this);
        this.chatService = (ChatService) getService("chat");
        this.chatService.addGlobalChatMessageReceptor(this);
        this.accountService = (AccountService) getService("account");
        this.membershipService = (MembershipService) getService("membership");
        this.membershipService.refresh(true);
        this.languageManager = (LanguageManager) getService(IjkMediaMeta.IJKM_KEY_LANGUAGE);
        this.eventLogProfileService = (EventLogProfileService) getService("eventLogProfile");
        this.noticeService = (IncubatorNoticeService) getService("_notice");
        IncubatorNoticeService incubatorNoticeService = this.noticeService;
        if (incubatorNoticeService != null) {
            incubatorNoticeService.refresh(true);
            this.noticeService.sendGlobalNoticeRequest();
            this.noticeService.addReminderChangeListener(this);
        }
        this.prefsHelper = new PreferencesHelper(this);
        String stringParam = getStringParam("tab");
        if ("my".equals(stringParam)) {
            this.defaultIndex = Integer.valueOf(getMyCommunityIndex());
        } else if ("chat".equals(stringParam)) {
            this.defaultIndex = 2;
        } else if ("discover".equals(stringParam)) {
            this.defaultIndex = 0;
        } else {
            this.defaultIndex = getDefaultLandingIndex();
        }
        if (NVApplication.CLIENT_TYPE == 100) {
            registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
            registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
            registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
            registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_COUPONS_CHANGED));
        }
        sendGlobalProfileRequest();
        if (bundle != null) {
            this.isTopBarAvailable = bundle.getBoolean("isTopBarAvailable");
        }
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("isTopBarAvailable", this.isTopBarAvailable);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.incubator_tab_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        ViewPager.OnPageChangeListener onPageChangeListener;
        super.onViewCreated(view, bundle);
        this.mViewPager.disableScroll = true;
        setPageChangeListener(this.pageChangeListener);
        View viewFindViewById = view.findViewById(R.id.search_layout_with_shadow);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this);
        }
        View viewFindViewById2 = view.findViewById(R.id.alert);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(this);
        }
        this.alertBadge = view.findViewById(R.id.alert_badge);
        View viewFindViewById3 = view.findViewById(R.id.store_entrance);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(this);
        }
        View viewFindViewById4 = view.findViewById(R.id.user_avatar_layout);
        if (viewFindViewById4 != null) {
            viewFindViewById4.setOnClickListener(this);
        }
        View viewFindViewById5 = view.findViewById(R.id.prefs);
        if (viewFindViewById5 != null) {
            viewFindViewById5.setOnClickListener(this);
        }
        this.masterTabTopOffset = view.findViewById(R.id.master_tab_offset);
        this.masterTopBar = (MasterTopBar) view.findViewById(R.id.master_top_bar);
        this.avatarLayout = view.findViewById(R.id.user_avatar_layout);
        sendContentLanguageRequest();
        updateContentLanguage();
        this.masterTopBar.setContentLanguageClickListener(this.languagePickListener);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager).setOnBackgroundChangedCallback(new Function3() { // from class: com.narvii.master.-$$Lambda$MasterTabFragment$325n1G50u3y0Q4JlLlcSXUezfzI
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return this.f$0.lambda$onViewCreated$1$MasterTabFragment((ImageView) obj, (View) obj2, (Integer) obj3);
                }
            });
        }
        if (bundle != null && (onPageChangeListener = this.pageChangeListener) != null) {
            onPageChangeListener.onPageSelected(getCurIndex());
        }
        this.bottomSheetLayout = (FrameLayout) view.findViewById(R.id.bottom_layout);
        BottomSheetBehavior.from(this.bottomSheetLayout).setPeekHeight(0);
        this.masterBottomBar = (MasterBottomBar) view.findViewById(R.id.master_bottom_bar);
        this.masterBottomBar.setComposePreClickListener(new View.OnClickListener() { // from class: com.narvii.master.-$$Lambda$MasterTabFragment$1Bpy75JkenVl4kV5RGs8_9kzFbE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$2$MasterTabFragment(view2);
            }
        });
        this.masterBottomBar.updateTabBottomLayout(getRealPositionOfIndex(this.mViewPager.getCurrentItem()));
        this.masterBottomBar.setUser(this.accountService.getUserProfile());
        this.masterBottomBar.setVisibility((getAdapter() == null || getAdapter().getCount() <= 1) ? 8 : 0);
        this.masterBottomBar.setTabSelectListener(new MasterBottomBar.TabSelectListener() { // from class: com.narvii.master.-$$Lambda$MasterTabFragment$mXia2OExHgOBHmss-8ToqhI4ByA
            @Override // com.narvii.master.widget.MasterBottomBar.TabSelectListener
            public final void onTabSelected(int i) throws Resources.NotFoundException {
                this.f$0.lambda$onViewCreated$3$MasterTabFragment(i);
            }
        });
        this.chatService.refresh(true);
        updateTopbar();
        sendGlobalConfigRequest();
        this.accountService.addRecentVisitorListener(this.recentVisitorListener);
    }

    public /* synthetic */ Unit lambda$onViewCreated$1$MasterTabFragment(ImageView imageView, View view, final Integer num) {
        this.masterThemeChangedListener.dispatch(new Callback() { // from class: com.narvii.master.-$$Lambda$MasterTabFragment$rjJmwevy6rXdtX03GE-lnODyJUs
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((MasterAppearanceChangedListener) obj).onMasterAppearanceChanged(num.intValue());
            }
        });
        if (PaletteUtils.isLightTone(imageView)) {
            view.setVisibility(0);
            return null;
        }
        view.setVisibility(8);
        return null;
    }

    public /* synthetic */ void lambda$onViewCreated$2$MasterTabFragment(View view) {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("ComposeIcon").send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateContentLanguage() {
        if (this.masterTopBar != null) {
            this.masterTopBar.setContentLanguage(this.languageService.getRequestPrefLanguageWithEnAsDefault());
        }
    }

    private int getMyCommunityIndex() {
        return this.eventLogProfileService.isShowMyCommunityTab() ? 1 : 0;
    }

    public /* synthetic */ void lambda$new$4$MasterTabFragment(View view) {
        new ContentLanguagePickHelper().showLanguagePickerDialog((NVActivity) getActivity());
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        updateGlobalNoticeBadge();
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        IncubatorNoticeService incubatorNoticeService = this.noticeService;
        if (incubatorNoticeService != null) {
            incubatorNoticeService.setActive(z);
            if (z) {
                this.noticeService.refresh(false);
            }
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ContentLanguageService contentLanguageService = this.languageService;
        if (contentLanguageService != null) {
            contentLanguageService.unRegisterLanguageChangeListener(this);
        }
        IncubatorNoticeService incubatorNoticeService = this.noticeService;
        if (incubatorNoticeService != null) {
            incubatorNoticeService.removeReminderChangeListener(this);
        }
        AccountService.ProfileListener profileListener = this.profileListener;
        if (profileListener != null) {
            this.accountService.removeProfileListener(profileListener);
        }
        this.accountService.removeRecentVisitorListener(this.recentVisitorListener);
        if (NVApplication.CLIENT_TYPE == 100) {
            unregisterLocalReceiver(this.receiver);
        }
        this.chatService.removeGlobalChatMessageReceptor(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.alert /* 2131296397 */:
                LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("AlertIcon").send();
                Intent intent = FragmentWrapperActivity.intent(AggregationNoticeFragment.class);
                intent.putExtra("forceRefreshReminder", true);
                startActivity(intent);
                break;
            case R.id.prefs /* 2131298495 */:
                startActivity(FragmentWrapperActivity.intent(SettingsFragment.class));
                break;
            case R.id.search_layout_with_shadow /* 2131298781 */:
                LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("GlobalSearch").send();
                new MasterThemeHelper(this).saveDynamicThemeBg(getActivity());
                Intent intent2 = FragmentWrapperActivity.intent(GlobalSearchTabFragment.class);
                String str = getCurIndex() == 2 ? "Global Chats" : "My Community List";
                int realPositionOfIndex = getRealPositionOfIndex(getCurIndex());
                if (realPositionOfIndex == 1) {
                    intent2.putExtra("tab", "community");
                } else if (realPositionOfIndex == 2) {
                    intent2.putExtra("tab", "chat");
                }
                intent2.putExtra("Source", str);
                startActivity(intent2);
                getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                break;
            case R.id.store_entrance /* 2131299008 */:
                LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("StoreIcon").send();
                startActivity(FragmentWrapperActivity.intent(MonetizationStoreMainFragment.class));
                break;
            case R.id.user_avatar_layout /* 2131299344 */:
                LogEvent.clickBuilder(this, ActSemantic.checkDetail).object(this.accountService.getUserProfile()).area("UserIcon").send();
                openGlobalProfile();
                break;
        }
    }

    private void sendGlobalProfileRequest() {
        if (this.accountService.hasAccount()) {
            new GlobalProfileHelper(this, "").sendGlobalProfileRequest(this.accountService.getUserId(), null, false);
        }
    }

    protected void openGlobalProfile() {
        Intent intent = FragmentWrapperActivity.intent(GlobalProfileFragment.class);
        intent.putExtra("id", this.accountService.getUserId());
        intent.putExtra(GlobalProfileFragment.KEY_SHOW_SETTING, true);
        intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(this.accountService.getUserProfile()));
        if (this.avatarLayout != null && getActivity() != null && Build.VERSION.SDK_INT >= 21) {
            getActivity().startActivity(intent, ActivityOptions.makeSceneTransitionAnimation(getActivity(), this.avatarLayout, "avatar").toBundle());
        } else {
            startActivity(intent);
        }
    }

    /* renamed from: selectTab, reason: merged with bridge method [inline-methods] */
    public void lambda$onViewCreated$3$MasterTabFragment(int i) throws Resources.NotFoundException {
        int realPositionOfIndex = getRealPositionOfIndex(i);
        onTabClicked(realPositionOfIndex);
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager != null) {
            nVViewPager.setCurrentItem(realPositionOfIndex, true);
        }
    }

    private void onTabClicked(int i) {
        if (getCurIndex() == i && i == getRealPositionOfIndex(0) && (getFragmentAtIndex(i) instanceof DiscoverTabFragment)) {
            DiscoverTabFragment discoverTabFragment = (DiscoverTabFragment) getFragmentAtIndex(i);
            discoverTabFragment.getCurrentFragment();
            if (discoverTabFragment.storyListShowing()) {
                discoverTabFragment.onBackPressed((NVActivity) getActivity());
            } else if (discoverTabFragment.getCurrentFragment() instanceof NVRecyclerViewFragment) {
                NVRecyclerViewFragment nVRecyclerViewFragment = (NVRecyclerViewFragment) discoverTabFragment.getCurrentFragment();
                RecyclerView recyclerView = nVRecyclerViewFragment.getRecyclerView();
                if (recyclerView.getLayoutManager() instanceof LinearLayoutManager) {
                    if (((LinearLayoutManager) recyclerView.getLayoutManager()).findFirstVisibleItemPosition() < 20) {
                        recyclerView.smoothScrollToPosition(0);
                    } else {
                        recyclerView.scrollToPosition(0);
                        if (nVRecyclerViewFragment.getVideoListDelegate() != null) {
                            nVRecyclerViewFragment.getVideoListDelegate().listViewFirstBecomeVisible();
                        }
                    }
                }
            }
        }
        if (i == getRealPositionOfIndex(0) && (getFragmentAtIndex(i) instanceof DiscoverTabFragment)) {
            setBottomTabOverlay(((DiscoverTabFragment) getFragmentAtIndex(i)).isBottomOverlay());
        } else {
            setBottomTabOverlay(false);
        }
        if (getCurIndex() != i && i == getRealPositionOfIndex(3) && (getFragmentAtIndex(i) instanceof GlobalProfileFragment)) {
            this.accountService.forceUpdateRecentVisitorCount();
        }
    }

    @Override // com.narvii.language.LanguageChangeListener
    public void onLanguageChanged(String str) throws Resources.NotFoundException {
        if (!isAdded() || getActivity() == null || getActivity().isFinishing()) {
            return;
        }
        updateContentLanguage();
        resetAdapter(getRealPositionOfIndex(getCurIndex()));
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public Drawable tabLayoutBackground() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.app.NVScrollableTabFragment, com.narvii.app.NVBaseScrollableTabFragment
    protected NVScrollablePagerAdapter createAdapter() {
        NVScrollablePagerAdapter nVScrollablePagerAdapterCreateAdapter = super.createAdapter();
        NVPagerTabLayout nVPagerTabLayout = this.scrollableTabLayout;
        if (nVPagerTabLayout != null) {
            nVPagerTabLayout.setVisibility(nVScrollablePagerAdapterCreateAdapter.getCount() > 1 ? 0 : 8);
        }
        MasterBottomBar masterBottomBar = this.masterBottomBar;
        if (masterBottomBar != null) {
            masterBottomBar.setVisibility(nVScrollablePagerAdapterCreateAdapter.getCount() <= 1 ? 8 : 0);
        }
        return nVScrollablePagerAdapterCreateAdapter;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected String getTabLabel(int i) {
        if (isStandaloneApp()) {
            if (i == 0) {
                return getString(R.string.discover);
            }
            return null;
        }
        if (i == 0) {
            return getString(R.string.discover);
        }
        if (i == 1) {
            if (this.eventLogProfileService.isShowMyCommunityTab()) {
                return getString(R.string.communities);
            }
            return null;
        }
        if (i == 2) {
            return getString(R.string.chats);
        }
        if (i == 3) {
            return getString(R.string.me);
        }
        return null;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Class<? extends NVFragment> getFragment(int i) {
        if (isStandaloneApp()) {
            if (i == 0) {
                return ExplorerCommunityListFragment.class;
            }
            return null;
        }
        if (i == 0) {
            return DiscoverTabFragment.class;
        }
        if (i == 1) {
            return MyAminosFragment.class;
        }
        if (i == 2) {
            return AggregationChatFragment.class;
        }
        if (i != 3) {
            return null;
        }
        return GlobalProfileFragment.class;
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultTabIndex() {
        Integer num = this.defaultIndex;
        if (num != null) {
            return getDefaultTabIndex(num.intValue());
        }
        if (isStandaloneApp()) {
            return getDefaultTabIndex(0);
        }
        return getDefaultTabIndex(0);
    }

    private int getDefaultTabIndex(int i) {
        int realPositionOfIndex = getRealPositionOfIndex(i);
        if (Utils.isRtl()) {
            if (realPositionOfIndex == -1) {
                return -1;
            }
            NVScrollablePagerAdapter nVScrollablePagerAdapter = this.mPagerAdapter;
            if (nVScrollablePagerAdapter != null && nVScrollablePagerAdapter.getCount() > 0) {
                return (this.mPagerAdapter.getCount() - 1) - realPositionOfIndex;
            }
        }
        return realPositionOfIndex;
    }

    private boolean isStandaloneApp() {
        return NVApplication.CLIENT_TYPE == 101;
    }

    public void addMasterThemeChangedListener(MasterAppearanceChangedListener masterAppearanceChangedListener) {
        this.masterThemeChangedListener.addListener(masterAppearanceChangedListener);
    }

    public void removeMasterThemeChangeListener(MasterAppearanceChangedListener masterAppearanceChangedListener) {
        this.masterThemeChangedListener.removeListener(masterAppearanceChangedListener);
    }

    private void sendContentLanguageRequest() {
        final String strLanguageStoredInThisDevice = this.languageService.languageStoredInThisDevice();
        ((ApiService) getService("api")).exec(ApiRequest.builder().global().path("client-config/content-language-settings").param(IjkMediaMeta.IJKM_KEY_LANGUAGE, this.languageService.getRequestPrefLanguageWithLocalAsDefault()).build(), new ApiResponseListener<ContentLanguageSettingResponse>(ContentLanguageSettingResponse.class) { // from class: com.narvii.master.MasterTabFragment.4
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ContentLanguageSettingResponse contentLanguageSettingResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) contentLanguageSettingResponse);
                ContentLanguageSetting contentLanguageSetting = contentLanguageSettingResponse.contentLanguageSettings;
                if (contentLanguageSetting != null) {
                    String str = strLanguageStoredInThisDevice;
                    if (str != null && !Utils.isEquals(str, contentLanguageSetting.language)) {
                        MasterTabFragment.this.languageService.saveDeviceStoredLanguage(null);
                    }
                    MasterTabFragment.this.languageService.saveSuggestLanguage(contentLanguageSettingResponse.contentLanguageSettings.language);
                }
                MasterTabFragment.this.updateContentLanguage();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
            }
        });
    }

    private void sendGlobalConfigRequest() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().global().path("/community/configuration").build(), new ApiResponseListener<ConfigurationApiResponse>(ConfigurationApiResponse.class) { // from class: com.narvii.master.MasterTabFragment.5
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ConfigurationApiResponse configurationApiResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) configurationApiResponse);
                CommunityService communityService = (CommunityService) MasterTabFragment.this.getService("community");
                Community community = new Community();
                community.id = 0;
                community.configuration = configurationApiResponse.configuration;
                communityService.updateCommunity(community, false, configurationApiResponse.timestamp);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
            }
        });
    }

    private void updateGlobalNoticeBadge() {
        IncubatorNoticeService incubatorNoticeService;
        View view = this.alertBadge;
        if (view == null || (incubatorNoticeService = this.noticeService) == null) {
            return;
        }
        view.setVisibility(!incubatorNoticeService.hasReminder() ? 4 : 0);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        MasterBottomBar masterBottomBar;
        if (isAdded()) {
            Object obj = notification.obj;
            if ((obj instanceof User) && Utils.isEqualsNotNull(((User) obj).uid(), this.accountService.getUserId()) && "update".equals(notification.action) && (masterBottomBar = this.masterBottomBar) != null) {
                masterBottomBar.setUser((User) notification.obj);
            }
        }
    }

    public View getMasterTabTopOffset() {
        return this.masterTabTopOffset;
    }

    public void gotoDefaultTab() throws Resources.NotFoundException {
        this.defaultIndex = getDefaultLandingIndex();
        setTabIndex(defaultTabIndex());
    }

    public MasterTopBar getMasterTopBar() {
        return this.masterTopBar;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        for (ComponentCallbacks componentCallbacks : getActivity().getSupportFragmentManager().getFragments()) {
            if ((componentCallbacks instanceof FragmentOnBackListener) && componentCallbacks != this && ((FragmentOnBackListener) componentCallbacks).onBackPressed((NVActivity) getActivity())) {
                return true;
            }
        }
        if (getCurrentFragment() instanceof FragmentOnBackListener) {
            return ((FragmentOnBackListener) getCurrentFragment()).onBackPressed(nVActivity);
        }
        return false;
    }

    public void updateTopbar() throws Resources.NotFoundException {
        if (this.masterTabTopOffset != null && (getCurrentFragment() instanceof MasterTopBarAvailable)) {
            this.isTopBarAvailable = ((MasterTopBarAvailable) getCurrentFragment()).isTopBarAvailable();
            if (this.isTopBarAvailable) {
                ViewUtils.fadeIn(this.masterTabTopOffset, 300);
                return;
            } else {
                ViewUtils.fadeOut(this.masterTabTopOffset, 300);
                return;
            }
        }
        ViewUtils.visible(this.masterTabTopOffset, true);
    }

    public void setBottomTabOverlay(boolean z) {
        MasterBottomBar masterBottomBar = this.masterBottomBar;
        if (masterBottomBar != null) {
            masterBottomBar.setBackgroundColor(ContextCompat.getColor(getContext(), z ? R.color.story_bottom_bar : R.color.master_bottom_bar));
        }
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i) {
        MasterBottomBar masterBottomBar = this.masterBottomBar;
        if (masterBottomBar != null) {
            masterBottomBar.setUnreadChatMessage(this.chatService.getAllUnreadThreadCount() > 0);
        }
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected View getTabView(String str, Drawable drawable) {
        TextView textView = new TextView(getContext());
        textView.setText(str);
        return textView;
    }

    @Override // com.narvii.services.incubator.IncubatorNoticeService.HasReminderChangeListener
    public void onHasReminderChanged(boolean z) {
        updateGlobalNoticeBadge();
    }
}
