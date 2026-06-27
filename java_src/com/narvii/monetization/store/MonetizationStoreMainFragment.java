package com.narvii.monetization.store;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.StoreItemBaseObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.model.PendingStickerResponse;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.monetization.store.data.StoreItemStubStickCollection;
import com.narvii.monetization.store.data.StoreSection;
import com.narvii.monetization.store.data.StoreSectionListResponse;
import com.narvii.monetization.utils.ClaimGiftDialog;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.wallet.MembershipMainRecyclerFragment;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.WalletBalanceView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class MonetizationStoreMainFragment extends MonetizationStoreBaseFragment implements View.OnClickListener, NotificationListener {
    private static final int MAX_SECTION_ITEM_COUNT = 6;
    private AccountService accountService;
    private ClaimGiftDialog claimCoinDialog;
    private boolean isGlobalSpace;
    private LocalBroadcastManager lbm;
    private StoreSectionsAdapter listAdapter;
    private MembershipService membership;
    private int pendingStickerRequstCount;
    private boolean scrollDone;
    private String scrollSectionGroupId;
    private View subscribeInfoContainerBottom;
    private WalletBalanceView walletBalanceView;
    private List<StoreSection> storeItemSections = new ArrayList();
    private boolean isLoading = false;
    private String errorMsg = null;
    private BroadcastReceiver walletBalanceReceiver = new BroadcastReceiver() { // from class: com.narvii.monetization.store.MonetizationStoreMainFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (StickerHelper.STICKER_PENDING_REQUEST_COUNT_CAHNGE.equals(intent.getAction())) {
                MonetizationStoreMainFragment.this.queryPendingCount();
                return;
            }
            if (MembershipService.ACTION_WALLET_CHANGED.equals(intent.getAction()) || MembershipService.ACTION_COUPONS_CHANGED.equals(intent.getAction())) {
                if (MonetizationStoreMainFragment.this.walletBalanceView != null) {
                    MonetizationStoreMainFragment.this.walletBalanceView.refresh();
                }
            } else if (MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction())) {
                MonetizationStoreMainFragment.this.listAdapter.notifyDataSetChanged();
            }
        }
    };

    @Override // com.narvii.monetization.store.MonetizationStoreBaseFragment
    protected int getLayoutId() {
        return R.layout.monetization_store_main_layout;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "StorePage";
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.lbm = LocalBroadcastManager.getInstance(getContext());
        this.accountService = (AccountService) getService("account");
        this.membership = (MembershipService) getService("membership");
        this.scrollSectionGroupId = getStringParam("scrollSectionGroupId");
        if (bundle != null) {
            this.scrollDone = bundle.getBoolean("scrollDone");
        }
        queryPendingCount();
        this.lbm.registerReceiver(this.walletBalanceReceiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
        this.lbm.registerReceiver(this.walletBalanceReceiver, new IntentFilter(MembershipService.ACTION_COUPONS_CHANGED));
        this.lbm.registerReceiver(this.walletBalanceReceiver, new IntentFilter(StickerHelper.STICKER_PENDING_REQUEST_COUNT_CAHNGE));
        this.lbm.registerReceiver(this.walletBalanceReceiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        this.isGlobalSpace = ((ConfigService) getService("config")).getCommunityId() == 0;
        this.claimCoinDialog = new ClaimGiftDialog(this);
        this.claimCoinDialog.source = "Store";
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.lbm.unregisterReceiver(this.walletBalanceReceiver);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        updateUserView();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("scrollDone", this.scrollDone);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryPendingCount() {
        if (this.accountService.getUserProfile() != null && this.accountService.getUserProfile().isLeader()) {
            new StickerHelper(this).sendPendingRequestCountRequest(new Callback<PendingStickerResponse>() { // from class: com.narvii.monetization.store.MonetizationStoreMainFragment.2
                @Override // com.narvii.util.Callback
                public void call(PendingStickerResponse pendingStickerResponse) {
                    if (MonetizationStoreMainFragment.this.isAdded() && pendingStickerResponse != null) {
                        MonetizationStoreMainFragment.this.pendingStickerRequstCount = pendingStickerResponse.pendingShareRequestCount;
                        if (MonetizationStoreMainFragment.this.listAdapter != null) {
                            MonetizationStoreMainFragment.this.listAdapter.notifyDataSetChanged();
                        }
                    }
                }
            });
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        super.onViewCreated(view, bundle);
        setTitle(getString(R.string.store));
        configRightButton();
        this.subscribeInfoContainerBottom = view.findViewById(R.id.subscribe_info_container_bottom);
        this.subscribeInfoContainerBottom.setVisibility(8);
        this.subscribeInfoContainerBottom.setClickable(true);
        this.subscribeInfoContainerBottom.findViewById(R.id.subscribe_amino_plus_button).setOnClickListener(this);
        this.subscribeInfoContainerBottom.findViewById(R.id.membership_user_info_layout).setOnClickListener(this);
        OverlayLayout overlayLayout = (OverlayLayout) view.findViewById(R.id.overlay);
        if (overlayLayout != null) {
            overlayLayout.attach((NVListView) getListView());
            overlayLayout.setVisibility(0);
            overlayLayout.setLayout(0, getStatusBarOverlaySize() + getActionBarOverlaySize());
            overlayLayout.setHeight1(getStatusBarOverlaySize() + getActionBarOverlaySize());
        }
        updateUserView();
    }

    private void configRightButton() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        this.walletBalanceView = (WalletBalanceView) LayoutInflater.from(getContext()).inflate(R.layout.wallet_balance_account_view, (ViewGroup) null);
        this.walletBalanceView.setCoinBackground(R.drawable.wallet_balance_bg_store, R.drawable.wallet_balance_bg_store_rtl);
        setActionBarRightView(this.walletBalanceView);
        this.walletBalanceView.setOnWalletPreClickListener(new WalletBalanceView.OnPreClickListener() { // from class: com.narvii.monetization.store.-$$Lambda$MonetizationStoreMainFragment$VPT-x3bA0ANt-NbC50XixOYM2rg
            @Override // com.narvii.widget.WalletBalanceView.OnPreClickListener
            public final void onPreClick() {
                this.f$0.lambda$configRightButton$0$MonetizationStoreMainFragment();
            }
        });
        this.walletBalanceView.setOnClaimIconPreClickListener(new WalletBalanceView.OnPreClickListener() { // from class: com.narvii.monetization.store.-$$Lambda$MonetizationStoreMainFragment$yDlWlGliA2KBOTKX27ga7Pbado0
            @Override // com.narvii.widget.WalletBalanceView.OnPreClickListener
            public final void onPreClick() {
                this.f$0.lambda$configRightButton$1$MonetizationStoreMainFragment();
            }
        });
    }

    public /* synthetic */ void lambda$configRightButton$0$MonetizationStoreMainFragment() {
        LogEvent.clickBuilder(this, ActSemantic.checkDetail).area("WalletIcon").send();
    }

    public /* synthetic */ void lambda$configRightButton$1$MonetizationStoreMainFragment() {
        LogEvent.clickBuilder(this, ActSemantic.checkDetail).area("ClaimCoinsIcon").send();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(new MonetizationHeaderAdapter(this));
        this.listAdapter = new StoreSectionsAdapter(this);
        mergeAdapter.addAdapter(this.listAdapter, true);
        mergeAdapter.addAdapter(new MonetizationFooterAdapter(this));
        refreshSectionData();
        return mergeAdapter;
    }

    @Override // com.narvii.monetization.store.MonetizationStoreBaseFragment, com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        listView.setOverscrollHeader(new ColorDrawable(-15527097));
        listView.setOverscrollFooter(new ColorDrawable(-591879));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        refreshSectionData();
        queryPendingCount();
    }

    public void refreshSectionData() {
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.path("/store/sections");
        builder.param("storeSectionGroupIds", "avatar-frame,chat-bubble,sticker");
        ApiService apiService = (ApiService) getService("api");
        this.isLoading = true;
        this.errorMsg = null;
        apiService.exec(builder.build(), new ApiResponseListener<StoreSectionListResponse>(StoreSectionListResponse.class) { // from class: com.narvii.monetization.store.MonetizationStoreMainFragment.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, StoreSectionListResponse storeSectionListResponse) throws Exception {
                List<StoreItem> list;
                MonetizationStoreMainFragment.this.isLoading = false;
                super.onFinish(apiRequest, (ApiRequest) storeSectionListResponse);
                List<StoreSection> sectionList = storeSectionListResponse.getSectionList();
                if (sectionList == null || sectionList.size() == 0) {
                    MonetizationStoreMainFragment.this.storeItemSections.clear();
                    MonetizationStoreMainFragment.this.listAdapter.notifyDataSetChanged();
                    return;
                }
                for (StoreSection storeSection : sectionList) {
                    if ("sticker".equals(storeSection.sectionGroupId) && (list = storeSection.previewStoreItemList) != null && list.size() < 6) {
                        storeSection.previewStoreItemList.add(new StoreItemStubStickCollection(MonetizationStoreMainFragment.this.getContext()));
                    }
                }
                MonetizationStoreMainFragment.this.storeItemSections.clear();
                MonetizationStoreMainFragment.this.storeItemSections.addAll(sectionList);
                MonetizationStoreMainFragment.this.listAdapter.notifyDataSetChanged();
                if (MonetizationStoreMainFragment.this.scrollDone || MonetizationStoreMainFragment.this.scrollSectionGroupId == null) {
                    return;
                }
                MonetizationStoreMainFragment.this.scrollDone = true;
                final int i = -1;
                for (int i2 = 0; i2 < sectionList.size(); i2++) {
                    if (MonetizationStoreMainFragment.this.scrollSectionGroupId.equals(sectionList.get(i2).sectionGroupId)) {
                        i = i2 + 1;
                    }
                }
                if (i != -1) {
                    final NVActivity nVActivity = (NVActivity) MonetizationStoreMainFragment.this.getActivity();
                    if (MonetizationStoreMainFragment.this.getListView() instanceof NVListView) {
                        final NVListView nVListView = (NVListView) MonetizationStoreMainFragment.this.getListView();
                        Utils.handler.post(new Runnable() { // from class: com.narvii.monetization.store.MonetizationStoreMainFragment.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    NVListView.smoothScrollToPositionFromTop(nVListView, i, nVActivity.getActionBarOverlaySize() + nVActivity.getStatusBarOverlaySize());
                                } catch (Exception e) {
                                    Log.e("scroll", e);
                                }
                            }
                        });
                    }
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                MonetizationStoreMainFragment.this.isLoading = false;
                MonetizationStoreMainFragment.this.errorMsg = str;
                MonetizationStoreMainFragment.this.storeItemSections.clear();
                MonetizationStoreMainFragment.this.listAdapter.notifyDataSetChanged();
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.membership_tint_info_layout || id == R.id.membership_user_info_layout || id == R.id.subscribe_amino_plus_button) {
            LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Membership").send();
            if (!this.accountService.hasAccount()) {
                ensureLogin(new Intent());
                return;
            }
            Intent intent = FragmentWrapperActivity.intent(MembershipMainRecyclerFragment.class);
            intent.putExtra("subscribe", true);
            intent.putExtra("Source", "Store");
            startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUserView() {
        boolean z;
        User userProfile = this.accountService.getUserProfile();
        this.walletBalanceView.setVisibility(userProfile == null ? 8 : 0);
        this.walletBalanceView.refresh();
        View viewFindViewById = this.subscribeInfoContainerBottom.findViewById(R.id.subscribe_amino_plus_button);
        View viewFindViewById2 = this.subscribeInfoContainerBottom.findViewById(R.id.membership_user_info_layout);
        viewFindViewById2.setVisibility(0);
        if (userProfile != null) {
            ((NVImageView) viewFindViewById2.findViewById(R.id.avatar)).setImageUrl(userProfile.icon());
            ((TextView) viewFindViewById2.findViewById(R.id.nickname)).setText(userProfile.nickname());
        }
        MembershipService membershipService = this.membership;
        if (membershipService != null && membershipService.isMembership()) {
            viewFindViewById.setVisibility(8);
            viewFindViewById2.setVisibility(0);
            ((ImageView) viewFindViewById2.findViewById(R.id.amino_plus_badge)).setImageResource(R.drawable.ic_amino_plus);
        } else {
            MembershipService membershipService2 = this.membership;
            if (membershipService2 != null && !membershipService2.isAutoRenew() && this.membership.hasMemberShipExpired()) {
                viewFindViewById.setVisibility(8);
                viewFindViewById2.setVisibility(0);
                ((ImageView) viewFindViewById2.findViewById(R.id.amino_plus_badge)).setImageResource(R.drawable.ic_amino_plus_grey);
            } else {
                viewFindViewById.setVisibility(0);
                viewFindViewById2.setVisibility(8);
            }
        }
        String string = null;
        int i = -3145189;
        if (this.membership.isMembership()) {
            if (this.membership.isAutoRenew()) {
                z = false;
                i = 0;
            } else {
                int iExpiringDays = this.membership.expiringDays();
                if (iExpiringDays == 0) {
                    string = getString(R.string.membership_status_expiring_in_0_day);
                } else if (iExpiringDays == 1) {
                    string = getString(R.string.membership_status_expiring_in_1_day);
                } else if (iExpiringDays <= 0 || iExpiringDays > 14) {
                    i = 0;
                } else {
                    string = getString(R.string.membership_status_expiring_in_n_day, Integer.valueOf(iExpiringDays));
                }
                z = false;
            }
        } else {
            int iDaysExpired = this.membership.daysExpired();
            if (iDaysExpired == 0) {
                string = getString(R.string.membership_status_expired_0_day);
            } else if (iDaysExpired == 1) {
                string = getString(R.string.membership_status_expired_1_day);
            } else if (iDaysExpired > 0) {
                string = getString(R.string.membership_status_expired_n_day, Integer.valueOf(iDaysExpired));
            } else {
                string = getString(R.string.membership_status_inactive);
                z = true;
                i = -1996488705;
            }
            z = false;
        }
        TextView textView = (TextView) viewFindViewById2.findViewById(R.id.membership_status);
        textView.setText(string);
        textView.setTextColor(i);
        textView.setTypeface(z ? Typeface.defaultFromStyle(1) : Typeface.defaultFromStyle(0));
        if (this.claimCoinDialog.isShown() || this.claimCoinDialog.isShowing() || !this.membership.canGetNewMemberRewards()) {
            return;
        }
        this.claimCoinDialog.show(this.membership.getClaimCoupon(), false);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if ((notification.obj instanceof StoreItemBaseObject) && notification.action == "update") {
            Iterator<StoreSection> it = this.storeItemSections.iterator();
            while (it.hasNext()) {
                List<StoreItem> list = it.next().previewStoreItemList;
                if (list != null) {
                    Iterator<StoreItem> it2 = list.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            StoreItem next = it2.next();
                            if (Utils.isStringEquals(next.refObjectId, ((StoreItemBaseObject) notification.obj).id())) {
                                next.setCachedRefObject((StoreItemBaseObject) notification.obj);
                                StoreSectionsAdapter storeSectionsAdapter = this.listAdapter;
                                if (storeSectionsAdapter != null) {
                                    storeSectionsAdapter.notifyDataSetChanged();
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private class MonetizationHeaderAdapter extends NVAdapter {
        private Object HEAD_SUB;

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        public MonetizationHeaderAdapter(NVContext nVContext) {
            super(nVContext);
            this.HEAD_SUB = new Object();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.HEAD_SUB;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            CharSequence charSequence;
            if (getItem(i) != this.HEAD_SUB) {
                return null;
            }
            View viewCreateView = createView(R.layout.monetization_store_main_header, viewGroup, view);
            ((NVImageView) viewCreateView.findViewById(R.id.header_banner_animation)).setImageUrl("assets://store_banner_animation.webp");
            viewCreateView.findViewById(R.id.membership_tint_info_layout).setOnClickListener(MonetizationStoreMainFragment.this);
            MembershipService membershipService = (MembershipService) getService("membership");
            CharSequence text = getContext().getText(R.string.subscribe_amino_tint_info);
            if (membershipService.freeTrial()) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(text);
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append(' ');
                spannableStringBuilder.append((CharSequence) getContext().getString(R.string.subscribe_amino_tint_try_today));
                spannableStringBuilder.setSpan(new ForegroundColorSpan(-465124), length, spannableStringBuilder.length(), 0);
                spannableStringBuilder.setSpan(new StyleSpan(1), length, spannableStringBuilder.length(), 0);
                charSequence = spannableStringBuilder;
            } else {
                charSequence = text;
            }
            ((TextView) viewCreateView.findViewById(R.id.membership_tint_info_text)).setText(charSequence);
            MonetizationStoreMainFragment.this.updateUserView();
            return viewCreateView;
        }
    }

    private class StoreSectionsAdapter extends NVAdapter {
        StoreHelper storeHelper;

        public StoreSectionsAdapter(NVContext nVContext) {
            super(nVContext);
            this.storeHelper = new StoreHelper(getContext());
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x005e  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00e5  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x00e8  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x0109  */
        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onItemClick(android.widget.ListAdapter r17, int r18, java.lang.Object r19, android.view.View r20, android.view.View r21) {
            /*
                Method dump skipped, instructions count: 319
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.monetization.store.MonetizationStoreMainFragment.StoreSectionsAdapter.onItemClick(android.widget.ListAdapter, int, java.lang.Object, android.view.View, android.view.View):boolean");
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return !MonetizationStoreMainFragment.this.isLoading || super.isListShown();
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            MonetizationStoreMainFragment.this.refreshSectionData();
            super.refresh(i, callback);
            notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return MonetizationStoreMainFragment.this.errorMsg;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return MonetizationStoreMainFragment.this.storeItemSections.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return MonetizationStoreMainFragment.this.storeItemSections.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            StoreSection storeSection = (StoreSection) getItem(i);
            boolean zEquals = "sticker".equals(storeSection.sectionGroupId);
            AccountService accountService = (AccountService) getService("account");
            boolean z = accountService.hasAccount() && accountService.getUserProfile().isLeader();
            View viewCreateView = createView(R.layout.monetization_store_main_section_layout, viewGroup, view);
            View viewFindViewById = viewCreateView.findViewById(R.id.sticker_pack_entry_root);
            viewFindViewById.setVisibility((!zEquals || MonetizationStoreMainFragment.this.isGlobalSpace) ? 8 : 0);
            TextView textView = (TextView) viewFindViewById.findViewById(R.id.pending_count);
            textView.setText(Utils.getBadgeCount(MonetizationStoreMainFragment.this.pendingStickerRequstCount));
            textView.setVisibility((!z || MonetizationStoreMainFragment.this.pendingStickerRequstCount <= 0) ? 8 : 0);
            viewFindViewById.setOnClickListener(this.subviewClickListener);
            ((TextView) viewCreateView.findViewById(R.id.store_section_title)).setText(storeSection.name);
            viewCreateView.findViewById(R.id.store_section_title_layout).setOnClickListener(this.subviewClickListener);
            Button button = (Button) viewCreateView.findViewById(R.id.store_section_see_all_button);
            button.setText(MonetizationStoreMainFragment.this.getString(R.string.see_all_with_count, Integer.valueOf(storeSection.allItemsCount)));
            button.setOnClickListener(this.subviewClickListener);
            List<StoreItem> list = storeSection.previewStoreItemList;
            button.setVisibility((list == null ? 0 : list.size()) < storeSection.allItemsCount ? 0 : 8);
            NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.store_section_icon);
            nVImageView.setShowPressedMask(false);
            nVImageView.setImageResource(storeSection.icon());
            GridLayout gridLayout = (GridLayout) viewCreateView.findViewById(R.id.item_grid_layout);
            gridLayout.removeAllViews();
            List<StoreItem> list2 = storeSection.previewStoreItemList;
            if (list2 != null) {
                for (StoreItem storeItem : list2) {
                    StoreItemView storeItemView = new StoreItemView(getContext());
                    storeItemView.setStoreItem(storeItem, MonetizationStoreMainFragment.this.membership.isMembership());
                    storeItemView.setClickable(true);
                    storeItemView.setTag(storeItem);
                    storeItemView.setOnClickListener(this.subviewClickListener);
                    GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams();
                    layoutParams.width = (int) (this.context.getContext().getResources().getDisplayMetrics().widthPixels * 0.32f);
                    gridLayout.addView(storeItemView, layoutParams);
                }
            }
            return viewCreateView;
        }
    }

    private class MonetizationFooterAdapter extends NVAdapter {
        private Object FOOT_SUB;

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public MonetizationFooterAdapter(NVContext nVContext) {
            super(nVContext);
            this.FOOT_SUB = new Object();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.FOOT_SUB;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (getItem(i) == this.FOOT_SUB) {
                return createView(R.layout.monetization_store_main_footer, viewGroup, view);
            }
            return null;
        }
    }
}
