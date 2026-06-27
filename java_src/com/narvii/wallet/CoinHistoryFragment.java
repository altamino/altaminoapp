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
import com.narvii.amino.mastes.R;
import com.narvii.list.DatePageHelper;
import com.narvii.list.DatePagedAdapter;
import com.narvii.list.DividerAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVImageView;
import java.text.DateFormat;
import java.util.Date;

/* loaded from: classes3.dex */
public class CoinHistoryFragment extends NVListFragment {
    boolean businessWallet;
    String source;

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.businessWallet = getBooleanParam("businessWallet");
        setTitle(R.string.wallet_coin_history);
        this.source = this.businessWallet ? "Business Wallet History" : "Wallet History";
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        if (this.businessWallet) {
            setActionBarCustomDrawable(getResources().getDrawable(R.drawable.business_wallet_action_bar_bg));
        } else {
            setActionBarCustomDrawable(new ColorDrawable(-13785881));
        }
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

    class Adapter extends NVPagedAdapter<CoinHistory, CoinHistoryListResponse> {
        DateFormat fmt;

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        public Adapter() {
            super(CoinHistoryFragment.this);
            this.fmt = DateFormat.getTimeInstance(3);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<CoinHistory> dataType() {
            return CoinHistory.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends CoinHistoryListResponse> responseType() {
            return CoinHistoryListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return ApiRequest.builder().global().path(CoinHistoryFragment.this.businessWallet ? "/wallet/business-coin/history" : "/wallet/coin/history").build();
        }

        private int getCornerRadius(CoinHistory coinHistory) {
            return (coinHistory != null && coinHistory.sourceType == 16) ? 10000 : 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            String coins;
            int i;
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
            if (d >= 0.0d) {
                coins = "+" + IabUtils.formatCoins(coinHistory.originCoinsFloat);
                i = -10564688;
            } else {
                coins = IabUtils.formatCoins(d);
                i = -42657;
            }
            textView3.setText(coins);
            textView3.setTextColor(i);
            TextView textView4 = (TextView) viewCreateView.findViewById(R.id.tax);
            textView4.setText(CoinHistoryFragment.this.getString(R.string.tax_number, IabUtils.formatCoins(coinHistory.taxCoinsFloat)));
            ViewUtils.show(textView4, coinHistory.taxCoinsFloat != 0.0d);
            TextView textView5 = (TextView) viewCreateView.findViewById(R.id.amino_bonus);
            textView5.setText(CoinHistoryFragment.this.getString(R.string.amino_bonus, "+" + IabUtils.formatCoins(coinHistory.getBonusCoinsFloat())));
            ViewUtils.show(textView5, coinHistory.getBonusCoinsFloat() != 0.0d);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof CoinHistory) {
                String strDeepLink = ((CoinHistory) obj).deepLink();
                if (strDeepLink == null) {
                    return true;
                }
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(strDeepLink));
                    intent.putExtra("Source", CoinHistoryFragment.this.source);
                    startActivity(intent);
                    return true;
                } catch (Exception unused) {
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
