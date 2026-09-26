package com.narvii.wallet;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.DatePageHelper;
import com.narvii.list.DatePagedAdapter;
import com.narvii.list.DividerAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import java.text.DateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes9.dex */
public class CoinHistoryFragment extends NVListFragment {
    boolean businessWallet;
    String source;

    class Adapter extends NVPagedAdapter<CoinHistory, CoinHistoryListResponse> {
        DateFormat fmt;

        private int getCornerRadius(CoinHistory coinHistory) {
            return (coinHistory != null && coinHistory.sourceType == 16) ? 10000 : 0;
        }

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<CoinHistory> dataType() {
            return CoinHistory.class;
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
        public Class<? extends CoinHistoryListResponse> responseType() {
            return CoinHistoryListResponse.class;
        }

        public Adapter() {
            super(CoinHistoryFragment.this);
            this.fmt = DateFormat.getTimeInstance(3);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            String coins;
            int i10;
            CoinHistory coinHistory = (CoinHistory) obj;
            View viewCreateView = createView(R.layout.wallet_coin_history_item, viewGroup, view);
            NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.icon);
            String strIcon = coinHistory.icon();
            if (coinHistory.sourceType == 16) {
                nVImageView.setDefaultDrawable(CoinHistoryFragment.this.getResources().getDrawable(R.drawable.user_avatar_placeholder));
                nVImageView.setErrorDrawable(CoinHistoryFragment.this.getResources().getDrawable(R.drawable.user_avatar_placeholder));
            } else {
                nVImageView.setDefaultDrawable(null);
                nVImageView.setErrorDrawable(null);
            }
            nVImageView.setImageUrl(strIcon);
            nVImageView.setCornerRadius(getCornerRadius(coinHistory));
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(coinHistory.description());
            TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
            textView.setText(coinHistory.subtitle());
            textView.setVisibility(TextUtils.isEmpty(coinHistory.subtitle()) ? 8 : 0);
            TextView textView2 = (TextView) viewCreateView.findViewById(R.id.datetime);
            Date date = coinHistory.createdTime;
            textView2.setText(date != null ? this.fmt.format(date) : null);
            TextView textView3 = (TextView) viewCreateView.findViewById(R.id.amount);
            double d = coinHistory.originCoinsFloat;
            if (d >= com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                coins = org.slf4j.c.ANY_NON_NULL_MARKER + IabUtils.formatCoins(coinHistory.originCoinsFloat);
                i10 = -10564688;
            } else {
                coins = IabUtils.formatCoins(d);
                i10 = -42657;
            }
            textView3.setText(coins);
            textView3.setTextColor(i10);
            TextView textView4 = (TextView) viewCreateView.findViewById(R.id.tax);
            textView4.setText(CoinHistoryFragment.this.getString(R.string.tax_number, IabUtils.formatCoins(coinHistory.taxCoinsFloat)));
            ViewUtils.show(textView4, coinHistory.taxCoinsFloat != com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
            TextView textView5 = (TextView) viewCreateView.findViewById(R.id.amino_bonus);
            textView5.setText(CoinHistoryFragment.this.getString(R.string.amino_bonus, org.slf4j.c.ANY_NON_NULL_MARKER + IabUtils.formatCoins(coinHistory.getBonusCoinsFloat())));
            ViewUtils.show(textView5, coinHistory.getBonusCoinsFloat() != com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof CoinHistory)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            String strDeepLink = ((CoinHistory) obj).deepLink();
            if (strDeepLink == null) {
                return true;
            }
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(strDeepLink));
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, CoinHistoryFragment.this.source);
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                return true;
            } catch (Exception unused) {
                return true;
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            String str;
            ApiRequest.Builder builderGlobal = ApiRequest.builder().global();
            if (CoinHistoryFragment.this.businessWallet) {
                str = "/wallet/business-coin/history";
            } else {
                str = "/wallet/coin/history";
            }
            return builderGlobal.path(str).build();
        }
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        DatePagedAdapter datePagedAdapter = new DatePagedAdapter(this) { // from class: com.narvii.wallet.CoinHistoryFragment.1
            @Override // com.narvii.list.DatePagedAdapter
            protected int dateSectionLayoutId() {
                return R.layout.wallet_coin_history_date_section;
            }

            @Override // com.narvii.list.DatePagedAdapter
            protected DatePageHelper newDatePageHelper(NVPagedAdapter nVPagedAdapter) {
                return new DatePageHelper(nVPagedAdapter);
            }
        };
        datePagedAdapter.setAdapter(new Adapter());
        DividerAdapter dividerAdapter = new DividerAdapter(this);
        dividerAdapter.setAdapter(datePagedAdapter);
        return dividerAdapter;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.businessWallet) {
            setActionBarCustomDrawable(getResources().getDrawable(R.drawable.business_wallet_action_bar_bg));
        } else {
            setActionBarCustomDrawable(new ColorDrawable(-13785881));
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        this.businessWallet = getBooleanParam("businessWallet");
        setTitle(R.string.wallet_coin_history);
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Transactions Page").userPropInc("Transactions Page Total");
        }
        if (this.businessWallet) {
            str = "Business Wallet History";
        } else {
            str = "Wallet History";
        }
        this.source = str;
    }
}
