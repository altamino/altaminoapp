package com.narvii.wallet;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialogFragment;
import com.narvii.chat.ChatActivity;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.api.ApiResponse;
import com.narvii.pushservice.PushPayload;
import com.narvii.pushservice.PushService;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.wallet.util.IabResult;
import com.narvii.wallet.util.Inventory;
import com.narvii.wallet.util.SkuDetails;
import com.narvii.widget.NVImageView;
import java.util.List;

/* loaded from: classes3.dex */
public class PurchaseCoinFragment extends NVDialogFragment implements View.OnClickListener, PushService.PushListener {
    AccountService account;
    AdsVideoStats adsVideoStats;
    ApiRequest apiRequest;
    TextView balance;
    View earnMoreCoinsLayout;
    View error;
    String errorMsg;
    IabPurchaseManager iabPurchaseManager;
    View[] items;
    View loading;
    MembershipService membership;
    View noEnoughCoins;
    boolean pendingWatchRV;
    List<Product> products;
    Dialog requestingDialog;
    RewardVideoHelper rewardVideoHelper;
    double totalCoinsFloat;
    boolean noRV = true;
    private BroadcastReceiver walletBalanceReceiver = new BroadcastReceiver() { // from class: com.narvii.wallet.PurchaseCoinFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (MembershipService.ACTION_WALLET_CHANGED.equals(intent.getAction())) {
                PurchaseCoinFragment.this.updateWalletBalanceView();
            }
        }
    };

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "PurchaseCoinsDialog";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public boolean onInterceptNotification(PushPayload pushPayload) {
        return false;
    }

    /* renamed from: com.narvii.wallet.PurchaseCoinFragment$2, reason: invalid class name */
    class AnonymousClass2 extends RewardVideoHelper {
        AnonymousClass2(NVContext nVContext, AdsVendor adsVendor) {
            super(nVContext, adsVendor);
        }

        @Override // com.narvii.wallet.RewardVideoHelper
        protected void onRewardVideoOpened(long j) {
            super.onRewardVideoOpened(j);
            LogEvent.clickBuilder(PurchaseCoinFragment.this, ActSemantic.wildcard).area("EarnFreeCoins").extraParam("canWatchVideo", true).send();
        }

        @Override // com.narvii.wallet.RewardVideoHelper
        protected void onAdsVideoStatsResponse(AdsVideoStatsResponse adsVideoStatsResponse) {
            super.onAdsVideoStatsResponse(adsVideoStatsResponse);
            AdsVideoStats adsVideoStats = adsVideoStatsResponse.adsVideoStats;
            if (adsVideoStats != null) {
                PurchaseCoinFragment.this.adsVideoStats = adsVideoStats;
            }
        }
    }

    @Override // com.narvii.app.NVDialogFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        registerLocalReceiver(this.walletBalanceReceiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
        if (getActivity() instanceof NVActivity) {
            ((NVActivity) getActivity()).registerActivityRequestCallback(IabPurchaseManager.REQUEST_IAB_PURCHASE, this);
        } else {
            Log.e("not NVActivity");
        }
        this.membership = (MembershipService) getService("membership");
        this.totalCoinsFloat = this.membership.walletBalanceFloat();
        this.iabPurchaseManager = new IabPurchaseManager(this) { // from class: com.narvii.wallet.PurchaseCoinFragment.3
            @Override // com.narvii.wallet.IabPurchaseManager, com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ProductListResponse productListResponse) throws Exception {
                super.onFinish(apiRequest, productListResponse);
                PurchaseCoinFragment purchaseCoinFragment = PurchaseCoinFragment.this;
                purchaseCoinFragment.products = productListResponse.productList;
                purchaseCoinFragment.errorMsg = null;
                purchaseCoinFragment.update();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                PurchaseCoinFragment purchaseCoinFragment = PurchaseCoinFragment.this;
                purchaseCoinFragment.errorMsg = str;
                purchaseCoinFragment.update();
            }

            @Override // com.narvii.wallet.IabPurchaseManager
            public void onWalletResponse(WalletResponse walletResponse) {
                super.onWalletResponse(walletResponse);
                LogEvent.clickBuilder(PurchaseCoinFragment.this, ActSemantic.purchaseSuccess).area("CoinsList").send();
                PurchaseCoinFragment purchaseCoinFragment = PurchaseCoinFragment.this;
                purchaseCoinFragment.totalCoinsFloat = walletResponse.wallet.totalCoinsFloat;
                purchaseCoinFragment.update();
                Utils.postDelayed(new Runnable() { // from class: com.narvii.wallet.PurchaseCoinFragment.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PurchaseCoinFragment.this.dismiss();
                    }
                }, 1500L);
            }

            @Override // com.narvii.wallet.IabPurchaseManager, com.narvii.wallet.util.IabHelper.QueryInventoryFinishedListener
            public void onQueryInventoryFinished(IabResult iabResult, Inventory inventory) {
                super.onQueryInventoryFinished(iabResult, inventory);
                PurchaseCoinFragment.this.update();
            }
        };
        this.iabPurchaseManager.init(2);
    }

    @Override // com.narvii.app.NVDialogFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (!this.noRV) {
            refreshWallet();
        }
        ((PushService) getService("push")).addPushListener(this);
    }

    @Override // com.narvii.app.NVDialogFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onStop() {
        ((PushService) getService("push")).removePushListener(this);
        super.onStop();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        if (getActivity() instanceof NVActivity) {
            ((NVActivity) getActivity()).unregisterActivityRequestCallback(IabPurchaseManager.REQUEST_IAB_PURCHASE, this);
        }
        unregisterLocalReceiver(this.walletBalanceReceiver);
        this.iabPurchaseManager.destroy();
        this.iabPurchaseManager = null;
        super.onDestroy();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.wallet_dialog, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.noEnoughCoins = view.findViewById(R.id.header_no_enough_coin);
        this.balance = (TextView) view.findViewById(R.id.balance);
        this.earnMoreCoinsLayout = view.findViewById(R.id.earn_more_layout);
        this.earnMoreCoinsLayout.setOnClickListener(this);
        this.earnMoreCoinsLayout.setVisibility(this.noRV ? 8 : 0);
        this.loading = view.findViewById(R.id.loading);
        this.error = view.findViewById(R.id.error);
        this.error.setOnClickListener(this);
        view.findViewById(R.id.close).setOnClickListener(this);
        this.items = new View[6];
        this.items[0] = view.findViewById(R.id.item1);
        this.items[1] = view.findViewById(R.id.item2);
        this.items[2] = view.findViewById(R.id.item3);
        this.items[3] = view.findViewById(R.id.item4);
        this.items[4] = view.findViewById(R.id.item5);
        this.items[5] = view.findViewById(R.id.item6);
        update();
    }

    void update() {
        if (this.noEnoughCoins == null || isDestoryed()) {
            return;
        }
        this.noEnoughCoins.setVisibility(getBooleanParam("noEnoughCoins") ? 0 : 8);
        updateWalletBalanceView();
        this.loading.setVisibility((this.products == null && this.errorMsg == null) ? 0 : 8);
        this.error.setVisibility((this.products != null || this.errorMsg == null) ? 8 : 0);
        ((TextView) this.error.findViewById(R.id.text)).setText(this.errorMsg);
        List<Product> list = this.products;
        int size = list == null ? 0 : list.size();
        int i = 0;
        while (true) {
            View[] viewArr = this.items;
            if (i >= viewArr.length) {
                return;
            }
            View view = viewArr[i];
            ((View) view.getParent()).setVisibility(this.products == null ? 8 : 0);
            view.setVisibility(i < size ? 0 : 4);
            if (i < size) {
                Product product = this.products.get(i);
                ((NVImageView) view.findViewById(R.id.icon)).setImageUrl(product.icon);
                ((TextView) view.findViewById(R.id.text)).setText(IabUtils.formatCoins(product.numberOfCoins));
                IabPurchaseManager iabPurchaseManager = this.iabPurchaseManager;
                SkuDetails skuDetail = iabPurchaseManager != null ? iabPurchaseManager.getSkuDetail(product.skuList[0]) : null;
                ((TextView) view.findViewById(R.id.price)).setText(skuDetail == null ? getString(R.string.membership_purchase) : skuDetail.getPrice());
                view.setTag(product);
            }
            view.setOnClickListener(this);
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWalletBalanceView() {
        MembershipService membershipService;
        if (this.balance == null || (membershipService = this.membership) == null) {
            return;
        }
        this.totalCoinsFloat = membershipService.walletBalanceFloat();
        this.balance.setText(IabUtils.formatCoins(this.totalCoinsFloat));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.earn_more_layout) {
            clickRvButton(true);
        }
        if (view.getId() == R.id.error) {
            this.errorMsg = null;
            this.iabPurchaseManager.sendProductRequest();
        }
        if (view.getId() == R.id.close) {
            dismiss();
        }
        if (view.getTag() instanceof Product) {
            LogEvent.clickBuilder(this, ActSemantic.purchase).area("CoinsList").send();
            if (getActivity() instanceof ChatActivity) {
                ((ChatActivity) getActivity()).disableFloatingWindow();
            }
            this.iabPurchaseManager.purchase((Product) view.getTag());
            updateItemView(view);
        }
    }

    private void updateItemView(View view) {
        for (View view2 : this.items) {
            if (view2 == view) {
                view2.setSelected(true);
            } else {
                view2.setSelected(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clickRvButton(boolean z) {
        AdsVideoStats adsVideoStats = this.adsVideoStats;
        if (adsVideoStats == null) {
            if (z) {
                this.pendingWatchRV = true;
                if (this.apiRequest == null) {
                    refreshWallet();
                }
                this.requestingDialog = new ProgressDialog(getContext());
                this.requestingDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.wallet.PurchaseCoinFragment.4
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        PurchaseCoinFragment purchaseCoinFragment = PurchaseCoinFragment.this;
                        purchaseCoinFragment.pendingWatchRV = false;
                        purchaseCoinFragment.requestingDialog = null;
                    }
                });
                this.requestingDialog.show();
                return;
            }
            return;
        }
        if (adsVideoStats.canWatchVideo) {
            startWatchRV();
            return;
        }
        LogEvent.clickBuilder(this, ActSemantic.wildcard).area("EarnFreeCoins").extraParam("canWatchVideo", false).send();
        String str = this.adsVideoStats.canNotWatchVideoReason;
        if (str != null) {
            showShortToast(str);
        } else {
            showShortToast(R.string.you_have_earned_today_s_daily_reward);
        }
    }

    private void startWatchRV() {
        this.rewardVideoHelper.startRewardVideo();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 59423) {
            this.iabPurchaseManager.handleActivityResult(i, i2, intent);
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissRequestingDialog() {
        Dialog dialog = this.requestingDialog;
        if (dialog != null) {
            dialog.dismiss();
            this.requestingDialog = null;
        }
    }

    private void refreshWallet() {
        ApiService apiService = (ApiService) getService("api");
        ApiRequest apiRequest = this.apiRequest;
        if (apiRequest != null) {
            apiService.abort(apiRequest);
        }
        this.apiRequest = ApiRequest.builder().path("/wallet").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).build();
        apiService.exec(this.apiRequest, new ApiResponseListener<WalletResponse>(WalletResponse.class) { // from class: com.narvii.wallet.PurchaseCoinFragment.5
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest2, WalletResponse walletResponse) throws Exception {
                PurchaseCoinFragment purchaseCoinFragment = PurchaseCoinFragment.this;
                purchaseCoinFragment.apiRequest = null;
                purchaseCoinFragment.dismissRequestingDialog();
                Wallet wallet = walletResponse.wallet;
                if (wallet == null) {
                    return;
                }
                PurchaseCoinFragment.this.adsVideoStats = wallet.adsVideoStats;
                PurchaseCoinFragment.this.membership.updateWalletBalance(walletResponse);
                PurchaseCoinFragment purchaseCoinFragment2 = PurchaseCoinFragment.this;
                if (purchaseCoinFragment2.pendingWatchRV) {
                    purchaseCoinFragment2.clickRvButton(false);
                    PurchaseCoinFragment.this.pendingWatchRV = false;
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest2, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                PurchaseCoinFragment purchaseCoinFragment = PurchaseCoinFragment.this;
                purchaseCoinFragment.apiRequest = null;
                purchaseCoinFragment.dismissRequestingDialog();
                super.onFail(apiRequest2, i, list, str, apiResponse, th);
                PurchaseCoinFragment purchaseCoinFragment2 = PurchaseCoinFragment.this;
                if (purchaseCoinFragment2.pendingWatchRV) {
                    purchaseCoinFragment2.showShortToast(str);
                    PurchaseCoinFragment.this.pendingWatchRV = false;
                }
            }
        });
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public void onPushPayload(PushPayload pushPayload) {
        if (this.noRV || pushPayload.type != 51) {
            return;
        }
        refreshWallet();
    }

    public static void show(NVContext nVContext, boolean z) {
        if (nVContext == null) {
            return;
        }
        if (nVContext.getContext() instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) nVContext.getContext();
            FragmentManager supportFragmentManager = nVActivity.getSupportFragmentManager();
            if (supportFragmentManager == null || supportFragmentManager.findFragmentByTag("_purchase_coins") != null) {
                return;
            }
            PurchaseCoinFragment purchaseCoinFragment = new PurchaseCoinFragment();
            Bundle bundle = new Bundle();
            bundle.putBoolean("noEnoughCoins", z);
            purchaseCoinFragment.setArguments(bundle);
            purchaseCoinFragment.show(nVActivity, supportFragmentManager, "_purchase_coins");
            return;
        }
        Log.e("cannot find nvActivity by nvContext");
    }
}
