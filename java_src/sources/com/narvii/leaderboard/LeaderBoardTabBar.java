package com.narvii.leaderboard;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.model.LeaderBoardItem;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class LeaderBoardTabBar extends LinearLayout {
    private static final int COUNT_COLUMN = 3;
    LayoutInflater inflater;
    List<List<LeaderBoardItem>> lines;
    LeaderBoardClickListener listener;

    public interface LeaderBoardClickListener {
        void onItemClick(int i10);
    }

    public LeaderBoardTabBar(Context context) {
        this(context, null);
    }

    public void setCheckPosition(int i10) {
        for (int i11 = 0; i11 < this.lines.size(); i11++) {
            int size = this.lines.get(i11).size();
            ViewGroup viewGroup = (ViewGroup) getChildAt(i11);
            for (int i12 = 0; i12 < 3 && i12 < size; i12++) {
                int i13 = (i11 * 3) + i12;
                View childAt = viewGroup.getChildAt(i12);
                childAt.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), i13 == i10 ? R.drawable.item_leader_board_tab_bg_pressed : R.drawable.item_leader_board_tab_bg));
                int i14 = -1;
                ((TextView) childAt.findViewWithTag(getContext().getString(R.string.title_tag))).setTextColor(i13 == i10 ? -15162122 : -1);
                TextView textView = (TextView) childAt.findViewWithTag(getContext().getString(R.string.subtitle_tag));
                if (i13 == i10) {
                    i14 = -15162122;
                }
                textView.setTextColor(i14);
            }
        }
    }

    public void setLeaderBoardTabClickListener(LeaderBoardClickListener leaderBoardClickListener) {
        this.listener = leaderBoardClickListener;
    }

    public LeaderBoardTabBar(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setOrientation(1);
        this.lines = new ArrayList();
        this.inflater = LayoutInflater.from(context);
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
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < 3; i11++) {
                int i12 = (i10 * 3) + i11;
                if (i12 >= list.size()) {
                    break;
                }
                arrayList.add(list.get(i12));
            }
            this.lines.add(arrayList);
        }
        while (getChildCount() > size) {
            removeViewAt(getChildCount() - 1);
        }
        int i13 = 0;
        while (i13 < size) {
            View childAt = getChildCount() > i13 ? getChildAt(i13) : null;
            if (childAt == null) {
                childAt = this.inflater.inflate(R.layout.item_leader_board_column_layout, (ViewGroup) this, false);
                addView(childAt);
            }
            List<LeaderBoardItem> list2 = this.lines.get(i13);
            int size2 = list2.size();
            int i14 = 0;
            while (i14 < 3) {
                if (i14 >= size2) {
                    ((ViewGroup) childAt).getChildAt(i14).setVisibility(4);
                    break;
                }
                LeaderBoardItem leaderBoardItem = list2.get(i14);
                if (childAt instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) childAt;
                    viewGroup.getChildAt(i14).setVisibility(i14 < size2 ? 0 : 4);
                    if (i14 < size2) {
                        View childAt2 = viewGroup.getChildAt(i14);
                        int iIntValue = LeaderBoardTabFragment.titleMapper.get(leaderBoardItem.type).intValue();
                        int iIntValue2 = LeaderBoardTabFragment.subTitleMapper.get(leaderBoardItem.type).intValue();
                        if (iIntValue == 0) {
                            iIntValue = R.string.leader_board_category_active;
                        }
                        if (iIntValue2 == 0) {
                            iIntValue = R.string.leader_board_label_all;
                        }
                        ((TextView) childAt2.findViewWithTag(getContext().getString(R.string.title_tag))).setText(getResources().getString(iIntValue));
                        ((TextView) childAt2.findViewWithTag(getContext().getString(R.string.subtitle_tag))).setText(getResources().getString(iIntValue2));
                        final int i15 = (i13 * 3) + i14;
                        childAt2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.leaderboard.LeaderBoardTabBar.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                LeaderBoardClickListener leaderBoardClickListener = LeaderBoardTabBar.this.listener;
                                if (leaderBoardClickListener != null) {
                                    leaderBoardClickListener.onItemClick(i15);
                                }
                            }
                        });
                    }
                }
                i14++;
            }
            i13++;
        }
    }
}
