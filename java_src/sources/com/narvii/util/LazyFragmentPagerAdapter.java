package com.narvii.util;

import android.view.ViewGroup;
import androidx.collection.SparseArrayCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes11.dex */
public abstract class LazyFragmentPagerAdapter extends NoDetachFragmentPagerAdapter implements ViewPager.OnPageChangeListener {
    FragmentManager fragmentManager;
    boolean inited;
    SparseArrayCompat<Boolean> loaded;
    Integer setLoadedPos;
    boolean suspendForJump;
    int viewGroupId;

    public abstract Fragment createFragment(int i10);

    public abstract long getFragmentId(int i10);

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i10) {
        if (i10 != 2) {
            this.suspendForJump = false;
        }
    }

    public void prepareForJump(int i10) {
        this.suspendForJump = true;
        setLoaded(i10);
    }

    private boolean isLoaded(int i10) {
        Boolean boolJ = this.loaded.j(i10);
        if (boolJ == null) {
            if (!this.inited) {
                boolJ = Boolean.TRUE;
            } else if (this.viewGroupId == 0) {
                boolJ = Boolean.FALSE;
            } else {
                boolJ = Boolean.valueOf(this.fragmentManager.m0(NoDetachFragmentPagerAdapter.makeFragmentName(this.viewGroupId, getFragmentId(i10))) != null);
            }
            this.loaded.o(i10, boolJ);
        }
        return boolJ.booleanValue();
    }

    private void setLoaded(int i10) {
        Boolean boolJ = this.loaded.j(i10);
        Boolean bool = Boolean.TRUE;
        if (boolJ != bool) {
            this.loaded.o(i10, bool);
            this.setLoadedPos = Integer.valueOf(i10);
            notifyDataSetChanged();
            this.setLoadedPos = null;
        }
    }

    @Override // com.narvii.util.NoDetachFragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i10, Object obj) {
        Integer num = this.setLoadedPos;
        if (num == null || num.intValue() == i10) {
            super.destroyItem(viewGroup, i10, obj);
        }
    }

    protected String getFragmentTag(int i10) {
        if (this.inited && this.viewGroupId != 0 && isLoaded(i10)) {
            return NoDetachFragmentPagerAdapter.makeFragmentName(this.viewGroupId, getFragmentId(i10));
        }
        return null;
    }

    @Override // com.narvii.util.NoDetachFragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i10) {
        Fragment fragmentM0;
        if (this.viewGroupId == 0) {
            this.viewGroupId = viewGroup.getId();
        }
        if (this.setLoadedPos != null && (fragmentM0 = this.fragmentManager.m0(NoDetachFragmentPagerAdapter.makeFragmentName(this.viewGroupId, getFragmentId(i10)))) != null) {
            return fragmentM0;
        }
        Object objInstantiateItem = super.instantiateItem(viewGroup, i10);
        this.inited = true;
        return objInstantiateItem;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i10, float f, int i11) {
        if (this.suspendForJump || f == 0.0f) {
            return;
        }
        setLoaded(i10);
        if (f > 0.0f) {
            int count = i10 + 1;
            if (count >= getCount()) {
                count = getCount() - 1;
            }
            setLoaded(count);
        }
    }

    public LazyFragmentPagerAdapter(FragmentManager fragmentManager) {
        super(fragmentManager);
        this.fragmentManager = fragmentManager;
        this.loaded = new SparseArrayCompat<>();
    }

    @Override // com.narvii.util.NoDetachFragmentPagerAdapter
    public final Fragment getItem(int i10) {
        if (isLoaded(i10)) {
            return createFragment(i10);
        }
        return new Fragment();
    }

    @Override // com.narvii.util.NoDetachFragmentPagerAdapter
    public final long getItemId(int i10) {
        if (isLoaded(i10)) {
            return getFragmentId(i10);
        }
        return 263882773889024L | ((long) i10);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i10) {
        setLoaded(i10);
    }
}
