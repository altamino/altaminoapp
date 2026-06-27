package com.narvii.monetization.coupons;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.monetization.store.MonetizationStoreMainFragment;
import com.narvii.navigator.Navigator;
import com.narvii.util.http.ApiRequest;
import com.narvii.wallet.Coupon;
import com.narvii.wallet.CouponDetail;
import com.narvii.wallet.CouponListResponse;

/* loaded from: classes3.dex */
public class CouponListFragment extends NVListFragment {
    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.my_coupons);
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(-13785881);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.wallet_coin_help, 0, R.string.wallet_coin_help).setIcon(R.drawable.wallet_help_btn).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.wallet_coin_help) {
            startActivity(((Navigator) NVApplication.instance().getService("navigator")).intentMapping(new Intent("android.intent.action.VIEW", Uri.parse("https://support.aminoapps.com/hc/sections/360000385733-Amino-"))));
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter();
    }

    private class Adapter extends NVPagedAdapter<Coupon, CouponListResponse> {
        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        public Adapter() {
            super(CouponListFragment.this, -2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<Coupon> dataType() {
            return Coupon.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<CouponListResponse> responseType() {
            return CouponListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder().path("/coupon/new-user-coupon").build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            CouponDetail couponDetail;
            View viewCreateView = createView(R.layout.coupons_card_coins_item, viewGroup, view);
            CouponCardCoinsLayout couponCardCoinsLayout = (CouponCardCoinsLayout) viewCreateView.findViewById(R.id.coupon_card_layout);
            if ((obj instanceof Coupon) && (couponDetail = ((Coupon) obj).coupon) != null) {
                couponCardCoinsLayout.setCouponInfo(couponDetail);
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            Intent intent = FragmentWrapperActivity.intent(MonetizationStoreMainFragment.class);
            intent.putExtra("Source", "My Coupons");
            this.context.startActivity(intent);
            return true;
        }
    }
}
