package com.narvii.prefs;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.community.CommunityService;
import com.narvii.community.CommunityUserInfo;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.list.prefs.PrefsEntry;
import com.narvii.list.prefs.PrefsMargin;
import com.narvii.master.MasterActivity;
import com.narvii.master.home.discover.FollowingFeedListFragment;
import com.narvii.master.home.profile.CommunityProfileListFragment;
import com.narvii.model.User;
import com.narvii.notice.NotificationTurnedOffWarningFragment;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.topic.picker.AggregationTopicFragment;
import com.narvii.util.Callback;
import com.narvii.util.Tag;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.wallet.IabUtils;
import com.narvii.wallet.MembershipMainRecyclerFragment;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.WalletRecyclerFragment;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.ThumbImageView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class MoreSettingFragment extends NVListFragment implements NotificationListener {

    @Nullable
    private AccountService account;

    @Nullable
    private ConfigService config;

    @Nullable
    private MembershipService memberShip;

    @Nullable
    private SharedPreferences prefs;

    @NotNull
    private final w7.m adapter$delegate = w7.o.a(new MoreSettingFragment$adapter$2(this));

    @NotNull
    private final MoreSettingFragment$receiver$1 receiver = new BroadcastReceiver() { // from class: com.narvii.prefs.MoreSettingFragment$receiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(@NotNull Context context, @NotNull Intent intent) {
            ConfigService configService;
            t.j(context, "context");
            t.j(intent, "intent");
            if (this.this$0.getActivity() == null) {
                return;
            }
            if (t.e(AccountService.ACTION_ACCOUNT_CHANGED, intent.getAction())) {
                ListAdapter listAdapter = this.this$0.getListAdapter();
                t.h(listAdapter, "null cannot be cast to non-null type android.widget.BaseAdapter");
                ((BaseAdapter) listAdapter).notifyDataSetChanged();
            } else if (t.e(CommunityService.ACTION_COMMUNITY_CHANGED, intent.getAction()) && (configService = this.this$0.config) != null && intent.getIntExtra("id", 0) == configService.getCommunityId()) {
                ListAdapter listAdapter2 = this.this$0.getListAdapter();
                t.h(listAdapter2, "null cannot be cast to non-null type android.widget.BaseAdapter");
                ((BaseAdapter) listAdapter2).notifyDataSetChanged();
            } else if (t.e(MembershipService.ACTION_WALLET_CHANGED, intent.getAction()) || t.e(MembershipService.ACTION_MEMBERSHIP_CHANGED, intent.getAction())) {
                ListAdapter listAdapter3 = this.this$0.getListAdapter();
                t.h(listAdapter3, "null cannot be cast to non-null type android.widget.BaseAdapter");
                ((BaseAdapter) listAdapter3).notifyDataSetChanged();
            }
        }
    };

    @NotNull
    private final MoreSettingFragment$profileListener$1 profileListener = new AccountService.ProfileListener() { // from class: com.narvii.prefs.MoreSettingFragment$profileListener$1
        @Override // com.narvii.account.AccountService.ProfileListener
        public void onProfileChanged(int i10, @NotNull User profile) {
            t.j(profile, "profile");
            ListAdapter listAdapter = this.this$0.getListAdapter();
            t.h(listAdapter, "null cannot be cast to non-null type android.widget.BaseAdapter");
            ((BaseAdapter) listAdapter).notifyDataSetChanged();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    final class Adapter extends PrefsAdapter {

        @NotNull
        private final Tag ACCOUNT_SECURITY;

        @NotNull
        private final Tag COMMUNITY_PROFILES;

        @NotNull
        private final Tag MEMBERSHIP;

        @NotNull
        private final Tag WALLET;

        @NotNull
        private final NVContext ctx;
        final /* synthetic */ MoreSettingFragment this$0;

        @NotNull
        private final List<User> users;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @NotNull
        public final NVContext getCtx() {
            return this.ctx;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(@NotNull MoreSettingFragment moreSettingFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = moreSettingFragment;
            this.ctx = ctx;
            this.COMMUNITY_PROFILES = new Tag("community_profile");
            this.ACCOUNT_SECURITY = new Tag("account_security");
            this.MEMBERSHIP = new Tag("membership");
            this.WALLET = new Tag(EventConstants.GlobalNavigation.WALLET);
            this.users = new ArrayList();
        }

        private final void sendCommunityJoinedRequest() {
            final Class<MyCommunityListResponse> cls = MyCommunityListResponse.class;
            ((ApiService) getService("api")).exec(ApiRequest.builder().https().global().path("/community/joined").param("size", 5).param("start", 0).build(), new ApiResponseListener<MyCommunityListResponse>(cls) { // from class: com.narvii.prefs.MoreSettingFragment$Adapter$sendCommunityJoinedRequest$1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(@NotNull ApiRequest req, @NotNull MyCommunityListResponse resp) throws Exception {
                    t.j(req, "req");
                    t.j(resp, "resp");
                    super.onFinish(req, resp);
                    this.this$0.users.clear();
                    int size = resp.list().size();
                    for (int i10 = 0; i10 < size; i10++) {
                        Map<Integer, CommunityUserInfo> map = resp.userInfoInCommunities;
                        if (map != null) {
                            MoreSettingFragment.Adapter adapter = this.this$0;
                            CommunityUserInfo communityUserInfo = map.get(Integer.valueOf(resp.list().get(i10).id));
                            if (communityUserInfo != null) {
                                List list = adapter.users;
                                User userProfile = communityUserInfo.userProfile;
                                t.i(userProfile, "userProfile");
                                list.add(userProfile);
                            }
                        }
                        if (this.this$0.users.size() >= 3) {
                            break;
                        }
                    }
                    this.this$0.notifyDataSetChanged();
                }
            });
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(@Nullable List<Object> list) {
            if (list != null) {
                list.add(new PrefsMargin());
                list.add(this.COMMUNITY_PROFILES);
                Object DIVIDER = PrefsAdapter.DIVIDER;
                t.i(DIVIDER, "DIVIDER");
                list.add(DIVIDER);
                list.add(this.ACCOUNT_SECURITY);
                t.i(DIVIDER, "DIVIDER");
                list.add(DIVIDER);
                list.add(this.MEMBERSHIP);
                list.add(new PrefsMargin());
                list.add(this.WALLET);
                PrefsEntry prefsEntry = new PrefsEntry(R.string.store);
                Intent intent = new Intent(getContext(), (Class<?>) MasterActivity.class);
                intent.putExtra("tab", EventConstants.GlobalNavigation.STORE);
                prefsEntry.callbackIntent = MasterActivity.backToMaster(this.ctx, intent);
                list.add(prefsEntry);
                list.add(new PrefsMargin());
                PrefsEntry prefsEntry2 = new PrefsEntry(R.string.main_featured_title_following);
                prefsEntry2.callbackIntent = FragmentWrapperActivity.intent(FollowingFeedListFragment.class);
                list.add(prefsEntry2);
                PrefsEntry prefsEntry3 = new PrefsEntry(R.string.bookmarked_topics);
                prefsEntry3.callbackIntent = FragmentWrapperActivity.intent(AggregationTopicFragment.class);
                list.add(prefsEntry3);
                list.add(new PrefsMargin());
                PrefsEntry prefsEntry4 = new PrefsEntry(R.string.prefs_settings);
                prefsEntry4.callbackIntent = FragmentWrapperActivity.intent(SettingsFragment.class);
                list.add(prefsEntry4);
            }
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            if (obj == this.WALLET) {
                Intent intent = FragmentWrapperActivity.intent(WalletRecyclerFragment.class);
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Settings");
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                return true;
            }
            if (obj == this.MEMBERSHIP) {
                Intent intent2 = FragmentWrapperActivity.intent(MembershipMainRecyclerFragment.class);
                intent2.putExtra(ExternalPostPreviewFragment.SOURCE, "Settings");
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent2);
                return true;
            }
            if (t.e(obj, this.ACCOUNT_SECURITY)) {
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, FragmentWrapperActivity.intent(AccountSettingFragment.class));
                return true;
            }
            if (!t.e(obj, this.COMMUNITY_PROFILES)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, FragmentWrapperActivity.intent(CommunityProfileListFragment.class));
            return true;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            int i11;
            Object item = getItem(i10);
            int i12 = 0;
            if (t.e(item, this.COMMUNITY_PROFILES)) {
                View viewCreateView = createView(R.layout.prefs_community_profile_item, viewGroup, view);
                AccountService accountService = this.this$0.account;
                if (accountService != null && accountService.hasAccount()) {
                    View viewFindViewById = viewCreateView.findViewById(R.id.avatar_1);
                    t.h(viewFindViewById, "null cannot be cast to non-null type com.narvii.widget.NVImageView");
                    NVImageView nVImageView = (NVImageView) viewFindViewById;
                    View viewFindViewById2 = viewCreateView.findViewById(R.id.avatar_2);
                    t.h(viewFindViewById2, "null cannot be cast to non-null type com.narvii.widget.NVImageView");
                    NVImageView nVImageView2 = (NVImageView) viewFindViewById2;
                    View viewFindViewById3 = viewCreateView.findViewById(R.id.avatar_3);
                    t.h(viewFindViewById3, "null cannot be cast to non-null type com.narvii.widget.NVImageView");
                    NVImageView nVImageView3 = (NVImageView) viewFindViewById3;
                    if (this.users.size() > 0) {
                        nVImageView.setImageUrl(this.users.get(0).icon());
                    } else {
                        nVImageView.setVisibility(8);
                    }
                    if (this.users.size() > 1) {
                        nVImageView2.setImageUrl(this.users.get(1).icon());
                    } else {
                        nVImageView2.setVisibility(8);
                    }
                    if (this.users.size() > 2) {
                        nVImageView3.setImageUrl(this.users.get(2).icon());
                    } else {
                        nVImageView3.setVisibility(8);
                    }
                }
                t.g(viewCreateView);
                return viewCreateView;
            }
            if (t.e(item, this.ACCOUNT_SECURITY)) {
                View viewCreateView2 = createView(R.layout.prefs_account_item, viewGroup, view);
                AccountService accountService2 = this.this$0.account;
                if (accountService2 != null) {
                    MoreSettingFragment moreSettingFragment = this.this$0;
                    if (accountService2.hasAccount()) {
                        accountService2.getUserProfile();
                        View viewFindViewById4 = viewCreateView2.findViewById(R.id.nickname);
                        t.h(viewFindViewById4, "null cannot be cast to non-null type android.widget.TextView");
                        ((TextView) viewFindViewById4).setText(moreSettingFragment.getString(R.string.account));
                        int securityLevel = accountService2.getSecurityLevel();
                        if (securityLevel != 1) {
                            if (securityLevel == 3) {
                                i12 = R.drawable.ic_security_level_danger;
                            }
                        } else {
                            i12 = R.drawable.ic_security_level_safe;
                        }
                        if (i12 != 0) {
                            View viewFindViewById5 = viewCreateView2.findViewById(R.id.account_security);
                            t.h(viewFindViewById5, "null cannot be cast to non-null type android.widget.ImageView");
                            ((ImageView) viewFindViewById5).setImageDrawable(ContextCompat.getDrawable(getContext(), i12));
                        }
                    }
                }
                t.g(viewCreateView2);
                return viewCreateView2;
            }
            if (t.e(item, this.MEMBERSHIP)) {
                View viewCreateView3 = createView(R.layout.prefs_membership_item, viewGroup, view);
                TextView textView = (TextView) viewCreateView3.findViewById(R.id.status);
                ThumbImageView thumbImageView = (ThumbImageView) viewCreateView3.findViewById(R.id.icon);
                MembershipService membershipService = this.this$0.memberShip;
                if (membershipService != null) {
                    MoreSettingFragment moreSettingFragment2 = this.this$0;
                    if (membershipService.isMembership()) {
                        thumbImageView.setImageDrawable(moreSettingFragment2.getResources().getDrawable(R.drawable.amino_plus_badge_wide));
                        thumbImageView.setShadowColor(Color.parseColor("#40000000"));
                        if (membershipService.isAutoRenew()) {
                            textView.setText(R.string.membership_status_active);
                            textView.setTextColor(-14035310);
                        } else {
                            int iExpiringDays = membershipService.expiringDays();
                            if (iExpiringDays == 0) {
                                textView.setText(R.string.membership_status_expiring_in_0_day);
                            } else if (iExpiringDays == 1) {
                                textView.setText(R.string.membership_status_expiring_in_1_day);
                            } else if (1 <= iExpiringDays && iExpiringDays < 15) {
                                textView.setText(moreSettingFragment2.getString(R.string.membership_status_expiring_in_n_day, Integer.valueOf(iExpiringDays)));
                            } else {
                                textView.setText((CharSequence) null);
                            }
                            textView.setTextColor(-3145189);
                        }
                    } else {
                        Resources resources = moreSettingFragment2.getResources();
                        if (isDarkNVTheme()) {
                            i11 = R.drawable.amino_plus_badge_inactive_wide_dark_theme;
                        } else {
                            i11 = R.drawable.amino_plus_badge_inactive_wide;
                        }
                        thumbImageView.setImageDrawable(resources.getDrawable(i11));
                        thumbImageView.setShadowColor(0);
                        if (membershipService.daysExpired() >= 0) {
                            textView.setText(R.string.membership_status_expired);
                            textView.setTextColor(-3145189);
                        } else {
                            textView.setText(R.string.membership_status_inactive0);
                            textView.setTextColor(-8487298);
                        }
                    }
                }
                t.g(viewCreateView3);
                return viewCreateView3;
            }
            if (t.e(item, this.WALLET)) {
                View viewCreateView4 = createView(R.layout.prefs_wallet_item, viewGroup, view);
                MembershipService membershipService2 = this.this$0.memberShip;
                if (membershipService2 != null) {
                    View viewFindViewById6 = viewCreateView4.findViewById(R.id.balance);
                    t.h(viewFindViewById6, "null cannot be cast to non-null type android.widget.TextView");
                    ((TextView) viewFindViewById6).setText(IabUtils.formatCoins(membershipService2.walletBalance()));
                }
                t.g(viewCreateView4);
                return viewCreateView4;
            }
            View view2 = super.getView(i10, view, viewGroup);
            t.i(view2, "getView(...)");
            return view2;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, @Nullable Callback<Integer> callback) {
            refreshMonitorStart(i10, callback);
            sendCommunityJoinedRequest();
            refreshMonitorEnd();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorDarkColor() {
        return 872415231;
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    private final Adapter getAdapter() {
        return (Adapter) this.adapter$delegate.getValue();
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.notification_list_view, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        AccountService accountService = this.account;
        if (accountService != null) {
            accountService.removeProfileListener(this.profileListener);
        }
        super.onDestroy();
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(@Nullable Notification notification) {
        if (notification != null && t.e("update", notification.action) && (notification.obj instanceof User)) {
            getAdapter().notifyDataSetChanged();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        FragmentManager childFragmentManager;
        FragmentTransaction fragmentTransactionQ;
        FragmentTransaction fragmentTransactionB;
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        if (bundle != null || (childFragmentManager = getChildFragmentManager()) == null || (fragmentTransactionQ = childFragmentManager.q()) == null || (fragmentTransactionB = fragmentTransactionQ.b(R.id.notification_turned_off_warning_frame, new NotificationTurnedOffWarningFragment())) == null) {
            return;
        }
        fragmentTransactionB.j();
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        getListView().setOnItemLongClickListener(getAdapter());
        return getAdapter();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.more);
        this.account = (AccountService) getService("account");
        this.memberShip = (MembershipService) getService("membership");
        this.config = (ConfigService) getService("config");
        this.prefs = (SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY);
        AccountService accountService = this.account;
        if (accountService != null) {
            accountService.addProfileListener(this.profileListener);
        }
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(CommunityService.ACTION_COMMUNITY_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(@Nullable ListView listView, @Nullable Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDivider(null);
        }
        if (listView != null) {
            listView.setDividerHeight(0);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        MembershipService membershipService = this.memberShip;
        if (membershipService != null) {
            membershipService.refresh(false);
        }
        getAdapter().refresh(1, null);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i10) {
        super.onThemeChange(i10);
        if (i10 != 1) {
            if (i10 == 2) {
                int color = getResources().getColor(R.color.color_default_primary);
                ListView listView = getListView();
                t.h(listView, "null cannot be cast to non-null type com.narvii.widget.NVListView");
                ((NVListView) listView).setOverscrollStretchHeader(color);
                ListView listView2 = getListView();
                t.h(listView2, "null cannot be cast to non-null type com.narvii.widget.NVListView");
                ((NVListView) listView2).setOverscrollStretchFooter(color);
                ListView listView3 = getListView();
                t.h(listView3, "null cannot be cast to non-null type com.narvii.widget.NVListView");
                ((NVListView) listView3).setListContentBackgroundColor(0);
                return;
            }
            return;
        }
        int color2 = getResources().getColor(R.color.prefs_background);
        ListView listView4 = getListView();
        t.h(listView4, "null cannot be cast to non-null type com.narvii.widget.NVListView");
        ((NVListView) listView4).setOverscrollStretchHeader(color2);
        ListView listView5 = getListView();
        t.h(listView5, "null cannot be cast to non-null type com.narvii.widget.NVListView");
        ((NVListView) listView5).setOverscrollStretchFooter(color2);
        ListView listView6 = getListView();
        t.h(listView6, "null cannot be cast to non-null type com.narvii.widget.NVListView");
        ((NVListView) listView6).setListContentBackgroundColor(-1);
    }
}
