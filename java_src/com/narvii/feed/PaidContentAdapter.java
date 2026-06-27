package com.narvii.feed;

import android.support.v4.content.ContextCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.ads.PaidContentManager;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.nvplayerview.Utils;

/* loaded from: classes2.dex */
public class PaidContentAdapter extends NVAdapter {
    private static final String TAG = PaidContentAdapter.class.getSimpleName();
    Object data;
    boolean optinAds;
    PaidContentManager paidContentManager;
    View paidContentView;
    String userId;

    protected int getHeaderBackgroundColor() {
        return 855638015;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return i == 0 ? 0 : 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    protected boolean supportPaidContent() {
        return false;
    }

    public PaidContentAdapter(NVContext nVContext) {
        super(nVContext);
        this.userId = ((AccountService) this.context.getService("account")).getUserId();
        if (supportPaidContent()) {
            this.paidContentManager = new PaidContentManager(nVContext);
            this.paidContentManager.init();
        }
    }

    @Override // com.narvii.list.NVAdapter
    public void setDarkTheme(boolean z, int i) {
        super.setDarkTheme(z, i);
    }

    public void setData(Object obj) {
        this.data = obj;
        if (supportPaidContent()) {
            this.paidContentManager.setData(obj, this.darkTheme);
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return supportPaidContent() ? 2 : 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return getItem(i).hashCode();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (getItemViewType(i) == 0) {
            View viewCreateView = createView(R.layout.detail_paid_content_header_item, viewGroup, view, "paidContentHeader");
            ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.icon_ad);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
            imageView.setImageResource(this.darkTheme ? R.drawable.ic_paid_content_ad : R.drawable.ic_paid_content_ad_light);
            textView.setText(getContext().getString(R.string.paid_content));
            textView.setTextColor(this.darkTheme ? -1 : -7829368);
            viewCreateView.findViewById(R.id.cell_layout).setBackgroundColor(this.darkTheme ? getHeaderBackgroundColor() : ContextCompat.getColor(getContext(), R.color.header_color_light));
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
        View viewCreateView2 = this.paidContentManager.createView(viewGroup, view, "paidContent");
        this.paidContentView = viewCreateView2;
        return viewCreateView2;
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        View view = this.paidContentView;
        if (view != null) {
            int visibilityPercentage = Utils.getVisibilityPercentage(view);
            if (visibilityPercentage == 100) {
                visibilityPercentage = 0;
            }
            this.paidContentManager.contentVisiblePercentage(visibilityPercentage);
        }
    }
}
