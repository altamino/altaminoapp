package com.narvii.master.explorer;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
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
import com.narvii.widget.SpinningView;
import com.narvii.widget.TintButton;

/* loaded from: classes3.dex */
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

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getActivity().getActionBar() != null) {
            getActivity().getActionBar().hide();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
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
        this.acBack = (TintButton) viewInflate.findViewById(R.id.actionbar_back);
        TintButton tintButton = this.acBack;
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

    public void setActionbarBg(int i) {
        this.actionbarBg = new ColorDrawable(i);
    }

    public void setActionbarTextColor(int i) {
        this.actionbarDividerBg = new ColorDrawable(Color.argb(120, Color.red(i), Color.green(i), Color.blue(i)));
        TintButton tintButton = this.acBack;
        if (tintButton != null) {
            tintButton.setTintColor(i);
        }
        TextView textView = this.acTitle;
        if (textView != null) {
            textView.setTextColor(i);
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

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        listView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.master.explorer.CommunityPageFragment.2
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
                CommunityPageFragment.this.onListScrollStateChanged(absListView, i);
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                CommunityPageFragment.this.onListScroll(absListView, i, i2, i3);
            }
        });
    }

    protected void onListScroll(AbsListView absListView, int i, int i2, int i3) {
        if (absListView.getChildAt(0) != null) {
            CommunityPageAdapter communityPageAdapter = this.communityPageAdapter;
            if (communityPageAdapter != null && !communityPageAdapter.startWithFeature) {
                this.alpha = 255;
                this.actionbarBg.setAlpha(this.alpha);
                View view = this.actionbar;
                if (view != null) {
                    if (Build.VERSION.SDK_INT >= 16) {
                        view.setBackground(this.actionbarBg);
                        return;
                    } else {
                        view.setBackgroundDrawable(this.actionbarBg);
                        return;
                    }
                }
                return;
            }
            if (getListView().getFirstVisiblePosition() == 0) {
                double height = 1.0f - ((r3.getHeight() + r3.getTop()) / r3.getHeight());
                Double.isNaN(height);
                this.alpha = (int) (height * 255.0d);
            } else {
                this.alpha = 255;
            }
            this.actionbarBg.setAlpha(this.alpha);
            View view2 = this.actionbar;
            if (view2 != null) {
                if (Build.VERSION.SDK_INT >= 16) {
                    view2.setBackground(this.actionbarBg);
                } else {
                    view2.setBackgroundDrawable(this.actionbarBg);
                }
            }
            if (this.acDivider != null) {
                this.actionbarDividerBg.setAlpha(this.alpha);
                if (Build.VERSION.SDK_INT >= 16) {
                    this.acDivider.setBackground(this.actionbarDividerBg);
                } else {
                    this.acDivider.setBackgroundDrawable(this.actionbarDividerBg);
                }
            }
        }
    }

    protected void onListScrollStateChanged(AbsListView absListView, int i) {
        if (this.actionbar != null) {
            this.actionbarBg.setAlpha(this.alpha);
            if (Build.VERSION.SDK_INT >= 16) {
                this.actionbar.setBackground(this.actionbarBg);
            } else {
                this.actionbar.setBackgroundDrawable(this.actionbarBg);
            }
        }
        if (this.acDivider != null) {
            this.actionbarDividerBg.setAlpha(this.alpha);
            if (Build.VERSION.SDK_INT >= 16) {
                this.acDivider.setBackground(this.actionbarDividerBg);
            } else {
                this.acDivider.setBackgroundDrawable(this.actionbarDividerBg);
            }
        }
    }

    class MyAdapter extends CommunityPageAdapter {
        public MyAdapter() {
            super(CommunityPageFragment.this);
        }
    }

    private class FitTopAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
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
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.community_page_fit_top, viewGroup, view);
            viewCreateView.setBackgroundColor((CommunityPageFragment.this.communityPageAdapter == null || CommunityPageFragment.this.communityPageAdapter.startWithFeature || CommunityPageFragment.this.communityPageAdapter.pageBackGround == -11119017) ? 0 : CommunityPageFragment.this.communityPageAdapter.pageBackGround);
            return viewCreateView;
        }
    }
}
