package com.narvii.monetization.avatarframe;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.IStoreItem;
import com.narvii.model.NVObject;
import com.narvii.model.Sticker;
import com.narvii.model.StoreItemBaseObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.monetization.StoreItemOwnStatusController;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.avatarframe.loader.AvatarFrameLoader;
import com.narvii.monetization.store.MonetizationStoreBaseFragment;
import com.narvii.monetization.store.StoreHelper;
import com.narvii.monetization.store.StoreItemView;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.monetization.store.data.StoreItemListResponse;
import com.narvii.monetization.store.data.StoreSection;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.share.ShareDialog;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.MoodHelper;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.MoodView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class MonetizationStoreAvatarFrameFragment extends MonetizationStoreBaseFragment implements NotificationListener {
    private AccountService accountService;
    private ImageView avatarFrameError;
    private AvatarFrameLoader avatarFrameLoader;
    private SpinningView avatarFrameLoading;
    private UserAvatarLayout avatarLayout;
    private CommunityConfigHelper communityConfigHelper;
    private ConfigService configService;
    private AvatarFrame curLoadingFrame;
    private StoreItem defaultSelectedStoreItem;
    private BroadcastReceiver localReceiver = new BroadcastReceiver() { // from class: com.narvii.monetization.avatarframe.MonetizationStoreAvatarFrameFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction())) {
                MonetizationStoreAvatarFrameFragment.this.storeItemListAdapter.notifyDataSetChanged();
            }
        }
    };
    private MembershipService membershipService;
    private MoodView moodView;
    private StoreItem selectedStoreItem;
    private StoreItemOwnStatusController statusController;
    private StoreItemStatusView statusView;
    private StoreItemListAdapter storeItemListAdapter;
    private StoreItemNameView storeItemNameView;
    private User user;

    @Override // com.narvii.monetization.store.MonetizationStoreBaseFragment
    protected int getLayoutId() {
        return R.layout.monetization_store_avatar_frame_layout;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "StoreProfileFrameDetailPage";
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.avatarFrameLoader = (AvatarFrameLoader) getService("avatarFrameLoader");
        this.accountService = (AccountService) getService("account");
        this.membershipService = (MembershipService) getService("membership");
        this.configService = (ConfigService) getService("config");
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.user = this.accountService.getUserProfile();
        registerLocalReceiver(this.localReceiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        AvatarFrame avatarFrame = (AvatarFrame) JacksonUtils.readAs(getStringParam(CommunityDetailFragment.KEY_COMMUNITY), AvatarFrame.class);
        this.defaultSelectedStoreItem = avatarFrame == null ? null : StoreItem.wrapStoreItem(avatarFrame);
        if (bundle != null) {
            this.selectedStoreItem = (StoreItem) JacksonUtils.readAs(bundle.getString("selectedStoreItem"), StoreItem.class);
        } else {
            this.selectedStoreItem = this.defaultSelectedStoreItem;
        }
        prefetchTargetAvatarFrame();
        setTitle((CharSequence) null);
        setHasOptionsMenu(true);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.share, 1, R.string.share).setIcon(R.drawable.ic_community_share).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        menu.findItem(R.string.share).setVisible(this.selectedStoreItem != null);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.share) {
            StoreItem storeItem = this.selectedStoreItem;
            if (storeItem == null) {
                return true;
            }
            NVObject refObject = storeItem.getRefObject();
            if (refObject instanceof StoreItemBaseObject) {
                ShareDialog.getShareDialogFromStoreItem(this, (StoreItemBaseObject) refObject).show();
            }
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.avatarFrameLoader.removeCallbackByTag(this);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.localReceiver);
        super.onDestroy();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("selectedStoreItem", JacksonUtils.writeAsString(this.selectedStoreItem));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.avatarLayout = (UserAvatarLayout) view.findViewById(R.id.user_avatar_layout);
        this.storeItemNameView = (StoreItemNameView) view.findViewById(R.id.item_name);
        this.statusView = (StoreItemStatusView) view.findViewById(R.id.item_status_view);
        this.statusView.forceStatusExtraHintHeight(true);
        this.avatarFrameLoading = (SpinningView) view.findViewById(R.id.avatar_frame_loading);
        this.avatarFrameError = (ImageView) view.findViewById(R.id.avatar_frame_error);
        this.moodView = (MoodView) view.findViewById(R.id.mood);
        if (this.configService.getCommunityId() == 0) {
            this.moodView.setVisibility(8);
        } else {
            this.moodView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.avatarframe.MonetizationStoreAvatarFrameFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (MonetizationStoreAvatarFrameFragment.this.user == null) {
                        return;
                    }
                    MonetizationStoreAvatarFrameFragment monetizationStoreAvatarFrameFragment = MonetizationStoreAvatarFrameFragment.this;
                    MoodHelper.popupOnlineStatusMenu(monetizationStoreAvatarFrameFragment, monetizationStoreAvatarFrameFragment.user, new Callback<Integer>() { // from class: com.narvii.monetization.avatarframe.MonetizationStoreAvatarFrameFragment.2.1
                        @Override // com.narvii.util.Callback
                        public void call(Integer num) {
                            if (MonetizationStoreAvatarFrameFragment.this.user != null) {
                                MonetizationStoreAvatarFrameFragment.this.user.onlineStatus = num.intValue();
                            }
                            MonetizationStoreAvatarFrameFragment.this.updateMood();
                        }
                    });
                }
            });
        }
        StoreItem storeItem = this.selectedStoreItem;
        if (storeItem != null && (storeItem.getRefObject() instanceof AvatarFrame)) {
            final AvatarFrame avatarFrame = (AvatarFrame) this.selectedStoreItem.getRefObject();
            Utils.post(new Runnable() { // from class: com.narvii.monetization.avatarframe.MonetizationStoreAvatarFrameFragment.3
                @Override // java.lang.Runnable
                public void run() {
                    MonetizationStoreAvatarFrameFragment.this.loadAvatarFrame(avatarFrame);
                }
            });
        } else {
            refreshUserAvatar(null, false, false);
        }
        refreshUserViewDescription();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, (int) Utils.dpToPx(getContext(), 7.0f), (int) Utils.dpToPx(getContext(), 7.0f), (int) Utils.dpToPx(getContext(), 15.0f), 0);
        this.storeItemListAdapter = new StoreItemListAdapter(this);
        divideColumnAdapter.setAdapter(this.storeItemListAdapter, 3);
        return divideColumnAdapter;
    }

    private void prefetchTargetAvatarFrame() {
        String stringParam = getStringParam("id");
        if (TextUtils.isEmpty(stringParam)) {
            return;
        }
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("/avatar-frame/" + stringParam).build(), new ApiResponseListener<AvatarFrameResponse>(AvatarFrameResponse.class) { // from class: com.narvii.monetization.avatarframe.MonetizationStoreAvatarFrameFragment.4
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, AvatarFrameResponse avatarFrameResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) avatarFrameResponse);
                AvatarFrame avatarFrame = avatarFrameResponse.avatarFrame;
                MonetizationStoreAvatarFrameFragment.this.defaultSelectedStoreItem = avatarFrame == null ? null : StoreItem.wrapStoreItem(avatarFrame);
                if (Utils.isIdEquals(MonetizationStoreAvatarFrameFragment.this.selectedStoreItem, MonetizationStoreAvatarFrameFragment.this.defaultSelectedStoreItem) || MonetizationStoreAvatarFrameFragment.this.selectedStoreItem == null) {
                    MonetizationStoreAvatarFrameFragment monetizationStoreAvatarFrameFragment = MonetizationStoreAvatarFrameFragment.this;
                    monetizationStoreAvatarFrameFragment.selectAvatarFrame(monetizationStoreAvatarFrameFragment.defaultSelectedStoreItem);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                NVToast.makeText(MonetizationStoreAvatarFrameFragment.this.getContext(), str, 0).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshUserAvatar(AvatarFrameConfig avatarFrameConfig, boolean z, boolean z2) {
        int moodColor;
        this.avatarLayout.setAvatarFrameConfig(avatarFrameConfig);
        this.avatarLayout.markAvatarFrameHide(z);
        this.avatarLayout.setUser(this.user, this.membershipService.isMembership());
        if (this.configService.getCommunityId() != 0) {
            if (z2) {
                updateMood();
                return;
            }
            if (avatarFrameConfig == null && !z) {
                updateMood();
                return;
            }
            if (avatarFrameConfig != null) {
                moodColor = avatarFrameConfig.getMoodColor();
            } else {
                User user = this.user;
                moodColor = (user != null && user.isSubscribeMemberShip() && this.communityConfigHelper.isPremiumFeatureEnabled()) ? MoodView.borderColorMembership : MoodView.borderColorDefault;
            }
            this.moodView.updateMoodColor(moodColor);
        }
    }

    private void refreshUserViewDescription() {
        IStoreItem defaultAvatarFrame;
        if (this.statusController == null) {
            this.statusController = new AvatarFrameOwnStatusController(this, this.statusView) { // from class: com.narvii.monetization.avatarframe.MonetizationStoreAvatarFrameFragment.5
                @Override // com.narvii.monetization.avatarframe.AvatarFrameOwnStatusController, com.narvii.monetization.StoreItemOwnStatusController
                protected void onPurchaseSuccess(NVObject nVObject) {
                    super.onPurchaseSuccess(nVObject);
                    Utils.postDelayed(new Runnable() { // from class: com.narvii.monetization.avatarframe.MonetizationStoreAvatarFrameFragment.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            onClickUseItem();
                        }
                    }, 300L);
                }
            };
            this.statusController.onCreate();
        }
        StoreItem storeItem = this.selectedStoreItem;
        if (storeItem != null && (storeItem.getRefObject() instanceof IStoreItem)) {
            this.storeItemNameView.setVisibility(0);
            this.storeItemNameView.setStoreItem((IStoreItem) this.selectedStoreItem.getRefObject());
            this.statusController.setStoreItem((IStoreItem) this.selectedStoreItem.getRefObject());
        } else {
            if (this.selectedStoreItem == null) {
                User user = this.user;
                User.AvatarFrameLite avatarFrameLite = user == null ? null : user.avatarFrame;
                if (avatarFrameLite != null) {
                    defaultAvatarFrame = new StubCurrentAvatarFrame(avatarFrameLite);
                } else {
                    defaultAvatarFrame = new DefaultAvatarFrame(this.membershipService.isMembership(), getContext());
                }
                this.storeItemNameView.setStoreItem(defaultAvatarFrame);
                this.statusController.setStoreItem(defaultAvatarFrame);
                return;
            }
            this.storeItemNameView.setVisibility(4);
            this.statusView.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMood() {
        Sticker mood = MoodHelper.getMood(this.user, this);
        this.moodView.setAnimate(!Sticker.isEmpty(mood));
        this.moodView.setMoodSticker(this.user, mood);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectAvatarFrame(StoreItem storeItem) {
        this.selectedStoreItem = storeItem;
        invalidateOptionsMenu();
        refreshUserViewDescription();
        NVObject refObject = storeItem.getRefObject();
        if (refObject instanceof AvatarFrame) {
            loadAvatarFrame((AvatarFrame) refObject);
        }
        this.storeItemListAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAvatarFrame(AvatarFrame avatarFrame) {
        this.curLoadingFrame = avatarFrame;
        refreshUserAvatar(null, true, true);
        this.avatarFrameLoading.setVisibility(0);
        this.avatarFrameError.setVisibility(8);
        this.avatarFrameLoader.load(avatarFrame, avatarFrame.frameId, this, new AvatarFrameLoader.AvatarFrameLoaderCallback() { // from class: com.narvii.monetization.avatarframe.MonetizationStoreAvatarFrameFragment.6
            @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
            public void onProgressUpdate(int i, int i2, String str) {
            }

            @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
            public void onPostExecute(AvatarFrameConfig avatarFrameConfig, String str) {
                if (TextUtils.equals(MonetizationStoreAvatarFrameFragment.this.curLoadingFrame.getFrameId(), avatarFrameConfig.id)) {
                    MonetizationStoreAvatarFrameFragment.this.avatarFrameLoading.setVisibility(8);
                    MonetizationStoreAvatarFrameFragment.this.refreshUserAvatar(avatarFrameConfig, false, false);
                }
            }

            @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
            public void onError(String str, String str2, Exception exc) {
                if (TextUtils.equals(MonetizationStoreAvatarFrameFragment.this.curLoadingFrame.getFrameId(), str2)) {
                    MonetizationStoreAvatarFrameFragment.this.avatarFrameLoading.setVisibility(8);
                    MonetizationStoreAvatarFrameFragment.this.avatarFrameError.setVisibility(0);
                }
            }
        });
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        List<?> list;
        if ("update".equals(notification.action)) {
            if ((notification.obj instanceof User) && this.configService.getCommunityId() != 0) {
                this.user = (User) notification.obj;
                updateMood();
                return;
            }
            if (!(notification.obj instanceof StoreItemBaseObject) || (list = this.storeItemListAdapter.list()) == null) {
                return;
            }
            for (Object obj : list) {
                if (obj instanceof StoreItem) {
                    StoreItem storeItem = (StoreItem) obj;
                    if (Utils.isStringEquals(storeItem.refObjectId, ((StoreItemBaseObject) notification.obj).id())) {
                        storeItem.setCachedRefObject((StoreItemBaseObject) notification.obj);
                        StoreItemListAdapter storeItemListAdapter = this.storeItemListAdapter;
                        if (storeItemListAdapter != null) {
                            storeItemListAdapter.notifyDataSetChanged();
                            return;
                        }
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSameStoreItem(StoreItem storeItem, StoreItem storeItem2) {
        if (storeItem == storeItem2) {
            return true;
        }
        if (storeItem == null || storeItem2 == null) {
            return false;
        }
        return TextUtils.equals(storeItem.id(), storeItem2.id());
    }

    private class StoreItemListAdapter extends NVPagedAdapter {
        private ArrayList<StoreItem> dataList;
        StoreHelper storeHelper;

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 30;
        }

        public StoreItemListAdapter(NVContext nVContext) {
            super(nVContext);
            this.storeHelper = new StoreHelper(getContext());
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected Class dataType() {
            return StoreItem.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected Class responseType() {
            return StoreItemListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i, Callback callback) {
            super.refresh(i | 512, callback);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/store/items");
            builderPath.param("sectionGroupId", StoreSection.GROUP_TYPE_AVATAR_FRAME);
            return builderPath.build();
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            List listRawList = rawList();
            if (listRawList == null) {
                this.dataList = null;
            } else {
                this.dataList = new ArrayList<>();
            }
            this.dataList.addAll(listRawList);
            if (MonetizationStoreAvatarFrameFragment.this.defaultSelectedStoreItem != null) {
                Utils.removeId(this.dataList, MonetizationStoreAvatarFrameFragment.this.defaultSelectedStoreItem.id());
                this.dataList.add(0, MonetizationStoreAvatarFrameFragment.this.defaultSelectedStoreItem);
            }
            super.notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.dataList;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            StoreItemView storeItemView = new StoreItemView(getContext());
            StoreItem storeItem = (StoreItem) obj;
            storeItemView.setStoreItem(storeItem, MonetizationStoreAvatarFrameFragment.this.membershipService.isMembership());
            MonetizationStoreAvatarFrameFragment monetizationStoreAvatarFrameFragment = MonetizationStoreAvatarFrameFragment.this;
            storeItemView.setIsSelected(monetizationStoreAvatarFrameFragment.isSameStoreItem(monetizationStoreAvatarFrameFragment.selectedStoreItem, storeItem));
            storeItemView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            return storeItemView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof StoreItem) {
                StoreItem storeItem = (StoreItem) obj;
                if (storeItem.refObjectType == 122) {
                    MonetizationStoreAvatarFrameFragment.this.selectAvatarFrame(storeItem);
                } else {
                    this.storeHelper.openStoreItemDetail(storeItem);
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
