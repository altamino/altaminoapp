package com.narvii.util;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.viewpager.widget.PagerAdapter;

/* JADX INFO: loaded from: classes9.dex */
public abstract class NoDetachFragmentPagerAdapter extends PagerAdapter {
    private static final boolean DEBUG = false;
    private static final String TAG = "FragmentPagerAdapter";
    private final FragmentManager mFragmentManager;
    private FragmentTransaction mCurTransaction = null;
    private Fragment mCurrentPrimaryItem = null;
    private boolean mUserVisibleHint = true;

    public abstract Fragment getItem(int i10);

    public long getItemId(int i10) {
        return i10;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Parcelable saveState() {
        return null;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(ViewGroup viewGroup) {
    }

    protected static String makeFragmentName(int i10, long j6) {
        return "android:switcher:" + i10 + ":" + j6;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i10, Object obj) {
        if (this.mCurTransaction == null) {
            this.mCurTransaction = this.mFragmentManager.q();
        }
        this.mCurTransaction.t((Fragment) obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void finishUpdate(ViewGroup viewGroup) {
        FragmentTransaction fragmentTransaction = this.mCurTransaction;
        if (fragmentTransaction != null) {
            fragmentTransaction.k();
            this.mCurTransaction = null;
            this.mFragmentManager.i0();
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i10) {
        if (this.mCurTransaction == null) {
            this.mCurTransaction = this.mFragmentManager.q();
        }
        long itemId = getItemId(i10);
        Fragment fragmentM0 = this.mFragmentManager.m0(makeFragmentName(viewGroup.getId(), itemId));
        if (fragmentM0 == null) {
            fragmentM0 = getItem(i10);
            this.mCurTransaction.c(viewGroup.getId(), fragmentM0, makeFragmentName(viewGroup.getId(), itemId));
        }
        if (fragmentM0 != this.mCurrentPrimaryItem) {
            fragmentM0.setMenuVisibility(false);
            fragmentM0.setUserVisibleHint(false);
        }
        return fragmentM0;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i10, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.mCurrentPrimaryItem;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                this.mCurrentPrimaryItem.setUserVisibleHint(false);
            }
            if (fragment != null) {
                fragment.setMenuVisibility(this.mUserVisibleHint);
                fragment.setUserVisibleHint(this.mUserVisibleHint);
            }
            this.mCurrentPrimaryItem = fragment;
        }
    }

    public void setUserVisibleHint(boolean z6) {
        if (this.mUserVisibleHint != z6) {
            this.mUserVisibleHint = z6;
            Fragment fragment = this.mCurrentPrimaryItem;
            if (fragment != null) {
                fragment.setMenuVisibility(z6);
                this.mCurrentPrimaryItem.setUserVisibleHint(z6);
            }
        }
    }

    public NoDetachFragmentPagerAdapter(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }
}
