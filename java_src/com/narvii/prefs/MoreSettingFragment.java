package com.narvii.prefs;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.community.CommunityUserInfo;
import com.narvii.community.MyCommunityListResponse;
import com.narvii.config.ConfigService;
import com.narvii.list.NVListFragment;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.list.prefs.PrefsEntry;
import com.narvii.list.prefs.PrefsMargin;
import com.narvii.master.home.discover.FollowingFeedListFragment;
import com.narvii.master.home.profile.CommunityProfileListFragment;
import com.narvii.master.home.story.FavoriteStoryLisFragment;
import com.narvii.model.User;
import com.narvii.monetization.store.MonetizationStoreMainFragment;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.prefs.MoreSettingFragment;
import com.narvii.topic.picker.AggregationTopicFragment;
import com.narvii.util.Callback;
import com.narvii.util.Tag;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.wallet.IabUtils;
import com.narvii.wallet.MembershipMainRecyclerFragment;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.WalletRecyclerFragment;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.ThumbImageView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: MoreSettingFragment.kt */
/* loaded from: classes3.dex */
public final class MoreSettingFragment extends NVListFragment implements NotificationListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MoreSettingFragment.class), "adapter", "getAdapter()Lcom/narvii/prefs/MoreSettingFragment$Adapter;"))};
    private HashMap _$_findViewCache;
    private AccountService account;
    private ConfigService config;
    private MembershipService memberShip;
    private SharedPreferences prefs;
    private final Lazy adapter$delegate = LazyKt__LazyJVMKt.lazy(new Function0<Adapter>() { // from class: com.narvii.prefs.MoreSettingFragment$adapter$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final MoreSettingFragment.Adapter invoke() {
            MoreSettingFragment moreSettingFragment = this.this$0;
            return new MoreSettingFragment.Adapter(moreSettingFragment, moreSettingFragment);
        }
    });
    private final MoreSettingFragment$receiver$1 receiver = new BroadcastReceiver() { // from class: com.narvii.prefs.MoreSettingFragment$receiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(intent, "intent");
            if (this.this$0.getActivity() == null) {
                return;
            }
            if (Intrinsics.areEqual(AccountService.ACTION_ACCOUNT_CHANGED, intent.getAction())) {
                ListAdapter listAdapter = this.this$0.getListAdapter();
                if (listAdapter == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.widget.BaseAdapter");
                }
                ((BaseAdapter) listAdapter).notifyDataSetChanged();
                return;
            }
            if (Intrinsics.areEqual(CommunityService.ACTION_COMMUNITY_CHANGED, intent.getAction())) {
                int intExtra = intent.getIntExtra("id", 0);
                ConfigService configService = this.this$0.config;
                if (configService != null && intExtra == configService.getCommunityId()) {
                    ListAdapter listAdapter2 = this.this$0.getListAdapter();
                    if (listAdapter2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type android.widget.BaseAdapter");
                    }
                    ((BaseAdapter) listAdapter2).notifyDataSetChanged();
                    return;
                }
            }
            if (Intrinsics.areEqual(MembershipService.ACTION_WALLET_CHANGED, intent.getAction()) || Intrinsics.areEqual(MembershipService.ACTION_MEMBERSHIP_CHANGED, intent.getAction())) {
                ListAdapter listAdapter3 = this.this$0.getListAdapter();
                if (listAdapter3 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.widget.BaseAdapter");
                }
                ((BaseAdapter) listAdapter3).notifyDataSetChanged();
            }
        }
    };
    private final MoreSettingFragment$profileListener$1 profileListener = new AccountService.ProfileListener() { // from class: com.narvii.prefs.MoreSettingFragment$profileListener$1
        @Override // com.narvii.account.AccountService.ProfileListener
        public void onProfileChanged(int i, User profile) {
            Intrinsics.checkParameterIsNotNull(profile, "profile");
            ListAdapter listAdapter = this.this$0.getListAdapter();
            if (listAdapter == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.BaseAdapter");
            }
            ((BaseAdapter) listAdapter).notifyDataSetChanged();
        }
    };

    private final Adapter getAdapter() {
        Lazy lazy = this.adapter$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (Adapter) lazy.getValue();
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
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

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.more);
        this.account = (AccountService) getService("account");
        this.memberShip = (MembershipService) getService("membership");
        this.config = (ConfigService) getService("config");
        this.prefs = (SharedPreferences) getService("prefs");
        AccountService accountService = this.account;
        if (accountService != null) {
            accountService.addProfileListener(this.profileListener);
        }
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(CommunityService.ACTION_COMMUNITY_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.notification_list_view, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDivider(null);
        }
        if (listView != null) {
            listView.setDividerHeight(0);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        MembershipService membershipService = this.memberShip;
        if (membershipService != null) {
            membershipService.refresh(false);
        }
        getAdapter().refresh(1, null);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        AccountService accountService = this.account;
        if (accountService != null) {
            accountService.removeProfileListener(this.profileListener);
        }
        super.onDestroy();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        ListView listView = getListView();
        Intrinsics.checkExpressionValueIsNotNull(listView, "listView");
        listView.setOnItemLongClickListener(getAdapter());
        return getAdapter();
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (notification != null && Intrinsics.areEqual("update", notification.action) && (notification.obj instanceof User)) {
            getAdapter().notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MoreSettingFragment.kt */
    final class Adapter extends PrefsAdapter {
        private final Tag ACCOUNT_SECURITY;
        private final Tag COMMUNITY_PROFILES;
        private final Tag MEMBERSHIP;
        private final Tag WALLET;
        private final NVContext ctx;
        final /* synthetic */ MoreSettingFragment this$0;
        private final List<User> users;

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(MoreSettingFragment moreSettingFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = moreSettingFragment;
            this.ctx = ctx;
            this.COMMUNITY_PROFILES = new Tag("community_profile");
            this.ACCOUNT_SECURITY = new Tag("account_security");
            this.MEMBERSHIP = new Tag("membership");
            this.WALLET = new Tag("wallet");
            this.users = new ArrayList();
        }

        public final NVContext getCtx() {
            return this.ctx;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            refreshMonitorStart(i, callback);
            sendCommunityJoinedRequest();
            refreshMonitorEnd();
        }

        private final void sendCommunityJoinedRequest() {
            final Class<MyCommunityListResponse> cls = MyCommunityListResponse.class;
            ((ApiService) getService("api")).exec(ApiRequest.builder().https().global().path("/community/joined").param("size", 5).param(TtmlNode.START, 0).build(), new ApiResponseListener<MyCommunityListResponse>(cls) { // from class: com.narvii.prefs.MoreSettingFragment$Adapter$sendCommunityJoinedRequest$1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest req, MyCommunityListResponse resp) throws Exception {
                    CommunityUserInfo communityUserInfo;
                    Intrinsics.checkParameterIsNotNull(req, "req");
                    Intrinsics.checkParameterIsNotNull(resp, "resp");
                    super.onFinish(req, (ApiRequest) resp);
                    this.this$0.users.clear();
                    int size = resp.list().size() - 1;
                    if (size >= 0) {
                        int i = 0;
                        while (true) {
                            Map<Integer, CommunityUserInfo> map = resp.userInfoInCommunities;
                            if (map != null && (communityUserInfo = map.get(Integer.valueOf(resp.list().get(i).id))) != null) {
                                List list = this.this$0.users;
                                User user = communityUserInfo.userProfile;
                                Intrinsics.checkExpressionValueIsNotNull(user, "it.userProfile");
                                list.add(user);
                            }
                            if (this.this$0.users.size() >= 3 || i == size) {
                                break;
                            } else {
                                i++;
                            }
                        }
                    }
                    this.this$0.notifyDataSetChanged();
                }
            });
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List<Object> list) {
            if (list != null) {
                list.add(new PrefsMargin());
                list.add(this.COMMUNITY_PROFILES);
                Object obj = PrefsAdapter.DIVIDER;
                Intrinsics.checkExpressionValueIsNotNull(obj, "PrefsAdapter.DIVIDER");
                list.add(obj);
                list.add(this.ACCOUNT_SECURITY);
                Object obj2 = PrefsAdapter.DIVIDER;
                Intrinsics.checkExpressionValueIsNotNull(obj2, "PrefsAdapter.DIVIDER");
                list.add(obj2);
                list.add(this.MEMBERSHIP);
                list.add(new PrefsMargin());
                list.add(this.WALLET);
                PrefsEntry prefsEntry = new PrefsEntry(R.string.store);
                prefsEntry.callbackIntent = FragmentWrapperActivity.intent(MonetizationStoreMainFragment.class);
                list.add(prefsEntry);
                list.add(new PrefsMargin());
                PrefsEntry prefsEntry2 = new PrefsEntry(R.string.liked_stories);
                prefsEntry2.callbackIntent = FragmentWrapperActivity.intent(FavoriteStoryLisFragment.class);
                list.add(prefsEntry2);
                PrefsEntry prefsEntry3 = new PrefsEntry(R.string.main_featured_title_following);
                prefsEntry3.callbackIntent = FragmentWrapperActivity.intent(FollowingFeedListFragment.class);
                list.add(prefsEntry3);
                PrefsEntry prefsEntry4 = new PrefsEntry(R.string.bookmarked_topics);
                prefsEntry4.callbackIntent = FragmentWrapperActivity.intent(AggregationTopicFragment.class);
                list.add(prefsEntry4);
                list.add(new PrefsMargin());
                PrefsEntry prefsEntry5 = new PrefsEntry(R.string.prefs_settings);
                prefsEntry5.callbackIntent = FragmentWrapperActivity.intent(SettingsFragment.class);
                list.add(prefsEntry5);
                PrefsEntry prefsEntry6 = new PrefsEntry(R.string.aminolight_settings);
                prefsEntry6.callbackIntent = FragmentWrapperActivity.intent(AminolightSettings.class);
                list.add(prefsEntry6);
            }
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
            Object item = getItem(i);
            int i2 = 0;
            if (Intrinsics.areEqual(item, this.COMMUNITY_PROFILES)) {
                View cell = createView(R.layout.prefs_community_profile_item, viewGroup, view);
                AccountService accountService = this.this$0.account;
                if (accountService != null && accountService.hasAccount()) {
                    View viewFindViewById = cell.findViewById(R.id.avatar_1);
                    if (viewFindViewById == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVImageView");
                    }
                    NVImageView nVImageView = (NVImageView) viewFindViewById;
                    View viewFindViewById2 = cell.findViewById(R.id.avatar_2);
                    if (viewFindViewById2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVImageView");
                    }
                    NVImageView nVImageView2 = (NVImageView) viewFindViewById2;
                    View viewFindViewById3 = cell.findViewById(R.id.avatar_3);
                    if (viewFindViewById3 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVImageView");
                    }
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
                Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
                return cell;
            }
            if (Intrinsics.areEqual(item, this.ACCOUNT_SECURITY)) {
                View cell2 = createView(R.layout.prefs_account_item, viewGroup, view);
                AccountService accountService2 = this.this$0.account;
                if (accountService2 != null && accountService2.hasAccount()) {
                    accountService2.getUserProfile();
                    View viewFindViewById4 = cell2.findViewById(R.id.nickname);
                    if (viewFindViewById4 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
                    }
                    ((TextView) viewFindViewById4).setText(this.this$0.getString(R.string.account));
                    int securityLevel = accountService2.getSecurityLevel();
                    if (securityLevel == 1) {
                        i2 = R.drawable.ic_security_level_safe;
                    } else if (securityLevel == 3) {
                        i2 = R.drawable.ic_security_level_danger;
                    }
                    if (i2 != 0) {
                        View viewFindViewById5 = cell2.findViewById(R.id.account_security);
                        if (viewFindViewById5 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
                        }
                        ((ImageView) viewFindViewById5).setImageDrawable(ContextCompat.getDrawable(getContext(), i2));
                    }
                }
                Intrinsics.checkExpressionValueIsNotNull(cell2, "cell");
                return cell2;
            }
            if (Intrinsics.areEqual(item, this.MEMBERSHIP)) {
                View cell3 = createView(R.layout.prefs_membership_item, viewGroup, view);
                TextView tv2 = (TextView) cell3.findViewById(R.id.status);
                ThumbImageView thumbImageView = (ThumbImageView) cell3.findViewById(R.id.icon);
                MembershipService membershipService = this.this$0.memberShip;
                if (membershipService != null) {
                    if (membershipService.isMembership()) {
                        thumbImageView.setImageDrawable(this.this$0.getResources().getDrawable(R.drawable.amino_plus_badge_wide));
                        thumbImageView.setShadowColor(Color.parseColor("#40000000"));
                        if (membershipService.isAutoRenew()) {
                            tv2.setText(R.string.membership_status_active);
                            tv2.setTextColor(-14035310);
                        } else {
                            int iExpiringDays = membershipService.expiringDays();
                            if (iExpiringDays == 0) {
                                tv2.setText(R.string.membership_status_expiring_in_0_day);
                            } else if (iExpiringDays == 1) {
                                tv2.setText(R.string.membership_status_expiring_in_1_day);
                            } else if (1 <= iExpiringDays && 14 >= iExpiringDays) {
                                Intrinsics.checkExpressionValueIsNotNull(tv2, "tv");
                                tv2.setText(this.this$0.getString(R.string.membership_status_expiring_in_n_day, Integer.valueOf(iExpiringDays)));
                            } else {
                                Intrinsics.checkExpressionValueIsNotNull(tv2, "tv");
                                tv2.setText((CharSequence) null);
                            }
                            tv2.setTextColor(-3145189);
                        }
                    } else {
                        thumbImageView.setImageDrawable(this.this$0.getResources().getDrawable(isDarkNVTheme() ? R.drawable.amino_plus_badge_inactive_wide_dark_theme : R.drawable.amino_plus_badge_inactive_wide));
                        thumbImageView.setShadowColor(0);
                        if (membershipService.daysExpired() >= 0) {
                            tv2.setText(R.string.membership_status_expired);
                            tv2.setTextColor(-3145189);
                        } else {
                            tv2.setText(R.string.membership_status_inactive0);
                            tv2.setTextColor(-8487298);
                        }
                    }
                }
                Intrinsics.checkExpressionValueIsNotNull(cell3, "cell");
                return cell3;
            }
            if (Intrinsics.areEqual(item, this.WALLET)) {
                View cell4 = createView(R.layout.prefs_wallet_item, viewGroup, view);
                MembershipService membershipService2 = this.this$0.memberShip;
                if (membershipService2 != null) {
                    View viewFindViewById6 = cell4.findViewById(R.id.balance);
                    if (viewFindViewById6 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
                    }
                    ((TextView) viewFindViewById6).setText(IabUtils.formatCoins(membershipService2.walletBalance()));
                }
                Intrinsics.checkExpressionValueIsNotNull(cell4, "cell");
                return cell4;
            }
            View view2 = super.getView(i, view, viewGroup);
            Intrinsics.checkExpressionValueIsNotNull(view2, "super.getView(position, convertView, parent)");
            return view2;
        }

        @Override // com.narvii.list.prefs.PrefsAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj == this.WALLET) {
                Intent intent = FragmentWrapperActivity.intent(WalletRecyclerFragment.class);
                intent.putExtra("Source", "Settings");
                startActivity(intent);
                return true;
            }
            if (obj == this.MEMBERSHIP) {
                Intent intent2 = FragmentWrapperActivity.intent(MembershipMainRecyclerFragment.class);
                intent2.putExtra("Source", "Settings");
                startActivity(intent2);
                return true;
            }
            if (Intrinsics.areEqual(obj, this.ACCOUNT_SECURITY)) {
                startActivity(FragmentWrapperActivity.intent(AccountSettingFragment.class));
                return true;
            }
            if (Intrinsics.areEqual(obj, this.COMMUNITY_PROFILES)) {
                startActivity(FragmentWrapperActivity.intent(CommunityProfileListFragment.class));
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i) throws Resources.NotFoundException {
        super.onThemeChange(i);
        if (i == 2) {
            int color = getResources().getColor(R.color.color_default_primary);
            ListView listView = getListView();
            if (listView == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView).setOverscrollStretchHeader(color);
            ListView listView2 = getListView();
            if (listView2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView2).setOverscrollStretchFooter(color);
            ListView listView3 = getListView();
            if (listView3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView3).setListContentBackgroundColor(0);
            return;
        }
        if (i == 1) {
            int color2 = getResources().getColor(R.color.prefs_background);
            ListView listView4 = getListView();
            if (listView4 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView4).setOverscrollStretchHeader(color2);
            ListView listView5 = getListView();
            if (listView5 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView5).setOverscrollStretchFooter(color2);
            ListView listView6 = getListView();
            if (listView6 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView6).setListContentBackgroundColor(-1);
        }
    }
}
