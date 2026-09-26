package com.narvii.leaderboard;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.ProxyAdapter;

/* JADX INFO: loaded from: classes10.dex */
public class RankingUserListLayoutAdapter extends ProxyAdapter {
    private static final int COUNT_TOP_CELL = 3;

    private ViewGroup searchFeedColumnParent(View view) {
        if (view == null) {
            return null;
        }
        int i10 = 0;
        while (true) {
            if (!(i10 < 8) || !(view != null)) {
                return null;
            }
            if (view.getId() == R.id.first_container || view.getId() == R.id.second_container || view.getId() == R.id.third_container) {
                return (ViewGroup) view;
            }
            if (view.getParent() instanceof View) {
                view = (View) view.getParent();
            }
            i10++;
        }
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        if (i10 != 0 || getCellCount() < 3) {
            return -1;
        }
        return this.wrapped.getItemViewType(i10);
    }

    private int getCellCount() {
        ListAdapter listAdapter = this.wrapped;
        if (listAdapter == null) {
            return 0;
        }
        int count = listAdapter.getCount();
        if (count < 3) {
            return 1;
        }
        return count - 2;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003f  */
    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        int i11;
        ViewGroup viewGroup2;
        if (i10 != 0) {
            return super.getView(i10 + 2, view, viewGroup);
        }
        View viewCreateView = createView(R.layout.ranking_user_list_top3, viewGroup, view, "rankingTop3");
        ViewGroup viewGroup3 = (ViewGroup) viewCreateView.findViewById(R.id.first_container);
        int i12 = R.id.second_container;
        ViewGroup viewGroup4 = (ViewGroup) viewCreateView.findViewById(R.id.second_container);
        ViewGroup viewGroup5 = (ViewGroup) viewCreateView.findViewById(R.id.third_container);
        int i13 = 0;
        while (i13 < 3) {
            if (this.wrapped.getItem(i13) != NVPagedAdapter.LIST_END) {
                if (i13 == 0) {
                    i11 = R.id.first_container;
                    viewGroup2 = viewGroup3;
                } else if (i13 == 1) {
                    i11 = i12;
                    viewGroup2 = viewGroup4;
                } else if (i13 == 2) {
                    i11 = R.id.third_container;
                    viewGroup2 = viewGroup5;
                } else {
                    i11 = R.id.first_container;
                    viewGroup2 = viewGroup3;
                }
                View view2 = null;
                View childAt = viewGroup2.getChildCount() > 0 ? viewGroup2.getChildAt(0) : null;
                viewGroup2.removeAllViews();
                Integer num = (Integer) viewCreateView.getTag(i11);
                int iIntValue = num == null ? -1 : num.intValue();
                int itemViewType = this.wrapped.getItemViewType(i13);
                if (iIntValue != itemViewType) {
                    viewCreateView.setTag(R.id.first_container, Integer.valueOf(itemViewType));
                } else {
                    view2 = childAt;
                }
                viewGroup2.addView(this.wrapped.getView(i13, view2, viewGroup2));
                viewGroup2.setClickable(true);
            }
            i13++;
            i12 = R.id.second_container;
        }
        viewGroup3.setOnClickListener(this.subviewClickListener);
        viewGroup4.setOnClickListener(this.subviewClickListener);
        viewGroup5.setOnClickListener(this.subviewClickListener);
        return viewCreateView;
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (i10 != 0) {
            return super.onItemClick(listAdapter, i10, this.wrapped.getItem(i10 + 2), view, view2);
        }
        ViewGroup viewGroupSearchFeedColumnParent = searchFeedColumnParent(view2);
        int i11 = 0;
        if (viewGroupSearchFeedColumnParent != null && viewGroupSearchFeedColumnParent.getId() != R.id.first_container) {
            if (viewGroupSearchFeedColumnParent.getId() == R.id.second_container) {
                i11 = 1;
            } else if (viewGroupSearchFeedColumnParent.getId() == R.id.third_container) {
                i11 = 2;
            }
        }
        int i12 = i11;
        return super.onItemClick(listAdapter, i12, this.wrapped.getItem(i12), view, null);
    }

    public RankingUserListLayoutAdapter(NVContext nVContext, RankingUserListAdapter rankingUserListAdapter) {
        super(nVContext);
        setAdapter(rankingUserListAdapter);
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public int getCount() {
        return getCellCount();
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public Object getItem(int i10) {
        if (i10 < getCellCount()) {
            return this.wrapped.getItem(i10);
        }
        return null;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
