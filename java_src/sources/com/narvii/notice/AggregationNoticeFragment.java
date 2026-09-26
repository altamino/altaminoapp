package com.narvii.notice;

import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.viewbinding.ViewBinding;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.account.AccountService;
import com.narvii.amino.databinding.AlertsLeftNavTopBinding;
import com.narvii.amino.databinding.FragmentAggrefationBaseBinding;
import com.narvii.amino.master.R;
import com.narvii.announcement.AnnouncementListFragment;
import com.narvii.app.ComScoreSectionDispatcher;
import com.narvii.app.NVFragment;
import com.narvii.community.AggregationBaseFragment;
import com.narvii.community.MyCommunityListService;
import com.narvii.community.ReminderCheck;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.services.incubator.IncubatorNoticeService;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.statistics.constants.EventConstants;
import java.util.HashSet;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes7.dex */
public final class AggregationNoticeFragment extends AggregationBaseFragment implements View.OnClickListener {
    private AlertsLeftNavTopBinding leftNavTopBinding;

    @NotNull
    private final HashSet<Integer> requestedSet = new HashSet<>();

    @NotNull
    private final m<FragmentAggrefationBaseBinding> baseBinding = o.a(new AggregationNoticeFragment$baseBinding$1(this));

    @NotNull
    private final AccountService.ProfileListener profileListener = new AccountService.ProfileListener() { // from class: com.narvii.notice.AggregationNoticeFragment$profileListener$1
        @Override // com.narvii.account.AccountService.ProfileListener
        public void onProfileChanged(int i10, @Nullable User user) {
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onNoticeCountChanged(int i10) {
            super.onNoticeCountChanged(i10);
            this.this$0.updateGlobalUnreadCount();
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onNotificationCountChanged(int i10) {
            super.onNotificationCountChanged(i10);
            this.this$0.updateGlobalUnreadCount();
        }
    };

    private final boolean isCommunityAlertsAllRead(int i10) {
        NVFragment nVFragment;
        if (i10 == 0) {
            nVFragment = getOtherFragments().get(0);
        } else {
            nVFragment = i10 > 0 ? getFragments().get(Integer.valueOf(i10)) : null;
        }
        return nVFragment != null && (nVFragment instanceof NoticeListFragment) && ((NoticeListFragment) nVFragment).isAlertAllRead();
    }

    @Override // com.narvii.community.AggregationBaseFragment
    public int getFallbackIndexWhenCurrentLeave(int i10) {
        return 0;
    }

    @Override // com.narvii.community.AggregationBaseFragment
    public int getLeftNavTopLayoutId() {
        return R.layout.alerts_left_nav_top;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return EventConstants.GlobalNavigation.NOTIFICATIONS;
    }

    @NotNull
    public final AccountService.ProfileListener getProfileListener() {
        return this.profileListener;
    }

    @Override // com.narvii.app.theme.NVThemeFragment, com.narvii.app.theme.NVThemeOwner
    public boolean isDarkNVTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateGlobalUnreadCount() {
        AccountService accountService = (AccountService) getService("account");
        int notificationCount = accountService.getNotificationCount(0);
        if (isCommunityAlertsAllRead(0)) {
            notificationCount = 0;
        }
        int noticeCount = notificationCount + accountService.getNoticeCount(0);
        AlertsLeftNavTopBinding alertsLeftNavTopBinding = this.leftNavTopBinding;
        AlertsLeftNavTopBinding alertsLeftNavTopBinding2 = null;
        if (alertsLeftNavTopBinding == null) {
            t.B("leftNavTopBinding");
            alertsLeftNavTopBinding = null;
        }
        alertsLeftNavTopBinding.globalLayout.globalNotificationCount.setText(noticeCount > 9 ? "9+" : String.valueOf(noticeCount));
        AlertsLeftNavTopBinding alertsLeftNavTopBinding3 = this.leftNavTopBinding;
        if (alertsLeftNavTopBinding3 == null) {
            t.B("leftNavTopBinding");
        } else {
            alertsLeftNavTopBinding2 = alertsLeftNavTopBinding3;
        }
        alertsLeftNavTopBinding2.globalLayout.globalNotificationCount.setVisibility(noticeCount > 0 ? 0 : 4);
        Log.i("globalBadge", String.valueOf(noticeCount > 0));
    }

    @Override // com.narvii.community.AggregationBaseFragment
    public void addReminderRequest(boolean z6, @Nullable Community community, @Nullable ReminderCheck reminderCheck) {
        if (!z6 || community == null) {
            return;
        }
        if (reminderCheck == null || forceRefreshReminder(community.id) || getMyCommunityService().getReminderRequestTime(community.id) < SystemClock.elapsedRealtime() - AggregationBaseFragment.Companion.getREMINDER_CHECK_DURATION()) {
            MyCommunityListService myCommunityService = getMyCommunityService();
            int i10 = community.id;
            myCommunityService.addReminderRequestQueue(i10, forceRefreshReminder(i10));
            this.requestedSet.add(Integer.valueOf(community.id));
        }
    }

    @Override // com.narvii.community.AggregationBaseFragment
    @NotNull
    public NVFragment createNewFragment(int i10) {
        if (i10 >= 0) {
            return new NoticeListFragment();
        }
        return i10 == -1 ? new AnnouncementListFragment() : new NVFragment();
    }

    public final boolean forceRefreshReminder(int i10) {
        return getBooleanParam("forceRefreshReminder") && !this.requestedSet.contains(Integer.valueOf(i10));
    }

    @Override // com.narvii.community.AggregationBaseFragment
    public int getBadgeCount(@Nullable Community community) {
        ReminderCheck reminder = community == null ? null : getMyCommunityService().getReminder(community.id);
        if (reminder == null) {
            return 0;
        }
        return reminder.noticesCount + (isCommunityAlertsAllRead(community != null ? community.id : -1) ? 0 : reminder.notificationsCount);
    }

    @Override // com.narvii.community.AggregationBaseFragment
    @Nullable
    public Bundle getFragmentArguments(int i10, @Nullable Community community) {
        Bundle bundle = new Bundle();
        if (i10 > 0) {
            bundle.putString(SearchPrefsHelper.PREFS_KEY_COMMUNITY, JacksonUtils.writeAsString(getSimpleCommunity(community)));
        }
        if (i10 >= 0) {
            bundle.putInt(CmcdConfiguration.KEY_CONTENT_ID, i10);
        }
        bundle.putBoolean("fromAggregation", true);
        return bundle;
    }

    @Override // com.narvii.community.AggregationBaseFragment
    public void getLeftBinding(@NotNull ViewBinding viewBinding) {
        t.j(viewBinding, "viewBinding");
        if (viewBinding instanceof AlertsLeftNavTopBinding) {
            this.leftNavTopBinding = (AlertsLeftNavTopBinding) viewBinding;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.team_amino_layout) {
            onItemSelected(-1);
        } else if (numValueOf != null && numValueOf.intValue() == R.id.global_layout) {
            onItemSelected(0);
        }
    }

    @Override // com.narvii.community.AggregationBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        AggregationBaseFragment.CommunityListAdapter communityListAdapter;
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        view.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.color_default_primary));
        AlertsLeftNavTopBinding alertsLeftNavTopBinding = this.leftNavTopBinding;
        AlertsLeftNavTopBinding alertsLeftNavTopBinding2 = null;
        if (alertsLeftNavTopBinding == null) {
            t.B("leftNavTopBinding");
            alertsLeftNavTopBinding = null;
        }
        alertsLeftNavTopBinding.globalLayout.rootGlobalLayout.setOnClickListener(this);
        AlertsLeftNavTopBinding alertsLeftNavTopBinding3 = this.leftNavTopBinding;
        if (alertsLeftNavTopBinding3 == null) {
            t.B("leftNavTopBinding");
        } else {
            alertsLeftNavTopBinding2 = alertsLeftNavTopBinding3;
        }
        alertsLeftNavTopBinding2.teamAminoLayout.setOnClickListener(this);
        int intParam = getIntParam("targetCidTab", Integer.MIN_VALUE);
        AccountService accountService = (AccountService) getService("account");
        if (!AggregationNoticeFragmentKt.getLastLoggedIn() && accountService.hasAccount()) {
            AggregationNoticeFragmentKt.setLastSelectedCid(Integer.MIN_VALUE);
        }
        AggregationNoticeFragmentKt.setLastLoggedIn(accountService.hasAccount());
        if (intParam != Integer.MIN_VALUE) {
            onItemSelected(intParam);
        } else if (!accountService.hasAccount()) {
            onItemSelected(-1);
        } else if (AggregationNoticeFragmentKt.getLastSelectedCid() == Integer.MIN_VALUE) {
            onItemSelected(0);
        } else if (AggregationNoticeFragmentKt.getLastSelectedCid() <= 0 || Utils.containsId(getMyCommunityService().list(), String.valueOf(AggregationNoticeFragmentKt.getLastSelectedCid()))) {
            onItemSelected(AggregationNoticeFragmentKt.getLastSelectedCid());
        } else {
            onItemSelected(getFallbackIndexWhenCurrentLeave(AggregationNoticeFragmentKt.getLastSelectedCid()));
        }
        try {
            if (getSelectedNdcId() > 0 && (communityListAdapter = getCommunityListAdapter()) != null && AggregationNoticeFragmentKt.getLastScrollPosition() > 0 && communityListAdapter.getCount() > 0) {
                if (AggregationNoticeFragmentKt.getLastScrollPosition() < communityListAdapter.getCount()) {
                    this.baseBinding.getValue().communityList.setSelectionFromTop(AggregationNoticeFragmentKt.getLastScrollPosition(), AggregationNoticeFragmentKt.getLastScrollTop());
                } else {
                    this.baseBinding.getValue().communityList.setSelectionFromTop(communityListAdapter.getCount() - 1, 0);
                }
            }
        } catch (Exception unused) {
        }
        updateGlobalUnreadCount();
    }

    @Override // com.narvii.community.AggregationBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ComScoreSectionDispatcher.INSTANCE.sectionChangeToNone();
        setTitle(R.string.alerts);
        IncubatorNoticeService incubatorNoticeService = (IncubatorNoticeService) getService("_notice");
        if (incubatorNoticeService != null) {
            incubatorNoticeService.sendGlobalNoticeRequest();
        }
        ((AccountService) getService("account")).addProfileListener(this.profileListener);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ((AccountService) getService("account")).removeProfileListener(this.profileListener);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        AggregationNoticeFragmentKt.setLastLoggedIn(((AccountService) getService("account")).hasAccount());
        AggregationNoticeFragmentKt.setLastSelectedCid(getSelectedNdcId());
        AggregationNoticeFragmentKt.setLastScrollPosition(this.baseBinding.getValue().communityList.getFirstVisiblePosition());
        int top = 0;
        View childAt = this.baseBinding.getValue().communityList.getChildAt(0);
        if (childAt != null) {
            top = childAt.getTop();
        }
        AggregationNoticeFragmentKt.setLastScrollTop(top);
    }

    @Override // com.narvii.community.AggregationBaseFragment
    public void updateLeftNav() {
        int color;
        int i10;
        super.updateLeftNav();
        AlertsLeftNavTopBinding alertsLeftNavTopBinding = this.leftNavTopBinding;
        AlertsLeftNavTopBinding alertsLeftNavTopBinding2 = null;
        if (alertsLeftNavTopBinding == null) {
            t.B("leftNavTopBinding");
            alertsLeftNavTopBinding = null;
        }
        FrameLayout frameLayout = alertsLeftNavTopBinding.teamAminoLayout;
        int color2 = 0;
        if (getSelectedNdcId() == -1) {
            color = ContextCompat.getColor(getContext(), R.color.aggregation_content_bg_color);
        } else {
            color = 0;
        }
        frameLayout.setBackgroundColor(color);
        AlertsLeftNavTopBinding alertsLeftNavTopBinding3 = this.leftNavTopBinding;
        if (alertsLeftNavTopBinding3 == null) {
            t.B("leftNavTopBinding");
            alertsLeftNavTopBinding3 = null;
        }
        ImageView imageView = alertsLeftNavTopBinding3.teamAminoSelected;
        int i11 = 8;
        if (getSelectedNdcId() == -1) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        imageView.setVisibility(i10);
        AlertsLeftNavTopBinding alertsLeftNavTopBinding4 = this.leftNavTopBinding;
        if (alertsLeftNavTopBinding4 == null) {
            t.B("leftNavTopBinding");
            alertsLeftNavTopBinding4 = null;
        }
        ImageView imageView2 = alertsLeftNavTopBinding4.globalLayout.globalSelectedIndicator;
        if (getSelectedNdcId() == 0) {
            i11 = 0;
        }
        imageView2.setVisibility(i11);
        AlertsLeftNavTopBinding alertsLeftNavTopBinding5 = this.leftNavTopBinding;
        if (alertsLeftNavTopBinding5 == null) {
            t.B("leftNavTopBinding");
        } else {
            alertsLeftNavTopBinding2 = alertsLeftNavTopBinding5;
        }
        FlexLayout flexLayout = alertsLeftNavTopBinding2.globalLayout.rootGlobalLayout;
        if (getSelectedNdcId() == 0) {
            color2 = ContextCompat.getColor(getContext(), R.color.aggregation_content_bg_color);
        }
        flexLayout.setBackgroundColor(color2);
    }
}
