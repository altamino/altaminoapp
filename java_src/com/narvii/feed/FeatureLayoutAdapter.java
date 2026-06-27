package com.narvii.feed;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVListFragment;
import com.narvii.list.ProxyAdapter;
import com.narvii.model.Feed;
import com.narvii.util.Callback;
import java.util.List;

/* loaded from: classes2.dex */
public class FeatureLayoutAdapter extends ProxyAdapter {
    private FeaturedFeedAdapter feedAdapter;
    private int topCount;

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    public FeatureLayoutAdapter(NVContext nVContext, FeaturedFeedAdapter featuredFeedAdapter) {
        super(nVContext);
        setAdapter(featuredFeedAdapter);
        this.feedAdapter = featuredFeedAdapter;
    }

    private int getFeedCellCount() {
        List<?> list = this.feedAdapter.list();
        if (list == null) {
            return 0;
        }
        int size = list.size();
        int pinCount = getPinCount();
        int topCellCount = this.feedAdapter.getTopCellCount();
        int i = (size - topCellCount) - pinCount;
        int i2 = pinCount + topCellCount;
        this.topCount = i2;
        int i3 = i2 + 0;
        if (i > 0) {
            return i3 + (i % 2 == 0 ? i / 2 : ((i - 1) / 2) + 1);
        }
        return i3;
    }

