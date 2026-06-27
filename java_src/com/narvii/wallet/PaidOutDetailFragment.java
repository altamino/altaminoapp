package com.narvii.wallet;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class PaidOutDetailFragment extends NVListFragment {
    String paidOutId;
    DecimalFormat dfmt = new DecimalFormat("0.00");
    DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm a", Locale.US);

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.details);
        this.paidOutId = getStringParam("paidOutId");
        if (this.paidOutId == null) {
            finish();
        }
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return ContextCompat.getDrawable(getContext(), R.drawable.business_wallet_action_bar_bg);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        ViewUtils.setTopBottomOverscrollStretchColor(listView, getContext().getResources().getColor(R.color.paid_out_detail_bg_color));
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter(this);
    }

    class Adapter extends NVAdapter {
        String error;
        PaidOutLog paidOutLog;

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendRequest();
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return this.error;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return (this.paidOutLog == null && this.error == null) ? false : true;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            this.paidOutLog = null;
            this.error = null;
            sendRequest();
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.paidOutLog != null ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.paid_out_detail, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.coins_count)).setText("-" + IabUtils.formatCoins(Math.abs(this.paidOutLog.coins)));
            ((TextView) viewCreateView.findViewById(R.id.transaction_time)).setText(PaidOutDetailFragment.this.dateFormat.format(this.paidOutLog.createdTime));
            TextView textView = (TextView) viewCreateView.findViewById(R.id.money_sent);
            PaidOutLog paidOutLog = this.paidOutLog;
            textView.setText(IabUtils.getCurrencyFormat(paidOutLog.currencyCode, Double.valueOf(paidOutLog.amount)));
            ((TextView) viewCreateView.findViewById(R.id.paid_out_to)).setText(getPaymentAccountText(this.paidOutLog));
            ((TextView) viewCreateView.findViewById(R.id.transaction_id)).setText(this.paidOutLog.transactionId);
            viewCreateView.findViewById(R.id.transaction_id_layout).setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        private String getPaymentAccountText(PaidOutLog paidOutLog) {
            if (paidOutLog == null) {
                return null;
            }
            int i = paidOutLog.paymentMethod;
            if (i == 1) {
                return PaidOutDetailFragment.this.getString(R.string.paid_out_bank, paidOutLog.paymentAccount);
            }
            if (i == 2) {
                return "Paypal(" + paidOutLog.paymentAccount + ")";
            }
            return paidOutLog.paymentAccount;
        }

        void sendRequest() {
            ((ApiService) getService("api")).exec(ApiRequest.builder().global().path("/wallet/paid-out-log/" + PaidOutDetailFragment.this.paidOutId).build(), new ApiResponseListener<PaidOutLogResponse>(PaidOutLogResponse.class) { // from class: com.narvii.wallet.PaidOutDetailFragment.Adapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, PaidOutLogResponse paidOutLogResponse) throws Exception {
                    Adapter adapter = Adapter.this;
                    adapter.paidOutLog = paidOutLogResponse.paidOutLog;
                    adapter.error = null;
                    adapter.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    Adapter adapter = Adapter.this;
                    adapter.error = str;
                    adapter.notifyDataSetChanged();
                }
            });
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.transaction_id_layout) {
                Utils.copyToClipboard(getContext(), this.paidOutLog.transactionId, R.string.copied);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
