package com.narvii.master.widget;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.ComScoreSectionDispatcher;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.chat.global.GlobalChatsFragment;
import com.narvii.services.EventLogProfileService;
import com.narvii.util.ToolTipHelper;
import com.narvii.util.Utils;
import com.narvii.util.kotlin.NVExtensionKt;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.z;

/* JADX INFO: loaded from: classes8.dex */
public final class MasterBottomBar extends LinearLayout {

    @NotNull
    private final z<Integer, Integer, Integer> chatConf;

    @NotNull
    private final z<Integer, Integer, Integer> chatUnreadConf;

    @NotNull
    private final m chatView$delegate;

    @NotNull
    private final z<Integer, Integer, Integer> communityConf;

    @NotNull
    private final m communityView$delegate;

    @Nullable
    private View.OnClickListener composePreClickListener;

    @NotNull
    private final z<Integer, Integer, Integer> discoverConf;

    @NotNull
    private final m discoverView$delegate;

    @NotNull
    private final m eventLogProfileService$delegate;
    private int lastPos;

    @NotNull
    private final m profileImage$delegate;
    private boolean showLiveTooltipExpired;

    @NotNull
    private final z<Integer, Integer, Integer> storeBadgedConf;

    @NotNull
    private final z<Integer, Integer, Integer> storeConf;

    @NotNull
    private final m storeView$delegate;

    @Nullable
    private TabSelectListener tabSelectListener;

    @NotNull
    private ToolTipHelper toolTipHelper;

