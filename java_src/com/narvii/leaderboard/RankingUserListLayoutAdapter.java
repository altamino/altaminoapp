package com.narvii.leaderboard;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.ProxyAdapter;

/* loaded from: classes.dex */
public class RankingUserListLayoutAdapter extends ProxyAdapter {
    private static final int COUNT_TOP_CELL = 3;

    public RankingUserListLayoutAdapter(NVContext nVContext, RankingUserListAdapter rankingUserListAdapter) {
        super(nVContext);
        setAdapter(rankingUserListAdapter);
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
        return (count - 3) + 1;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public int getCount() {
        return getCellCount();
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public Object getItem(int i) {
        if (i < getCellCount()) {
            return this.wrapped.getItem(i);
        }
        return null;
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        if (i != 0 || getCellCount() < 3) {
            return -1;
        }
        return this.wrapped.getItemViewType(i);
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x003f  */
    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r17, android.view.View r18, android.view.ViewGroup r19) {
        /*
            r16 = this;
            r0 = r16
            r1 = r18
            r2 = r19
            r3 = 3
            r4 = 1
            if (r17 != 0) goto La2
            r5 = 2131428828(0x7f0b05dc, float:1.8479312E38)
            java.lang.String r6 = "rankingTop3"
            android.view.View r1 = r0.createView(r5, r2, r1, r6)
            r2 = 2131297393(0x7f090471, float:1.821273E38)
            android.view.View r5 = r1.findViewById(r2)
            android.view.ViewGroup r5 = (android.view.ViewGroup) r5
            r6 = 2131298789(0x7f0909e5, float:1.8215561E38)
            android.view.View r7 = r1.findViewById(r6)
            android.view.ViewGroup r7 = (android.view.ViewGroup) r7
            r8 = 2131299178(0x7f090b6a, float:1.821635E38)
            android.view.View r9 = r1.findViewById(r8)
            android.view.ViewGroup r9 = (android.view.ViewGroup) r9
            r10 = 0
            r11 = 0
        L31:
            if (r11 >= r3) goto L92
            android.widget.ListAdapter r12 = r0.wrapped
            java.lang.Object r12 = r12.getItem(r11)
            com.narvii.util.Tag r13 = com.narvii.list.NVPagedAdapter.LIST_END
            if (r12 == r13) goto L8c
            if (r11 != 0) goto L44
        L3f:
            r12 = r5
            r13 = 2131297393(0x7f090471, float:1.821273E38)
            goto L52
        L44:
            if (r11 != r4) goto L4b
            r12 = r7
            r13 = 2131298789(0x7f0909e5, float:1.8215561E38)
            goto L52
        L4b:
            r12 = 2
            if (r11 != r12) goto L3f
            r12 = r9
            r13 = 2131299178(0x7f090b6a, float:1.821635E38)
        L52:
            int r14 = r12.getChildCount()
            r15 = 0
            if (r14 <= 0) goto L5e
            android.view.View r14 = r12.getChildAt(r10)
            goto L5f
        L5e:
            r14 = r15
        L5f:
            r12.removeAllViews()
            java.lang.Object r13 = r1.getTag(r13)
            java.lang.Integer r13 = (java.lang.Integer) r13
            if (r13 != 0) goto L6c
            r13 = -1
            goto L70
        L6c:
            int r13 = r13.intValue()
        L70:
            android.widget.ListAdapter r6 = r0.wrapped
            int r6 = r6.getItemViewType(r11)
            if (r13 == r6) goto L80
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r1.setTag(r2, r6)
            r14 = r15
        L80:
            android.widget.ListAdapter r6 = r0.wrapped
            android.view.View r6 = r6.getView(r11, r14, r12)
            r12.addView(r6)
            r12.setClickable(r4)
        L8c:
            int r11 = r11 + 1
            r6 = 2131298789(0x7f0909e5, float:1.8215561E38)
            goto L31
        L92:
            android.view.View$OnClickListener r2 = r0.subviewClickListener
            r5.setOnClickListener(r2)
            android.view.View$OnClickListener r2 = r0.subviewClickListener
            r7.setOnClickListener(r2)
            android.view.View$OnClickListener r2 = r0.subviewClickListener
            r9.setOnClickListener(r2)
            return r1
        La2:
            int r3 = r17 + 3
            int r3 = r3 - r4
            android.view.View r1 = super.getView(r3, r1, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.leaderboard.RankingUserListLayoutAdapter.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002b  */
    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onItemClick(android.widget.ListAdapter r8, int r9, java.lang.Object r10, android.view.View r11, android.view.View r12) {
        /*
            r7 = this;
            if (r9 != 0) goto L3b
            android.view.ViewGroup r9 = r7.searchFeedColumnParent(r12)
            r10 = 0
            if (r9 == 0) goto L2b
            int r12 = r9.getId()
            r0 = 2131297393(0x7f090471, float:1.821273E38)
            if (r12 != r0) goto L13
            goto L2b
        L13:
            int r12 = r9.getId()
            r0 = 2131298789(0x7f0909e5, float:1.8215561E38)
            if (r12 != r0) goto L1f
            r10 = 1
            r2 = 1
            goto L2c
        L1f:
            int r9 = r9.getId()
            r12 = 2131299178(0x7f090b6a, float:1.821635E38)
            if (r9 != r12) goto L2b
            r10 = 2
            r2 = 2
            goto L2c
        L2b:
            r2 = 0
        L2c:
            android.widget.ListAdapter r9 = r7.wrapped
            java.lang.Object r3 = r9.getItem(r2)
            r5 = 0
            r0 = r7
            r1 = r8
            r4 = r11
            boolean r8 = super.onItemClick(r1, r2, r3, r4, r5)
            return r8
        L3b:
            android.widget.ListAdapter r10 = r7.wrapped
            int r0 = r9 + 2
            java.lang.Object r4 = r10.getItem(r0)
            r1 = r7
            r2 = r8
            r3 = r9
            r5 = r11
            r6 = r12
            boolean r8 = super.onItemClick(r2, r3, r4, r5, r6)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.leaderboard.RankingUserListLayoutAdapter.onItemClick(android.widget.ListAdapter, int, java.lang.Object, android.view.View, android.view.View):boolean");
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
            if (view2.getId() == R.id.first_container || view2.getId() == R.id.second_container || view2.getId() == R.id.third_container) {
                break;
            }
            if (view2.getParent() instanceof View) {
                view2 = (View) view2.getParent();
            }
            i++;
        }
        return (ViewGroup) view2;
    }
}
