package com.narvii.list;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import com.narvii.app.NVContext;
import com.narvii.util.LibConstants;
import com.narvii.util.Log;
import com.narvii.util.Tag;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public class DivideColumnAdapter extends ProxyAdapter {
    private Drawable backGroundDrawable;
    protected int column;
    private NVContext context;
    private LinearLayout.LayoutParams lp;
    protected int paddingBottom;
    protected int paddingLeft;
    protected int paddingRight;
    protected int paddingTop;
    public boolean recyclerItem;
    private boolean supportLongClick;
    public static final Tag GRID_CONTAINER = new Tag("gridContainer");
    private static final View[] EMPTY_CELLS = new View[0];

    public DivideColumnAdapter(NVContext nVContext) {
        this(nVContext, 0, 0, 0, 0);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    protected boolean fullWidth(Object obj) {
        return false;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        return 0;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        LinearLayout linearLayout;
        int i11;
        Drawable listSelector;
        if (view == null) {
            linearLayout = null;
        } else if (view.getTag() == LibConstants.GRID_ROW) {
            linearLayout = (LinearLayout) view;
        } else {
            Log.e("divide row convert view not reusable: " + view);
            linearLayout = null;
        }
        if (linearLayout == null) {
            linearLayout = new LinearLayout(getContext());
            linearLayout.setTag(LibConstants.GRID_ROW);
            linearLayout.setClipChildren(false);
            linearLayout.setClipToPadding(false);
            linearLayout.setPadding(this.paddingLeft, 0, this.paddingRight, 0);
            linearLayout.setOrientation(0);
        }
        linearLayout.setPadding(linearLayout.getPaddingLeft(), i10 == 0 ? this.paddingTop : 0, linearLayout.getPaddingRight(), i10 == getCount() - 1 ? this.paddingBottom : 0);
        while (linearLayout.getChildCount() < this.column) {
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setGravity(17);
            linearLayout2.setTag(GRID_CONTAINER);
            linearLayout2.setId(Integer.MAX_VALUE);
            linearLayout2.setClipChildren(false);
            linearLayout2.setClipToPadding(false);
            NVContext nVContext = this.context;
            if ((nVContext instanceof NVListFragment) && (listSelector = ((NVListFragment) nVContext).getListSelector()) != null) {
                linearLayout2.setBackgroundDrawable(listSelector);
            }
            linearLayout.addView(linearLayout2, this.lp);
        }
        while (linearLayout.getChildCount() > this.column) {
            linearLayout.removeViewAt(linearLayout.getChildCount() - 1);
        }
        int count = this.wrapped.getCount();
        for (int i12 = 0; i12 < this.column; i12++) {
            LinearLayout linearLayout3 = (LinearLayout) linearLayout.getChildAt(i12);
            int iStartPosition = startPosition(i10) + i12;
            if (iStartPosition >= count || ((i11 = i10 + 1) != getCount() && iStartPosition >= startPosition(i11))) {
                linearLayout3.setOnClickListener(null);
                linearLayout3.setClickable(false);
                linearLayout3.setOnLongClickListener(null);
                linearLayout3.setLongClickable(false);
                linearLayout3.setVisibility(4);
            } else {
                if (fullWidth(this.wrapped.getItem(iStartPosition))) {
                    break;
                }
                int itemViewType = this.wrapped.getItemViewType(iStartPosition);
                View childAt = (linearLayout3.getChildCount() == 1 && linearLayout3.getId() == itemViewType) ? linearLayout3.getChildAt(0) : null;
                if (!this.recyclerItem || childAt == null) {
                    linearLayout3.removeAllViews();
                }
                View view2 = this.wrapped.getView(iStartPosition, childAt, linearLayout3);
                if (!this.recyclerItem || childAt == null) {
                    linearLayout3.addView(view2);
                }
                linearLayout3.setId(itemViewType);
                boolean zIsEnabled = this.wrapped.isEnabled(iStartPosition);
                linearLayout3.setOnClickListener(zIsEnabled ? this.subviewClickListener : null);
                linearLayout3.setClickable(zIsEnabled);
                if (this.supportLongClick) {
                    linearLayout3.setOnLongClickListener(zIsEnabled ? this.subviewLongClickListener : null);
                    linearLayout3.setLongClickable(zIsEnabled);
                }
                linearLayout3.setVisibility(0);
            }
        }
        Drawable drawable = this.backGroundDrawable;
        if (drawable != null) {
            linearLayout.setBackgroundDrawable(drawable);
        }
        return linearLayout;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 1;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        return false;
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (view2 != null && (view instanceof LinearLayout) && this.nva != null) {
            View view3 = view2;
            while (view3.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view3.getParent();
                if (view3.getTag() == GRID_CONTAINER) {
                    ViewGroup viewGroup2 = (ViewGroup) view3.getParent();
                    int i11 = 0;
                    while (i11 < viewGroup2.getChildCount() && viewGroup2.getChildAt(i11) != view3) {
                        i11++;
                    }
                    int iStartPosition = startPosition(i10) + i11;
                    Object item = this.nva.getItem(iStartPosition);
                    View childAt = ((ViewGroup) view3).getChildAt(0);
                    if (view2 == viewGroup || view2 == childAt || view2.getTag() == GRID_CONTAINER) {
                        view2 = null;
                    }
                    View view4 = view2;
                    NVAdapter nVAdapter = this.nva;
                    return nVAdapter.dispatchOnItemClick(nVAdapter, iStartPosition, item, childAt, view4);
                }
                view3 = viewGroup;
            }
        }
        return false;
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (view2 != null && (view instanceof LinearLayout) && this.nva != null) {
            View view3 = view2;
            while (view3.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view3.getParent();
                if (view3.getTag() == GRID_CONTAINER) {
                    ViewGroup viewGroup2 = (ViewGroup) view3.getParent();
                    int i11 = 0;
                    while (i11 < viewGroup2.getChildCount() && viewGroup2.getChildAt(i11) != view3) {
                        i11++;
                    }
                    int iStartPosition = startPosition(i10) + i11;
                    Object item = this.nva.getItem(iStartPosition);
                    View childAt = ((ViewGroup) view3).getChildAt(0);
                    if (view2 == viewGroup || view2 == childAt) {
                        view2 = null;
                    }
                    View view4 = view2;
                    NVAdapter nVAdapter = this.nva;
                    return nVAdapter.dispatchOnLongClick(nVAdapter, iStartPosition, item, childAt, view4);
                }
                view3 = viewGroup;
            }
        }
        return false;
    }

    @Override // com.narvii.list.ProxyAdapter
    public void setAdapter(ListAdapter listAdapter) {
        throw new UnsupportedOperationException();
    }

    public void setSupportLongClick(boolean z6) {
        this.supportLongClick = z6;
    }

    protected int startPosition(int i10) {
        return i10 * this.column;
    }

    public DivideColumnAdapter(NVContext nVContext, int i10, int i11, int i12, int i13) {
        super(nVContext);
        this.context = nVContext;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        this.lp = layoutParams;
        layoutParams.weight = 1.0f;
        this.paddingLeft = i10;
        this.paddingRight = i11;
        this.paddingBottom = i13;
        this.paddingTop = i12;
    }

    public static View[] getDividedCells(View view) {
        if (!(view instanceof LinearLayout)) {
            return EMPTY_CELLS;
        }
        LinearLayout linearLayout = (LinearLayout) view;
        int childCount = linearLayout.getChildCount();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = linearLayout.getChildAt(i10);
            if (childAt.getTag() == GRID_CONTAINER) {
                ViewGroup viewGroup = (ViewGroup) childAt;
                if (viewGroup.getChildCount() == 1) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(viewGroup.getChildAt(0));
                }
            }
        }
        return arrayList == null ? EMPTY_CELLS : (View[]) arrayList.toArray(new View[arrayList.size()]);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public int getCount() {
        ListAdapter listAdapter = this.wrapped;
        if (listAdapter == null) {
            return 0;
        }
        int count = listAdapter.getCount();
        int i10 = this.column;
        return ((count + i10) - 1) / i10;
    }

    public void setAdapter(ListAdapter listAdapter, int i10) {
        this.column = i10;
        super.setAdapter(listAdapter);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public Object getItem(int i10) {
        return Integer.valueOf(i10);
    }

    public void setAdapter(ListAdapter listAdapter, int i10, Drawable drawable) {
        this.column = i10;
        super.setAdapter(listAdapter);
        this.backGroundDrawable = drawable;
    }

    public DivideColumnAdapter(NVContext nVContext, int i10, int i11) {
        this(nVContext, i10, i11, 0, 0);
    }
}
