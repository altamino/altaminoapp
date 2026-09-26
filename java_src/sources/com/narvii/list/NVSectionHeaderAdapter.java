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

/* JADX INFO: loaded from: classes10.dex */
public class NVSectionHeaderAdapter extends NVAdapter {
    private static final Tag TAG = new Tag("NVSectionHeaderAdapter");
    private Drawable bgDrawable;
    private int iconColor;
    private Drawable indicatorDrawable;
    NVAdapter mAttachAdapter;
    private boolean showIndicator;
    private String title;

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

    protected int layoutId() {
        return R.layout.item_section_header_with_indicator;
    }

    public void setAttachAdapter(NVAdapter nVAdapter) {
        this.mAttachAdapter = nVAdapter;
    }

    public void setShowIndicator(boolean z6) {
        this.showIndicator = z6;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        NVAdapter nVAdapter = this.mAttachAdapter;
        return (nVAdapter == null || nVAdapter.isEmpty()) ? 0 : 1;
    }

    public NVSectionHeaderAdapter(NVContext nVContext) {
        super(nVContext);
        this.showIndicator = true;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        int i11;
        int i12;
        int i13;
        View viewCreateView = createView(layoutId(), viewGroup, view, TAG);
        View viewFindViewById = viewCreateView.findViewById(R.id.icon);
        if (viewFindViewById instanceof ImageView) {
            ((ImageView) viewFindViewById).setImageDrawable(this.indicatorDrawable);
        }
        if ((viewFindViewById instanceof TintButton) && (i13 = this.iconColor) != 0) {
            ((TintButton) viewFindViewById).setTintColor(i13);
        }
        if (this.showIndicator) {
            i11 = 0;
        } else {
            i11 = 8;
        }
        viewFindViewById.setVisibility(i11);
        View viewFindViewById2 = viewCreateView.findViewById(R.id.title);
        if (viewFindViewById2 instanceof TextView) {
            TextView textView = (TextView) viewFindViewById2;
            textView.setText(this.title);
            if (this.darkTheme) {
                i12 = -1;
            } else {
                i12 = -12040120;
            }
            textView.setTextColor(i12);
        }
        return viewCreateView;
    }
}
