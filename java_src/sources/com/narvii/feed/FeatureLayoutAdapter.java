package com.narvii.feed;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVListFragment;
import com.narvii.list.ProxyAdapter;
import com.narvii.model.Feed;
import com.narvii.util.Callback;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class FeatureLayoutAdapter extends ProxyAdapter {
    private FeaturedFeedAdapter feedAdapter;
    private int topCount;

    private ViewGroup searchFeedColumnParent(View view) {
        if (view == null) {
            return null;
        }
        int i10 = 0;
        while (true) {
            if (!(i10 < 8) || !(view != null)) {
                return null;
            }
            if (view.getId() == R.id.feed_column_left || view.getId() == R.id.feed_column_right) {
                return (ViewGroup) view;
            }
            if (view.getParent() instanceof View) {
                view = (View) view.getParent();
            }
            i10++;
        }
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    private int getExtraCount() {
        List<?> list = this.feedAdapter.list();
        if (list == null) {
            return 0;
        }
        return this.feedAdapter.getCount() - list.size();
    }

    private int getFeedCellCount() {
        List<?> list = this.feedAdapter.list();
        if (list == null) {
            return 0;
        }
        int size = list.size();
        int pinCount = getPinCount();
        int topCellCount = this.feedAdapter.getTopCellCount();
        int i10 = (size - topCellCount) - pinCount;
        int i11 = pinCount + topCellCount;
        this.topCount = i11;
        if (i10 > 0) {
            return i11 + (i10 % 2 == 0 ? i10 / 2 : ((i10 - 1) / 2) + 1);
        }
        return i11;
    }

    public int getPinCount() {
        List<?> list = this.feedAdapter.list();
        if (list == null) {
            return 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < list.size() && ((Feed) list.get(i11)).featureType() == 2; i11++) {
            i10++;
        }
        return i10;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        int feedCellCount = getFeedCellCount();
        if (i10 >= feedCellCount) {
            View view2 = this.feedAdapter.getView(this.feedAdapter.list().size() + (i10 - feedCellCount), view, viewGroup);
            Object tag = view2.getTag(R.id._feed_pin);
            Boolean bool = Boolean.TRUE;
            if (tag != bool) {
                view2.setTag(R.id._feed_single, bool);
            } else {
                view2.setTag(R.id._feed_single, Boolean.FALSE);
            }
            return view2;
        }
        if (i10 < this.topCount) {
            View view3 = this.feedAdapter.getView(i10, view, viewGroup);
            Object tag2 = view3.getTag(R.id._feed_pin);
            Boolean bool2 = Boolean.TRUE;
            if (tag2 != bool2) {
                view3.setTag(R.id._feed_single, bool2);
            } else {
                view3.setTag(R.id._feed_single, Boolean.FALSE);
            }
            return view3;
        }
        int size = this.feedAdapter.list().size();
        View viewCreateView = createView(R.layout.feed_column2, viewGroup, view, "feedColumn2");
        viewCreateView.setTag(R.id._feed_column_2, Boolean.TRUE);
        viewCreateView.findViewById(R.id.feed_column_top_divider).setVisibility(i10 == this.topCount ? 0 : 8);
        ViewGroup viewGroup2 = (ViewGroup) viewCreateView.findViewById(R.id.feed_column_left);
        ViewGroup viewGroup3 = (ViewGroup) viewCreateView.findViewById(R.id.feed_column_right);
        if (viewCreateView != view) {
            NVContext nVContext = this.context;
            if (nVContext instanceof NVListFragment) {
                viewGroup2.setBackgroundDrawable(((NVListFragment) nVContext).getListSelector());
                viewGroup2.setOnClickListener(this.subviewClickListener);
                viewGroup3.setBackgroundDrawable(((NVListFragment) this.context).getListSelector());
                viewGroup3.setOnClickListener(this.subviewClickListener);
            }
        }
        View view4 = null;
        View childAt = viewGroup2.getChildCount() > 0 ? viewGroup2.getChildAt(0) : null;
        viewGroup2.removeAllViews();
        int i11 = ((i10 - this.topCount) * 2) + 1;
        Integer num = (Integer) viewCreateView.getTag(R.id.feed_column_left);
        int iIntValue = num == null ? -1 : num.intValue();
        int itemViewType = this.feedAdapter.getItemViewType((this.topCount + i11) - 1);
        if (iIntValue != itemViewType) {
            viewCreateView.setTag(R.id.feed_column_left, Integer.valueOf(itemViewType));
            childAt = null;
        }
        viewGroup2.addView(this.feedAdapter.getView((i11 + this.topCount) - 1, childAt, viewGroup2));
        viewGroup2.setClickable(true);
        View childAt2 = viewGroup3.getChildCount() > 0 ? viewGroup3.getChildAt(0) : null;
        viewGroup3.removeAllViews();
        int i12 = this.topCount;
        int i13 = ((i10 - i12) * 2) + 2;
        if ((i12 + i13) - 1 < size) {
            Integer num2 = (Integer) viewCreateView.getTag(R.id.feed_column_right);
            int iIntValue2 = num2 == null ? -1 : num2.intValue();
            int itemViewType2 = this.feedAdapter.getItemViewType((this.topCount + i13) - 1);
            if (iIntValue2 != itemViewType2) {
                viewCreateView.setTag(R.id.feed_column_right, Integer.valueOf(itemViewType2));
            } else {
                view4 = childAt2;
            }
            viewGroup3.addView(this.feedAdapter.getView((i13 + this.topCount) - 1, view4, viewGroup3));
            viewGroup3.setClickable(true);
        } else {
            viewGroup3.setClickable(false);
            viewCreateView.setTag(R.id.feed_column_right, null);
        }
        return viewCreateView;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.feedAdapter.getViewTypeCount() + 1;
    }

    public FeatureLayoutAdapter(NVContext nVContext, FeaturedFeedAdapter featuredFeedAdapter) {
        super(nVContext);
        setAdapter(featuredFeedAdapter);
        this.feedAdapter = featuredFeedAdapter;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public int getCount() {
        return getFeedCellCount() + getExtraCount();
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public Object getItem(int i10) {
        if (i10 < getFeedCellCount()) {
            return this.feedAdapter.getItem(i10);
        }
        return null;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public long getItemId(int i10) {
        int feedCellCount = getFeedCellCount();
        if (i10 < feedCellCount) {
            return i10;
        }
        return this.feedAdapter.getItemId(this.feedAdapter.list().size() + (i10 - feedCellCount));
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        int feedCellCount = getFeedCellCount();
        if (i10 < feedCellCount) {
            return this.feedAdapter.getItemViewType(i10);
        }
        return this.feedAdapter.getItemViewType(this.feedAdapter.list().size() + (i10 - feedCellCount)) + 1;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        int feedCellCount = getFeedCellCount();
        if (i10 < feedCellCount) {
            if (i10 < this.topCount) {
                return true;
            }
            return false;
        }
        return this.feedAdapter.isEnabled(this.feedAdapter.list().size() + (i10 - feedCellCount));
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        View view3;
        int feedCellCount = getFeedCellCount();
        if (i10 < feedCellCount) {
            if (i10 < this.topCount) {
                FeaturedFeedAdapter featuredFeedAdapter = this.feedAdapter;
                return featuredFeedAdapter.dispatchOnItemClick(featuredFeedAdapter, i10, featuredFeedAdapter.getItem(i10), view, view2);
            }
            ViewGroup viewGroupSearchFeedColumnParent = searchFeedColumnParent(view2);
            if (viewGroupSearchFeedColumnParent == null) {
                return false;
            }
            int i11 = (i10 - this.topCount) * 2;
            int i12 = i11 + 1;
            if (viewGroupSearchFeedColumnParent.getId() == R.id.feed_column_right) {
                i12 = i11 + 2;
            }
            View childAt = null;
            if (view2 == viewGroupSearchFeedColumnParent) {
                view3 = null;
            } else {
                view3 = view2;
            }
            Object item = this.feedAdapter.getItem((this.topCount + i12) - 1);
            if (viewGroupSearchFeedColumnParent.getChildCount() > 0) {
                childAt = viewGroupSearchFeedColumnParent.getChildAt(0);
            }
            FeaturedFeedAdapter featuredFeedAdapter2 = this.feedAdapter;
            return featuredFeedAdapter2.dispatchOnItemClick(featuredFeedAdapter2, (i12 + this.topCount) - 1, item, childAt, view3);
        }
        int size = this.feedAdapter.list().size() + (i10 - feedCellCount);
        FeaturedFeedAdapter featuredFeedAdapter3 = this.feedAdapter;
        return featuredFeedAdapter3.dispatchOnItemClick(featuredFeedAdapter3, size, obj, view, view2);
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        View view3;
        int feedCellCount = getFeedCellCount();
        if (i10 < feedCellCount) {
            if (i10 < this.topCount) {
                FeaturedFeedAdapter featuredFeedAdapter = this.feedAdapter;
                return featuredFeedAdapter.dispatchOnLongClick(featuredFeedAdapter, 0, featuredFeedAdapter.getItem(i10), view, view2);
            }
            ViewGroup viewGroupSearchFeedColumnParent = searchFeedColumnParent(view2);
            if (viewGroupSearchFeedColumnParent == null) {
                return false;
            }
            int i11 = (i10 - this.topCount) * 2;
            int i12 = i11 + 1;
            if (viewGroupSearchFeedColumnParent.getId() == R.id.feed_column_right) {
                i12 = i11 + 2;
            }
            View childAt = null;
            if (view2 == viewGroupSearchFeedColumnParent) {
                view3 = null;
            } else {
                view3 = view2;
            }
            Object item = this.feedAdapter.getItem((this.topCount + i12) - 1);
            if (viewGroupSearchFeedColumnParent.getChildCount() > 0) {
                childAt = viewGroupSearchFeedColumnParent.getChildAt(0);
            }
            FeaturedFeedAdapter featuredFeedAdapter2 = this.feedAdapter;
            return featuredFeedAdapter2.dispatchOnLongClick(featuredFeedAdapter2, (i12 + this.topCount) - 1, item, childAt, view3);
        }
        int size = this.feedAdapter.list().size() + (i10 - feedCellCount);
        FeaturedFeedAdapter featuredFeedAdapter3 = this.feedAdapter;
        return featuredFeedAdapter3.dispatchOnLongClick(featuredFeedAdapter3, size, obj, view, view2);
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public void refresh(int i10, Callback<Integer> callback) {
        super.refresh(i10, callback);
        this.topCount = 0;
    }
}
