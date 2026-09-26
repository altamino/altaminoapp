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
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.monetization.store.MonetizationStoreMainFragment;
import com.narvii.navigator.Navigator;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.wallet.Coupon;
import com.narvii.wallet.CouponDetail;
import com.narvii.wallet.CouponListResponse;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes9.dex */
public class CouponListFragment extends NVListFragment {

    private class Adapter extends NVPagedAdapter<Coupon, CouponListResponse> {
        public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<Coupon> dataType() {
            return Coupon.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<CouponListResponse> responseType() {
            return CouponListResponse.class;
        }

        public Adapter() {
            super(CouponListFragment.this, -2);
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            Intent intent = FragmentWrapperActivity.intent(MonetizationStoreMainFragment.class);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "My Coupons");
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
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
        return R.style.AminoTheme;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter();
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(-13785881);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.my_coupons);
        setHasOptionsMenu(true);
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("My Coupons").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("My Coupons Total");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.wallet_coin_help, 0, R.string.wallet_coin_help).setIcon(R.drawable.wallet_help_btn).setShowAsAction(2);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.wallet_coin_help) {
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, ((Navigator) NVApplication.instance().getService("navigator")).intentMapping(new Intent("android.intent.action.VIEW", Uri.parse("https://support.altamino.top/hc/sections/360000385733-Amino-"))));
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }
}
