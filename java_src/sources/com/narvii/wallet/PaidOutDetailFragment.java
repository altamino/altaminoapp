package com.narvii.wallet;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
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

/* JADX INFO: loaded from: classes7.dex */
public class PaidOutDetailFragment extends NVListFragment {
    String paidOutId;
    DecimalFormat dfmt = new DecimalFormat("0.00");
    DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm a", Locale.US);

    class Adapter extends NVAdapter {
        String error;
        PaidOutLog paidOutLog;

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return this.error;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.paidOutLog != null ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return (this.paidOutLog == null && this.error == null) ? false : true;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            this.paidOutLog = null;
            this.error = null;
            sendRequest();
            notifyDataSetChanged();
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        private String getPaymentAccountText(PaidOutLog paidOutLog) {
            if (paidOutLog == null) {
                return null;
            }
            int i10 = paidOutLog.paymentMethod;
            if (i10 == 1) {
                return PaidOutDetailFragment.this.getString(R.string.paid_out_bank, paidOutLog.paymentAccount);
            }
            if (i10 != 2) {
                return paidOutLog.paymentAccount;
            }
            return "Paypal(" + paidOutLog.paymentAccount + ")";
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 == null || view2.getId() != R.id.transaction_id_layout) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            Utils.copyToClipboard(getContext(), this.paidOutLog.transactionId, R.string.copied);
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
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

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendRequest();
        }

        void sendRequest() {
            ((ApiService) getService("api")).exec(ApiRequest.builder().global().path("/wallet/paid-out-log/" + PaidOutDetailFragment.this.paidOutId).build(), new ApiResponseListener<PaidOutLogResponse>(PaidOutLogResponse.class) { // from class: com.narvii.wallet.PaidOutDetailFragment.Adapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    Adapter adapter = Adapter.this;
                    adapter.error = str;
                    adapter.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, PaidOutLogResponse paidOutLogResponse) throws Exception {
                    Adapter adapter = Adapter.this;
                    adapter.paidOutLog = paidOutLogResponse.paidOutLog;
                    adapter.error = null;
                    adapter.notifyDataSetChanged();
                }
            });
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter(this);
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return ContextCompat.getDrawable(getContext(), R.drawable.business_wallet_action_bar_bg);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.details);
        String stringParam = getStringParam("paidOutId");
        this.paidOutId = stringParam;
        if (stringParam == null) {
            finish();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        ViewUtils.setTopBottomOverscrollStretchColor(listView, getContext().getResources().getColor(R.color.paid_out_detail_bg_color));
    }
}
