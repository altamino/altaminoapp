package com.narvii.leaderboard;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.LeaderBoardItem;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class LeaderBoardTabBar extends LinearLayout {
    private static final int COUNT_COLUMN = 3;
    LayoutInflater inflater;
    List<List<LeaderBoardItem>> lines;
    LeaderBoardClickListener listener;

    public interface LeaderBoardClickListener {
        void onItemClick(int i);
    }

    public LeaderBoardTabBar(Context context) {
        this(context, null);
    }

    public LeaderBoardTabBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOrientation(1);
        this.lines = new ArrayList();
        this.inflater = LayoutInflater.from(context);
    }

    public void setLeaderBoardTabClickListener(LeaderBoardClickListener leaderBoardClickListener) {
        this.listener = leaderBoardClickListener;
    }

    public void setLeaderBoardItems(List<LeaderBoardItem> list) {
        if (list == null) {
            return;
        }
        if (list.size() == 0) {
            removeAllViews();
        }
        this.lines.clear();
        int size = (list.size() / 3) + (list.size() % 3 == 0 ? 0 : 1);
        for (int i = 0; i < size; i++) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < 3; i2++) {
                int i3 = (i * 3) + i2;
                if (i3 >= list.size()) {
                    break;
                }
                arrayList.add(list.get(i3));
            }
            this.lines.add(arrayList);
        }
        while (getChildCount() > size) {
            removeViewAt(getChildCount() - 1);
        }
        int i4 = 0;
        while (i4 < size) {
            View childAt = getChildCount() > i4 ? getChildAt(i4) : null;
            if (childAt == null) {
                childAt = this.inflater.inflate(R.layout.item_leader_board_column_layout, (ViewGroup) this, false);
                addView(childAt);
            }
            List<LeaderBoardItem> list2 = this.lines.get(i4);
            int size2 = list2.size();
            int i5 = 0;
            while (true) {
                if (i5 < 3) {
                    if (i5 >= size2) {
                        ((ViewGroup) childAt).getChildAt(i5).setVisibility(4);
                        break;
                    }
                    LeaderBoardItem leaderBoardItem = list2.get(i5);
                    if (childAt instanceof ViewGroup) {
                        ViewGroup viewGroup = (ViewGroup) childAt;
                        viewGroup.getChildAt(i5).setVisibility(i5 < size2 ? 0 : 4);
                        if (i5 < size2) {
                            View childAt2 = viewGroup.getChildAt(i5);
                            int i6 = leaderBoardItem.type - 1;
                            int iIntValue = LeaderBoardTabFragment.titleMapper.get(leaderBoardItem.type).intValue();
                            int iIntValue2 = LeaderBoardTabFragment.subTitleMapper.get(leaderBoardItem.type).intValue();
                            if (iIntValue == 0) {
                                iIntValue = R.string.leader_board_category_active;
                            }
                            if (iIntValue2 == 0) {
                                iIntValue = R.string.leader_board_label_all;
                            }
                            ((TextView) childAt2.findViewById(R.id.title)).setText(getResources().getString(iIntValue));
                            ((TextView) childAt2.findViewById(R.id.subTitle)).setText(getResources().getString(iIntValue2));
                            final int i7 = (i4 * 3) + i5;
                            childAt2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.leaderboard.LeaderBoardTabBar.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view) {
                                    LeaderBoardClickListener leaderBoardClickListener = LeaderBoardTabBar.this.listener;
                                    if (leaderBoardClickListener != null) {
                                        leaderBoardClickListener.onItemClick(i7);
                                    }
                                }
                            });
                        }
                    }
                    i5++;
                }
            }
            i4++;
        }
    }

    public void setCheckPosition(int i) {
        for (int i2 = 0; i2 < this.lines.size(); i2++) {
            int size = this.lines.get(i2).size();
            ViewGroup viewGroup = (ViewGroup) getChildAt(i2);
            for (int i3 = 0; i3 < 3 && i3 < size; i3++) {
                int i4 = (i2 * 3) + i3;
                View childAt = viewGroup.getChildAt(i3);
                childAt.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), i4 == i ? R.drawable.item_leader_board_tab_bg_pressed : R.drawable.item_leader_board_tab_bg));
                int i5 = -15162122;
                ((TextView) childAt.findViewById(R.id.title)).setTextColor(i4 == i ? -15162122 : -1);
                TextView textView = (TextView) childAt.findViewById(R.id.subTitle);
                if (i4 != i) {
                    i5 = -1;
                }
                textView.setTextColor(i5);
            }
        }
    }
}
