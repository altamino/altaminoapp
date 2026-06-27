package com.narvii.leaderboard;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.widget.ListViewCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.widget.NVListView;

/* loaded from: classes.dex */
public abstract class ShareHeaderFragment extends NVListFragment {
    private static final String KEY_LOAD = "ready_to_load";
    private static String STATE_CUR_SCROLL_OFFSET = "cur_scroll_offset";
    public static final String STATE_RANKING_MODE = "ranking_mode";
    BottomAdapter bottomAdapter;
    private boolean bottomHeightSet;
    private int bottomOffsetHeight;
    private int firstVisiblePosition;
    private boolean isFirstInited;
    private boolean isRecoveryMode;
    NVAdapter mainAdapter;
    protected int preOffset;
    protected int rankingMode;
    protected boolean readyToLoad;

    @Override // com.narvii.list.NVListFragment
    protected int errorViewLayoutId() {
        return R.layout.leader_board_error_layout;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    protected abstract NVAdapter mainAdapter(Bundle bundle);

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.preOffset = bundle.getInt(STATE_CUR_SCROLL_OFFSET);
            this.readyToLoad = bundle.getBoolean(KEY_LOAD);
            this.rankingMode = bundle.getInt(STATE_RANKING_MODE);
            this.isRecoveryMode = true;
        } else {
            this.rankingMode = getIntParam(STATE_RANKING_MODE, 1);
            this.isRecoveryMode = false;
        }
        this.isFirstInited = true;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (z) {
            this.readyToLoad = true;
        }
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.ranking_list_fragment_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView instanceof NVListView) {
            ((NVListView) listView).addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.leaderboard.ShareHeaderFragment.1
                @Override // android.widget.AbsListView.OnScrollListener
                public void onScrollStateChanged(AbsListView absListView, int i) {
                }

                @Override // android.widget.AbsListView.OnScrollListener
                public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                    ShareHeaderFragment.this.firstVisiblePosition = i;
                }
            });
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (isAdded()) {
            updateListMargin();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    private void updateListMargin() {
        if (isAdded()) {
            int i = LeaderBoardTabFragment.childMarginTopHeight;
            ViewGroup.LayoutParams layoutParams = ((NVListView) getListView()).getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = i;
            }
        }
    }

    @Override // com.narvii.list.NVListFragment
    public void setErrorMessage(String str) {
        super.setErrorMessage(str);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(STATE_CUR_SCROLL_OFFSET, this.preOffset);
        bundle.putBoolean(KEY_LOAD, this.readyToLoad);
        bundle.putInt(STATE_RANKING_MODE, this.rankingMode);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.mainAdapter = mainAdapter(bundle);
        this.bottomAdapter = new BottomAdapter();
        mergeAdapter.addAdapter(new DescriptionAdapter());
        mergeAdapter.addAdapter(this.mainAdapter, true);
        mergeAdapter.addAdapter(this.bottomAdapter);
        return mergeAdapter;
    }

    class BottomAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public BottomAdapter() {
            super(ShareHeaderFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.leader_board_bottom_offset_layout, viewGroup, view);
            ViewGroup.LayoutParams layoutParams = viewCreateView.getLayoutParams();
            if (ShareHeaderFragment.this.bottomHeightSet) {
                layoutParams.height = ShareHeaderFragment.this.bottomOffsetHeight;
            } else {
                layoutParams.height = 10;
            }
            viewCreateView.setLayoutParams(layoutParams);
            return viewCreateView;
        }
    }

    class DescriptionAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public DescriptionAdapter() {
            super(ShareHeaderFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.leader_board_description_layout, viewGroup, view);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.desc);
            String string = ShareHeaderFragment.this.getString(R.string.leader_board_desc_24hrs);
            ShareHeaderFragment shareHeaderFragment = ShareHeaderFragment.this;
            int i2 = shareHeaderFragment.rankingMode;
            if (i2 == 2 || i2 == 1) {
                string = ShareHeaderFragment.this.getString(R.string.leader_board_desc_7days);
            } else if (i2 == 3) {
                string = shareHeaderFragment.getString(R.string.leader_board_desc_hall);
            } else if (i2 == 4) {
                string = shareHeaderFragment.getString(R.string.leader_board_desc_checkin);
            } else if (i2 == 5) {
                string = shareHeaderFragment.getString(R.string.leader_board_desc_quiz);
            }
            textView.setText(string);
            return viewCreateView;
        }
    }

    public void setPreOffset(int i) {
        this.preOffset = i;
    }

    public void setCurrentOffset(int i) {
        setCurrentOffset(i, false);
    }

    public void setCurrentOffset(int i, boolean z) {
        if (this.isFirstInited) {
            getListView().setSelectionFromTop(0, -i);
            this.isFirstInited = false;
        }
        int i2 = this.preOffset;
        if (i == i2) {
            return;
        }
        if (i2 == getIntParam("baseOffset") && i < this.preOffset) {
            getListView().setSelectionFromTop(0, -i);
        } else {
            ListViewCompat.scrollListBy(getListView(), i - this.preOffset);
        }
        this.preOffset = i;
    }

    public void setBottomOffsetHeight(int i) {
        this.bottomOffsetHeight = i;
        this.bottomHeightSet = true;
        BottomAdapter bottomAdapter = this.bottomAdapter;
        if (bottomAdapter != null) {
            bottomAdapter.notifyDataSetChanged();
        }
    }

    public int getBaseHeaderHeight() {
        return getActionBarOverlaySize() + getStatusBarOverlaySize() + getResources().getDimensionPixelSize(R.dimen.ranking_category_bar_height);
    }
}
