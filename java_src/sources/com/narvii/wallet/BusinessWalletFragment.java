package com.narvii.wallet;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.histogram.HistogramItemConfig;
import com.narvii.widget.histogram.HistogramView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class BusinessWalletFragment extends NVFragment {

    @NotNull
    private final w7.m totalBalance$delegate = bind(this, R.id.balance);

    @NotNull
    private final w7.m histogramView$delegate = bind(this, R.id.histogram_view);

    @NotNull
    private final w7.m swipeRefresh$delegate = bind(this, R.id.swipe_refresh);

    @NotNull
    private final w7.m earningCoins$delegate = bind(this, R.id.lifetime_earning_coins);

    @NotNull
    private final w7.m paidCoins$delegate = bind(this, R.id.total_paid_coins);

    @NotNull
    private final w7.m emptyView$delegate = bind(this, R.id.empty_view);

    @NotNull
    private final w7.m progress$delegate = w7.o.a(new BusinessWalletFragment$progress$2(this));

    @NotNull
    private final w7.m emptyText$delegate = bind(this, R.id.empty_text);

    @NotNull
    private final w7.m apiService$delegate = w7.o.a(new BusinessWalletFragment$apiService$2(this));

    @NotNull
    private final w7.m coinRequest$delegate = w7.o.a(BusinessWalletFragment$coinRequest$2.INSTANCE);

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.wallet.BusinessWalletFragment$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends kotlin.jvm.internal.v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        @NotNull
        public final View invoke() {
            View view = BusinessWalletFragment.this.getView();
            View viewFindViewById = view != null ? view.findViewById(this.$res) : null;
            kotlin.jvm.internal.t.h(viewFindViewById, "null cannot be cast to non-null type T of com.narvii.wallet.BusinessWalletFragment.bind");
            return viewFindViewById;
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    private final <T extends View> w7.m<T> bind(BusinessWalletFragment businessWalletFragment, @IdRes int i10) {
        return w7.o.b(w7.q.NONE, businessWalletFragment.new AnonymousClass1(i10));
    }

    private final ApiService getApiService() {
        return (ApiService) this.apiService$delegate.getValue();
    }

    private final ApiRequest getCoinRequest() {
        return (ApiRequest) this.coinRequest$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView getEarningCoins() {
        return (TextView) this.earningCoins$delegate.getValue();
    }

    private final TextView getEmptyText() {
        return (TextView) this.emptyText$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout getEmptyView() {
        return (LinearLayout) this.emptyView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HistogramView getHistogramView() {
        return (HistogramView) this.histogramView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView getPaidCoins() {
        return (TextView) this.paidCoins$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ProgressDialog getProgress() {
        return (ProgressDialog) this.progress$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getSectionColor(int i10) {
        if (i10 == 13) {
            return getResources().getColor(R.color.business_wallet_props_color);
        }
        if (i10 == 16) {
            return getResources().getColor(R.color.business_wallet_fans_color);
        }
        if (i10 != 17) {
            return 0;
        }
        return getResources().getColor(R.color.business_wallet_digital_color);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SwipeRefreshLayout getSwipeRefresh() {
        return (SwipeRefreshLayout) this.swipeRefresh$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView getTotalBalance() {
        return (TextView) this.totalBalance$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(@NotNull Menu menu, @NotNull MenuInflater inflater) {
        MenuItem icon;
        kotlin.jvm.internal.t.j(menu, "menu");
        kotlin.jvm.internal.t.j(inflater, "inflater");
        super.onCreateOptionsMenu(menu, inflater);
        MenuItem menuItemAdd = menu.add(0, R.string.wallet_coin_history, 0, R.string.wallet_coin_history);
        if (menuItemAdd == null || (icon = menuItemAdd.setIcon(R.drawable.wallet_history_btn)) == null) {
            return;
        }
        icon.setShowAsAction(2);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_business_wallet, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(@NotNull MenuItem item) {
        kotlin.jvm.internal.t.j(item, "item");
        if (item.getItemId() == R.string.wallet_coin_history) {
            Intent intent = FragmentWrapperActivity.intent(CoinHistoryFragment.class);
            intent.putExtra("businessWallet", true);
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        }
        return super.onOptionsItemSelected(item);
    }

    private final View generateCategoryLabelView(String str, @DrawableRes int i10) {
        View viewInflate = getLayoutInflater().inflate(R.layout.business_wallet_category_label_view, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.label_content)).setText(str);
        ((ImageView) viewInflate.findViewById(R.id.label_icon)).setImageDrawable(getResources().getDrawable(i10));
        kotlin.jvm.internal.t.g(viewInflate);
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityCreated$lambda$1(BusinessWalletFragment this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.sendBusinessCoinStatsRequest();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityCreated$lambda$2(BusinessWalletFragment this$0, DialogInterface dialogInterface) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.getApiService().abort(this$0.getCoinRequest());
    }

    private final void sendBusinessCoinStatsRequest() {
        getApiService().exec(getCoinRequest(), new ApiResponseListener<BusinessCoinStatsResponse>(BusinessCoinStatsResponse.class) { // from class: com.narvii.wallet.BusinessWalletFragment.sendBusinessCoinStatsRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                if (BusinessWalletFragment.this.getProgress().isShowing()) {
                    BusinessWalletFragment.this.getProgress().dismiss();
                }
                BusinessWalletFragment.this.getSwipeRefresh().setRefreshing(false);
                if (BusinessWalletFragment.this.getHistogramView().hasData()) {
                    return;
                }
                BusinessWalletFragment.this.getEmptyView().setVisibility(0);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @NotNull BusinessCoinStatsResponse resp) {
                ArrayList<CoinStats.DailyStats> dailyStats;
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(resp, "resp");
                if (BusinessWalletFragment.this.getProgress().isShowing()) {
                    BusinessWalletFragment.this.getProgress().dismiss();
                }
                BusinessWalletFragment.this.getSwipeRefresh().setRefreshing(false);
                if (resp.getDailyStats() != null && (((dailyStats = resp.getDailyStats()) == null || !dailyStats.isEmpty()) && resp.getLast10DayTotal() != 0.0f)) {
                    BusinessWalletFragment.this.getEmptyView().setVisibility(8);
                } else if (!BusinessWalletFragment.this.getHistogramView().hasData()) {
                    BusinessWalletFragment.this.getEmptyView().setVisibility(0);
                }
                BusinessWalletFragment.this.getTotalBalance().setText(IabUtils.formatCoins(resp.getTotalBalance()));
                BusinessWalletFragment.this.getEarningCoins().setText(IabUtils.formatCoins(resp.getTotalEarning()));
                BusinessWalletFragment.this.getPaidCoins().setText(IabUtils.formatCoins(resp.getTotalPaidOut()));
                ArrayList<CoinStats.DailyStats> dailyStats2 = resp.getDailyStats();
                if (dailyStats2 != null) {
                    BusinessWalletFragment businessWalletFragment = BusinessWalletFragment.this;
                    ArrayList<HistogramItemConfig> arrayList = new ArrayList<>();
                    for (CoinStats.DailyStats dailyStats3 : dailyStats2) {
                        HistogramItemConfig.Builder builder = new HistogramItemConfig.Builder(dailyStats3.startTime);
                        ArrayList<CoinStats.StatsSection> arrayList2 = dailyStats3.statsList;
                        if (arrayList2 != null) {
                            for (CoinStats.StatsSection statsSection : arrayList2) {
                                builder.addSection(statsSection.totalCoins, businessWalletFragment.getSectionColor(statsSection.sourceType));
                            }
                        }
                        arrayList.add(builder.build());
                    }
                    businessWalletFragment.getHistogramView().setItemConfigs(arrayList);
                }
            }
        });
    }

    private final void setupCategoryLabels() {
        NVFlowLayout nVFlowLayout;
        View view = getView();
        if (view != null) {
            nVFlowLayout = (NVFlowLayout) view.findViewById(R.id.category_label);
        } else {
            nVFlowLayout = null;
        }
        if (nVFlowLayout != null) {
            nVFlowLayout.removeAllViews();
            String string = getResources().getString(R.string.wallet_props);
            kotlin.jvm.internal.t.i(string, "getString(...)");
            View viewGenerateCategoryLabelView = generateCategoryLabelView(string, R.drawable.round_square_blue);
            String string2 = getResources().getString(R.string.wallet_fan_club);
            kotlin.jvm.internal.t.i(string2, "getString(...)");
            View viewGenerateCategoryLabelView2 = generateCategoryLabelView(string2, R.drawable.round_square_red);
            String string3 = getResources().getString(R.string.wallet_digital_item);
            kotlin.jvm.internal.t.i(string3, "getString(...)");
            View viewGenerateCategoryLabelView3 = generateCategoryLabelView(string3, R.drawable.round_square_yellow);
            nVFlowLayout.addView(viewGenerateCategoryLabelView);
            nVFlowLayout.addView(viewGenerateCategoryLabelView2);
            nVFlowLayout.addView(viewGenerateCategoryLabelView3);
        }
    }

    @Override // com.narvii.app.NVFragment
    @Nullable
    protected Drawable getActionBarCustomDrawable() {
        return ContextCompat.getDrawable(getContext(), R.drawable.business_wallet_action_bar_bg);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        Intent intent;
        super.onActivityCreated(bundle);
        FragmentActivity activity = getActivity();
        double doubleExtra = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
        if (activity != null && (intent = activity.getIntent()) != null) {
            doubleExtra = intent.getDoubleExtra("totalBusinessBalance", com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
        }
        getTotalBalance().setText(IabUtils.formatCoins(doubleExtra));
        setupCategoryLabels();
        getSwipeRefresh().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.narvii.wallet.b
            @Override // com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                BusinessWalletFragment.onActivityCreated$lambda$1(this.f3004a);
            }
        });
        getProgress().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.wallet.c
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                BusinessWalletFragment.onActivityCreated$lambda$2(this.f3006a, dialogInterface);
            }
        });
        getProgress().show();
        sendBusinessCoinStatsRequest();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        Object service = getService("statistics");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        ((StatisticsService) service).event("Business Wallet Page Opened").userPropInc("Business Wallet Page Opened Total");
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        getApiService().abort(getCoinRequest());
        super.onDestroyView();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        setTitle(getResources().getString(R.string.my_business_wallet));
        getEmptyText().setText(getString(R.string.no_coins_earned, 10));
    }
}
