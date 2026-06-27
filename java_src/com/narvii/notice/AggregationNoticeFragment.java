package com.narvii.notice;

import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.announcement.AnnouncementListFragment;
import com.narvii.app.NVFragment;
import com.narvii.community.AggregationBaseFragment;
import com.narvii.community.MyCommunityListService;
import com.narvii.community.ReminderCheck;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.services.incubator.IncubatorNoticeService;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.widget.AutoScaleTextView;
import com.narvii.widget.NVListView;
import java.util.HashMap;
import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AggregationNoticeFragment.kt */
/* loaded from: classes3.dex */
public final class AggregationNoticeFragment extends AggregationBaseFragment implements View.OnClickListener {
    private HashMap _$_findViewCache;
    private final HashSet<Integer> requestedSet = new HashSet<>();
    private final AccountService.ProfileListener profileListener = new AccountService.ProfileListener() { // from class: com.narvii.notice.AggregationNoticeFragment$profileListener$1
        @Override // com.narvii.account.AccountService.ProfileListener
        public void onProfileChanged(int i, User user) {
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onNoticeCountChanged(int i) {
            super.onNoticeCountChanged(i);
            this.this$0.updateGlobalUnreadCount();
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onNotificationCountChanged(int i) {
            super.onNotificationCountChanged(i);
            this.this$0.updateGlobalUnreadCount();
        }
    };

    @Override // com.narvii.community.AggregationBaseFragment, com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.community.AggregationBaseFragment, com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.community.AggregationBaseFragment
    public int getFallbackIndexWhenCurrentLeave(int i) {
        return 0;
    }

    @Override // com.narvii.community.AggregationBaseFragment
    public int getLeftNavTopLayoutId() {
        return R.layout.alerts_left_nav_top;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Alerts";
    }

    @Override // com.narvii.app.theme.NVThemeFragment, com.narvii.app.theme.NVThemeOwner
    public boolean isDarkNVTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.community.AggregationBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final AccountService.ProfileListener getProfileListener() {
        return this.profileListener;
    }

    @Override // com.narvii.community.AggregationBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.alerts);
        IncubatorNoticeService incubatorNoticeService = (IncubatorNoticeService) getService("_notice");
        if (incubatorNoticeService != null) {
            incubatorNoticeService.sendGlobalNoticeRequest();
        }
        ((AccountService) getService("account")).addProfileListener(this.profileListener);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ((AccountService) getService("account")).removeProfileListener(this.profileListener);
    }

    @Override // com.narvii.community.AggregationBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        AggregationBaseFragment.CommunityListAdapter communityListAdapter;
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        view.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.color_default_primary));
        _$_findCachedViewById(com.narvii.amino.R.id.global_layout).setOnClickListener(this);
        ((FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.team_amino_layout)).setOnClickListener(this);
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
        } else if (AggregationNoticeFragmentKt.getLastSelectedCid() > 0 && !Utils.containsId(getMyCommunityService().list(), String.valueOf(AggregationNoticeFragmentKt.getLastSelectedCid()))) {
            onItemSelected(getFallbackIndexWhenCurrentLeave(AggregationNoticeFragmentKt.getLastSelectedCid()));
        } else {
            onItemSelected(AggregationNoticeFragmentKt.getLastSelectedCid());
        }
        try {
            if (getSelectedNdcId() > 0 && (communityListAdapter = getCommunityListAdapter()) != null && AggregationNoticeFragmentKt.getLastScrollPosition() > 0 && communityListAdapter != null && communityListAdapter.getCount() > 0) {
                if (AggregationNoticeFragmentKt.getLastScrollPosition() < communityListAdapter.getCount()) {
                    ((NVListView) _$_findCachedViewById(com.narvii.amino.R.id.community_list)).setSelectionFromTop(AggregationNoticeFragmentKt.getLastScrollPosition(), AggregationNoticeFragmentKt.getLastScrollTop());
                } else {
                    ((NVListView) _$_findCachedViewById(com.narvii.amino.R.id.community_list)).setSelectionFromTop(communityListAdapter.getCount() - 1, 0);
                }
            }
        } catch (Exception unused) {
        }
        updateGlobalUnreadCount();
    }

    @Override // com.narvii.community.AggregationBaseFragment
    public void updateLeftNav() {
        super.updateLeftNav();
        ((FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.team_amino_layout)).setBackgroundColor(getSelectedNdcId() == -1 ? ContextCompat.getColor(getContext(), R.color.aggregation_content_bg_color) : 0);
        ImageView team_amino_selected = (ImageView) _$_findCachedViewById(com.narvii.amino.R.id.team_amino_selected);
        Intrinsics.checkExpressionValueIsNotNull(team_amino_selected, "team_amino_selected");
        team_amino_selected.setVisibility(getSelectedNdcId() == -1 ? 0 : 8);
        ImageView global_selected_indicator = (ImageView) _$_findCachedViewById(com.narvii.amino.R.id.global_selected_indicator);
        Intrinsics.checkExpressionValueIsNotNull(global_selected_indicator, "global_selected_indicator");
        global_selected_indicator.setVisibility(getSelectedNdcId() == 0 ? 0 : 8);
        _$_findCachedViewById(com.narvii.amino.R.id.global_layout).setBackgroundColor(getSelectedNdcId() == 0 ? ContextCompat.getColor(getContext(), R.color.aggregation_content_bg_color) : 0);
    }

    @Override // com.narvii.community.AggregationBaseFragment
    public NVFragment createNewFragment(int i) {
        if (i >= 0) {
            return new NoticeListFragment();
        }
        if (i == -1) {
            return new AnnouncementListFragment();
        }
        return new NVFragment();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        AggregationNoticeFragmentKt.setLastLoggedIn(((AccountService) getService("account")).hasAccount());
        AggregationNoticeFragmentKt.setLastSelectedCid(getSelectedNdcId());
        NVListView community_list = (NVListView) _$_findCachedViewById(com.narvii.amino.R.id.community_list);
        Intrinsics.checkExpressionValueIsNotNull(community_list, "community_list");
        AggregationNoticeFragmentKt.setLastScrollPosition(community_list.getFirstVisiblePosition());
        View childAt = ((NVListView) _$_findCachedViewById(com.narvii.amino.R.id.community_list)).getChildAt(0);
        AggregationNoticeFragmentKt.setLastScrollTop(childAt != null ? childAt.getTop() : 0);
    }

    @Override // com.narvii.community.AggregationBaseFragment
    public Bundle getFragmentArguments(int i, Community community) {
        Bundle bundle = new Bundle();
        if (i > 0) {
            bundle.putString("community", JacksonUtils.writeAsString(getSimpleCommunity(community)));
        }
        if (i >= 0) {
            bundle.putInt("cid", i);
        }
        bundle.putBoolean("fromAggregation", true);
        return bundle;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.team_amino_layout) {
            onItemSelected(-1);
        } else if (numValueOf != null && numValueOf.intValue() == R.id.global_layout) {
            onItemSelected(0);
        }
    }

    @Override // com.narvii.community.AggregationBaseFragment
    public void addReminderRequest(boolean z, Community community, ReminderCheck reminderCheck) {
        if (!z || community == null) {
            return;
        }
        if (reminderCheck == null || forceRefreshReminder(community.id) || getMyCommunityService().getReminderRequestTime(community.id) < SystemClock.elapsedRealtime() - AggregationBaseFragment.Companion.getREMINDER_CHECK_DURATION()) {
            MyCommunityListService myCommunityService = getMyCommunityService();
            int i = community.id;
            myCommunityService.addReminderRequestQueue(i, forceRefreshReminder(i));
            this.requestedSet.add(Integer.valueOf(community.id));
        }
    }

    public final boolean forceRefreshReminder(int i) {
        return getBooleanParam("forceRefreshReminder") && !this.requestedSet.contains(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateGlobalUnreadCount() {
        AccountService accountService = (AccountService) getService("account");
        int notificationCount = accountService.getNotificationCount(0);
        if (isCommunityAlertsAllRead(0)) {
            notificationCount = 0;
        }
        int noticeCount = notificationCount + accountService.getNoticeCount(0);
        AutoScaleTextView autoScaleTextView = (AutoScaleTextView) _$_findCachedViewById(com.narvii.amino.R.id.global_notification_count);
        if (autoScaleTextView != null) {
            autoScaleTextView.setText(noticeCount > 9 ? "9+" : String.valueOf(noticeCount));
        }
        AutoScaleTextView autoScaleTextView2 = (AutoScaleTextView) _$_findCachedViewById(com.narvii.amino.R.id.global_notification_count);
        if (autoScaleTextView2 != null) {
            autoScaleTextView2.setVisibility(noticeCount > 0 ? 0 : 4);
        }
        Log.i("globalBadge", String.valueOf(noticeCount > 0));
    }

    private final boolean isCommunityAlertsAllRead(int i) {
        NVFragment nVFragment;
        if (i == 0) {
            nVFragment = getOtherFragments().get(0);
        } else {
            nVFragment = i > 0 ? getFragments().get(Integer.valueOf(i)) : null;
        }
        return nVFragment != null && (nVFragment instanceof NoticeListFragment) && ((NoticeListFragment) nVFragment).isAlertAllRead();
    }

    @Override // com.narvii.community.AggregationBaseFragment
    public int getBadgeCount(Community community) {
        ReminderCheck reminder = community == null ? null : getMyCommunityService().getReminder(community.id);
        if (reminder == null) {
            return 0;
        }
        return reminder.noticesCount + (isCommunityAlertsAllRead(community != null ? community.id : -1) ? 0 : reminder.notificationsCount);
    }
}