    public interface TabSelectListener {
        void onTabSelected(int i10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MasterBottomBar(@NotNull Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        t.j(context, "context");
    }

    private final void configTabs() {
        setOnClickListener(null);
        getDiscoverView().configTabItem(this.discoverConf);
        getDiscoverView().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.widget.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MasterBottomBar.configTabs$lambda$0(this.f2435a, view);
            }
        });
        getCommunityView().configTabItem(this.communityConf);
        getCommunityView().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.widget.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MasterBottomBar.configTabs$lambda$1(this.f2436a, view);
            }
        });
        getChatView().configTabItem(this.chatConf);
        getChatView().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.widget.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MasterBottomBar.configTabs$lambda$2(this.f2437a, view);
            }
        });
        getStoreView().configTabItem(this.storeConf);
        getStoreView().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.widget.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MasterBottomBar.configTabs$lambda$3(this.f2438a, view);
            }
        });
        checkGoLiveAndCommunityVisibility();
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Nullable
    public final View.OnClickListener getComposePreClickListener() {
        return this.composePreClickListener;
    }

    public final boolean getShowLiveTooltipExpired() {
        return this.showLiveTooltipExpired;
    }

    @Nullable
    public final TabSelectListener getTabSelectListener() {
        return this.tabSelectListener;
    }

    public final void setComposePreClickListener(@Nullable View.OnClickListener onClickListener) {
        this.composePreClickListener = onClickListener;
    }

    public final void setShowLiveTooltipExpired(boolean z6) {
        this.showLiveTooltipExpired = z6;
    }

    public final void setTabSelectListener(@Nullable TabSelectListener tabSelectListener) {
        this.tabSelectListener = tabSelectListener;
    }

    public /* synthetic */ MasterBottomBar(Context context, AttributeSet attributeSet, int i10, k kVar) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void configTabs$lambda$0(MasterBottomBar this$0, View view) {
        t.j(this$0, "this$0");
        this$0.sendEvent(EventConstants.GlobalNavigation.DISCOVER);
        ComScoreSectionDispatcher.INSTANCE.sectionChangeToExplore();
        TabSelectListener tabSelectListener = this$0.tabSelectListener;
        if (tabSelectListener != null) {
            tabSelectListener.onTabSelected(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void configTabs$lambda$1(MasterBottomBar this$0, View view) {
        t.j(this$0, "this$0");
        this$0.sendEvent(EventConstants.GlobalNavigation.MY_COMMUNITIES);
        ComScoreSectionDispatcher.INSTANCE.sectionChangeToCommunity();
        TabSelectListener tabSelectListener = this$0.tabSelectListener;
        if (tabSelectListener != null) {
            tabSelectListener.onTabSelected(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void configTabs$lambda$2(MasterBottomBar this$0, View view) {
        t.j(this$0, "this$0");
        this$0.sendEvent(EventConstants.GlobalNavigation.CHAT_HUB);
        ComScoreSectionDispatcher.INSTANCE.sectionChangeToChat();
        if (!this$0.isUserLoggedIn()) {
            this$0.openGlobalChats();
            return;
        }
        TabSelectListener tabSelectListener = this$0.tabSelectListener;
        if (tabSelectListener != null) {
            tabSelectListener.onTabSelected(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void configTabs$lambda$3(MasterBottomBar this$0, View view) {
        t.j(this$0, "this$0");
        this$0.sendEvent(EventConstants.GlobalNavigation.STORE);
        ComScoreSectionDispatcher.INSTANCE.sectionChangeToNone();
        TabSelectListener tabSelectListener = this$0.tabSelectListener;
        if (tabSelectListener != null) {
            tabSelectListener.onTabSelected(3);
        }
    }

    private final MasterBottomItemView getChatView() {
        return (MasterBottomItemView) this.chatView$delegate.getValue();
    }

    private final MasterBottomItemView getCommunityView() {
        return (MasterBottomItemView) this.communityView$delegate.getValue();
    }

    private final MasterBottomItemView getDiscoverView() {
        return (MasterBottomItemView) this.discoverView$delegate.getValue();
    }

    private final EventLogProfileService getEventLogProfileService() {
        return (EventLogProfileService) this.eventLogProfileService$delegate.getValue();
    }

    private final UserAvatarLayout getProfileImage() {
        return (UserAvatarLayout) this.profileImage$delegate.getValue();
    }

    private final MasterBottomItemView getStoreView() {
        return (MasterBottomItemView) this.storeView$delegate.getValue();
    }

    private final void openGlobalChats() {
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), FragmentWrapperActivity.intent(GlobalChatsFragment.class));
    }

    @Nullable
    public final MasterBottomItemView getItemViewByPos(int i10) {
        if (i10 == 0) {
            return getDiscoverView();
        }
        if (i10 == 1) {
            EventLogProfileService eventLogProfileService = getEventLogProfileService();
            return (eventLogProfileService == null || !eventLogProfileService.isShowMyCommunityTab()) ? getDiscoverView() : getCommunityView();
        }
        if (i10 == 2) {
            return getChatView();
        }
        if (i10 != 3) {
            return null;
        }
        return getStoreView();
    }

    public final void sectionChange() {
        int i10 = this.lastPos;
        if (i10 == -1 || i10 == 0) {
            ComScoreSectionDispatcher.INSTANCE.sectionChangeToExplore();
            return;
        }
        if (i10 == 1) {
            ComScoreSectionDispatcher.INSTANCE.sectionChangeToCommunity();
            return;
        }
        if (i10 == 2) {
            ComScoreSectionDispatcher.INSTANCE.sectionChangeToChat();
        } else if (i10 == 3) {
            ComScoreSectionDispatcher.INSTANCE.sectionChangeToNone();
        } else {
            if (i10 != 4) {
                return;
            }
            ComScoreSectionDispatcher.INSTANCE.sectionChangeToNone();
        }
    }

    public final void updateTabBottomLayout(int i10) {
        int i11 = this.lastPos;
        if (i11 == -1) {
            MasterBottomItemView itemViewByPos = getItemViewByPos(i10);
            if (itemViewByPos != null) {
                itemViewByPos.setItemSelected();
            }
        } else {
            MasterBottomItemView itemViewByPos2 = getItemViewByPos(i11);
            if (itemViewByPos2 != null) {
                itemViewByPos2.animationItemUnSelected();
            }
            MasterBottomItemView itemViewByPos3 = getItemViewByPos(i10);
            if (itemViewByPos3 != null) {
                itemViewByPos3.animationItemSelected();
            }
        }
        this.lastPos = i10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MasterBottomBar(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        this.discoverConf = new z<>(Integer.valueOf(R.drawable.ic_default_discover), Integer.valueOf(R.drawable.ic_active_discover), Integer.valueOf(R.string.discover));
        this.communityConf = new z<>(Integer.valueOf(R.drawable.ic_home_bg), Integer.valueOf(R.drawable.ic_home_selected_bg), Integer.valueOf(R.string.communities));
        Integer numValueOf = Integer.valueOf(R.drawable.ic_global_chats_bg);
        Integer numValueOf2 = Integer.valueOf(R.drawable.ic_global_chats_selected_bg);
        Integer numValueOf3 = Integer.valueOf(R.string.chats);
        this.chatConf = new z<>(numValueOf, numValueOf2, numValueOf3);
        Integer numValueOf4 = Integer.valueOf(R.drawable.ic_global_store_bg);
        Integer numValueOf5 = Integer.valueOf(R.drawable.ic_global_store_selected_bg);
        Integer numValueOf6 = Integer.valueOf(R.string.store);
        this.storeConf = new z<>(numValueOf4, numValueOf5, numValueOf6);
        this.storeBadgedConf = new z<>(Integer.valueOf(R.drawable.ic_global_store_badged_bg), Integer.valueOf(R.drawable.ic_global_store_badged_selected_bg), numValueOf6);
        this.chatUnreadConf = new z<>(Integer.valueOf(R.drawable.ic_global_chat_unread), Integer.valueOf(R.drawable.ic_global_chat_unread_selected), numValueOf3);
        this.discoverView$delegate = NVExtensionKt.bind(this, R.id.tab_discover);
        this.communityView$delegate = NVExtensionKt.bind(this, R.id.tab_community);
        this.chatView$delegate = NVExtensionKt.bind(this, R.id.tab_chat);
        this.storeView$delegate = NVExtensionKt.bind(this, R.id.tab_store);
        this.profileImage$delegate = NVExtensionKt.bind(this, R.id.me_icon);
        this.lastPos = -1;
        this.eventLogProfileService$delegate = o.a(new MasterBottomBar$eventLogProfileService$2(context));
        View.inflate(context, R.layout.master_bottom_bar, this);
        this.toolTipHelper = new ToolTipHelper();
    }

    private final boolean isUserLoggedIn() {
        return ((AccountService) Utils.getNVContext(getContext()).getService("account")).hasAccount();
    }

    private final void sendEvent(String str) {
        Object service = Utils.getNVContext(getContext()).getService("statistics");
        t.i(service, "getService(...)");
        FirebaseLogManager.logEvent(Utils.getNVContext(getContext()), ((StatisticsService) service).event(EventConstants.GlobalNavigation.NAV_CLICK_GLOBAL).param(EventConstants.GlobalNavigation.GLOBAL_NAV_BUTTON, str));
    }

    private final void setCommunityTabVisibility() {
        int i10;
        EventLogProfileService eventLogProfileService = getEventLogProfileService();
        if (eventLogProfileService != null) {
            eventLogProfileService.resetShowCommunityTab();
        }
        MasterBottomItemView communityView = getCommunityView();
        EventLogProfileService eventLogProfileService2 = getEventLogProfileService();
        if (eventLogProfileService2 != null && eventLogProfileService2.isShowMyCommunityTab() && isUserLoggedIn()) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        communityView.setVisibility(i10);
    }

    public final void checkGoLiveAndCommunityVisibility() {
        setCommunityTabVisibility();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        configTabs();
    }

    public final void removeStoreBadged() {
        getStoreView().configTabItem(this.storeConf);
    }

    public final void setStoreBadged() {
        getStoreView().configTabItem(this.storeBadgedConf);
    }

    public final void setUnreadChatMessage(boolean z6) {
        z<Integer, Integer, Integer> zVar;
        MasterBottomItemView chatView = getChatView();
        if (z6) {
            zVar = this.chatUnreadConf;
        } else {
            zVar = this.chatConf;
        }
        chatView.configTabItem(zVar);
    }
}
