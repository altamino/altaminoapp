package com.narvii.wallet;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.wallet.CoinStats;
import com.narvii.widget.histogram.HistogramItemConfig;
import com.narvii.widget.histogram.HistogramView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: BusinessWalletFragment.kt */
/* loaded from: classes3.dex */
public final class BusinessWalletFragment extends NVFragment {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BusinessWalletFragment.class), "totalBalance", "getTotalBalance()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BusinessWalletFragment.class), "histogramView", "getHistogramView()Lcom/narvii/widget/histogram/HistogramView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BusinessWalletFragment.class), "swipeRefresh", "getSwipeRefresh()Lcom/narvii/list/refresh/SwipeRefreshLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BusinessWalletFragment.class), "earningCoins", "getEarningCoins()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BusinessWalletFragment.class), "paidCoins", "getPaidCoins()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BusinessWalletFragment.class), "emptyView", "getEmptyView()Landroid/widget/LinearLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BusinessWalletFragment.class), NotificationCompat.CATEGORY_PROGRESS, "getProgress()Lcom/narvii/util/dialog/ProgressDialog;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BusinessWalletFragment.class), "emptyText", "getEmptyText()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BusinessWalletFragment.class), "apiService", "getApiService()Lcom/narvii/util/http/ApiService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BusinessWalletFragment.class), "coinRequest", "getCoinRequest()Lcom/narvii/util/http/ApiRequest;"))};
    private HashMap _$_findViewCache;
    private final Lazy totalBalance$delegate = bind(this, R.id.balance);
    private final Lazy histogramView$delegate = bind(this, R.id.histogram_view);
    private final Lazy swipeRefresh$delegate = bind(this, R.id.swipe_refresh);
    private final Lazy earningCoins$delegate = bind(this, R.id.lifetime_earning_coins);
    private final Lazy paidCoins$delegate = bind(this, R.id.total_paid_coins);
    private final Lazy emptyView$delegate = bind(this, R.id.empty_view);
    private final Lazy progress$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ProgressDialog>() { // from class: com.narvii.wallet.BusinessWalletFragment$progress$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ProgressDialog invoke() {
            return new ProgressDialog(this.this$0.getContext());
        }
    });
    private final Lazy emptyText$delegate = bind(this, R.id.empty_text);
    private final Lazy apiService$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ApiService>() { // from class: com.narvii.wallet.BusinessWalletFragment$apiService$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ApiService invoke() {
            return (ApiService) this.this$0.getService("api");
        }
    });
    private final Lazy coinRequest$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ApiRequest>() { // from class: com.narvii.wallet.BusinessWalletFragment$coinRequest$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ApiRequest invoke() {
            return ApiRequest.builder().path("/wallet/business-coin/stats").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).build();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public final ApiService getApiService() {
        Lazy lazy = this.apiService$delegate;
        KProperty kProperty = $$delegatedProperties[8];
        return (ApiService) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ApiRequest getCoinRequest() {
        Lazy lazy = this.coinRequest$delegate;
        KProperty kProperty = $$delegatedProperties[9];
        return (ApiRequest) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView getEarningCoins() {
        Lazy lazy = this.earningCoins$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (TextView) lazy.getValue();
    }

    private final TextView getEmptyText() {
        Lazy lazy = this.emptyText$delegate;
        KProperty kProperty = $$delegatedProperties[7];
        return (TextView) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout getEmptyView() {
        Lazy lazy = this.emptyView$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (LinearLayout) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HistogramView getHistogramView() {
        Lazy lazy = this.histogramView$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (HistogramView) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView getPaidCoins() {
        Lazy lazy = this.paidCoins$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (TextView) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ProgressDialog getProgress() {
        Lazy lazy = this.progress$delegate;
        KProperty kProperty = $$delegatedProperties[6];
        return (ProgressDialog) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SwipeRefreshLayout getSwipeRefresh() {
        Lazy lazy = this.swipeRefresh$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (SwipeRefreshLayout) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView getTotalBalance() {
        Lazy lazy = this.totalBalance$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (TextView) lazy.getValue();
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    private final <T extends View> Lazy<T> bind(BusinessWalletFragment businessWalletFragment, final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.wallet.BusinessWalletFragment.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View view = BusinessWalletFragment.this.getView();
                View viewFindViewById = view != null ? view.findViewById(i) : null;
                if (viewFindViewById != null) {
                    return viewFindViewById;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        });
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return ContextCompat.getDrawable(getContext(), R.drawable.business_wallet_action_bar_bg);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_business_wallet, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        setTitle(getResources().getString(R.string.my_business_wallet));
        getEmptyText().setText(getString(R.string.no_coins_earned, 10));
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        MenuItem menuItemAdd;
        MenuItem icon;
        super.onCreateOptionsMenu(menu, menuInflater);
        if (menu == null || (menuItemAdd = menu.add(0, R.string.wallet_coin_history, 0, R.string.wallet_coin_history)) == null || (icon = menuItemAdd.setIcon(R.drawable.wallet_history_btn)) == null) {
            return;
        }
        icon.setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem != null && menuItem.getItemId() == R.string.wallet_coin_history) {
            Intent intent = FragmentWrapperActivity.intent(CoinHistoryFragment.class);
            intent.putExtra("businessWallet", true);
            startActivity(intent);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        Intent intent;
        super.onActivityCreated(bundle);
        FragmentActivity activity = getActivity();
        double doubleExtra = 0.0d;
        if (activity != null && (intent = activity.getIntent()) != null) {
            doubleExtra = intent.getDoubleExtra("totalBusinessBalance", 0.0d);
        }
        getTotalBalance().setText(IabUtils.formatCoins(doubleExtra));
        setupCategoryLabels();
        getSwipeRefresh().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.narvii.wallet.BusinessWalletFragment.onActivityCreated.1
            @Override // com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                BusinessWalletFragment.this.sendBusinessCoinStatsRequest();
            }
        });
        getProgress().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.wallet.BusinessWalletFragment.onActivityCreated.2
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                BusinessWalletFragment.this.getApiService().abort(BusinessWalletFragment.this.getCoinRequest());
            }
        });
        getProgress().show();
        sendBusinessCoinStatsRequest();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        getApiService().abort(getCoinRequest());
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    private final void setupCategoryLabels() throws Resources.NotFoundException {
        View view = getView();
        NVFlowLayout nVFlowLayout = view != null ? (NVFlowLayout) view.findViewById(R.id.category_label) : null;
        if (nVFlowLayout != null) {
            nVFlowLayout.removeAllViews();
            String string = getResources().getString(R.string.wallet_props);
            Intrinsics.checkExpressionValueIsNotNull(string, "resources.getString(R.string.wallet_props)");
            View viewGenerateCategoryLabelView = generateCategoryLabelView(string, R.drawable.round_square_blue);
            String string2 = getResources().getString(R.string.wallet_fan_club);
            Intrinsics.checkExpressionValueIsNotNull(string2, "resources.getString(R.string.wallet_fan_club)");
            View viewGenerateCategoryLabelView2 = generateCategoryLabelView(string2, R.drawable.round_square_red);
            String string3 = getResources().getString(R.string.wallet_digital_item);
            Intrinsics.checkExpressionValueIsNotNull(string3, "resources.getString(R.string.wallet_digital_item)");
            View viewGenerateCategoryLabelView3 = generateCategoryLabelView(string3, R.drawable.round_square_yellow);
            nVFlowLayout.addView(viewGenerateCategoryLabelView);
            nVFlowLayout.addView(viewGenerateCategoryLabelView2);
            nVFlowLayout.addView(viewGenerateCategoryLabelView3);
        }
    }

    private final View generateCategoryLabelView(String str, int i) {
        View labelView = getLayoutInflater().inflate(R.layout.business_wallet_category_label_view, (ViewGroup) null);
        View viewFindViewById = labelView.findViewById(R.id.label_content);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "labelView.findViewById<T…View>(R.id.label_content)");
        ((TextView) viewFindViewById).setText(str);
        ((ImageView) labelView.findViewById(R.id.label_icon)).setImageDrawable(getResources().getDrawable(i));
        Intrinsics.checkExpressionValueIsNotNull(labelView, "labelView");
        return labelView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getSectionColor(int i) {
        if (i == 13) {
            return getResources().getColor(R.color.business_wallet_props_color);
        }
        if (i == 16) {
            return getResources().getColor(R.color.business_wallet_fans_color);
        }
        if (i != 17) {
            return 0;
        }
        return getResources().getColor(R.color.business_wallet_digital_color);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendBusinessCoinStatsRequest() {
        getApiService().exec(getCoinRequest(), new ApiResponseListener<BusinessCoinStatsResponse>(BusinessCoinStatsResponse.class) { // from class: com.narvii.wallet.BusinessWalletFragment.sendBusinessCoinStatsRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest req, BusinessCoinStatsResponse resp) {
                ArrayList<CoinStats.DailyStats> dailyStats;
                Intrinsics.checkParameterIsNotNull(req, "req");
                Intrinsics.checkParameterIsNotNull(resp, "resp");
                if (BusinessWalletFragment.this.getProgress().isShowing()) {
                    BusinessWalletFragment.this.getProgress().dismiss();
                }
                BusinessWalletFragment.this.getSwipeRefresh().setRefreshing(false);
                if (resp.getDailyStats() == null || (((dailyStats = resp.getDailyStats()) != null && dailyStats.isEmpty()) || resp.getLast10DayTotal() == 0.0f)) {
                    if (!BusinessWalletFragment.this.getHistogramView().hasData()) {
                        BusinessWalletFragment.this.getEmptyView().setVisibility(0);
                    }
                } else {
                    BusinessWalletFragment.this.getEmptyView().setVisibility(8);
                }
                BusinessWalletFragment.this.getTotalBalance().setText(IabUtils.formatCoins(resp.getTotalBalance()));
                BusinessWalletFragment.this.getEarningCoins().setText(IabUtils.formatCoins(resp.getTotalEarning()));
                BusinessWalletFragment.this.getPaidCoins().setText(IabUtils.formatCoins(resp.getTotalPaidOut()));
                ArrayList<CoinStats.DailyStats> dailyStats2 = resp.getDailyStats();
                if (dailyStats2 != null) {
                    ArrayList<HistogramItemConfig> arrayList = new ArrayList<>();
                    Iterator<CoinStats.DailyStats> it = dailyStats2.iterator();
                    while (it.hasNext()) {
                        CoinStats.DailyStats next = it.next();
                        HistogramItemConfig.Builder builder = new HistogramItemConfig.Builder(next.startTime);
                        ArrayList<CoinStats.StatsSection> arrayList2 = next.statsList;
                        if (arrayList2 != null) {
                            Iterator<CoinStats.StatsSection> it2 = arrayList2.iterator();
                            while (it2.hasNext()) {
                                CoinStats.StatsSection next2 = it2.next();
                                builder.addSection(next2.totalCoins, BusinessWalletFragment.this.getSectionColor(next2.sourceType));
                            }
                        }
                        arrayList.add(builder.build());
                    }
                    BusinessWalletFragment.this.getHistogramView().setItemConfigs(arrayList);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                if (BusinessWalletFragment.this.getProgress().isShowing()) {
                    BusinessWalletFragment.this.getProgress().dismiss();
                }
                BusinessWalletFragment.this.getSwipeRefresh().setRefreshing(false);
                if (BusinessWalletFragment.this.getHistogramView().hasData()) {
                    return;
                }
                BusinessWalletFragment.this.getEmptyView().setVisibility(0);
            }
        });
    }
}