    public int getPinCount() {
        List<?> list = this.feedAdapter.list();
        if (list == null) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < list.size() && ((Feed) list.get(i2)).featureType() == 2; i2++) {
            i++;
        }
        return i;
    }

    private int getExtraCount() {
        List<?> list = this.feedAdapter.list();
        if (list == null) {
            return 0;
        }
        return this.feedAdapter.getCount() - list.size();
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public int getCount() {
        return getFeedCellCount() + getExtraCount();
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public Object getItem(int i) {
        if (i < getFeedCellCount()) {
            return this.feedAdapter.getItem(i);
        }
        return null;
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public void refresh(int i, Callback<Integer> callback) {
        super.refresh(i, callback);
        this.topCount = 0;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public long getItemId(int i) {
        int feedCellCount = getFeedCellCount();
        if (i < feedCellCount) {
            return i;
        }
        return this.feedAdapter.getItemId(this.feedAdapter.list().size() + (i - feedCellCount));
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        int feedCellCount = getFeedCellCount();
        if (i < feedCellCount) {
            return i < this.topCount;
        }
        return this.feedAdapter.isEnabled(this.feedAdapter.list().size() + (i - feedCellCount));
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.feedAdapter.getViewTypeCount() + 1;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        int feedCellCount = getFeedCellCount();
        if (i < feedCellCount) {
            return this.feedAdapter.getItemViewType(i);
        }
        return this.feedAdapter.getItemViewType(this.feedAdapter.list().size() + (i - feedCellCount)) + 1;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        int feedCellCount = getFeedCellCount();
        if (i < feedCellCount) {
            if (i < this.topCount) {
                View view2 = this.feedAdapter.getView(i, view, viewGroup);
                if (view2.getTag(R.id._feed_pin) != Boolean.TRUE) {
                    view2.setTag(R.id._feed_single, true);
                } else {
                    view2.setTag(R.id._feed_single, false);
                }
                return view2;
            }
            int size = this.feedAdapter.list().size();
            View viewCreateView = createView(R.layout.feed_column2, viewGroup, view, "feedColumn2");
            viewCreateView.setTag(R.id._feed_column_2, true);
            viewCreateView.findViewById(R.id.feed_column_top_divider).setVisibility(i == this.topCount ? 0 : 8);
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
            View childAt = viewGroup2.getChildCount() > 0 ? viewGroup2.getChildAt(0) : null;
            viewGroup2.removeAllViews();
            int i2 = ((i - this.topCount) * 2) + 1;
            Integer num = (Integer) viewCreateView.getTag(R.id.feed_column_left);
            int iIntValue = num == null ? -1 : num.intValue();
            int itemViewType = this.feedAdapter.getItemViewType((this.topCount + i2) - 1);
            if (iIntValue != itemViewType) {
                viewCreateView.setTag(R.id.feed_column_left, Integer.valueOf(itemViewType));
                childAt = null;
            }
            viewGroup2.addView(this.feedAdapter.getView((i2 + this.topCount) - 1, childAt, viewGroup2));
            viewGroup2.setClickable(true);
            View childAt2 = viewGroup3.getChildCount() > 0 ? viewGroup3.getChildAt(0) : null;
            viewGroup3.removeAllViews();
            int i3 = this.topCount;
            int i4 = ((i - i3) * 2) + 2;
            if ((i3 + i4) - 1 < size) {
                Integer num2 = (Integer) viewCreateView.getTag(R.id.feed_column_right);
                int iIntValue2 = num2 == null ? -1 : num2.intValue();
                int itemViewType2 = this.feedAdapter.getItemViewType((this.topCount + i4) - 1);
                if (iIntValue2 != itemViewType2) {
                    viewCreateView.setTag(R.id.feed_column_right, Integer.valueOf(itemViewType2));
                    childAt2 = null;
                }
                viewGroup3.addView(this.feedAdapter.getView((i4 + this.topCount) - 1, childAt2, viewGroup3));
                viewGroup3.setClickable(true);
            } else {
                viewGroup3.setClickable(false);
                viewCreateView.setTag(R.id.feed_column_right, null);
            }
            return viewCreateView;
        }
        View view3 = this.feedAdapter.getView(this.feedAdapter.list().size() + (i - feedCellCount), view, viewGroup);
        if (view3.getTag(R.id._feed_pin) != Boolean.TRUE) {
            view3.setTag(R.id._feed_single, true);
        } else {
            view3.setTag(R.id._feed_single, false);
        }
        return view3;
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        int feedCellCount = getFeedCellCount();
        if (i < feedCellCount) {
            if (i < this.topCount) {
                FeaturedFeedAdapter featuredFeedAdapter = this.feedAdapter;
                return featuredFeedAdapter.dispatchOnItemClick(featuredFeedAdapter, i, featuredFeedAdapter.getItem(i), view, view2);
            }
            ViewGroup viewGroupSearchFeedColumnParent = searchFeedColumnParent(view2);
            if (viewGroupSearchFeedColumnParent == null) {
                return false;
            }
            int i2 = ((i - this.topCount) * 2) + 1;
            if (viewGroupSearchFeedColumnParent.getId() == R.id.feed_column_right) {
                i2++;
            }
            View view3 = view2 == viewGroupSearchFeedColumnParent ? null : view2;
            Object item = this.feedAdapter.getItem((this.topCount + i2) - 1);
            View childAt = viewGroupSearchFeedColumnParent.getChildCount() > 0 ? viewGroupSearchFeedColumnParent.getChildAt(0) : null;
            FeaturedFeedAdapter featuredFeedAdapter2 = this.feedAdapter;
            return featuredFeedAdapter2.dispatchOnItemClick(featuredFeedAdapter2, (i2 + this.topCount) - 1, item, childAt, view3);
        }
        int size = this.feedAdapter.list().size() + (i - feedCellCount);
        FeaturedFeedAdapter featuredFeedAdapter3 = this.feedAdapter;
        return featuredFeedAdapter3.dispatchOnItemClick(featuredFeedAdapter3, size, obj, view, view2);
    }

    private ViewGroup searchFeedColumnParent(View view) {
        if (view == null) {
            return null;
        }
        View view2 = view;
        int i = 0;
        while (true) {
            if (!(i < 8) || !(view2 != null)) {
                return null;
            }
            if (view2.getId() == R.id.feed_column_left || view2.getId() == R.id.feed_column_right) {
                break;
            }
            if (view2.getParent() instanceof View) {
                view2 = (View) view2.getParent();
            }
            i++;
        }
        return (ViewGroup) view2;
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        int feedCellCount = getFeedCellCount();
        if (i < feedCellCount) {
            if (i < this.topCount) {
                FeaturedFeedAdapter featuredFeedAdapter = this.feedAdapter;
                return featuredFeedAdapter.dispatchOnLongClick(featuredFeedAdapter, 0, featuredFeedAdapter.getItem(i), view, view2);
            }
            ViewGroup viewGroupSearchFeedColumnParent = searchFeedColumnParent(view2);
            if (viewGroupSearchFeedColumnParent == null) {
                return false;
            }
            int i2 = ((i - this.topCount) * 2) + 1;
            if (viewGroupSearchFeedColumnParent.getId() == R.id.feed_column_right) {
                i2++;
            }
            View view3 = view2 == viewGroupSearchFeedColumnParent ? null : view2;
            Object item = this.feedAdapter.getItem((this.topCount + i2) - 1);
            View childAt = viewGroupSearchFeedColumnParent.getChildCount() > 0 ? viewGroupSearchFeedColumnParent.getChildAt(0) : null;
            FeaturedFeedAdapter featuredFeedAdapter2 = this.feedAdapter;
            return featuredFeedAdapter2.dispatchOnLongClick(featuredFeedAdapter2, (i2 + this.topCount) - 1, item, childAt, view3);
        }
        int size = this.feedAdapter.list().size() + (i - feedCellCount);
        FeaturedFeedAdapter featuredFeedAdapter3 = this.feedAdapter;
        return featuredFeedAdapter3.dispatchOnLongClick(featuredFeedAdapter3, size, obj, view, view2);
    }
}
