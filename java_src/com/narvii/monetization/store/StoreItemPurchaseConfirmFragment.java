package com.narvii.monetization.store;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.list.ObjectItemClickListener;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.IBaseProduct;
import com.narvii.model.IStoreItem;
import com.narvii.model.NVObject;
import com.narvii.model.RestrictionInfo;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.monetization.utils.StoreItemHelper;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.util.JacksonUtils;
import com.narvii.util.text.NVText;
import com.narvii.wallet.Coupon;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.RedeemCouponComponent;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class StoreItemPurchaseConfirmFragment extends NVFragment implements View.OnClickListener, RedeemCouponComponent.IRedeemCouponCallback {
    public static final String FRAGMENT_TAG = "purchase_confirm";
    private View benefitsHint;
    private ConfirmPurchaseListener confirmPurchaseListener;
    private MembershipService membership;
    private TextView originalPriceHint;
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.store.StoreItemPurchaseConfirmFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            StoreItemPurchaseConfirmFragment.this.updateStoreItem();
        }
    };
    private RedeemCouponComponent redeemCouponComponent;
    private IStoreItem storeItem;
    private StoreItemHelper storeItemHelper;

    public interface ConfirmPurchaseListener {
        void doPurchase(Coupon coupon);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "StoreItemSubscription";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isFinalPage() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.membership = (MembershipService) getService("membership");
        this.membership.refreshWallet(false);
        this.storeItemHelper = new StoreItemHelper(this);
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
        if (bundle != null) {
            Cloneable refObject = StoreItem.parseRefObject(bundle.getInt("storeItemType"), JacksonUtils.createObjectNode(bundle.getString("storeItem")));
            if (refObject instanceof IStoreItem) {
                this.storeItem = (IStoreItem) refObject;
            }
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("storeItem", JacksonUtils.writeAsString(this.storeItem));
        bundle.putInt("storeItemType", this.storeItem.objectType());
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_store_item_confirm, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        view.findViewById(R.id.click_remove_mask).setOnClickListener(this);
        this.redeemCouponComponent = (RedeemCouponComponent) view.findViewById(R.id.redeem_coupon_component);
        RedeemCouponComponent redeemCouponComponent = this.redeemCouponComponent;
        if (redeemCouponComponent != null) {
            redeemCouponComponent.setGetCoinsPreClickListener(new ObjectItemClickListener() { // from class: com.narvii.monetization.store.StoreItemPurchaseConfirmFragment.2
                @Override // com.narvii.list.ObjectItemClickListener
                public void onItemClick(NVObject nVObject) {
                    LogEvent.clickBuilder(StoreItemPurchaseConfirmFragment.this, ActSemantic.pageEnter).area("GetCoinsButton").send();
                }
            });
        }
        this.benefitsHint = view.findViewById(R.id.purchase_benefits_amino_plus_hint);
        this.originalPriceHint = (TextView) view.findViewById(R.id.store_item_original_price_hint);
        updateStoreItem();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    public void setStoreItem(IStoreItem iStoreItem) {
        this.storeItem = iStoreItem;
        updateStoreItem();
    }

    public void setConfirmPurchaseListener(ConfirmPurchaseListener confirmPurchaseListener) {
        this.confirmPurchaseListener = confirmPurchaseListener;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return super.isModel();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view != null && view.getId() == R.id.click_remove_mask) {
            close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStoreItem() {
        View view = getView();
        if (view == null || this.storeItem == null) {
            return;
        }
        ((NVImageView) view.findViewById(R.id.store_item_icon)).setImageUrl(this.storeItem.getStoreIcon());
        ((StoreItemNameView) view.findViewById(R.id.store_item_name)).setStoreItem(this.storeItem);
        this.redeemCouponComponent.bindProduct(this.storeItem, false, this);
        TextView textView = (TextView) view.findViewById(R.id.store_item_price);
        int productPrice = this.storeItem.getProductPrice(this.membership.isMembership());
        textView.setText(productPrice >= 0 ? this.storeItemHelper.getPriceExpiredTimeCheck(productPrice, this.storeItem.getRestrictionInfo()) : "");
        this.benefitsHint.setVisibility((this.storeItem.getAdditionalBenefits() == null || !this.storeItem.getAdditionalBenefits().firstMonthFreeAminoPlusMembership || this.membership.isMembership()) ? 8 : 0);
        RestrictionInfo restrictionInfo = this.storeItem.getRestrictionInfo();
        if (this.storeItem.isMembershipPrice(this.membership.isMembership()) && restrictionInfo != null) {
            this.originalPriceHint.setVisibility(0);
            NVText nVText = new NVText(getResources().getString(R.string.store_extra_hint_membership_origin_price));
            nVText.format(this.storeItemHelper.getCoinsSpannableWithDeleteLine(restrictionInfo.restrictValue));
            this.originalPriceHint.setText(nVText, TextView.BufferType.SPANNABLE);
            this.originalPriceHint.setTextColor(this.storeItemHelper.getExpiredTimeStringColor(null));
            return;
        }
        this.originalPriceHint.setVisibility(8);
    }

    public void close() {
        this.redeemCouponComponent.destroy();
        getFragmentManager().popBackStack(FRAGMENT_TAG, 1);
    }

    public void resetPurchaseView() {
        updateStoreItem();
    }

    @Override // com.narvii.wallet.RedeemCouponComponent.IRedeemCouponCallback
    public void onRedeemRequested(IBaseProduct iBaseProduct, Coupon coupon) {
        if (this.confirmPurchaseListener != null) {
            LogEvent.clickBuilder(this, ActSemantic.purchase).area("PurchaseButton").send();
            this.confirmPurchaseListener.doPurchase(coupon);
        }
    }
}
