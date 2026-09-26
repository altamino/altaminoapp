package com.narvii.master;

import android.view.View;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.theme.NVThemeOwner;
import com.narvii.list.NVListFragment;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.Utils;
import com.narvii.widget.NVListView;
import java.util.HashMap;

/* JADX INFO: loaded from: classes10.dex */
public class MasterShareTabHelper {
    public static final int RECORD_HEIGHT_MAX_ITEM_COUNT = 10;
    public static final int SCROLLY_THRESHOLD = 120;
    private HashMap<Integer, Integer> itemHeightArray;
    NVListFragment listFragment;
    private ListView listView;
    private View masterTabOffsetView;
    private MasterTopBar masterTopBar;
    AbsListView.OnScrollListener onScrollListener;
    private PreferencesHelper preferencesHelper;
    private boolean tabScrollTogether;
    private int topOffsetHeight;

    public MasterShareTabHelper(NVListFragment nVListFragment) {
        this.itemHeightArray = new HashMap<>();
        this.onScrollListener = new AbsListView.OnScrollListener() { // from class: com.narvii.master.MasterShareTabHelper.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i10) {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
                View view;
                if (MasterShareTabHelper.this.listFragment.isActive() && MasterShareTabHelper.this.listFragment.getUserVisibleHint()) {
                    Fragment parentFragment = MasterShareTabHelper.this.listFragment.getParentFragment();
                    if ((!(parentFragment instanceof MasterTabFragment) || ((MasterTabFragment) parentFragment).getCurrentFragment() == MasterShareTabHelper.this.listFragment) && (view = MasterShareTabHelper.this.masterTabOffsetView) != null) {
                        View childAt = absListView.getChildAt(0);
                        int top = childAt != null ? childAt.getTop() : 0;
                        if (!MasterShareTabHelper.this.tabScrollTogether) {
                            MasterShareTabHelper.this.changeTopBarBaseOnScrollY();
                        } else if (i10 == 0) {
                            view.setTranslationY(top);
                        } else {
                            view.setTranslationY(MasterShareTabHelper.this.topOffsetHeight * (-1));
                        }
                    }
                }
            }
        };
        this.listFragment = nVListFragment;
        this.preferencesHelper = new PreferencesHelper(nVListFragment);
    }

    private boolean IsBeyondScrollY(AbsListView absListView) {
        int i10;
        boolean z6 = false;
        if (absListView == null) {
            return false;
        }
        View childAt = absListView.getChildAt(0);
        int top = childAt == null ? 0 : childAt.getTop();
        int firstVisiblePosition = absListView.getFirstVisiblePosition();
        int childCount = absListView.getChildCount();
        if (childCount == 0) {
            if (absListView.getAdapter() == null || ((ListAdapter) absListView.getAdapter()).getCount() != 0) {
                return false;
            }
            this.itemHeightArray.clear();
            return false;
        }
        for (int i11 = 0; i11 < childCount && (i10 = firstVisiblePosition + i11) < 10; i11++) {
            View childAt2 = absListView.getChildAt(i11);
            if (childAt2 != null) {
                this.itemHeightArray.put(Integer.valueOf(i10), Integer.valueOf(childAt2.getHeight()));
            }
        }
        int iDpToPxInt = Utils.dpToPxInt(absListView.getContext(), 120.0f);
        int iIntValue = 0;
        for (int i12 = 0; i12 < Math.min(10, firstVisiblePosition); i12++) {
            Integer num = this.itemHeightArray.get(Integer.valueOf(i12));
            iIntValue += num == null ? 0 : num.intValue();
            if (iIntValue > iDpToPxInt) {
                z6 = true;
                break;
            }
        }
        if (iIntValue - top > iDpToPxInt) {
            return true;
        }
        return z6;
    }

    public HashMap<Integer, Integer> getItemHeightArray() {
        return this.itemHeightArray;
    }

    public void setItemHeightArray(HashMap<Integer, Integer> map) {
        this.itemHeightArray = map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeTopBarBaseOnScrollY() {
        ListView listView = this.listView;
        if (listView == null || this.masterTopBar == null) {
            return;
        }
        if (IsBeyondScrollY(listView)) {
            this.masterTopBar.expand();
        } else {
            this.masterTopBar.collapse();
        }
    }

    public void attachToList(NVListView nVListView) {
        NVThemeOwner nVThemeOwner = this.listFragment;
        if (nVThemeOwner instanceof MasterTopOffsetAdapter) {
            this.topOffsetHeight = ((MasterTopOffsetAdapter) nVThemeOwner).topOffsetHeight();
        }
        this.listView = nVListView;
        nVListView.addOnScrollListener(this.onScrollListener);
        Fragment parentFragment = this.listFragment.getParentFragment();
        if (parentFragment instanceof MasterTabFragment) {
            this.masterTabOffsetView = ((MasterTabFragment) parentFragment).getMasterTabTopOffset();
        } else if (parentFragment != null && (parentFragment.getParentFragment() instanceof MasterTabFragment)) {
            this.masterTabOffsetView = ((MasterTabFragment) parentFragment.getParentFragment()).getMasterTabTopOffset();
        }
        View view = this.masterTabOffsetView;
        if (view != null) {
            this.masterTopBar = (MasterTopBar) view.findViewById(R.id.master_top_bar);
        }
        changeTopBarBaseOnScrollY();
    }

    public void resetOffsetViewTranslation() {
        View view = this.masterTabOffsetView;
        if (view == null) {
            return;
        }
        view.setAlpha(1.0f);
        this.masterTabOffsetView.setTranslationY(0.0f);
        if (this.tabScrollTogether) {
            this.masterTopBar.collapse();
        } else {
            changeTopBarBaseOnScrollY();
        }
    }

    public MasterShareTabHelper(NVListFragment nVListFragment, boolean z6) {
        this(nVListFragment);
        this.tabScrollTogether = z6;
    }
}
