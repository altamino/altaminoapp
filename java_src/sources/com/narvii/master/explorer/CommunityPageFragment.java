package com.narvii.master.explorer;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes.dex */
public class CommunityPageFragment extends NVListFragment {
    private TintButton acBack;
    private View acDivider;
    private TextView acTitle;
    View actionbar;
    protected Drawable actionbarBg;
    private Drawable actionbarDividerBg;
    private Drawable actionbarTextBg;
    int alpha;
    private CommunityPageAdapter communityPageAdapter;
    private int pageBackColor;
    private int pageFrontColor;

    private class FitTopAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public FitTopAdapter() {
            super(CommunityPageFragment.this);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (CommunityPageFragment.this.communityPageAdapter == null || !CommunityPageFragment.this.communityPageAdapter.startWithFeature) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            View viewCreateView = createView(R.layout.community_page_fit_top, viewGroup, view);
            if (CommunityPageFragment.this.communityPageAdapter != null && !CommunityPageFragment.this.communityPageAdapter.startWithFeature && CommunityPageFragment.this.communityPageAdapter.pageBackGround != -11119017) {
                i11 = CommunityPageFragment.this.communityPageAdapter.pageBackGround;
            } else {
                i11 = 0;
            }
            viewCreateView.setBackgroundColor(i11);
            return viewCreateView;
        }
    }

    class MyAdapter extends CommunityPageAdapter {
        public MyAdapter() {
            super(CommunityPageFragment.this);
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    protected void onListScroll(AbsListView absListView, int i10, int i11, int i12) {
        View childAt = absListView.getChildAt(0);
        if (childAt != null) {
            CommunityPageAdapter communityPageAdapter = this.communityPageAdapter;
            if (communityPageAdapter != null && !communityPageAdapter.startWithFeature) {
                this.alpha = 255;
                this.actionbarBg.setAlpha(255);
                View view = this.actionbar;
                if (view != null) {
                    view.setBackground(this.actionbarBg);
                    return;
                }
                return;
            }
            if (getListView().getFirstVisiblePosition() == 0) {
                this.alpha = (int) (((double) (1.0f - ((childAt.getHeight() + childAt.getTop()) / childAt.getHeight()))) * 255.0d);
            } else {
                this.alpha = 255;
            }
            this.actionbarBg.setAlpha(this.alpha);
            View view2 = this.actionbar;
            if (view2 != null) {
                view2.setBackground(this.actionbarBg);
            }
            if (this.acDivider != null) {
                this.actionbarDividerBg.setAlpha(this.alpha);
                this.acDivider.setBackground(this.actionbarDividerBg);
            }
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.communityPageAdapter = new MyAdapter();
        mergeAdapter.addAdapter(new FitTopAdapter());
        mergeAdapter.addAdapter(this.communityPageAdapter, true);
        return mergeAdapter;
    }

    protected void onListScrollStateChanged(AbsListView absListView, int i10) {
        if (this.actionbar != null) {
            this.actionbarBg.setAlpha(this.alpha);
            this.actionbar.setBackground(this.actionbarBg);
        }
        if (this.acDivider != null) {
            this.actionbarDividerBg.setAlpha(this.alpha);
            this.acDivider.setBackground(this.actionbarDividerBg);
        }
    }

    public void setActionbarBg(int i10) {
        this.actionbarBg = new ColorDrawable(i10);
    }

    public void setActionbarTextColor(int i10) {
        this.actionbarDividerBg = new ColorDrawable(Color.argb(120, Color.red(i10), Color.green(i10), Color.blue(i10)));
        TintButton tintButton = this.acBack;
        if (tintButton != null) {
            tintButton.setTintColor(i10);
        }
        TextView textView = this.acTitle;
        if (textView != null) {
            textView.setTextColor(i10);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getActivity().getActionBar() != null) {
            getActivity().getActionBar().hide();
        }
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_community_page, viewGroup, false);
        try {
            this.pageBackColor = Color.parseColor(getStringParam("pageBackground"));
            this.pageFrontColor = Color.parseColor(getStringParam("frontColor"));
        } catch (Exception unused) {
            this.pageBackColor = CommunityPageAdapter.DEFAULT_SUB_BACK_COLOR;
            this.pageFrontColor = -1;
        }
        if (viewInflate.findViewById(R.id.list_frame) != null) {
            viewInflate.findViewById(R.id.list_frame).setBackgroundColor(this.pageBackColor);
        }
        if (viewInflate.findViewById(android.R.id.progress) != null) {
            ((SpinningView) viewInflate.findViewById(android.R.id.progress)).setSpinColor(this.pageFrontColor);
        }
        this.actionbarBg = new ColorDrawable(getResources().getColor(R.color.color_default_dark));
        this.actionbarDividerBg = new ColorDrawable(-7829368);
        this.actionbarTextBg = new ColorDrawable(-1);
        this.actionbar = viewInflate.findViewById(R.id.community_page_actionbar);
        this.acDivider = viewInflate.findViewById(R.id.actionbar_divider);
        this.acTitle = (TextView) viewInflate.findViewById(R.id.title);
        TintButton tintButton = (TintButton) viewInflate.findViewById(R.id.actionbar_back);
        this.acBack = tintButton;
        if (tintButton != null) {
            tintButton.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.explorer.CommunityPageFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CommunityPageFragment.this.finish();
                }
            });
        }
        TextView textView = this.acTitle;
        if (textView != null) {
            textView.setText(getStringParam("title"));
        }
        int statusBarOverlaySize = getStatusBarOverlaySize();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.actionbar.getLayoutParams();
        marginLayoutParams.height = getActionBarOverlaySize() + statusBarOverlaySize;
        this.actionbar.setLayoutParams(marginLayoutParams);
        View view = this.actionbar;
        view.setPadding(view.getPaddingLeft(), this.actionbar.getPaddingTop() + statusBarOverlaySize, this.actionbar.getPaddingRight(), this.actionbar.getPaddingBottom());
        return viewInflate;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        listView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.master.explorer.CommunityPageFragment.2
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
                CommunityPageFragment.this.onListScroll(absListView, i10, i11, i12);
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i10) {
                CommunityPageFragment.this.onListScrollStateChanged(absListView, i10);
            }
        });
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }
}
