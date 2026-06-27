package com.narvii.widget.headercollapse;

import android.content.Context;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import com.narvii.app.NVScrollablePagerAdapter;
import com.narvii.widget.NVListView;
import com.narvii.widget.NVViewPager;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public class NVHeaderCollapsibleLayout extends HeaderCollapsibleLayout {
    private Runnable mBindNVListViewTask;
    private ViewGroup mCurShowingViewRoot;
    private Handler mHandler;
    private HashMap<NVListView, AbsListView.OnScrollListener> mNVListViewInPager;
    private NVViewPager mViewPager;

    public NVHeaderCollapsibleLayout(Context context) {
        this(context, null);
    }

    public NVHeaderCollapsibleLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NVHeaderCollapsibleLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mNVListViewInPager = new HashMap<>();
        this.mBindNVListViewTask = new Runnable() { // from class: com.narvii.widget.headercollapse.NVHeaderCollapsibleLayout.1
            @Override // java.lang.Runnable
            public void run() {
                NVHeaderCollapsibleLayout.this.resetListViews();
                NVHeaderCollapsibleLayout nVHeaderCollapsibleLayout = NVHeaderCollapsibleLayout.this;
                nVHeaderCollapsibleLayout.findNVListViewInPager(nVHeaderCollapsibleLayout.mCurShowingViewRoot, NVHeaderCollapsibleLayout.this.mNVListViewInPager);
                if (NVHeaderCollapsibleLayout.this.mNVListViewInPager.isEmpty()) {
                    return;
                }
                Iterator it = NVHeaderCollapsibleLayout.this.mNVListViewInPager.keySet().iterator();
                while (it.hasNext()) {
                    NVHeaderCollapsibleLayout.this.bindNVListView((NVListView) it.next());
                }
            }
        };
    }

    @Override // com.narvii.widget.headercollapse.HeaderCollapsibleLayout
    protected void onFirstLayout() {
        super.onFirstLayout();
        this.mHandler = new Handler();
        ViewGroup viewGroup = (ViewGroup) getChildAt(1);
        this.mViewPager = findNVViewPager(viewGroup);
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager != null) {
            nVViewPager.addOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener() { // from class: com.narvii.widget.headercollapse.NVHeaderCollapsibleLayout.2
                @Override // android.support.v4.view.ViewPager.SimpleOnPageChangeListener, android.support.v4.view.ViewPager.OnPageChangeListener
                public void onPageSelected(int i) {
                    Fragment fragmentAt;
                    super.onPageSelected(i);
                    PagerAdapter adapter = NVHeaderCollapsibleLayout.this.mViewPager.getAdapter();
                    NVHeaderCollapsibleLayout nVHeaderCollapsibleLayout = NVHeaderCollapsibleLayout.this;
                    nVHeaderCollapsibleLayout.mCurShowingViewRoot = nVHeaderCollapsibleLayout.mViewPager;
                    if ((adapter instanceof NVScrollablePagerAdapter) && (fragmentAt = ((NVScrollablePagerAdapter) adapter).getFragmentAt(i)) != null && (fragmentAt.getView() instanceof ViewGroup)) {
                        NVHeaderCollapsibleLayout.this.mCurShowingViewRoot = (ViewGroup) fragmentAt.getView();
                    }
                    NVHeaderCollapsibleLayout.this.mHandler.postDelayed(NVHeaderCollapsibleLayout.this.mBindNVListViewTask, 200L);
                }
            });
        }
        bindNVListView(findNVListVIew(viewGroup));
    }

    @Override // com.narvii.widget.headercollapse.HeaderCollapsibleLayout, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacks(this.mBindNVListViewTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetListViews() {
        if (this.mNVListViewInPager.isEmpty()) {
            return;
        }
        for (Map.Entry<NVListView, AbsListView.OnScrollListener> entry : this.mNVListViewInPager.entrySet()) {
            if (entry != null && entry.getKey() != null && entry.getValue() != null) {
                entry.getKey().removeOnScrollListener(entry.getValue());
            }
        }
        this.mNVListViewInPager.clear();
    }

    private NVListView findNVListVIew(ViewGroup viewGroup) {
        NVListView nVListViewFindNVListVIew;
        if (viewGroup != null && viewGroup.getChildCount() != 0) {
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt instanceof NVListView) {
                    return (NVListView) childAt;
                }
                if ((childAt instanceof ViewGroup) && (nVListViewFindNVListVIew = findNVListVIew((ViewGroup) childAt)) != null) {
                    return nVListViewFindNVListVIew;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findNVListViewInPager(ViewGroup viewGroup, HashMap<NVListView, AbsListView.OnScrollListener> map) {
        if (viewGroup == null || viewGroup.getChildCount() == 0) {
            return;
        }
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof NVListView) {
                if (!map.containsKey(childAt)) {
                    map.put((NVListView) childAt, null);
                }
            } else if (childAt instanceof ViewGroup) {
                findNVListViewInPager((ViewGroup) childAt, map);
            }
        }
    }

    private NVViewPager findNVViewPager(ViewGroup viewGroup) {
        NVViewPager nVViewPagerFindNVViewPager;
        if (viewGroup != null && viewGroup.getChildCount() != 0) {
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt instanceof NVViewPager) {
                    return (NVViewPager) childAt;
                }
                if ((childAt instanceof ViewGroup) && (nVViewPagerFindNVViewPager = findNVViewPager((ViewGroup) childAt)) != null) {
                    return nVViewPagerFindNVViewPager;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindNVListView(NVListView nVListView) {
        if (nVListView == null) {
            return;
        }
        AbsListView.OnScrollListener onScrollListener = new AbsListView.OnScrollListener() { // from class: com.narvii.widget.headercollapse.NVHeaderCollapsibleLayout.3
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                if (NVHeaderCollapsibleLayout.this.mIsEnabled && !absListView.isStackFromBottom() && i == 0) {
                    NVHeaderCollapsibleLayout nVHeaderCollapsibleLayout = NVHeaderCollapsibleLayout.this;
                    if (nVHeaderCollapsibleLayout.mCurHeaderStatus == 2 && nVHeaderCollapsibleLayout.mIsScrollingDown && !nVHeaderCollapsibleLayout.mIsBeingDragged) {
                        nVHeaderCollapsibleLayout.needAutoExpand = true;
                        nVHeaderCollapsibleLayout.smoothExpand();
                        return;
                    }
                }
                NVHeaderCollapsibleLayout.this.needAutoExpand = false;
            }
        };
        nVListView.addOnScrollListener(onScrollListener);
        this.mNVListViewInPager.put(nVListView, onScrollListener);
    }
}
