package com.narvii.wallet;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import com.android.billingclient.api.SkuDetails;
import com.narvii.amino.master.R;
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
import com.narvii.widget.NVImageView;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class PurchaseCoinFragment extends NVDialogFragment implements View.OnClickListener, PushService.PushListener {
    private AdsVideoStats adsVideoStats;
    private ApiRequest apiRequest;
    private TextView balance;
    private View error;
    private String errorMsg;
    private View[] items;
    private View loading;
    private MembershipService membership;
    private View noEnoughCoins;
    private boolean pendingWatchRV;
    private List<Product> products;
    private Dialog requestingDialog;
    private double totalCoinsFloat;
    private final boolean noRV = true;
    private final CoinBillingManager billingManager = CoinBillingManager.getInstance();
    private final BroadcastReceiver walletBalanceReceiver = new BroadcastReceiver() { // from class: com.narvii.wallet.PurchaseCoinFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (MembershipService.ACTION_WALLET_CHANGED.equals(intent.getAction())) {
                PurchaseCoinFragment.this.updateWalletBalanceView();
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clickRvButton$2(DialogInterface dialogInterface) {
        this.pendingWatchRV = false;
        this.requestingDialog = null;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "purchase_coins_dialog";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public boolean onInterceptNotification(PushPayload pushPayload) {
        return false;
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public void onPushPayload(PushPayload pushPayload) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clickRvButton(boolean z6) {
        if (this.adsVideoStats != null) {
            LogEvent.clickBuilder(this, ActSemantic.wildcard).area("EarnFreeCoins").extraParam("canWatchVideo", Boolean.FALSE).send();
            String str = this.adsVideoStats.canNotWatchVideoReason;
            if (str != null) {
                showShortToast(str);
                return;
            } else {
                showShortToast(R.string.you_have_earned_today_s_daily_reward);
                return;
            }
        }
        if (z6) {
            this.pendingWatchRV = true;
            if (this.apiRequest == null) {
                refreshWallet();
            }
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            this.requestingDialog = progressDialog;
            progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.wallet.h0
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    this.f3018a.lambda$clickRvButton$2(dialogInterface);
                }
            });
            this.requestingDialog.show();
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

    private void fetchInAppProducts() {
        this.billingManager.fetchInAppProducts(true, new ApiResponseListener<ProductListResponse>(ProductListResponse.class) { // from class: com.narvii.wallet.PurchaseCoinFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ProductListResponse productListResponse) throws Exception {
                super.onFinish(apiRequest, productListResponse);
                PurchaseCoinFragment.this.products = productListResponse.productList;
                PurchaseCoinFragment.this.errorMsg = null;
                PurchaseCoinFragment.this.update();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, String str, @Nullable ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                PurchaseCoinFragment.this.errorMsg = str;
                PurchaseCoinFragment.this.update();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$1(WalletResponse walletResponse) {
        LogEvent.clickBuilder(this, ActSemantic.purchaseSuccess).area("CoinsList").send();
        this.totalCoinsFloat = walletResponse.wallet.totalCoinsFloat;
        update();
        Utils.postDelayed(new Runnable() { // from class: com.narvii.wallet.g0
            @Override // java.lang.Runnable
            public final void run() {
                this.f3017a.dismiss();
            }
        }, 1500L);
    }

    private void refreshWallet() {
        ApiService apiService = (ApiService) getService("api");
        ApiRequest apiRequest = this.apiRequest;
        if (apiRequest != null) {
            apiService.abort(apiRequest);
        }
        ApiRequest apiRequestBuild = ApiRequest.builder().path("/wallet").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).build();
        this.apiRequest = apiRequestBuild;
        apiService.exec(apiRequestBuild, new ApiResponseListener<WalletResponse>(WalletResponse.class) { // from class: com.narvii.wallet.PurchaseCoinFragment.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest2, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                PurchaseCoinFragment.this.apiRequest = null;
                PurchaseCoinFragment.this.dismissRequestingDialog();
                super.onFail(apiRequest2, i10, list, str, apiResponse, th);
                if (PurchaseCoinFragment.this.pendingWatchRV) {
                    PurchaseCoinFragment.this.showShortToast(str);
                    PurchaseCoinFragment.this.pendingWatchRV = false;
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest2, WalletResponse walletResponse) {
                PurchaseCoinFragment.this.apiRequest = null;
                PurchaseCoinFragment.this.dismissRequestingDialog();
                Wallet wallet = walletResponse.wallet;
                if (wallet == null) {
                    return;
                }
                PurchaseCoinFragment.this.adsVideoStats = wallet.adsVideoStats;
                PurchaseCoinFragment.this.membership.updateWalletBalance(walletResponse);
                if (PurchaseCoinFragment.this.pendingWatchRV) {
                    PurchaseCoinFragment.this.clickRvButton(false);
                    PurchaseCoinFragment.this.pendingWatchRV = false;
                }
            }
        });
    }

    public static void show(NVContext nVContext, boolean z6) {
        if (nVContext == null) {
            return;
        }
        if (!(nVContext.getContext() instanceof NVActivity)) {
            Log.e("cannot find nvActivity by nvContext");
            return;
        }
        NVActivity nVActivity = (NVActivity) nVContext.getContext();
        FragmentManager supportFragmentManager = nVActivity.getSupportFragmentManager();
        if (supportFragmentManager == null || supportFragmentManager.m0("_purchase_coins") != null) {
            return;
        }
        PurchaseCoinFragment purchaseCoinFragment = new PurchaseCoinFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("noEnoughCoins", z6);
        purchaseCoinFragment.setArguments(bundle);
        purchaseCoinFragment.show(nVActivity, supportFragmentManager, "_purchase_coins");
    }

    private void updateItemView(View view) {
        View[] viewArr = this.items;
        int length = viewArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            View view2 = viewArr[i10];
            view2.setSelected(view2 == view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWalletBalanceView() {
        MembershipService membershipService;
        if (this.balance == null || (membershipService = this.membership) == null) {
            return;
        }
        double dWalletBalanceFloat = membershipService.walletBalanceFloat();
        this.totalCoinsFloat = dWalletBalanceFloat;
        this.balance.setText(IabUtils.formatCoins(dWalletBalanceFloat));
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.walletBalanceReceiver);
        super.onDestroy();
    }

    @Override // com.narvii.app.NVDialogFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onStop() {
        ((PushService) getService("push")).removePushListener(this);
        this.billingManager.setContext(null);
        super.onStop();
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
        int i10 = 0;
        while (true) {
            View[] viewArr = this.items;
            if (i10 >= viewArr.length) {
                return;
            }
            View view = viewArr[i10];
            ((View) view.getParent()).setVisibility(this.products == null ? 8 : 0);
            view.setVisibility(i10 < size ? 0 : 4);
            if (i10 < size) {
                Product product = this.products.get(i10);
                ((NVImageView) view.findViewById(R.id.icon)).setImageUrl(product.icon);
                ((TextView) view.findViewById(R.id.text)).setText(IabUtils.formatCoins(product.numberOfCoins));
                SkuDetails skuDetails = this.billingManager.getSkuDetails(product.skuList[0]);
                ((TextView) view.findViewById(R.id.price)).setText(skuDetails == null ? getString(R.string.membership_purchase) : skuDetails.a());
                view.setTag(product);
            }
            view.setOnClickListener(this);
            i10++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(Boolean bool) {
        update();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.earn_more_layout) {
            clickRvButton(true);
        }
        if (view.getId() == R.id.error) {
            this.errorMsg = null;
            fetchInAppProducts();
        }
        if (view.getId() == R.id.close) {
            dismiss();
        }
        if (view.getTag() instanceof Product) {
            LogEvent.clickBuilder(this, ActSemantic.purchase).area("CoinsList").send();
            if (getActivity() instanceof ChatActivity) {
                ((ChatActivity) getActivity()).disableFloatingWindow();
            }
            this.billingManager.purchaseInAppProduct(getActivity(), (Product) view.getTag());
            updateItemView(view);
        }
    }

    @Override // com.narvii.app.NVDialogFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        refreshWallet();
        registerLocalReceiver(this.walletBalanceReceiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
        MembershipService membershipService = (MembershipService) getService("membership");
        this.membership = membershipService;
        this.totalCoinsFloat = membershipService.walletBalanceFloat();
        this.billingManager.getQueryInAppFinishedLive().i(this, new Observer() { // from class: com.narvii.wallet.i0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f3020a.lambda$onCreate$0((Boolean) obj);
            }
        });
        this.billingManager.getOnWalletChangedLive().i(this, new Observer() { // from class: com.narvii.wallet.j0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f3022a.lambda$onCreate$1((WalletResponse) obj);
            }
        });
        fetchInAppProducts();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.wallet_dialog, viewGroup, false);
    }

    @Override // com.narvii.app.NVDialogFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.billingManager.setContext(getContext());
        ((PushService) getService("push")).addPushListener(this);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.noEnoughCoins = view.findViewById(R.id.header_no_enough_coin);
        this.balance = (TextView) view.findViewById(R.id.balance);
        View viewFindViewById = view.findViewById(R.id.earn_more_layout);
        viewFindViewById.setOnClickListener(this);
        viewFindViewById.setVisibility(8);
        this.loading = view.findViewById(R.id.loading);
        View viewFindViewById2 = view.findViewById(R.id.error);
        this.error = viewFindViewById2;
        viewFindViewById2.setOnClickListener(this);
        view.findViewById(R.id.close).setOnClickListener(this);
        View[] viewArr = new View[6];
        this.items = viewArr;
        viewArr[0] = view.findViewById(R.id.item1);
        this.items[1] = view.findViewById(R.id.item2);
        this.items[2] = view.findViewById(R.id.item3);
        this.items[3] = view.findViewById(R.id.item4);
        this.items[4] = view.findViewById(R.id.item5);
        this.items[5] = view.findViewById(R.id.item6);
        List<Product> productList = this.billingManager.getProductList();
        if (!productList.isEmpty()) {
            this.products = productList;
            this.errorMsg = null;
        }
        update();
    }
}
