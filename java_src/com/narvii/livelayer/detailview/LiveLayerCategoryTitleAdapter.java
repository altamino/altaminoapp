package com.narvii.livelayer.detailview;

import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public abstract class LiveLayerCategoryTitleAdapter extends NVAdapter {
    private NVContext nvContext;
    private TextView titleView;

    @Override // android.widget.Adapter
    public int getCount() {
        return 1;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    public abstract int getTitleIcon();

    public abstract int getTitleIconBackgroundColor();

    public abstract String getTitleView();

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return false;
    }

    public LiveLayerCategoryTitleAdapter(NVContext nVContext) {
        super(nVContext);
        this.nvContext = nVContext;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewCreateView = createView(R.layout.live_layer_category_title, viewGroup, view);
        viewCreateView.setPadding(0, (int) Utils.dpToPx(getContext(), 6.0f), 0, 0);
        View viewFindViewById = viewCreateView.findViewById(R.id.main_layout);
        int iDpToPx = (int) Utils.dpToPx(getContext(), 2.0f);
        viewFindViewById.setPadding(viewFindViewById.getPaddingLeft(), iDpToPx, viewFindViewById.getPaddingRight(), iDpToPx);
        ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.icon);
        imageView.setImageResource(getTitleIcon());
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(getTitleIconBackgroundColor());
        imageView.setBackgroundDrawable(shapeDrawable);
        this.titleView = (TextView) viewCreateView.findViewById(R.id.list_title);
        TextView textView = this.titleView;
        if (textView != null) {
            textView.setText(getTitleView());
        }
        return viewCreateView;
    }
}
