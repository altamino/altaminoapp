package com.narvii.monetization.store;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
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
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.ComScoreSectionDispatcher;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
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
import com.narvii.monetization.sticker.shared.SharedStickerCollectionListFragment;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.monetization.store.data.StoreItemStubStickCollection;
import com.narvii.monetization.store.data.StoreSection;
import com.narvii.monetization.store.data.StoreSectionListResponse;
import com.narvii.monetization.utils.ClaimGiftDialog;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.membership.MembershipActivity;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.WalletBalanceView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
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
            if (!MembershipService.ACTION_WALLET_CHANGED.equals(intent.getAction()) && !MembershipService.ACTION_COUPONS_CHANGED.equals(intent.getAction())) {
                if (MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction())) {
                    MonetizationStoreMainFragment.this.listAdapter.notifyDataSetChanged();
                }
            } else if (MonetizationStoreMainFragment.this.walletBalanceView != null) {
                MonetizationStoreMainFragment.this.walletBalanceView.refresh();
            }
        }
    };

    private class MonetizationFooterAdapter extends NVAdapter {
        private Object FOOT_SUB;

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this.FOOT_SUB;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        public MonetizationFooterAdapter(NVContext nVContext) {
            super(nVContext);
            this.FOOT_SUB = new Object();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return getItem(i10).hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (getItem(i10) == this.FOOT_SUB) {
                return createView(R.layout.monetization_store_main_footer, viewGroup, view);
            }
            return null;
        }
    }

    private class MonetizationHeaderAdapter extends NVAdapter {
        private Object HEAD_SUB;

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this.HEAD_SUB;
        }

        public MonetizationHeaderAdapter(NVContext nVContext) {
            super(nVContext);
            this.HEAD_SUB = new Object();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return getItem(i10).hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (getItem(i10) == this.HEAD_SUB) {
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
                    text = spannableStringBuilder;
                }
                ((TextView) viewCreateView.findViewById(R.id.membership_tint_info_text)).setText(text);
                MonetizationStoreMainFragment.this.updateUserView();
                return viewCreateView;
            }
            return null;
        }
    }

    private class StoreSectionsAdapter extends NVAdapter {
        StoreHelper storeHelper;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public StoreSectionsAdapter(NVContext nVContext) {
            super(nVContext);
            this.storeHelper = new StoreHelper(getContext());
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
        public Object getItem(int i10) {
            return MonetizationStoreMainFragment.this.storeItemSections.get(i10);
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return !MonetizationStoreMainFragment.this.isLoading || super.isListShown();
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:59:0x00dc. Please report as an issue. */
        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            String str;
            String str2 = "Category";
            byte b7 = 2;
            String str3 = null;
            if (view2 != null && view2.getId() != R.id.store_section_see_all_button && view2.getId() != R.id.store_section_title_layout) {
                if (!(view2 instanceof StoreItemView)) {
                    if (view2.getId() == R.id.sticker_pack_entry_root) {
                        Intent intent = FragmentWrapperActivity.intent(SharedStickerCollectionListFragment.class);
                        intent.putExtra(SharedStickerCollectionListFragment.KEY_PENDING_COUNT, MonetizationStoreMainFragment.this.pendingStickerRequstCount);
                        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Category");
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                    }
                    return super.onItemClick(listAdapter, i10, obj, view, view2);
                }
                String str4 = ((StoreSection) obj).sectionGroupId;
                ActSemantic actSemantic = ActSemantic.checkDetail;
                str4.hashCode();
                switch (str4.hashCode()) {
                    case -2012915719:
                        b7 = !str4.equals(StoreSection.GROUP_TYPE_AVATAR_FRAME) ? (byte) -1 : (byte) 0;
                        break;
                    case -1890252483:
                        b7 = !str4.equals("sticker") ? (byte) -1 : (byte) 1;
                        break;
                    case 210737313:
                        if (!str4.equals(StoreSection.GROUP_TYPE_CHAT_BUBBLE)) {
                            b7 = -1;
                        }
                        break;
                    default:
                        b7 = -1;
                        break;
                }
                switch (b7) {
                    case 0:
                        actSemantic = ActSemantic.listViewEnter;
                        str3 = "ProfileFramesList";
                        break;
                    case 1:
                        str3 = "StickersList";
                        break;
                    case 2:
                        str3 = "ChatBubblesList";
                        break;
                }
                if (str3 != null) {
                    LogEvent.clickBuilder(MonetizationStoreMainFragment.this, actSemantic).area(str3).send();
                }
                this.storeHelper.openStoreItemDetail((StoreItem) view2.getTag());
                return true;
            }
            String str5 = ((StoreSection) obj).sectionGroupId;
            if (view2 != null) {
                boolean z6 = view2.getId() == R.id.store_section_see_all_button;
                str5.hashCode();
                switch (str5.hashCode()) {
                    case -2012915719:
                        b7 = !str5.equals(StoreSection.GROUP_TYPE_AVATAR_FRAME) ? (byte) -1 : (byte) 0;
                        break;
                    case -1890252483:
                        b7 = !str5.equals("sticker") ? (byte) -1 : (byte) 1;
                        break;
                    case 210737313:
                        if (!str5.equals(StoreSection.GROUP_TYPE_CHAT_BUBBLE)) {
                            b7 = -1;
                        }
                        break;
                    default:
                        b7 = -1;
                        break;
                }
                switch (b7) {
                    case 0:
                        str = z6 ? "ProfileFrameSeeAll" : "ProfileFrameHeader";
                        str3 = str;
                        break;
                    case 1:
                        str = z6 ? "StickersSeeAll" : "StickersHeader";
                        str3 = str;
                        break;
                    case 2:
                        str = z6 ? "ChatBubblesSeeAll" : "ChatBubblesHeader";
                        str3 = str;
                        break;
                }
                if (str3 != null) {
                    LogEvent.clickBuilder(MonetizationStoreMainFragment.this, ActSemantic.listViewEnter).area(str3).send();
                }
            }
            Intent intent2 = FragmentWrapperActivity.intent(StoreSection.getSectionFragment(str5));
            if (view2 != null && view2.getId() == R.id.store_section_see_all_button) {
                str2 = "See All";
            }
            intent2.putExtra(ExternalPostPreviewFragment.SOURCE, str2);
            intent2.putExtra("sectionGroupId", str5);
            intent2.putExtra("sectionGroupInfo", JacksonUtils.writeAsString(obj));
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent2);
            return true;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            MonetizationStoreMainFragment.this.refreshSectionData();
            super.refresh(i10, callback);
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return getItem(i10).hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            boolean z6;
            int i11;
            int i12;
            int size;
            StoreSection storeSection = (StoreSection) getItem(i10);
            boolean zEquals = "sticker".equals(storeSection.sectionGroupId);
            AccountService accountService = (AccountService) getService("account");
            if (accountService.hasAccount() && accountService.getUserProfile().isLeader()) {
                z6 = true;
            } else {
                z6 = false;
            }
            View viewCreateView = createView(R.layout.monetization_store_main_section_layout, viewGroup, view);
            View viewFindViewById = viewCreateView.findViewById(R.id.sticker_pack_entry_root);
            int i13 = 8;
            if (zEquals && !MonetizationStoreMainFragment.this.isGlobalSpace) {
                i11 = 0;
            } else {
                i11 = 8;
            }
            viewFindViewById.setVisibility(i11);
            TextView textView = (TextView) viewFindViewById.findViewById(R.id.pending_count);
            textView.setText(Utils.getBadgeCount(MonetizationStoreMainFragment.this.pendingStickerRequstCount));
            if (z6 && MonetizationStoreMainFragment.this.pendingStickerRequstCount > 0) {
                i12 = 0;
            } else {
                i12 = 8;
            }
            textView.setVisibility(i12);
            viewFindViewById.setOnClickListener(this.subviewClickListener);
            ((TextView) viewCreateView.findViewById(R.id.store_section_title)).setText(storeSection.name);
            viewCreateView.findViewById(R.id.store_section_title_layout).setOnClickListener(this.subviewClickListener);
            Button button = (Button) viewCreateView.findViewById(R.id.store_section_see_all_button);
            button.setText(MonetizationStoreMainFragment.this.getString(R.string.see_all_with_count, Integer.valueOf(storeSection.allItemsCount)));
            button.setOnClickListener(this.subviewClickListener);
            List<StoreItem> list = storeSection.previewStoreItemList;
            if (list == null) {
                size = 0;
            } else {
                size = list.size();
            }
            if (size < storeSection.allItemsCount) {
                i13 = 0;
            }
            button.setVisibility(i13);
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

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.monetization.store.MonetizationStoreBaseFragment
    protected int getLayoutId() {
        return R.layout.monetization_store_main_layout;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return EventConstants.GlobalNavigation.STORE;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$configRightButton$0() {
        LogEvent.clickBuilder(this, ActSemantic.checkDetail).area("WalletIcon").send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$configRightButton$1() {
        LogEvent.clickBuilder(this, ActSemantic.checkDetail).area("ClaimCoinsIcon").send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryPendingCount() {
        if (this.accountService.getUserProfile() == null || !this.accountService.getUserProfile().isLeader()) {
            return;
        }
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

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUserView() {
        String string;
        boolean z6;
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
        if (membershipService == null || !membershipService.isMembership()) {
            MembershipService membershipService2 = this.membership;
            if (membershipService2 == null || membershipService2.isAutoRenew() || !this.membership.hasMemberShipExpired()) {
                viewFindViewById.setVisibility(0);
                viewFindViewById2.setVisibility(8);
            } else {
                viewFindViewById.setVisibility(8);
                viewFindViewById2.setVisibility(0);
                ((ImageView) viewFindViewById2.findViewById(R.id.amino_plus_badge)).setImageResource(R.drawable.ic_amino_plus_grey);
            }
        } else {
            viewFindViewById.setVisibility(8);
            viewFindViewById2.setVisibility(0);
            ((ImageView) viewFindViewById2.findViewById(R.id.amino_plus_badge)).setImageResource(R.drawable.ic_amino_plus);
        }
        int i10 = -3145189;
        if (this.membership.isMembership()) {
            string = null;
            if (this.membership.isAutoRenew()) {
                z6 = false;
                i10 = 0;
            } else {
                int iExpiringDays = this.membership.expiringDays();
                if (iExpiringDays == 0) {
                    string = getString(R.string.membership_status_expiring_in_0_day);
                } else if (iExpiringDays == 1) {
                    string = getString(R.string.membership_status_expiring_in_1_day);
                } else if (iExpiringDays <= 0 || iExpiringDays > 14) {
                    i10 = 0;
                } else {
                    string = getString(R.string.membership_status_expiring_in_n_day, Integer.valueOf(iExpiringDays));
                }
                z6 = false;
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
                i10 = -1996488705;
                z6 = true;
            }
            z6 = false;
        }
        TextView textView = (TextView) viewFindViewById2.findViewById(R.id.membership_status);
        textView.setText(string);
        textView.setTextColor(i10);
        textView.setTypeface(z6 ? Typeface.defaultFromStyle(1) : Typeface.defaultFromStyle(0));
        if (this.claimCoinDialog.isShown() || this.claimCoinDialog.isShowing() || !this.membership.canGetNewMemberRewards()) {
            return;
        }
        this.claimCoinDialog.show(this.membership.getClaimCoupon(), false);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(new MonetizationHeaderAdapter(this));
        StoreSectionsAdapter storeSectionsAdapter = new StoreSectionsAdapter(this);
        this.listAdapter = storeSectionsAdapter;
        mergeAdapter.addAdapter(storeSectionsAdapter, true);
        mergeAdapter.addAdapter(new MonetizationFooterAdapter(this));
        refreshSectionData();
        return mergeAdapter;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if ((notification.obj instanceof StoreItemBaseObject) && notification.action == "update") {
            Iterator<StoreSection> it = this.storeItemSections.iterator();
            while (it.hasNext()) {
                List<StoreItem> list = it.next().previewStoreItemList;
                if (list != null) {
                    for (StoreItem storeItem : list) {
                        if (Utils.isStringEquals(storeItem.refObjectId, ((StoreItemBaseObject) notification.obj).id())) {
                            storeItem.setCachedRefObject((StoreItemBaseObject) notification.obj);
                            StoreSectionsAdapter storeSectionsAdapter = this.listAdapter;
                            if (storeSectionsAdapter == null) {
                                break;
                            }
                            storeSectionsAdapter.notifyDataSetChanged();
                            break;
                        }
                    }
                }
            }
        }
    }

    private void configRightButton() {
        WalletBalanceView walletBalanceView = (WalletBalanceView) LayoutInflater.from(getContext()).inflate(R.layout.wallet_balance_account_view_global_profile, (ViewGroup) null);
        this.walletBalanceView = walletBalanceView;
        setActionBarRightView(walletBalanceView);
        this.walletBalanceView.setOnWalletPreClickListener(new WalletBalanceView.OnPreClickListener() { // from class: com.narvii.monetization.store.a
            @Override // com.narvii.widget.WalletBalanceView.OnPreClickListener
            public final void onPreClick() {
                this.f2520a.lambda$configRightButton$0();
            }
        });
        this.walletBalanceView.setOnClaimIconPreClickListener(new WalletBalanceView.OnPreClickListener() { // from class: com.narvii.monetization.store.b
            @Override // com.narvii.widget.WalletBalanceView.OnPreClickListener
            public final void onPreClick() {
                this.f2521a.lambda$configRightButton$1();
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.membership_tint_info_layout && id != R.id.membership_user_info_layout && id != R.id.subscribe_amino_plus_button) {
            return;
        }
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Membership").send();
        if (!this.accountService.hasAccount()) {
            ensureLogin(new Intent());
            return;
        }
        Intent intentCreateMembershipIntent = MembershipActivity.createMembershipIntent();
        intentCreateMembershipIntent.putExtra("subscribe", true);
        intentCreateMembershipIntent.putExtra(ExternalPostPreviewFragment.SOURCE, "Store");
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intentCreateMembershipIntent);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        boolean z6;
        String str;
        super.onCreate(bundle);
        ComScoreSectionDispatcher.INSTANCE.sectionChangeToNone();
        this.lbm = LocalBroadcastManager.b(getContext());
        this.accountService = (AccountService) getService("account");
        this.membership = (MembershipService) getService("membership");
        this.scrollSectionGroupId = getStringParam("scrollSectionGroupId");
        if (bundle != null) {
            this.scrollDone = bundle.getBoolean("scrollDone");
        }
        if (bundle == null) {
            StatisticsService statisticsService = (StatisticsService) getService("statistics");
            ConfigService configService = (ConfigService) getService("config");
            StatisticsEventBuilder statisticsEventBuilderEvent = statisticsService.event("Store");
            if (configService.getCommunityId() == 0) {
                str = "Global";
            } else {
                str = "Community";
            }
            statisticsEventBuilderEvent.param(EventConstants.CommentPost.TYPE, str).source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("Store Total");
        }
        queryPendingCount();
        this.lbm.c(this.walletBalanceReceiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
        this.lbm.c(this.walletBalanceReceiver, new IntentFilter(MembershipService.ACTION_COUPONS_CHANGED));
        this.lbm.c(this.walletBalanceReceiver, new IntentFilter(StickerHelper.STICKER_PENDING_REQUEST_COUNT_CAHNGE));
        this.lbm.c(this.walletBalanceReceiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        if (((ConfigService) getService("config")).getCommunityId() == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.isGlobalSpace = z6;
        ClaimGiftDialog claimGiftDialog = new ClaimGiftDialog(this);
        this.claimCoinDialog = claimGiftDialog;
        claimGiftDialog.source = "Store";
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.lbm.f(this.walletBalanceReceiver);
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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        setScreenName(EventConstants.GlobalNavigation.STORE);
        updateUserView();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("scrollDone", this.scrollDone);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        setTitle(getString(R.string.store));
        configRightButton();
        View viewFindViewById = view.findViewById(R.id.subscribe_info_container_bottom);
        this.subscribeInfoContainerBottom = viewFindViewById;
        viewFindViewById.setVisibility(8);
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

    public void refreshSectionData() {
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.path("/store/sections");
        builder.param("storeSectionGroupIds", "avatar-frame,chat-bubble,sticker");
        ApiService apiService = (ApiService) getService("api");
        this.isLoading = true;
        this.errorMsg = null;
        apiService.exec(builder.build(), new ApiResponseListener<StoreSectionListResponse>(StoreSectionListResponse.class) { // from class: com.narvii.monetization.store.MonetizationStoreMainFragment.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                MonetizationStoreMainFragment.this.isLoading = false;
                MonetizationStoreMainFragment.this.errorMsg = str;
                MonetizationStoreMainFragment.this.storeItemSections.clear();
                MonetizationStoreMainFragment.this.listAdapter.notifyDataSetChanged();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, StoreSectionListResponse storeSectionListResponse) throws Exception {
                List<StoreItem> list;
                MonetizationStoreMainFragment.this.isLoading = false;
                super.onFinish(apiRequest, storeSectionListResponse);
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
                final int i10 = -1;
                for (int i11 = 0; i11 < sectionList.size(); i11++) {
                    if (MonetizationStoreMainFragment.this.scrollSectionGroupId.equals(sectionList.get(i11).sectionGroupId)) {
                        i10 = i11 + 1;
                    }
                }
                if (i10 != -1) {
                    final NVActivity nVActivity = (NVActivity) MonetizationStoreMainFragment.this.getActivity();
                    if (MonetizationStoreMainFragment.this.getListView() instanceof NVListView) {
                        final NVListView nVListView = (NVListView) MonetizationStoreMainFragment.this.getListView();
                        Utils.handler.post(new Runnable() { // from class: com.narvii.monetization.store.MonetizationStoreMainFragment.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    NVListView.smoothScrollToPositionFromTop(nVListView, i10, nVActivity.getActionBarOverlaySize() + nVActivity.getStatusBarOverlaySize());
                                } catch (Exception e) {
                                    Log.e("scroll", e);
                                }
                            }
                        });
                    }
                }
            }
        });
    }
}
