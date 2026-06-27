package com.narvii.util;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.util.SparseArrayCompat;
import android.support.v4.view.ViewPager;
import android.view.ViewGroup;

/* loaded from: classes3.dex */
public abstract class LazyFragmentPagerAdapter extends NoDetachFragmentPagerAdapter implements ViewPager.OnPageChangeListener {
    FragmentManager fragmentManager;
    boolean inited;
    SparseArrayCompat<Boolean> loaded;
    Integer setLoadedPos;
    boolean suspendForJump;
    int viewGroupId;

    public abstract Fragment createFragment(int i);

    public abstract long getFragmentId(int i);

    @Override // android.support.v4.view.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    public LazyFragmentPagerAdapter(FragmentManager fragmentManager) {
        super(fragmentManager);
        this.fragmentManager = fragmentManager;
        this.loaded = new SparseArrayCompat<>();
    }

    private boolean isLoaded(int i) {
        Boolean boolValueOf = this.loaded.get(i);
        if (boolValueOf == null) {
            if (!this.inited) {
                boolValueOf = Boolean.TRUE;
            } else if (this.viewGroupId == 0) {
                boolValueOf = Boolean.FALSE;
            } else {
                boolValueOf = Boolean.valueOf(this.fragmentManager.findFragmentByTag(NoDetachFragmentPagerAdapter.makeFragmentName(this.viewGroupId, getFragmentId(i))) != null);
            }
            this.loaded.put(i, boolValueOf);
        }
        return boolValueOf.booleanValue();
    }

    @Override // com.narvii.util.NoDetachFragmentPagerAdapter
    public final long getItemId(int i) {
        return isLoaded(i) ? getFragmentId(i) : 263882773889024L | i;
    }

    @Override // com.narvii.util.NoDetachFragmentPagerAdapter
    public final Fragment getItem(int i) {
        if (isLoaded(i)) {
            return createFragment(i);
        }
        return new Fragment();
    }

    @Override // com.narvii.util.NoDetachFragmentPagerAdapter, android.support.v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Fragment fragmentFindFragmentByTag;
        if (this.viewGroupId == 0) {
            this.viewGroupId = viewGroup.getId();
        }
        if (this.setLoadedPos != null && (fragmentFindFragmentByTag = this.fragmentManager.findFragmentByTag(NoDetachFragmentPagerAdapter.makeFragmentName(this.viewGroupId, getFragmentId(i)))) != null) {
            return fragmentFindFragmentByTag;
        }
        Object objInstantiateItem = super.instantiateItem(viewGroup, i);
        this.inited = true;
        return objInstantiateItem;
    }

    @Override // com.narvii.util.NoDetachFragmentPagerAdapter, android.support.v4.view.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        Integer num = this.setLoadedPos;
        if (num == null || num.intValue() == i) {
            super.destroyItem(viewGroup, i, obj);
        }
    }

    private void setLoaded(int i) {
        Boolean bool = this.loaded.get(i);
        Boolean bool2 = Boolean.TRUE;
        if (bool != bool2) {
            this.loaded.put(i, bool2);
            this.setLoadedPos = Integer.valueOf(i);
            notifyDataSetChanged();
            this.setLoadedPos = null;
        }
    }

    public void prepareForJump(int i) {
        this.suspendForJump = true;
        setLoaded(i);
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        if (this.suspendForJump || f == 0.0f) {
            return;
        }
        setLoaded(i);
        if (f > 0.0f) {
            int count = i + 1;
            if (count >= getCount()) {
                count = getCount() - 1;
            }
            setLoaded(count);
        }
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        setLoaded(i);
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        if (i != 2) {
            this.suspendForJump = false;
        }
    }

    protected String getFragmentTag(int i) {
        if (this.inited && this.viewGroupId != 0 && isLoaded(i)) {
            return NoDetachFragmentPagerAdapter.makeFragmentName(this.viewGroupId, getFragmentId(i));
        }
        return null;
    }
}
