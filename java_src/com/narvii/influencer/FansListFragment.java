package com.narvii.influencer;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.adapter.NVPagerStatusAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.config.ConfigService;
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
import com.narvii.util.text.TextUtils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* loaded from: classes2.dex */
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

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
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
        bundle2.putString("Source", "Fans List");
        chatInviteFragment.setArguments(bundle2);
        getFragmentManager().beginTransaction().add(chatInviteFragment, "chatInvite").commit();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("id", this.influencerUid);
        bundle.putString(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(this.influencer));
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_fans_list, viewGroup, false);
        layoutInflater.inflate(R.layout.swipe_refresh_layout, (ViewGroup) viewInflate, true);
        return viewInflate;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.overlayLayout = (OverlayLayout) view.findViewById(R.id.overlay);
        setEmptyView((View) null);
        int actionBarOverlaySize = getActionBarOverlaySize() + getStatusBarOverlaySize();
        this.overlayLayout.setLayout(R.layout.fans_list_header, getResources().getDimensionPixelSize(R.dimen.fans_header_height));
        this.overlayLayout.setHeight1(actionBarOverlaySize);
        this.overlayLayout.attach((NVListView) getListView());
        this.header = view.findViewById(R.id.fans_header);
        this.header.setOnClickListener(this);
        updateHeader();
        this.swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.swipe_refresh);
        this.swipeRefreshLayout.setEnabled(false);
        this.swipeRefreshLayout.setTarget((NVListView) getListView());
        this.swipeRefreshLayout.setOnRefreshListener(this);
        this.swipeRefreshLayout.setColorSchemeColors(((ConfigService) getService("config")).getTheme().colorPrimary());
        int actionBarOverlaySize2 = getActionBarOverlaySize() + getStatusBarOverlaySize();
        this.swipeRefreshLayout.setProgressViewOffset(false, getResources().getDimensionPixelOffset(R.dimen.swipe_refresh_start) + externalOffset() + actionBarOverlaySize2, actionBarOverlaySize2 + getResources().getDimensionPixelOffset(R.dimen.swipe_refresh_end) + externalOffset());
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

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addLayouts(R.layout.fans_list_overlay_placeholder);
        mergeAdapter.addAdapter(staticViewAdapter);
        this.fansListAdapter = new FansListAdapter();
        mergeAdapter.addAdapter(this.fansListAdapter, true);
        EmptyAdapter emptyAdapter = new EmptyAdapter(this);
        emptyAdapter.setAdapter(this.fansListAdapter);
        mergeAdapter.addAdapter(emptyAdapter);
        return mergeAdapter;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.share, 1, R.string.share).setIcon(R.drawable.ic_community_share).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.share) {
            User user = this.influencer;
            if (user == null) {
                return true;
            }
            ShareDialog.getShareDialogFromFanClub(this, user).show();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent;
        if (view.getId() != R.id.fans_header) {
            return;
        }
        User user = this.influencer;
        if (user != null) {
            intent = UserProfileFragment.intent(this, user);
        } else {
            intent = FragmentWrapperActivity.intent(UserProfileFragment.class);
            intent.putExtra("id", this.influencerUid);
        }
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeader() {
        if (this.influencer != null) {
            setHasOptionsMenu(true);
            this.totalFans = (TextView) this.header.findViewById(R.id.fans_count);
            this.totalFans.setText(TextUtils.numberFormat.format(this.influencer.getFansCount()));
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

    class FansListAdapter extends NVPagedAdapter<FansInfo, FansInfoListResponse> implements IUserFollow, NotificationListener {
        AccountService accountService;
        private List<FansInfo> l;
        private FansInfo myFansClub;
        String source;
        private UserFollowDelegate userFollowDelegate;

        @Override // com.narvii.user.follow.IUserFollow
        public /* synthetic */ void followFail() {
            IUserFollow.CC.$default$followFail(this);
        }

        @Override // com.narvii.user.follow.IUserFollow
        public /* synthetic */ void followSuccess() {
            IUserFollow.CC.$default$followSuccess(this);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.user.follow.IUserFollow
        public /* synthetic */ boolean needUpdateUserAfterFollow() {
            return IUserFollow.CC.$default$needUpdateUserAfterFollow(this);
        }

        public FansListAdapter() {
            super(FansListFragment.this);
            this.source = "Fans List";
            this.userFollowDelegate = new UserFollowDelegate(this, FansListFragment.this);
            this.accountService = (AccountService) getService("account");
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            List<? extends FansInfo> listRawList = rawList();
            if (listRawList == null) {
                this.l = null;
            } else if (listRawList.isEmpty()) {
                this.l = new ArrayList();
            } else {
                this.l = new ArrayList();
                FansInfo fansInfo = this.myFansClub;
                if (fansInfo != null) {
                    this.l.add(0, fansInfo);
                    ArrayList arrayList = new ArrayList(listRawList);
                    Utils.removeId(arrayList, this.myFansClub.uid());
                    this.l.addAll(arrayList);
                } else {
                    this.l.addAll(listRawList);
                }
            }
            super.notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.l;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<FansInfo> dataType() {
            return FansInfo.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends FansInfoListResponse> responseType() {
            return FansInfoListResponse.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, FansInfoListResponse fansInfoListResponse, int i) {
            if (Utils.isEqualsNotNull("start0", apiRequest.tag())) {
                FansListFragment.this.influencer = fansInfoListResponse.influencerUserProfile;
                this.myFansClub = fansInfoListResponse.myFanClub;
            }
            super.onPageResponse(apiRequest, (ApiRequest) fansInfoListResponse, i);
            FansListFragment.this.updateHeader();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("influencer/" + FansListFragment.this.getStringParam("id") + "/fans");
            if (z) {
                builderPath.tag("start0");
            }
            return builderPath.build();
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

        @Override // com.narvii.list.NVPagedAdapter
        protected List<FansInfo> filterResponseList(List<FansInfo> list, int i) {
            return FansListFragment.this.isMeThisInfluencer ? list : super.filterResponseList(list, i);
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if ((obj instanceof FansInfo) && view2 != null) {
                if (view2.getId() == R.id.fans_thanks_view) {
                    FansInfo fansInfo = (FansInfo) obj;
                    if (fansInfo.isThanksSent()) {
                        startChat(fansInfo.getAuthor());
                    } else {
                        ((TippingThanksView) view2).startLikeAnimation();
                        sendLikeRequest(fansInfo);
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
                    intent2.putExtra("Source", this.source);
                    startActivity(intent2);
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.user.follow.IUserFollow
        public void follow(User user) {
            this.userFollowDelegate.follow(user);
        }

        @Override // com.narvii.user.follow.IUserFollow
        public boolean isSendingFollow(User user) {
            return this.userFollowDelegate.isSendingFollow(user);
        }

        @Override // com.narvii.user.follow.IUserFollow
        public void onFollowStatusUpdated() {
            notifyDataSetChanged();
        }

        private void startChat(User user) {
            if (((AccountService) getService("account")).hasAccount()) {
                if (!canChat(user)) {
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                    aCMAlertDialog.setMessage(R.string.user_disable_chat_invite);
                    aCMAlertDialog.addButton(android.R.string.ok, null);
                    aCMAlertDialog.show();
                    return;
                }
                ChatInviteFragment chatInviteFragment = (ChatInviteFragment) FansListFragment.this.getFragmentManager().findFragmentByTag("chatInvite");
                if (chatInviteFragment != null) {
                    chatInviteFragment.startChat(user.uid());
                    return;
                }
                return;
            }
            ensureLogin(new Intent("chat"));
        }

        private boolean canChat(User user) {
            User userProfile;
            AccountService accountService = (AccountService) getService("account");
            if (!accountService.hasAccount() || (((userProfile = accountService.getUserProfile()) != null && userProfile.isCurator()) || user == null)) {
                return true;
            }
            int privilege = user.getPrivilege(User.CHAT);
            if (privilege != 2) {
                return privilege != 3;
            }
            int i = user.membershipStatus;
            return i == 2 || i == 3;
        }

        @Override // com.narvii.list.NVAdapter
        protected void onLoginResult(boolean z, Intent intent) {
            User user;
            if (z && "follow".equals(intent.getAction()) && (user = (User) JacksonUtils.readAs(intent.getStringExtra(GlobalProfileFragment.KEY_USER), User.class)) != null) {
                follow(user);
            }
            super.onLoginResult(z, intent);
        }

        private void sendLikeRequest(FansInfo fansInfo) {
            new ApiService(this.context).exec(ApiRequest.builder().post().path("/influencer/" + FansListFragment.this.getStringParam("id") + "/fans/" + fansInfo.uid() + "/thank").build(), ApiResponseListener.IGNORE_RESPONSE_LISTENER);
            fansInfo.lastThankedTime = new Date();
        }

        private FansInfo getFansInfoByUser(User user) {
            ArrayList<T> arrayList = this._list;
            if (arrayList == 0 || arrayList.isEmpty()) {
                return null;
            }
            for (int i = 0; i < this._list.size(); i++) {
                FansInfo fansInfo = (FansInfo) this._list.get(i);
                if (android.text.TextUtils.equals(user.id(), fansInfo.getAuthor().id())) {
                    return fansInfo;
                }
            }
            return null;
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
    }

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
            if (listAdapter instanceof NVAdapter) {
                this.boundAdapter = (NVAdapter) listAdapter;
                setDarkTheme(false);
                return;
            }
            throw new RuntimeException("not NVPagedAdapter");
        }
    }
}
