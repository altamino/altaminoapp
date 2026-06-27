package com.narvii.list;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.util.Tag;
import com.narvii.widget.TintButton;

/* loaded from: classes3.dex */
public class NVSectionHeaderAdapter extends NVAdapter {
    private static final Tag TAG = new Tag("NVSectionHeaderAdapter");
    private Drawable bgDrawable;
    private int iconColor;
    private Drawable indicatorDrawable;
    NVAdapter mAttachAdapter;
    private boolean showIndicator;
    private String title;

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

    public NVSectionHeaderAdapter(NVContext nVContext) {
        super(nVContext);
        this.showIndicator = true;
    }

    public void setAttachAdapter(NVAdapter nVAdapter) {
        this.mAttachAdapter = nVAdapter;
    }

    public void setShowIndicator(boolean z) {
        this.showIndicator = z;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        NVAdapter nVAdapter = this.mAttachAdapter;
        return (nVAdapter == null || nVAdapter.isEmpty()) ? 0 : 1;
    }

    protected int layoutId() {
        return R.layout.item_section_header_with_indicator;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        int i2;
        View viewCreateView = createView(layoutId(), viewGroup, view, TAG);
        View viewFindViewById = viewCreateView.findViewById(R.id.icon);
        if (viewFindViewById instanceof ImageView) {
            ((ImageView) viewFindViewById).setImageDrawable(this.indicatorDrawable);
        }
        if ((viewFindViewById instanceof TintButton) && (i2 = this.iconColor) != 0) {
            ((TintButton) viewFindViewById).setTintColor(i2);
        }
        viewFindViewById.setVisibility(this.showIndicator ? 0 : 8);
        View viewFindViewById2 = viewCreateView.findViewById(R.id.title);
        if (viewFindViewById2 instanceof TextView) {
            TextView textView = (TextView) viewFindViewById2;
            textView.setText(this.title);
            textView.setTextColor(this.darkTheme ? -1 : -12040120);
        }
        return viewCreateView;
    }
}
