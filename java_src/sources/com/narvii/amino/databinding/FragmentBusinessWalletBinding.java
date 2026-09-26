package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.widget.histogram.HistogramView;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentBusinessWalletBinding implements ViewBinding {

    @NonNull
    public final TextView balance;

    @NonNull
    public final NVFlowLayout categoryLabel;

    @NonNull
    public final View dividerLine;

    @NonNull
    public final TextView emptyText;

    @NonNull
    public final LinearLayout emptyView;

    @NonNull
    public final HistogramView histogramView;

    @NonNull
    public final TextView lifetimeEarning;

    @NonNull
    public final TextView lifetimeEarningCoins;

    @NonNull
    private final SwipeRefreshLayout rootView;

    @NonNull
    public final SwipeRefreshLayout swipeRefresh;

    @NonNull
    public final TextView totalPaid;

    @NonNull
    public final TextView totalPaidCoins;

    @NonNull
    public static FragmentBusinessWalletBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentBusinessWalletBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_business_wallet, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentBusinessWalletBinding(@NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull TextView textView, @NonNull NVFlowLayout nVFlowLayout, @NonNull View view, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull HistogramView histogramView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull SwipeRefreshLayout swipeRefreshLayout2, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.rootView = swipeRefreshLayout;
        this.balance = textView;
        this.categoryLabel = nVFlowLayout;
        this.dividerLine = view;
        this.emptyText = textView2;
        this.emptyView = linearLayout;
        this.histogramView = histogramView;
        this.lifetimeEarning = textView3;
        this.lifetimeEarningCoins = textView4;
        this.swipeRefresh = swipeRefreshLayout2;
        this.totalPaid = textView5;
        this.totalPaidCoins = textView6;
    }

    @NonNull
    public static FragmentBusinessWalletBinding bind(@NonNull View view) {
        int i10 = R.id.balance;
        TextView textView = (TextView) ViewBindings.a(view, R.id.balance);
        if (textView != null) {
            i10 = R.id.category_label;
            NVFlowLayout nVFlowLayout = (NVFlowLayout) ViewBindings.a(view, R.id.category_label);
            if (nVFlowLayout != null) {
                i10 = R.id.divider_line;
                View viewA = ViewBindings.a(view, R.id.divider_line);
                if (viewA != null) {
                    i10 = R.id.empty_text;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.empty_text);
                    if (textView2 != null) {
                        i10 = R.id.empty_view;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.empty_view);
                        if (linearLayout != null) {
                            i10 = R.id.histogram_view;
                            HistogramView histogramView = (HistogramView) ViewBindings.a(view, R.id.histogram_view);
                            if (histogramView != null) {
                                i10 = R.id.lifetime_earning;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.lifetime_earning);
                                if (textView3 != null) {
                                    i10 = R.id.lifetime_earning_coins;
                                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.lifetime_earning_coins);
                                    if (textView4 != null) {
                                        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) view;
                                        i10 = R.id.total_paid;
                                        TextView textView5 = (TextView) ViewBindings.a(view, R.id.total_paid);
                                        if (textView5 != null) {
                                            i10 = R.id.total_paid_coins;
                                            TextView textView6 = (TextView) ViewBindings.a(view, R.id.total_paid_coins);
                                            if (textView6 != null) {
                                                return new FragmentBusinessWalletBinding(swipeRefreshLayout, textView, nVFlowLayout, viewA, textView2, linearLayout, histogramView, textView3, textView4, swipeRefreshLayout, textView5, textView6);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
