package com.narvii.wallet;

import android.R;
import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Looper;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.android.billingclient.api.SkuDetails;
import com.google.android.material.appbar.AppBarLayout;
import com.narvii.account.AccountService;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.influencer.MySubscriptionListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.coupons.CouponListFragment;
import com.narvii.monetization.store.MonetizationStoreMainFragment;
import com.narvii.monetization.utils.ClaimGiftDialog;
import com.narvii.navigator.Navigator;
import com.narvii.nested.FakeActionBar;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.pushservice.PushPayload;
import com.narvii.pushservice.PushService;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.wallet.membership.MembershipActivity;
import com.narvii.wallet.optinads.OptinAds;
import com.narvii.wallet.optinads.OptinAdsHistory;
import com.narvii.wallet.optinads.OptinAdsManageFragment;
import com.narvii.wallet.optinads.OptinAdsResponse;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.narvii.widget.NVDrawableAnimatedView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.safedk.android.utils.Logger;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public class WalletRecyclerFragment extends NVRecyclerViewFragment implements View.OnClickListener, PushService.PushListener, AppBarLayout.h {
    private AdsVideoStats adsVideoStats;
    private AppBarLayout appBarLayout;
    boolean businessCoinsEnabled;
    private ClaimGiftDialog claimCoinDialog;
    private TextView countDownText;
    private CountDownTimer countDownTimer;
    CouponListResponse couponListResponse;
    private DateTimeFormatter dateTimeFormatter;
    private View header;
    private boolean logged;
    private MembershipService membership;
    private WalletMergeAdapter mergeAdapter;
    private boolean noRefresh;
    OptinAdsResponse optinAdsResponse;
    private ProductAdapter productAdapter;
    private long remainingTime;
    private WalletResponse response;
    private View rewardVideoCell;
    int rewardVideoCoin;
    private SpeedDialAdapter speedDialAdapter;
    private SwipeRefreshLayout swipeRefreshLayout;
    int totalBusinessCoins;
    double totalBusinessCoinsFloat;
    private double totalCoinsFloat;
    private boolean updating;
    private final CoinBillingManager billingManager = CoinBillingManager.getInstance();
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.wallet.WalletRecyclerFragment.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            WalletRecyclerFragment.this.updateHeader();
            WalletRecyclerFragment.this.mergeAdapter.notifyDataSetChanged();
        }
    };
    DecimalFormat dfmt = new DecimalFormat("0.00");
    private boolean canWatchVideo = true;

    static class AdMobMediationAdapter extends NVRecyclerViewBaseAdapter {
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean onSubviewClick(View view, boolean z6) {
            return true;
        }

        static class AdMobMediationViewHolder extends BaseViewHolder {
            public AdMobMediationViewHolder(@NotNull View view) {
                super(view);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @SuppressLint({"SetTextI18n"})
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
            viewHolder.itemView.setOnClickListener(this.subviewClickListener);
            ((TextView) viewHolder.itemView.findViewById(R.id.text1)).setText("Admob Mediation Test");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return new AdMobMediationViewHolder(LayoutInflater.from(this.context.getContext()).inflate(R.layout.simple_list_item_1, viewGroup, false));
        }

        public AdMobMediationAdapter(NVContext nVContext) {
            super(nVContext);
        }
    }

    static class HeaderBuyAdapter extends NVRecyclerViewBaseAdapter {
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        static class HeaderBuyViewHolder extends BaseViewHolder {
            public HeaderBuyViewHolder(@NotNull View view) {
                super(view);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
            ((TextView) viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.text)).setText(com.narvii.amino.master.R.string.buy_coins);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return new HeaderBuyViewHolder(LayoutInflater.from(this.context.getContext()).inflate(com.narvii.amino.master.R.layout.wallet_header_item, viewGroup, false));
        }

        public HeaderBuyAdapter(NVContext nVContext) {
            super(nVContext);
        }
    }

    class OptionAdsOffAdapter extends NVRecyclerViewBaseAdapter {
        AccountService accountService;

        class OptionAdsOffViewHolder extends BaseViewHolder {
            public OptionAdsOffViewHolder(View view) {
                super(view);
            }
        }

        public OptionAdsOffAdapter(NVContext nVContext) {
            super(nVContext);
            this.accountService = (AccountService) nVContext.getService("account");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$1(CompoundButton compoundButton, boolean z6) {
            LogEvent.clickBuilder(WalletRecyclerFragment.this, ActSemantic.turnOn).area("EarnFreeCoinsToggle").send();
            OptinAdsUtil.optinAdsLevel(WalletRecyclerFragment.this, z6 ? 2 : 0, "Wallet", new Callback() { // from class: com.narvii.wallet.u0
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f3054a.lambda$onBindViewHolder$0((AccountResponse) obj);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.accountService.optinAdsLevel() > 0 ? 0 : 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
            viewHolder.itemView.setOnClickListener(this.subviewClickListener);
            WalletRecyclerFragment.this.setupAnimatedIcon((NVDrawableAnimatedView) viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.icon), com.narvii.amino.master.R.drawable.optin_ads_icon, com.narvii.amino.master.R.drawable.optin_ads_bg);
            AccountService accountService = (AccountService) getService("account");
            ((CheckBox) viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.optin_ads_switch)).setOnCheckedChangeListener(null);
            ((CheckBox) viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.optin_ads_switch)).setChecked(accountService.optinAdsLevel() > 0);
            ((CheckBox) viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.optin_ads_switch)).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.wallet.v0
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
                    this.f3056a.lambda$onBindViewHolder$1(compoundButton, z6);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return new OptionAdsOffViewHolder(LayoutInflater.from(this.context.getContext()).inflate(com.narvii.amino.master.R.layout.wallet_optin_ads_off, viewGroup, false));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(AccountResponse accountResponse) {
            notifyDataSetChanged();
            WalletRecyclerFragment.this.showBottomAdsViewIfOptinAds();
            FirebaseLogManager.logEvent(this, "ad toggle", FirebaseLogManager.createParams("value", OptinAds.getAdLevel(this)));
        }
    }

    class OptionAdsOnAdapter extends NVRecyclerViewBaseAdapter {
        AccountService accountService;

        class OptionAdsOnViewHolder extends BaseViewHolder {
            public OptionAdsOnViewHolder(View view) {
                super(view);
            }
        }

        public static void safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(NVRecyclerViewBaseAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public OptionAdsOnAdapter(NVContext nVContext) {
            super(nVContext);
            this.accountService = (AccountService) nVContext.getService("account");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.accountService.optinAdsLevel() > 0 ? 1 : 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
            viewHolder.itemView.setOnClickListener(this.subviewClickListener);
            TextView textView = (TextView) viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.earn_more_coins);
            if (((AccountService) getService("account")).optinAdsLevel() == 1) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(WalletRecyclerFragment.this.getText(com.narvii.amino.master.R.string.earn_more_coins));
                spannableStringBuilder.append(' ');
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append(WalletRecyclerFragment.this.getText(com.narvii.amino.master.R.string.tap_here__));
                spannableStringBuilder.setSpan(new ForegroundColorSpan(-11890462), length, spannableStringBuilder.length(), 0);
                textView.setText(spannableStringBuilder);
                textView.setVisibility(0);
            } else {
                textView.setVisibility(8);
            }
            WalletRecyclerFragment.this.setupAnimatedIcon((NVDrawableAnimatedView) viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.icon), com.narvii.amino.master.R.drawable.optin_ads_icon, com.narvii.amino.master.R.drawable.optin_ads_bg);
            OptinAdsResponse optinAdsResponse = WalletRecyclerFragment.this.optinAdsResponse;
            if (optinAdsResponse == null) {
                ((TextView) viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.optin_ads_earn_week)).setText("");
                ((TextView) viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.optin_ads_earn_total)).setText("");
            } else {
                OptinAdsHistory optinAdsHistory = optinAdsResponse.coinsEarnedByAds;
                ((TextView) viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.optin_ads_earn_week)).setText(optinAdsHistory == null ? null : WalletRecyclerFragment.this.dfmt.format(optinAdsHistory.weekly));
                ((TextView) viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.optin_ads_earn_total)).setText(optinAdsHistory != null ? WalletRecyclerFragment.this.dfmt.format(optinAdsHistory.total) : null);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return new OptionAdsOnViewHolder(LayoutInflater.from(this.context.getContext()).inflate(com.narvii.amino.master.R.layout.wallet_optin_ads_on, viewGroup, false));
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean onSubviewClick(View view, boolean z6) {
            safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(this, FragmentWrapperActivity.intent(OptinAdsManageFragment.class));
            return true;
        }
    }

    class ProductAdapter extends PagingRecyclerViewAdapter<Product, ProductListResponse> {

        class ProductDataSource extends PageDataSource<Product, ProductListResponse> {
            @Override // com.narvii.paging.source.PageDataSource
            protected ApiRequest createRequest() {
                return null;
            }

            @Override // com.narvii.paging.source.PageDataSource, com.narvii.paging.source.ContinuousSource
            public boolean loadNextPage(PageRequestCallback pageRequestCallback) {
                return false;
            }

            @Override // com.narvii.paging.source.PageDataSource
            @NotNull
            protected Class<ProductListResponse> responseType() {
                return ProductListResponse.class;
            }

            public ProductDataSource(NVContext nVContext) {
                super(nVContext);
            }
        }

        class ProductViewHolder extends BaseViewHolder {
            public ProductViewHolder(View view) {
                super(view);
            }
        }

        public ProductAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<Product, ProductListResponse> createPageDataSource(NVContext nVContext) {
            return new ProductDataSource(nVContext);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
            viewHolder.itemView.setOnClickListener(this.subviewClickListener);
            Product item = getItem(i10);
            ((NVImageView) viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.icon)).setImageUrl(item.icon);
            ((TextView) viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.title)).setText(item.title);
            ((TextView) viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.text)).setText(item.description);
            viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.purchase).setOnClickListener(this.subviewClickListener);
            TextView textView = (TextView) viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.price);
            SkuDetails skuDetails = WalletRecyclerFragment.this.billingManager.getSkuDetails(item.skuList[0]);
            textView.setText(skuDetails == null ? WalletRecyclerFragment.this.getString(com.narvii.amino.master.R.string.membership_purchase) : skuDetails.a());
            ThumbImageView thumbImageView = (ThumbImageView) viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.purchase_btn);
            thumbImageView.defaultDrawable = getContext().getResources().getDrawable(com.narvii.amino.master.R.drawable.wallet_price_btn);
            thumbImageView.setImageUrl(null);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected RecyclerView.ViewHolder onCreateItemViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return new ProductViewHolder(LayoutInflater.from(getContext()).inflate(com.narvii.amino.master.R.layout.wallet_sku_recycler_item, viewGroup, false));
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof Product) || view2 == null || view2.getId() != com.narvii.amino.master.R.id.purchase) {
                return super.onItemClick(nVRecyclerViewBaseAdapter, i10, obj, view, view2);
            }
            WalletRecyclerFragment.this.billingManager.purchaseInAppProduct(WalletRecyclerFragment.this.getActivity(), (Product) obj);
            return true;
        }
    }

    class SpeedDialAdapter extends NVRecyclerViewBaseAdapter {

        class SpeedDialViewHolder extends BaseViewHolder {
            public SpeedDialViewHolder(View view) {
                super(view);
                view.findViewById(com.narvii.amino.master.R.id.coupons).setOnClickListener(SpeedDialAdapter.this.subviewClickListener);
                view.findViewById(com.narvii.amino.master.R.id.business_wallet).setOnClickListener(SpeedDialAdapter.this.subviewClickListener);
                view.findViewById(com.narvii.amino.master.R.id.history).setOnClickListener(SpeedDialAdapter.this.subviewClickListener);
                view.findViewById(com.narvii.amino.master.R.id.subscriptions).setOnClickListener(SpeedDialAdapter.this.subviewClickListener);
            }
        }

        public static void safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(NVRecyclerViewBaseAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean isEmpty() {
            return false;
        }

        public SpeedDialAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
            CouponListResponse couponListResponse = WalletRecyclerFragment.this.couponListResponse;
            ViewUtils.show(viewHolder.itemView, com.narvii.amino.master.R.id.coupons, (couponListResponse == null || couponListResponse.getCouponList() == null || WalletRecyclerFragment.this.couponListResponse.getCouponList().isEmpty()) ? false : true);
            ViewUtils.show(viewHolder.itemView, com.narvii.amino.master.R.id.business_wallet, WalletRecyclerFragment.this.businessCoinsEnabled);
            viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.history).setOnClickListener(this.subviewClickListener);
            viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.subscriptions).setOnClickListener(this.subviewClickListener);
            viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.business_wallet).setOnClickListener(this.subviewClickListener);
            viewHolder.itemView.findViewById(com.narvii.amino.master.R.id.coupons).setOnClickListener(this.subviewClickListener);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return new SpeedDialViewHolder(LayoutInflater.from(this.context.getContext()).inflate(com.narvii.amino.master.R.layout.wallet_speed_dial, viewGroup, false));
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean onSubviewClick(View view, boolean z6) {
            if (view != null) {
                switch (view.getId()) {
                    case com.narvii.amino.master.R.id.business_wallet /* 2131362350 */:
                        Intent intent = FragmentWrapperActivity.intent(BusinessWalletFragment.class);
                        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "My Wallet");
                        intent.putExtra("totalBusinessBalance", WalletRecyclerFragment.this.totalBusinessCoinsFloat);
                        safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(this, intent);
                        break;
                    case com.narvii.amino.master.R.id.coupons /* 2131362762 */:
                        Intent intent2 = FragmentWrapperActivity.intent(CouponListFragment.class);
                        intent2.putExtra(ExternalPostPreviewFragment.SOURCE, "My Wallet");
                        safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(this, intent2);
                        break;
                    case com.narvii.amino.master.R.id.history /* 2131363442 */:
                        safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(this, FragmentWrapperActivity.intent(CoinHistoryFragment.class));
                        break;
                    case com.narvii.amino.master.R.id.subscriptions /* 2131365383 */:
                        Intent intent3 = FragmentWrapperActivity.intent(MySubscriptionListFragment.class);
                        intent3.putExtra(ExternalPostPreviewFragment.SOURCE, "Wallet");
                        safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(this, intent3);
                        break;
                }
            }
            return super.onSubviewClick(view, z6);
        }
    }

    static class TapdaqMediationAdapter extends NVRecyclerViewBaseAdapter {
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean onSubviewClick(View view, boolean z6) {
            return true;
        }

        static class TapdaqMediationViewHolder extends BaseViewHolder {
            public TapdaqMediationViewHolder(@NotNull View view) {
                super(view);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @SuppressLint({"SetTextI18n"})
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
            viewHolder.itemView.setOnClickListener(this.subviewClickListener);
            ((TextView) viewHolder.itemView.findViewById(R.id.text1)).setText("Tapdaq Mediation Test");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return new TapdaqMediationViewHolder(LayoutInflater.from(this.context.getContext()).inflate(R.layout.simple_list_item_1, viewGroup, false));
        }

        public TapdaqMediationAdapter(NVContext nVContext) {
            super(nVContext);
        }
    }

    class WalletMergeAdapter extends RecyclerViewMergeAdapter {
        public WalletMergeAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.paging.adapter.RecyclerViewMergeAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void refresh(int i10, PageRequestCallback pageRequestCallback) {
            WalletRecyclerFragment.this.sendWalletRequest();
        }

        public void setResponse(WalletResponse walletResponse) {
            WalletRecyclerFragment.this.membership.updateWalletBalance(walletResponse);
            WalletRecyclerFragment.this.totalCoinsFloat = walletResponse.wallet.totalCoinsFloat;
            WalletRecyclerFragment walletRecyclerFragment = WalletRecyclerFragment.this;
            Wallet wallet = walletResponse.wallet;
            walletRecyclerFragment.businessCoinsEnabled = wallet.businessCoinsEnabled;
            walletRecyclerFragment.totalBusinessCoins = wallet.totalBusinessCoins;
            walletRecyclerFragment.totalBusinessCoinsFloat = wallet.totalBusinessCoinsFloat;
            walletRecyclerFragment.updating = false;
            AdsVideoStats adsVideoStats = walletResponse.wallet.adsVideoStats;
            if (adsVideoStats != null) {
                WalletRecyclerFragment.this.adsVideoStats = adsVideoStats;
            }
            if (WalletRecyclerFragment.this.adsVideoStats != null) {
                WalletRecyclerFragment walletRecyclerFragment2 = WalletRecyclerFragment.this;
                walletRecyclerFragment2.rewardVideoCoin = walletRecyclerFragment2.adsVideoStats.canEarnedCoins;
                WalletRecyclerFragment walletRecyclerFragment3 = WalletRecyclerFragment.this;
                walletRecyclerFragment3.canWatchVideo = walletRecyclerFragment3.adsVideoStats.canWatchVideo;
                WalletRecyclerFragment walletRecyclerFragment4 = WalletRecyclerFragment.this;
                walletRecyclerFragment4.remainingTime = walletRecyclerFragment4.adsVideoStats.getNextWatchVideoInterval();
                if (WalletRecyclerFragment.this.remainingTime < 0) {
                    WalletRecyclerFragment.this.remainingTime = 0L;
                }
                if (WalletRecyclerFragment.this.countDownTimer != null) {
                    WalletRecyclerFragment.this.countDownTimer.cancel();
                }
                if (!WalletRecyclerFragment.this.canWatchVideo && !WalletRecyclerFragment.this.isDestoryed() && WalletRecyclerFragment.this.remainingTime > 0) {
                    WalletRecyclerFragment.this.countDownTimer = new CountDownTimer(WalletRecyclerFragment.this.remainingTime, 500L) { // from class: com.narvii.wallet.WalletRecyclerFragment.WalletMergeAdapter.1
                        @Override // android.os.CountDownTimer
                        public void onFinish() {
                            WalletRecyclerFragment.this.updating = true;
                            if (WalletRecyclerFragment.this.mergeAdapter != null) {
                                WalletRecyclerFragment.this.mergeAdapter.refresh(0, null);
                            }
                        }

                        @Override // android.os.CountDownTimer
                        public void onTick(long j6) {
                            WalletRecyclerFragment.this.remainingTime = j6;
                            WalletRecyclerFragment.this.updateCountDownText(j6);
                        }
                    };
                    WalletRecyclerFragment.this.countDownTimer.start();
                }
            }
            WalletRecyclerFragment.this.updateHeader();
        }

        @Override // com.narvii.paging.adapter.RecyclerViewMergeAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return super.getItemCount();
        }

        @Override // com.narvii.paging.adapter.RecyclerViewMergeAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void onAttach() {
            super.onAttach();
            WalletRecyclerFragment.this.sendWalletRequest();
        }
    }

    static class WalletStoreAdapter extends NVRecyclerViewBaseAdapter {
        public static void safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(NVRecyclerViewBaseAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        static class WalletStoreViewHolder extends BaseViewHolder {
            public WalletStoreViewHolder(@NotNull View view) {
                super(view);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
            viewHolder.itemView.setOnClickListener(this.subviewClickListener);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return new WalletStoreViewHolder(LayoutInflater.from(getContext()).inflate(com.narvii.amino.master.R.layout.wallet_store_entrance_button, viewGroup, false));
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean onSubviewClick(View view, boolean z6) {
            Intent intent = FragmentWrapperActivity.intent(MonetizationStoreMainFragment.class);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Wallet");
            safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(this, intent);
            return true;
        }

        public WalletStoreAdapter(NVContext nVContext) {
            super(nVContext);
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
        return 2131951626;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "wallet_detail";
    }

    public WalletResponse getResponse() {
        return this.response;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public boolean onInterceptNotification(PushPayload pushPayload) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideRefreshLayout() {
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setRefreshing(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyAdapter$4() {
        if (this.adapter != null) {
            this.mergeAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(Boolean bool) {
        ProductAdapter productAdapter = this.productAdapter;
        if (productAdapter != null) {
            productAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$1(WalletResponse walletResponse) {
        WalletMergeAdapter walletMergeAdapter = this.mergeAdapter;
        if (walletMergeAdapter != null) {
            walletMergeAdapter.setResponse(walletResponse);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$3(DialogInterface dialogInterface) {
        if (this.adapter != null) {
            sendCouponListRequest();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onObjectResponse(ApiRequest apiRequest, WalletResponse walletResponse) {
        Wallet wallet;
        CouponDetail couponDetail;
        if (walletResponse.wallet == null) {
            return;
        }
        if (!this.logged) {
            Integer membershipStatus = ((MembershipService) getService("membership")).getMembershipStatus();
            LoggingService loggingService = (LoggingService) getService("logging");
            if (membershipStatus == null) {
                loggingService.lambda$logEvent$0("WalletViewEntered", "balance", Integer.valueOf(walletResponse.wallet.totalCoins));
            } else {
                loggingService.lambda$logEvent$0("WalletViewEntered", "membershipStatus", membershipStatus, "balance", Integer.valueOf(walletResponse.wallet.totalCoins));
            }
            this.logged = true;
        }
        if (!this.claimCoinDialog.isShown() && !this.claimCoinDialog.isShowing() && (wallet = walletResponse.wallet) != null && (couponDetail = wallet.newUserCoupon) != null && couponDetail.getValue() > 0) {
            this.claimCoinDialog.show(walletResponse.wallet.newUserCoupon);
        }
        MembershipService membershipService = this.membership;
        Wallet wallet2 = walletResponse.wallet;
        membershipService.updateAvailableCoupon(wallet2 != null ? wallet2.newUserCoupon : null);
    }

    private void sendClaimRewardVideoLog(boolean z6) {
        LogEvent.clickBuilder(this, ActSemantic.wildcard).area("ClaimRewardVideo").extraParam("canWatchVideo", Boolean.valueOf(z6)).send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupAnimatedIcon(NVDrawableAnimatedView nVDrawableAnimatedView, int i10, int i11) {
        ArrayList<NVDrawableAnimatedView.LayerConfig> arrayList = new ArrayList<>();
        arrayList.add(new NVDrawableAnimatedView.LayerConfig.Builder(i11, 5).layerGravity(32).duration(0).build());
        arrayList.add(new NVDrawableAnimatedView.LayerConfig.Builder(com.narvii.amino.master.R.drawable.wallet_animated_ring, 7).layerGravity(32).duration(1500).layerAlpha(0.3f).build());
        arrayList.add(new NVDrawableAnimatedView.LayerConfig.Builder(com.narvii.amino.master.R.drawable.wallet_animated_ring, 7).layerGravity(32).duration(1500).startDelay(500L).layerAlpha(0.3f).build());
        arrayList.add(new NVDrawableAnimatedView.LayerConfig.Builder(com.narvii.amino.master.R.drawable.wallet_animated_ring, 7).layerGravity(32).duration(1500).startDelay(1000L).layerAlpha(0.3f).build());
        arrayList.add(new NVDrawableAnimatedView.LayerConfig.Builder(i10, 0).layerGravity(32).build());
        arrayList.add(new NVDrawableAnimatedView.LayerConfig.Builder(com.narvii.amino.master.R.drawable.amino_coin_small_rotated, 0).layerGravity(20).margin(0, 0, 10, 10).build());
        nVDrawableAnimatedView.replaceLayerList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCountDownText(long j6) {
        View view;
        if (this.countDownText == null && (view = this.rewardVideoCell) != null) {
            this.countDownText = (TextView) view.findViewById(com.narvii.amino.master.R.id.count_down);
        }
        if (this.countDownText != null) {
            if (this.dateTimeFormatter == null) {
                this.dateTimeFormatter = new DateTimeFormatter();
            }
            this.countDownText.setText(this.updating ? getString(com.narvii.amino.master.R.string.updating_ellipsis) : getString(com.narvii.amino.master.R.string.resets_in_time, this.dateTimeFormatter.formatExpireCountDown(getContext(), j6)));
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
        this.appBarLayout.r(this);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.c
    public void onOffsetChanged(AppBarLayout appBarLayout, int i10) {
        this.swipeRefreshLayout.setEnabled(i10 == 0);
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public void onPushPayload(PushPayload pushPayload) {
        if (pushPayload.type == 51) {
            ((ApiService) getService("api")).exec(ApiRequest.builder().path("/wallet").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).build(), new ApiResponseListener<WalletResponse>(WalletResponse.class) { // from class: com.narvii.wallet.WalletRecyclerFragment.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, WalletResponse walletResponse) throws Exception {
                    if (WalletRecyclerFragment.this.mergeAdapter != null) {
                        WalletRecyclerFragment.this.mergeAdapter.setResponse(walletResponse);
                    }
                }
            });
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onStop() {
        ((PushService) getService("push")).removePushListener(this);
        this.billingManager.setContext(null);
        super.onStop();
    }

    void updateHeader() {
        ((TextView) this.header.findViewById(com.narvii.amino.master.R.id.balance)).setText(IabUtils.formatCoins(this.totalCoinsFloat));
        this.header.findViewById(com.narvii.amino.master.R.id.stub1).getLayoutParams().height = 0;
        View viewFindViewById = this.header.findViewById(com.narvii.amino.master.R.id.membership_card);
        viewFindViewById.setOnClickListener(this);
        ThumbImageView thumbImageView = (ThumbImageView) this.header.findViewById(com.narvii.amino.master.R.id.membership_card_bg);
        ThumbImageView thumbImageView2 = (ThumbImageView) this.header.findViewById(com.narvii.amino.master.R.id.image);
        boolean zIsMembership = this.membership.isMembership();
        int i10 = com.narvii.amino.master.R.drawable.membership_bar_card_active;
        if (zIsMembership) {
            thumbImageView2.setImageDrawable(getResources().getDrawable(com.narvii.amino.master.R.drawable.membership_bar_card_active));
            thumbImageView2.setShadowColor(Color.parseColor("#40000000"));
            ((TextView) viewFindViewById.findViewById(com.narvii.amino.master.R.id.text)).setText(com.narvii.amino.master.R.string.membership_status_wallet_active);
            thumbImageView.setImageDrawable(getResources().getDrawable(com.narvii.amino.master.R.drawable.membership_bar_raw_bg_active));
            return;
        }
        int iDaysExpired = this.membership.daysExpired();
        boolean z6 = iDaysExpired >= 0 && !this.membership.freeTrial();
        Resources resources = getResources();
        if (z6) {
            i10 = com.narvii.amino.master.R.drawable.membership_bar_card_inactive;
        }
        thumbImageView2.setImageDrawable(resources.getDrawable(i10));
        thumbImageView2.setShadowColor(!z6 ? Color.parseColor("#40000000") : 0);
        TextView textView = (TextView) viewFindViewById.findViewById(com.narvii.amino.master.R.id.text);
        if (!z6) {
            thumbImageView.setImageDrawable(getResources().getDrawable(com.narvii.amino.master.R.drawable.membership_bar_raw_bg_active));
            textView.setText(this.membership.freeTrial() ? com.narvii.amino.master.R.string.membership_status_wallet_inactive_trial : com.narvii.amino.master.R.string.membership_status_wallet_inactive);
            return;
        }
        thumbImageView.setImageDrawable(new ColorDrawable(1711276032));
        if (iDaysExpired == 0) {
            textView.setText(com.narvii.amino.master.R.string.membership_status_wallet_expired_0_day);
        } else if (iDaysExpired == 1) {
            textView.setText(com.narvii.amino.master.R.string.membership_status_wallet_expired_1_day);
        } else if (iDaysExpired > 1) {
            textView.setText(getContext().getString(com.narvii.amino.master.R.string.membership_status_wallet_expired_n_day, Integer.valueOf(iDaysExpired)));
        }
        SpannableString spannableString = new SpannableString(getString(com.narvii.amino.master.R.string.membership_status_renew));
        spannableString.setSpan(new ForegroundColorSpan(-16746753), 0, spannableString.length(), 0);
        textView.append("  ");
        textView.append(spannableString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$2() {
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, ((Navigator) NVApplication.instance().getService("navigator")).intentMapping(new Intent("android.intent.action.VIEW", Uri.parse("https://support.altamino.top/hc/sections/360000385733-Amino-"))));
    }

    private void notifyAdapter() {
        if (isDestoryed()) {
            return;
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Utils.post(new Runnable() { // from class: com.narvii.wallet.r0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3048a.lambda$notifyAdapter$4();
                }
            });
        } else if (this.adapter != null) {
            this.mergeAdapter.notifyDataSetChanged();
        }
    }

    private void sendCouponListRequest() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("/coupon/new-user-coupon").build(), new ApiResponseListener<CouponListResponse>(CouponListResponse.class) { // from class: com.narvii.wallet.WalletRecyclerFragment.4
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CouponListResponse couponListResponse) {
                WalletRecyclerFragment walletRecyclerFragment = WalletRecyclerFragment.this;
                walletRecyclerFragment.couponListResponse = couponListResponse;
                walletRecyclerFragment.speedDialAdapter.notifyDataSetChanged();
            }
        });
    }

    private void sendOptionAdsRequest() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().global().path("/wallet/setting/ads").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).build(), new ApiResponseListener<OptinAdsResponse>(OptinAdsResponse.class) { // from class: com.narvii.wallet.WalletRecyclerFragment.5
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, OptinAdsResponse optinAdsResponse) {
                WalletRecyclerFragment walletRecyclerFragment = WalletRecyclerFragment.this;
                walletRecyclerFragment.optinAdsResponse = optinAdsResponse;
                walletRecyclerFragment.mergeAdapter.notifyDataSetChanged();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendWalletRequest() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("/wallet").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).build(), new ApiResponseListener<WalletResponse>(WalletResponse.class) { // from class: com.narvii.wallet.WalletRecyclerFragment.6
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, WalletResponse walletResponse) throws Exception {
                super.onFinish(apiRequest, walletResponse);
                WalletRecyclerFragment.this.response = walletResponse;
                WalletRecyclerFragment.this.totalCoinsFloat = walletResponse.wallet.totalCoinsFloat;
                WalletRecyclerFragment walletRecyclerFragment = WalletRecyclerFragment.this;
                Wallet wallet = walletResponse.wallet;
                walletRecyclerFragment.businessCoinsEnabled = wallet.businessCoinsEnabled;
                walletRecyclerFragment.totalBusinessCoins = wallet.totalBusinessCoins;
                walletRecyclerFragment.totalBusinessCoinsFloat = wallet.totalBusinessCoinsFloat;
                walletRecyclerFragment.onObjectResponse(apiRequest, walletResponse);
                WalletRecyclerFragment.this.mergeAdapter.setResponse(WalletRecyclerFragment.this.response);
                WalletRecyclerFragment.this.updateHeader();
                WalletRecyclerFragment.this.mergeAdapter.notifyDataSetChanged();
                WalletRecyclerFragment.this.hideRefreshLayout();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, @Nullable ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                WalletRecyclerFragment.this.hideRefreshLayout();
            }
        });
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        sendOptionAdsRequest();
        sendCouponListRequest();
        this.mergeAdapter = new WalletMergeAdapter(this);
        SpeedDialAdapter speedDialAdapter = new SpeedDialAdapter(this);
        this.speedDialAdapter = speedDialAdapter;
        this.mergeAdapter.addAdapter(speedDialAdapter, true);
        if (OptinAds.qualified(this) && !OptinAds.forceAds()) {
            this.mergeAdapter.addAdapter(new OptionAdsOnAdapter(this));
            this.mergeAdapter.addAdapter(new OptionAdsOffAdapter(this));
        }
        if (NVApplication.DEBUG) {
            this.mergeAdapter.addAdapter(new TapdaqMediationAdapter(this));
            this.mergeAdapter.addAdapter(new AdMobMediationAdapter(this));
        }
        this.mergeAdapter.addAdapter(new HeaderBuyAdapter(this));
        ProductAdapter productAdapter = new ProductAdapter(this);
        this.productAdapter = productAdapter;
        this.mergeAdapter.addAdapter(productAdapter);
        this.mergeAdapter.addAdapter(new WalletStoreAdapter(this));
        return this.mergeAdapter;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == com.narvii.amino.master.R.id.membership_card) {
            Intent intentCreateMembershipIntent = MembershipActivity.createMembershipIntent();
            intentCreateMembershipIntent.putExtra(ExternalPostPreviewFragment.SOURCE, "Wallet");
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intentCreateMembershipIntent);
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(com.narvii.amino.master.R.string.my_wallet);
        setHasOptionsMenu(true);
        this.membership = (MembershipService) getService("membership");
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
        this.billingManager.getQueryInAppFinishedLive().i(this, new Observer() { // from class: com.narvii.wallet.p0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f3043a.lambda$onCreate$0((Boolean) obj);
            }
        });
        this.billingManager.getOnWalletChangedLive().i(this, new Observer() { // from class: com.narvii.wallet.q0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f3045a.lambda$onCreate$1((WalletResponse) obj);
            }
        });
        this.billingManager.fetchInAppProducts(new ApiResponseListener<ProductListResponse>(ProductListResponse.class) { // from class: com.narvii.wallet.WalletRecyclerFragment.1
            /* JADX WARN: Type inference incomplete: some casts might be missing */
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ProductListResponse productListResponse) throws Exception {
                super.onFinish(apiRequest, productListResponse);
                if (WalletRecyclerFragment.this.productAdapter != null) {
                    WalletRecyclerFragment.this.productAdapter.pageDataSource.appendData(productListResponse.productList, null);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, String str, @Nullable ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                if (WalletRecyclerFragment.this.productAdapter != null) {
                    WalletRecyclerFragment.this.productAdapter.pageDataSource.onFailResponse(apiRequest, str, apiResponse, 0);
                }
            }
        });
        if (bundle == null) {
            this.noRefresh = true;
        }
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Wallet").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("Wallet Total");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, com.narvii.amino.master.R.string.wallet_coin_help, 0, com.narvii.amino.master.R.string.wallet_coin_help).setIcon(com.narvii.amino.master.R.drawable.wallet_help_btn).setShowAsAction(2);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(com.narvii.amino.master.R.layout.fragment_wallet_recycler, viewGroup, false);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        sendOptionAdsRequest();
        sendCouponListRequest();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        setScreenName("my_wallet");
        WalletMergeAdapter walletMergeAdapter = this.mergeAdapter;
        if (walletMergeAdapter != null) {
            walletMergeAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.billingManager.setContext(getContext());
        if (this.noRefresh) {
            this.noRefresh = false;
        } else {
            WalletMergeAdapter walletMergeAdapter = this.mergeAdapter;
            if (walletMergeAdapter != null) {
                walletMergeAdapter.refresh(0, null);
            }
        }
        ((PushService) getService("push")).addPushListener(this);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        ProductAdapter productAdapter;
        super.onViewCreated(view, bundle);
        this.header = view.findViewById(com.narvii.amino.master.R.id.wallet_header);
        updateHeader();
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(com.narvii.amino.master.R.id.swipe_refresh);
        this.swipeRefreshLayout = swipeRefreshLayout;
        swipeRefreshLayout.setEnabled(false);
        this.swipeRefreshLayout.setOnRefreshListener(this);
        this.swipeRefreshLayout.setColorSchemeColors(((ConfigService) getService("config")).getTheme().colorPrimary());
        AppBarLayout appBarLayout = (AppBarLayout) view.findViewById(com.narvii.amino.master.R.id.appbar_layout);
        this.appBarLayout = appBarLayout;
        appBarLayout.d(this);
        FakeActionBar fakeActionBar = (FakeActionBar) view.findViewById(com.narvii.amino.master.R.id.fake_action_bar);
        if (fakeActionBar != null) {
            fakeActionBar.setBackgroundColor(Color.parseColor("#2DA4E7"));
            fakeActionBar.setTitle(com.narvii.amino.master.R.string.my_wallet);
            fakeActionBar.setRightView(com.narvii.amino.master.R.drawable.wallet_help_btn, new FakeActionBar.IFakeActionBarRightViewClickListener() { // from class: com.narvii.wallet.s0
                @Override // com.narvii.nested.FakeActionBar.IFakeActionBarRightViewClickListener
                public final void onRightViewClick() {
                    this.f3050a.lambda$onViewCreated$2();
                }
            });
        }
        ClaimGiftDialog claimGiftDialog = new ClaimGiftDialog(this);
        this.claimCoinDialog = claimGiftDialog;
        claimGiftDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.wallet.t0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f3052a.lambda$onViewCreated$3(dialogInterface);
            }
        });
        this.claimCoinDialog.source = getStringParam(ExternalPostPreviewFragment.SOURCE);
        List<Product> productList = this.billingManager.getProductList();
        if (!productList.isEmpty() && (productAdapter = this.productAdapter) != null) {
            productAdapter.pageDataSource.appendData(productList, null);
        }
    }
}
