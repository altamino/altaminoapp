package com.narvii.master;

import android.app.ActivityOptions;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCaller;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.master.R;
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
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.incubator.ContentLanguagePickHelper;
import com.narvii.language.ContentLanguageService;
import com.narvii.language.LanguageChangeListener;
import com.narvii.language.LanguageManager;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.home.MyAminosFragment;
import com.narvii.master.home.discover.DiscoverTabFragment;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.master.home.profile.GlobalProfileHelper;
import com.narvii.master.search.GlobalSearchTabFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.master.setting.ContentLanguageSetting;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.master.widget.MasterBottomBar;
import com.narvii.model.Community;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.page.Page;
import com.narvii.monetization.store.MonetizationStoreMainFragment;
import com.narvii.notice.AggregationNoticeFragment;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.paging.NVRecyclerViewFragment;
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
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;
import com.safedk.android.utils.Logger;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public class MasterTabFragment extends NVScrollableTabFragment implements LanguageChangeListener, NotificationListener, View.OnClickListener, FragmentOnBackListener, ChatService.ChatMessageReceptor, IncubatorNoticeService.HasReminderChangeListener, MasterBottomBar.TabSelectListener {
    public static final int INDEX_CHAT = 2;
    public static final int INDEX_DISCOVER = 0;
    public static final int INDEX_MY_COMMUNITY = 1;
    public static final int INDEX_PROFILE = 4;
    public static final int INDEX_STORE = 3;
    public static final int INITIAL_INDEX = -1;
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
    View.OnClickListener languagePickListener = new View.OnClickListener() { // from class: com.narvii.master.t
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f2426a.lambda$new$3(view);
        }
    };
    ViewPager.OnPageChangeListener pageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.narvii.master.MasterTabFragment.2
        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i10, float f, int i11) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(final int i10) {
            if (MasterTabFragment.this.isResumed()) {
                MasterTabFragment.this.statisticsEvent(i10);
            }
            MasterTabFragment masterTabFragment = MasterTabFragment.this;
            MasterBottomBar masterBottomBar = masterTabFragment.masterBottomBar;
            if (masterBottomBar != null) {
                masterBottomBar.updateTabBottomLayout(masterTabFragment.getIndexOfRealPosition(i10));
            }
            Utils.post(new Runnable() { // from class: com.narvii.master.MasterTabFragment.2.1
                @Override // java.lang.Runnable
                public void run() {
                    ActivityResultCaller fragmentAtIndex = MasterTabFragment.this.getFragmentAtIndex(i10);
                    if (fragmentAtIndex instanceof MasterTopOffsetAdapter) {
                        ((MasterTopOffsetAdapter) fragmentAtIndex).resetOffset();
                    }
                    if (fragmentAtIndex == null) {
                        MasterTabFragment masterTabFragment2 = MasterTabFragment.this;
                        masterTabFragment2.isTopBarAvailable = i10 != masterTabFragment2.getRealPositionOfIndex(4);
                    } else if (fragmentAtIndex instanceof MasterTopBarAvailable) {
                        MasterTabFragment.this.isTopBarAvailable = ((MasterTopBarAvailable) fragmentAtIndex).isTopBarAvailable();
                    }
                    MasterTabFragment.this.masterTabTopOffset.setVisibility(MasterTabFragment.this.isTopBarAvailable ? 0 : 8);
                }
            });
        }
    };

    /* JADX INFO: renamed from: com.narvii.master.MasterTabFragment$1, reason: invalid class name */
    class AnonymousClass1 extends BroadcastReceiver {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceive$0(int i10) {
            MasterTabFragment.this.setCurrentItem(i10);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z6;
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                MasterTabFragment.this.prefsHelper.saveLandingPos(null);
                final int curIndex = MasterTabFragment.this.getCurIndex();
                Utils.post(new Runnable() { // from class: com.narvii.master.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f2431a.lambda$onReceive$0(curIndex);
                    }
                });
                if (!MasterTabFragment.this.accountService.hasAccount()) {
                    MasterTabFragment masterTabFragment = MasterTabFragment.this;
                    MasterBottomBar masterBottomBar = masterTabFragment.masterBottomBar;
                    if (masterTabFragment.chatService.getAllUnreadThreadCount() > 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    masterBottomBar.setUnreadChatMessage(z6);
                }
            }
            if (MembershipService.ACTION_MEMBERSHIP_CHANGED == intent.getAction() || MembershipService.ACTION_WALLET_CHANGED == intent.getAction() || MembershipService.ACTION_COUPONS_CHANGED == intent.getAction()) {
                MasterTabFragment.this.masterTopBar.refreshBalance();
            }
        }
    }

    public static void safedk_Context_startActivity_0c4df6808b5c0cfc92f23c850e40a674(Context p0, Intent p1, Bundle p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1, p5);
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultOffScreenPage() {
        return 3;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Class<? extends NVFragment> getFragment(int i10) {
        if (i10 == 0) {
            return DiscoverTabFragment.class;
        }
        if (i10 == 1) {
            return MyAminosFragment.class;
        }
        if (i10 == 2) {
            return AggregationChatFragment.class;
        }
        if (i10 == 3) {
            return MonetizationStoreMainFragment.class;
        }
        if (i10 != 4) {
            return null;
        }
        return GlobalProfileFragment.class;
    }

    public View getMasterTabTopOffset() {
        return this.masterTabTopOffset;
    }

    public MasterTopBar getMasterTopBar() {
        return this.masterTopBar;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return Page.HOME;
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    protected boolean isScrollable() {
        return true;
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i10, @NotNull ChatMessageDto chatMessageDto) {
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    private Integer getDefaultLandingIndex() {
        int landingPos = this.prefsHelper.getLandingPos();
        if (landingPos == 3) {
            return 2;
        }
        if (landingPos == 1) {
            return Integer.valueOf(this.eventLogProfileService.isShowMyCommunityTab() ? 1 : 0);
        }
        return landingPos == 4 ? 0 : 0;
    }

    private int getMyCommunityIndex() {
        return this.eventLogProfileService.isShowMyCommunityTab() ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        new ContentLanguagePickHelper().showLanguagePickerDialog((NVActivity) getActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ l0 lambda$onViewCreated$1(ImageView imageView, View view, final Integer num) {
        this.masterThemeChangedListener.dispatch(new Callback() { // from class: com.narvii.master.q
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                MasterTabFragment.lambda$onViewCreated$0(num, (MasterAppearanceChangedListener) obj);
            }
        });
        if (PaletteUtils.isLightTone(imageView)) {
            view.setVisibility(0);
            return null;
        }
        view.setVisibility(8);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$2(View view) {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("ComposeIcon").send();
    }

    private void logNavigationToProfileEvent() {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("ProfileIcon").send();
        sendEvent(EventConstants.GlobalNavigation.GLOBAL_PROFILE);
    }

    private void openLogin() {
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, new Intent(getActivity(), (Class<?>) LoginActivity.class));
    }

    private void sendContentLanguageRequest() {
        final String strLanguageStoredInThisDevice = this.languageService.languageStoredInThisDevice();
        ((ApiService) getService("api")).exec(ApiRequest.builder().global().path("client-config/content-language-settings").param("language", this.languageService.getRequestPrefLanguageWithLocalAsDefault()).build(), new ApiResponseListener<ContentLanguageSettingResponse>(ContentLanguageSettingResponse.class) { // from class: com.narvii.master.MasterTabFragment.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ContentLanguageSettingResponse contentLanguageSettingResponse) throws Exception {
                super.onFinish(apiRequest, contentLanguageSettingResponse);
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
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
            }
        });
    }

    private void sendEvent(String str) {
        FirebaseLogManager.logEvent(this, ((StatisticsService) getService("statistics")).event(EventConstants.GlobalNavigation.NAV_CLICK_GLOBAL).param(EventConstants.GlobalNavigation.GLOBAL_NAV_BUTTON, str));
    }

    private void sendGlobalProfileRequest() {
        if (this.accountService.hasAccount()) {
            new GlobalProfileHelper(this, "").sendGlobalProfileRequest(this.accountService.getUserId(), null, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void statisticsEvent(int i10) {
        StatisticsService statisticsService = (StatisticsService) getService("statistics");
        if (i10 == getRealPositionOfIndex(2)) {
            statisticsService.event("Global Chats Tab Opened").userPropInc("Global Chats Tab Opened Total");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateContentLanguage() {
        if (this.masterTopBar != null) {
            this.masterTopBar.setContentLanguage(this.languageService.getRequestPrefLanguageWithEnAsDefault());
        }
    }

    private void updateGlobalNoticeBadge() {
        IncubatorNoticeService incubatorNoticeService;
        View view = this.alertBadge;
        if (view == null || (incubatorNoticeService = this.noticeService) == null) {
            return;
        }
        view.setVisibility(!incubatorNoticeService.hasReminder() ? 4 : 0);
    }

    public void addMasterThemeChangedListener(MasterAppearanceChangedListener masterAppearanceChangedListener) {
        this.masterThemeChangedListener.addListener(masterAppearanceChangedListener);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultTabIndex() {
        Integer num = this.defaultIndex;
        return num != null ? getDefaultTabIndex(num.intValue()) : getDefaultTabIndex(0);
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected String getTabLabel(int i10) {
        if (i10 == 0) {
            return getString(R.string.discover);
        }
        if (i10 == 1) {
            if (this.eventLogProfileService.isShowMyCommunityTab()) {
                return getString(R.string.communities);
            }
            return null;
        }
        if (i10 == 2) {
            return getString(R.string.chats);
        }
        if (i10 == 4) {
            return getString(R.string.me);
        }
        if (i10 == 3) {
            return getString(R.string.store);
        }
        return null;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected View getTabView(String str, Drawable drawable) {
        TextView textView = new TextView(getContext());
        textView.setText(str);
        return textView;
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i10) {
        MasterBottomBar masterBottomBar = this.masterBottomBar;
        if (masterBottomBar != null) {
            masterBottomBar.setUnreadChatMessage(this.chatService.getAllUnreadThreadCount() > 0);
        }
    }

    protected void openGlobalProfile() {
        Intent intent = FragmentWrapperActivity.intent(GlobalProfileFragment.class);
        intent.putExtra("id", this.accountService.getUserId());
        intent.putExtra(GlobalProfileFragment.KEY_SHOW_SETTING, true);
        intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(this.accountService.getUserProfile()));
        if (this.avatarLayout == null || getActivity() == null) {
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        } else {
            safedk_Context_startActivity_0c4df6808b5c0cfc92f23c850e40a674(getActivity(), intent, ActivityOptions.makeSceneTransitionAnimation(getActivity(), this.avatarLayout, "avatar").toBundle());
        }
    }

    public void removeMasterThemeChangeListener(MasterAppearanceChangedListener masterAppearanceChangedListener) {
        this.masterThemeChangedListener.removeListener(masterAppearanceChangedListener);
    }

    public void removeStoreBadged() {
        this.masterBottomBar.removeStoreBadged();
    }

    public void setBottomTabOverlay(boolean z6) {
        MasterBottomBar masterBottomBar = this.masterBottomBar;
        if (masterBottomBar != null) {
            masterBottomBar.setBackgroundColor(ContextCompat.getColor(getContext(), z6 ? R.color.story_bottom_bar : R.color.master_bottom_bar));
        }
    }

    public void setStoreBadged() {
        this.masterBottomBar.setStoreBadged();
    }

    public void setTopBarElementsVisibility(int i10, boolean z6) {
        this.masterTopBar.setTopBarElementsVisibility(i10, z6);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public Drawable tabLayoutBackground() {
        return new ColorDrawable(0);
    }

    public void updateTopbar() {
        if (this.masterTabTopOffset == null || !(getCurrentFragment() instanceof MasterTopBarAvailable)) {
            ViewUtils.visible(this.masterTabTopOffset, true);
            return;
        }
        boolean zIsTopBarAvailable = ((MasterTopBarAvailable) getCurrentFragment()).isTopBarAvailable();
        this.isTopBarAvailable = zIsTopBarAvailable;
        if (zIsTopBarAvailable) {
            ViewUtils.fadeIn(this.masterTabTopOffset, 300);
        } else {
            ViewUtils.fadeOut(this.masterTabTopOffset, 300);
        }
    }

    private int getDefaultTabIndex(int i10) {
        int realPositionOfIndex = getRealPositionOfIndex(i10);
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

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onViewCreated$0(Integer num, MasterAppearanceChangedListener masterAppearanceChangedListener) {
        masterAppearanceChangedListener.onMasterAppearanceChanged(num.intValue());
    }

    private void onTabClicked(int i10) {
        if (getCurIndex() == i10 && i10 == getRealPositionOfIndex(0) && (getFragmentAtIndex(i10) instanceof DiscoverTabFragment)) {
            DiscoverTabFragment discoverTabFragment = (DiscoverTabFragment) getFragmentAtIndex(i10);
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
        if (i10 == getRealPositionOfIndex(0) && (getFragmentAtIndex(i10) instanceof DiscoverTabFragment)) {
            setBottomTabOverlay(((DiscoverTabFragment) getFragmentAtIndex(i10)).isBottomOverlay());
        } else {
            setBottomTabOverlay(false);
        }
        if (i10 == getRealPositionOfIndex(4) && (getFragmentAtIndex(i10) instanceof GlobalProfileFragment)) {
            ((GlobalProfileFragment) getFragmentAtIndex(i10)).tryOpenSetBirthday();
        }
        AccountService accountService = (AccountService) getService("account");
        if (i10 == getRealPositionOfIndex(3)) {
            setTopBarElementsVisibility(8, accountService.hasAccount());
        } else {
            setTopBarElementsVisibility(0, accountService.hasAccount());
        }
        if (i10 == getRealPositionOfIndex(3)) {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.path("/store/sections");
            ((ApiService) getService("api")).exec(builder.build(), null);
            removeStoreBadged();
        }
    }

    private void sendGlobalConfigRequest() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().global().path("/community/configuration").build(), new ApiResponseListener<ConfigurationApiResponse>(ConfigurationApiResponse.class) { // from class: com.narvii.master.MasterTabFragment.4
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ConfigurationApiResponse configurationApiResponse) throws Exception {
                super.onFinish(apiRequest, configurationApiResponse);
                CommunityService communityService = (CommunityService) MasterTabFragment.this.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
                Community community = new Community();
                community.id = 0;
                community.configuration = configurationApiResponse.configuration;
                communityService.updateCommunity(community, false, configurationApiResponse.timestamp);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
            }
        });
    }

    @Override // com.narvii.app.NVScrollableTabFragment, com.narvii.app.NVBaseScrollableTabFragment
    protected NVScrollablePagerAdapter createAdapter() {
        int i10;
        NVScrollablePagerAdapter nVScrollablePagerAdapterCreateAdapter = super.createAdapter();
        NVPagerTabLayout nVPagerTabLayout = this.scrollableTabLayout;
        int i11 = 8;
        if (nVPagerTabLayout != null) {
            if (nVScrollablePagerAdapterCreateAdapter.getCount() > 1) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            nVPagerTabLayout.setVisibility(i10);
        }
        MasterBottomBar masterBottomBar = this.masterBottomBar;
        if (masterBottomBar != null) {
            if (nVScrollablePagerAdapterCreateAdapter.getCount() > 1) {
                i11 = 0;
            }
            masterBottomBar.setVisibility(i11);
        }
        return nVScrollablePagerAdapterCreateAdapter;
    }

    public void gotoDefaultTab() {
        this.defaultIndex = getDefaultLandingIndex();
        setTabIndex(defaultTabIndex());
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        IncubatorNoticeService incubatorNoticeService = this.noticeService;
        if (incubatorNoticeService != null) {
            incubatorNoticeService.setActive(z6);
            if (z6) {
                this.noticeService.refresh(false);
            }
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
        this.masterBottomBar.setShowLiveTooltipExpired(false);
        for (ActivityResultCaller activityResultCaller : supportFragmentManager.B0()) {
            if ((activityResultCaller instanceof FragmentOnBackListener) && activityResultCaller != this && ((FragmentOnBackListener) activityResultCaller).onBackPressed((NVActivity) getActivity())) {
                return true;
            }
        }
        if (!(getCurrentFragment() instanceof FragmentOnBackListener)) {
            return false;
        }
        return ((FragmentOnBackListener) getCurrentFragment()).onBackPressed(nVActivity);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        int id = view.getId();
        if (id == R.id.alert) {
            sendEvent(EventConstants.GlobalNavigation.NOTIFICATIONS);
            LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("AlertIcon").send();
            Intent intent = FragmentWrapperActivity.intent(AggregationNoticeFragment.class);
            intent.putExtra("forceRefreshReminder", true);
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
            return;
        }
        if (id == R.id.me_icon) {
            logNavigationToProfileEvent();
            if (this.accountService.hasAccount()) {
                openGlobalProfile();
                return;
            } else {
                openLogin();
                return;
            }
        }
        if (id == R.id.user_avatar_layout) {
            LogEvent.clickBuilder(this, ActSemantic.checkDetail).object(this.accountService.getUserProfile()).area("UserIcon").send();
            openGlobalProfile();
            return;
        }
        if (id == R.id.search_layout_with_shadow) {
            LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("GlobalSearch").send();
            new MasterThemeHelper(this).saveDynamicThemeBg(getActivity());
            Intent intent2 = FragmentWrapperActivity.intent(GlobalSearchTabFragment.class);
            if (getCurIndex() == 2) {
                str = "Global Chats";
            } else {
                str = "My Community List";
            }
            int realPositionOfIndex = getRealPositionOfIndex(getCurIndex());
            if (realPositionOfIndex != 1) {
                if (realPositionOfIndex == 2) {
                    intent2.putExtra("tab", "chat");
                }
            } else {
                intent2.putExtra("tab", SearchPrefsHelper.PREFS_KEY_COMMUNITY);
            }
            intent2.putExtra(ExternalPostPreviewFragment.SOURCE, str);
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent2);
            getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ContentLanguageService contentLanguageService = (ContentLanguageService) getService("content_language");
        this.languageService = contentLanguageService;
        contentLanguageService.registerLanguageChangeListener(this);
        ChatService chatService = (ChatService) getService("chat");
        this.chatService = chatService;
        chatService.addGlobalChatMessageReceptor(this);
        this.accountService = (AccountService) getService("account");
        MembershipService membershipService = (MembershipService) getService("membership");
        this.membershipService = membershipService;
        membershipService.refresh(true);
        this.languageManager = (LanguageManager) getService("language");
        this.eventLogProfileService = (EventLogProfileService) getService("eventLogProfile");
        IncubatorNoticeService incubatorNoticeService = (IncubatorNoticeService) getService("_notice");
        this.noticeService = incubatorNoticeService;
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
        } else if (EventConstants.GlobalNavigation.DISCOVER.equals(stringParam)) {
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

    @Override // com.narvii.app.NVBaseScrollableTabFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.incubator_tab_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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
        if (NVApplication.CLIENT_TYPE == 100) {
            unregisterLocalReceiver(this.receiver);
        }
        this.chatService.removeGlobalChatMessageReceptor(this);
    }

    @Override // com.narvii.services.incubator.IncubatorNoticeService.HasReminderChangeListener
    public void onHasReminderChanged(boolean z6) {
        updateGlobalNoticeBadge();
    }

    @Override // com.narvii.language.LanguageChangeListener
    public void onLanguageChanged(String str) {
        if (isAdded() && getActivity() != null && !getActivity().isFinishing()) {
            updateContentLanguage();
            resetAdapter(getRealPositionOfIndex(getCurIndex()));
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        isAdded();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.masterBottomBar.sectionChange();
        updateGlobalNoticeBadge();
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("isTopBarAvailable", this.isTopBarAvailable);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.masterBottomBar.checkGoLiveAndCommunityVisibility();
        this.masterTopBar.setUser(this.accountService.getUserProfile());
        this.membershipService.refreshWallet(true);
        if (this.accountService.getUserId() != null) {
            this.masterTopBar.setWalletVisible();
        }
    }

    @Override // com.narvii.master.widget.MasterBottomBar.TabSelectListener
    public void onTabSelected(int i10) {
        selectTab(i10);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
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
        View viewFindViewById3 = view.findViewById(R.id.me_icon);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(this);
        }
        View viewFindViewById4 = view.findViewById(R.id.user_avatar_layout);
        if (viewFindViewById4 != null) {
            viewFindViewById4.setOnClickListener(this);
        }
        this.masterTabTopOffset = view.findViewById(R.id.master_tab_offset);
        this.masterTopBar = (MasterTopBar) view.findViewById(R.id.master_top_bar);
        this.avatarLayout = view.findViewById(R.id.user_avatar_layout);
        sendContentLanguageRequest();
        updateContentLanguage();
        this.masterTopBar.setContentLanguageClickListener(this.languagePickListener);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager).setOnBackgroundChangedCallback(new e8.q() { // from class: com.narvii.master.r
                @Override // e8.q
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return this.f2400a.lambda$onViewCreated$1((ImageView) obj, (View) obj2, (Integer) obj3);
                }
            });
        }
        if (bundle != null && (onPageChangeListener = this.pageChangeListener) != null) {
            onPageChangeListener.onPageSelected(getCurIndex());
        }
        FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.bottom_layout);
        this.bottomSheetLayout = frameLayout;
        int i10 = 0;
        BottomSheetBehavior.A(frameLayout).V(0);
        MasterBottomBar masterBottomBar = (MasterBottomBar) view.findViewById(R.id.master_bottom_bar);
        this.masterBottomBar = masterBottomBar;
        masterBottomBar.setComposePreClickListener(new View.OnClickListener() { // from class: com.narvii.master.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f2401a.lambda$onViewCreated$2(view2);
            }
        });
        this.masterBottomBar.updateTabBottomLayout(getRealPositionOfIndex(this.mViewPager.getCurrentItem()));
        MasterBottomBar masterBottomBar2 = this.masterBottomBar;
        if (getAdapter() == null || getAdapter().getCount() <= 1) {
            i10 = 8;
        }
        masterBottomBar2.setVisibility(i10);
        this.masterBottomBar.setTabSelectListener(this);
        this.chatService.refresh(true);
        updateTopbar();
        sendGlobalConfigRequest();
    }

    public void selectTab(int i10) {
        int realPositionOfIndex = getRealPositionOfIndex(i10);
        onTabClicked(realPositionOfIndex);
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager != null) {
            nVViewPager.setCurrentItem(realPositionOfIndex, true);
        }
    }
}
