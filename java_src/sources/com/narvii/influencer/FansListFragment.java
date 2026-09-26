package com.narvii.influencer;

import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.adapter.NVPagerStatusAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.User;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.share.ShareDialog;
import com.narvii.theme.ThemePackService;
import com.narvii.tipping.TippingThanksView;
import com.narvii.user.follow.IUserFollow;
import com.narvii.user.follow.UserFollowDelegate;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class FansListFragment extends NVListFragment implements View.OnClickListener {
    AccountService accountService;
    FansListAdapter fansListAdapter;
    View header;
    private User influencer;
    private String influencerUid;
    private boolean isMeThisInfluencer;
    private OverlayLayout overlayLayout;
    SwipeRefreshLayout swipeRefreshLayout;
    TextView totalFans;

    class EmptyAdapter extends NVPagerStatusAdapter {
        @Override // com.narvii.adapter.NVPagerStatusAdapter
        protected int emptyLayoutId() {
            return R.layout.fans_list_empty_view;
        }

        public EmptyAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.adapter.NVPagerStatusAdapter
        public void setAdapter(ListAdapter listAdapter) {
            if (!(listAdapter instanceof NVAdapter)) {
                throw new RuntimeException("not NVPagedAdapter");
            }
            this.boundAdapter = (NVAdapter) listAdapter;
            setDarkTheme(false);
        }
    }

    class FansListAdapter extends NVPagedAdapter<FansInfo, FansInfoListResponse> implements IUserFollow, NotificationListener {
        AccountService accountService;
        private List<FansInfo> l;
        private FansInfo myFansClub;
        String source;
        private UserFollowDelegate userFollowDelegate;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<FansInfo> dataType() {
            return FansInfo.class;
        }

        @Override // com.narvii.user.follow.IUserFollow
        public /* synthetic */ void followFail() {
            com.narvii.user.follow.a.a(this);
        }

        @Override // com.narvii.user.follow.IUserFollow
        public /* synthetic */ void followSuccess() {
            com.narvii.user.follow.a.b(this);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.l;
        }

        @Override // com.narvii.user.follow.IUserFollow
        public /* synthetic */ boolean needUpdateUserAfterFollow() {
            return com.narvii.user.follow.a.c(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends FansInfoListResponse> responseType() {
            return FansInfoListResponse.class;
        }

        public FansListAdapter() {
            super(FansListFragment.this);
            this.source = "Fans List";
            this.userFollowDelegate = new UserFollowDelegate(this, FansListFragment.this);
            this.accountService = (AccountService) getService("account");
        }

        private boolean canChat(User user) {
            AccountService accountService = (AccountService) getService("account");
            if (!accountService.hasAccount()) {
                return true;
            }
            User userProfile = accountService.getUserProfile();
            if ((userProfile != null && userProfile.isCurator()) || user == null) {
                return true;
            }
            int privilege = user.getPrivilege(User.CHAT);
            if (privilege != 2) {
                return privilege != 3;
            }
            int i10 = user.membershipStatus;
            return i10 == 2 || i10 == 3;
        }

        private FansInfo getFansInfoByUser(User user) {
            ArrayList<T> arrayList = this._list;
            if (arrayList == 0 || arrayList.isEmpty()) {
                return null;
            }
            for (int i10 = 0; i10 < this._list.size(); i10++) {
                FansInfo fansInfo = (FansInfo) this._list.get(i10);
                if (TextUtils.equals(user.id(), fansInfo.getAuthor().id())) {
                    return fansInfo;
                }
            }
            return null;
        }

        private void sendLikeRequest(@NonNull FansInfo fansInfo) {
            new ApiService(this.context).exec(ApiRequest.builder().post().path("/influencer/" + FansListFragment.this.getStringParam("id") + "/fans/" + fansInfo.uid() + "/thank").build(), ApiResponseListener.IGNORE_RESPONSE_LISTENER);
            fansInfo.lastThankedTime = new Date();
        }

        private void startChat(User user) {
            if (!((AccountService) getService("account")).hasAccount()) {
                ensureLogin(new Intent("chat"));
                return;
            }
            if (canChat(user)) {
                ChatInviteFragment chatInviteFragment = (ChatInviteFragment) FansListFragment.this.getFragmentManager().m0("chatInvite");
                if (chatInviteFragment != null) {
                    chatInviteFragment.startChat(user.uid());
                    return;
                }
                return;
            }
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setMessage(R.string.user_disable_chat_invite);
            aCMAlertDialog.addButton(android.R.string.ok, null);
            aCMAlertDialog.show();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<FansInfo> filterResponseList(List<FansInfo> list, int i10) {
            return FansListFragment.this.isMeThisInfluencer ? list : super.filterResponseList(list, i10);
        }

        @Override // com.narvii.user.follow.IUserFollow
        public void follow(User user) {
            this.userFollowDelegate.follow(user);
            ((StatisticsService) getService("statistics")).event("Follow User").userPropInc("Number of Friends").source(this.source);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof FansInfo)) {
                return null;
            }
            FansInfo fansInfo = (FansInfo) obj;
            fansInfo.isTipperAccessible = fansInfo.isAccessibleByUser(null);
            FansListItemCell fansListItemCell = (FansListItemCell) createView(R.layout.item_fans_list, viewGroup, view);
            fansListItemCell.setFansInfo(fansInfo, FansListFragment.this.isMeThisInfluencer, Utils.isEqualsNotNull(this.accountService.getUserId(), fansInfo.getAuthor() != null ? fansInfo.getAuthor().id() : null), isSendingFollow(fansInfo.getAuthor()));
            fansListItemCell.setOnClickListener(this.subviewClickListener);
            fansListItemCell.findViewById(R.id.fans_thanks_view).setOnClickListener(this.subviewClickListener);
            fansListItemCell.findViewById(R.id.user_follow).setOnClickListener(this.subviewClickListener);
            return fansListItemCell;
        }

        @Override // com.narvii.user.follow.IUserFollow
        public boolean isSendingFollow(User user) {
            return this.userFollowDelegate.isSendingFollow(user);
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if ((obj instanceof FansInfo) && view2 != null) {
                if (view2.getId() == R.id.fans_thanks_view) {
                    FansInfo fansInfo = (FansInfo) obj;
                    if (fansInfo.isThanksSent()) {
                        startChat(fansInfo.getAuthor());
                    } else {
                        ((TippingThanksView) view2).startLikeAnimation();
                        sendLikeRequest(fansInfo);
                        ((StatisticsService) getService("statistics")).event("Thanks Fan").userPropInc("Thanks Fan Total");
                    }
                    return true;
                }
                if (view2.getId() == R.id.user_follow) {
                    Intent intent = new Intent("follow");
                    intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(((FansInfo) obj).getAuthor()));
                    ensureLogin(intent);
                    return true;
                }
                Intent intent2 = UserProfileFragment.intent(this, ((FansInfo) obj).getAuthor());
                if (intent2 != null) {
                    intent2.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent2);
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.list.NVAdapter
        protected void onLoginResult(boolean z6, Intent intent) {
            User user;
            if (z6 && "follow".equals(intent.getAction()) && (user = (User) JacksonUtils.readAs(intent.getStringExtra(GlobalProfileFragment.KEY_USER), User.class)) != null) {
                follow(user);
            }
            super.onLoginResult(z6, intent);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            Object obj = notification.obj;
            if (obj instanceof User) {
                FansInfo fansInfoByUser = getFansInfoByUser((User) obj);
                if (fansInfoByUser == null) {
                    return;
                }
                fansInfoByUser.fansUserProfile = (User) notification.obj;
                String str = notification.action;
                if (str == "update" || str == "edit") {
                    editList(notification, false);
                }
                notifyDataSetChanged();
            }
            Object obj2 = notification.obj;
            if ((obj2 instanceof FanClub) && Utils.isEqualsNotNull(((FanClub) obj2).targetUid, FansListFragment.this.influencerUid) && Utils.isEqualsNotNull(notification.action, "new")) {
                editList(notification, false);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, FansInfoListResponse fansInfoListResponse, int i10) {
            if (Utils.isEqualsNotNull("start0", apiRequest.tag())) {
                FansListFragment.this.influencer = fansInfoListResponse.influencerUserProfile;
                this.myFansClub = fansInfoListResponse.myFanClub;
            }
            super.onPageResponse(apiRequest, fansInfoListResponse, i10);
            FansListFragment.this.updateHeader();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("influencer/" + FansListFragment.this.getStringParam("id") + "/fans");
            if (z6) {
                builderPath.tag("start0");
            }
            return builderPath.build();
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            List<? extends FansInfo> listRawList = rawList();
            if (listRawList == null) {
                this.l = null;
            } else if (listRawList.isEmpty()) {
                this.l = new ArrayList();
            } else {
                ArrayList arrayList = new ArrayList();
                this.l = arrayList;
                FansInfo fansInfo = this.myFansClub;
                if (fansInfo != null) {
                    arrayList.add(0, fansInfo);
                    ArrayList arrayList2 = new ArrayList(listRawList);
                    Utils.removeId(arrayList2, this.myFansClub.uid());
                    this.l.addAll(arrayList2);
                } else {
                    arrayList.addAll(listRawList);
                }
            }
            super.notifyDataSetChanged();
        }

        @Override // com.narvii.user.follow.IUserFollow
        public void onFollowStatusUpdated() {
            notifyDataSetChanged();
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeader() {
        if (this.influencer != null) {
            setHasOptionsMenu(true);
            TextView textView = (TextView) this.header.findViewById(R.id.fans_count);
            this.totalFans = textView;
            textView.setText(com.narvii.util.text.TextUtils.numberFormat.format(this.influencer.getFansCount()));
            Object[] objArr = new Object[1];
            objArr[0] = this.influencer.nickname() == null ? "" : this.influencer.nickname();
            setTitle(getString(R.string.someone_s_club, objArr));
            ((NVImageView) this.header.findViewById(R.id.bg)).setImageUrl(this.influencer.icon());
            View viewFindViewById = this.header.findViewById(R.id.gradient_mask);
            int themeColor = ((ThemePackService) getService("themePack")).getThemeColor(((ConfigService) getService("config")).getCommunityId());
            GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{1728053247 & themeColor, themeColor & (-855638017)});
            gradientDrawable.setGradientType(0);
            viewFindViewById.setBackgroundDrawable(gradientDrawable);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addLayouts(R.layout.fans_list_overlay_placeholder);
        mergeAdapter.addAdapter(staticViewAdapter);
        FansListAdapter fansListAdapter = new FansListAdapter();
        this.fansListAdapter = fansListAdapter;
        mergeAdapter.addAdapter(fansListAdapter, true);
        EmptyAdapter emptyAdapter = new EmptyAdapter(this);
        emptyAdapter.setAdapter(this.fansListAdapter);
        mergeAdapter.addAdapter(emptyAdapter);
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        this.fansListAdapter.refresh(1, new Callback<Integer>() { // from class: com.narvii.influencer.FansListFragment.1
            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                FansListFragment.this.swipeRefreshLayout.setRefreshing(false);
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent;
        if (view.getId() == R.id.fans_header) {
            User user = this.influencer;
            if (user != null) {
                intent = UserProfileFragment.intent(this, user);
            } else {
                intent = FragmentWrapperActivity.intent(UserProfileFragment.class);
                intent.putExtra("id", this.influencerUid);
            }
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.accountService = (AccountService) getService("account");
        if (bundle != null) {
            this.influencerUid = bundle.getString("id");
            this.influencer = (User) JacksonUtils.readAs(bundle.getString(GlobalProfileFragment.KEY_USER), User.class);
        } else {
            this.influencerUid = getStringParam("id");
            this.influencer = (User) JacksonUtils.readAs(getStringParam(GlobalProfileFragment.KEY_USER), User.class);
        }
        this.isMeThisInfluencer = Utils.isEqualsNotNull(this.accountService.getUserId(), this.influencerUid);
        ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
        Bundle bundle2 = new Bundle();
        bundle2.putString(ExternalPostPreviewFragment.SOURCE, "Fans List");
        chatInviteFragment.setArguments(bundle2);
        getFragmentManager().q().e(chatInviteFragment, "chatInvite").j();
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Fans List Page Opened").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("Fans List Page Opened Total");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.share, 1, R.string.share).setIcon(R.drawable.ic_community_share).setShowAsAction(2);
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_fans_list, viewGroup, false);
        layoutInflater.inflate(R.layout.swipe_refresh_layout, (ViewGroup) viewInflate, true);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.share) {
            User user = this.influencer;
            if (user != null) {
                ShareDialog.getShareDialogFromFanClub(this, user).show();
                return true;
            }
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("id", this.influencerUid);
        bundle.putString(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(this.influencer));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.overlayLayout = (OverlayLayout) view.findViewById(R.id.overlay);
        setEmptyView((View) null);
        int actionBarOverlaySize = getActionBarOverlaySize() + getStatusBarOverlaySize();
        this.overlayLayout.setLayout(R.layout.fans_list_header, getResources().getDimensionPixelSize(R.dimen.fans_header_height));
        this.overlayLayout.setHeight1(actionBarOverlaySize);
        this.overlayLayout.attach((NVListView) getListView());
        View viewFindViewById = view.findViewById(R.id.fans_header);
        this.header = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        updateHeader();
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.swipe_refresh);
        this.swipeRefreshLayout = swipeRefreshLayout;
        swipeRefreshLayout.setEnabled(false);
        this.swipeRefreshLayout.setTarget((NVListView) getListView());
        this.swipeRefreshLayout.setOnRefreshListener(this);
        this.swipeRefreshLayout.setColorSchemeColors(((ConfigService) getService("config")).getTheme().colorPrimary());
        int actionBarOverlaySize2 = getActionBarOverlaySize() + getStatusBarOverlaySize();
        this.swipeRefreshLayout.setProgressViewOffset(false, getResources().getDimensionPixelOffset(R.dimen.swipe_refresh_start) + externalOffset() + actionBarOverlaySize2, actionBarOverlaySize2 + getResources().getDimensionPixelOffset(R.dimen.swipe_refresh_end) + externalOffset());
    }
}
