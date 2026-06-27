package com.narvii.monetization.utils;

import android.content.Intent;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.coupons.CouponCardCoinsLayout;
import com.narvii.monetization.store.MonetizationStoreMainFragment;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.wallet.CouponDetail;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.WalletResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class ClaimGiftDialog extends NVDialog implements View.OnClickListener {
    NVContext context;
    private final ViewGroup couponsCardContainer;
    private boolean isShown;
    public String source;
    private boolean willShowUseIt;

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

    public void show(CouponDetail couponDetail) {
        show(couponDetail, true);
    }

    public void show(CouponDetail couponDetail, boolean z) {
        this.willShowUseIt = z;
        CouponCardCoinsLayout couponCardCoinsLayout = (CouponCardCoinsLayout) findViewById(R.id.coupon_card_layout);
        if (couponCardCoinsLayout == null) {
            couponCardCoinsLayout = (CouponCardCoinsLayout) LayoutInflater.from(getContext()).inflate(R.layout.coupons_card_coins_claim, this.couponsCardContainer, true).findViewById(R.id.coupon_card_layout);
        }
        couponCardCoinsLayout.setCouponInfo(couponDetail);
        show();
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() throws Resources.NotFoundException {
        super.show();
        this.isShown = true;
        findViewById(R.id.container).startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.scale_in));
    }

    public boolean isShown() {
        return this.isShown;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.claim_gift_button /* 2131296835 */:
                sendClaimCoinRequest();
                break;
            case R.id.claim_gift_use_button /* 2131296837 */:
                Intent intent = FragmentWrapperActivity.intent(MonetizationStoreMainFragment.class);
                intent.putExtra("Source", "Coupon Modal");
                this.context.startActivity(intent);
                dismiss();
                break;
            case R.id.close /* 2131296862 */:
                dismiss();
                break;
        }
    }

    public void sendClaimCoinRequest() {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        ApiRequest apiRequestBuild = ApiRequest.builder().global().path("coupon/new-user-coupon/claim").post().build();
        ApiService apiService = (ApiService) this.context.getService("api");
        progressDialog.show();
        apiService.exec(apiRequestBuild, new ApiResponseListener<WalletResponse>(WalletResponse.class) { // from class: com.narvii.monetization.utils.ClaimGiftDialog.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, WalletResponse walletResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) walletResponse);
                progressDialog.dismiss();
                ((MembershipService) ClaimGiftDialog.this.context.getService("membership")).updateAvailableCoupon(null);
                if (ClaimGiftDialog.this.willShowUseIt) {
                    ClaimGiftDialog.this.showUseItButton();
                } else {
                    ClaimGiftDialog.this.dismiss();
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                progressDialog.dismiss();
                NVToast.makeText(ClaimGiftDialog.this.getContext(), str, 1).show();
                ClaimGiftDialog.this.showClaimButton();
            }
        });
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
}
