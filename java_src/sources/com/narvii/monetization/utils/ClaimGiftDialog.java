package com.narvii.monetization.utils;

import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.coupons.CouponCardCoinsLayout;
import com.narvii.monetization.store.MonetizationStoreMainFragment;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.wallet.CouponDetail;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.WalletResponse;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class ClaimGiftDialog extends NVDialog implements View.OnClickListener {
    NVContext context;
    private final ViewGroup couponsCardContainer;
    private boolean isShown;
    public String source;
    private boolean willShowUseIt;

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public boolean isShown() {
        return this.isShown;
    }

    public void show(CouponDetail couponDetail) {
        show(couponDetail, true);
    }

    public void sendClaimCoinRequest() {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        ApiRequest apiRequestBuild = ApiRequest.builder().global().path("coupon/new-user-coupon/claim").post().build();
        ApiService apiService = (ApiService) this.context.getService("api");
        progressDialog.show();
        apiService.exec(apiRequestBuild, new ApiResponseListener<WalletResponse>(WalletResponse.class) { // from class: com.narvii.monetization.utils.ClaimGiftDialog.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, WalletResponse walletResponse) throws Exception {
                super.onFinish(apiRequest, walletResponse);
                progressDialog.dismiss();
                ((MembershipService) ClaimGiftDialog.this.context.getService("membership")).updateAvailableCoupon(null);
                if (ClaimGiftDialog.this.willShowUseIt) {
                    ClaimGiftDialog.this.showUseItButton();
                } else {
                    ClaimGiftDialog.this.dismiss();
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                progressDialog.dismiss();
                NVToast.makeText(ClaimGiftDialog.this.getContext(), str, 1).show();
                ClaimGiftDialog.this.showClaimButton();
            }
        });
        ((StatisticsService) this.context.getService("statistics")).event("Claim Free Coins").source(this.source).userPropInc("Claim Free Coins Total");
    }

    public void show(CouponDetail couponDetail, boolean z6) {
        this.willShowUseIt = z6;
        CouponCardCoinsLayout couponCardCoinsLayout = (CouponCardCoinsLayout) findViewById(R.id.coupon_card_layout);
        if (couponCardCoinsLayout == null) {
            couponCardCoinsLayout = (CouponCardCoinsLayout) LayoutInflater.from(getContext()).inflate(R.layout.coupons_card_coins_claim, this.couponsCardContainer, true).findViewById(R.id.coupon_card_layout);
        }
        couponCardCoinsLayout.setCouponInfo(couponDetail);
        show();
    }

    public ClaimGiftDialog(NVContext nVContext) {
        super(nVContext, R.style.CustomDialogWithAnimation);
        this.context = nVContext;
        setContentView(R.layout.dialog_claim_gift);
        findViewById(R.id.click_remove_mask).setOnClickListener(this);
        findViewById(R.id.close).setOnClickListener(this);
        findViewById(R.id.claim_gift_button).setOnClickListener(this);
        findViewById(R.id.claim_gift_use_button).setOnClickListener(this);
        this.couponsCardContainer = (ViewGroup) findViewById(R.id.claim_coupons_card_container);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showClaimButton() {
        findViewById(R.id.claim_gift_button).setVisibility(8);
        findViewById(R.id.claim_gift_use_button).setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showUseItButton() {
        findViewById(R.id.claim_gift_button).setVisibility(8);
        findViewById(R.id.claim_gift_use_button).setVisibility(0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.claim_gift_button) {
            if (id != R.id.claim_gift_use_button) {
                if (id == R.id.close) {
                    dismiss();
                    return;
                }
                return;
            } else {
                Intent intent = FragmentWrapperActivity.intent(MonetizationStoreMainFragment.class);
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Coupon Modal");
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
                dismiss();
                return;
            }
        }
        sendClaimCoinRequest();
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        super.show();
        this.isShown = true;
        findViewById(R.id.container).startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.scale_in));
    }
}
