package com.narvii.util;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public abstract class FixedFragmentStatePagerAdapter extends PagerAdapter {
    private static final boolean DEBUG = false;
    private static final String TAG = "FragmentStatePagerAdapter";
    private final FragmentManager mFragmentManager;
    private FragmentTransaction mCurTransaction = null;
    private ArrayList<Fragment.SavedState> mSavedState = new ArrayList<>();
    private ArrayList<String> mSavedFragmentTags = new ArrayList<>();
    private ArrayList<Fragment> mFragments = new ArrayList<>();
    private Fragment mCurrentPrimaryItem = null;
    private boolean mUserVisibleHint = true;

    public interface FragmentSaveInstanceInPagerListener {
        void onPostSaveInstanceInPager();

        void onPreSaveInstanceInPager();
    }

    public abstract Fragment getItem(int i);

    public String getTag(int i) {
        return null;
    }

    @Override // android.support.v4.view.PagerAdapter
    public void startUpdate(ViewGroup viewGroup) {
    }

    public FixedFragmentStatePagerAdapter(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }

    public void setUserVisibleHint(boolean z) {
        if (this.mUserVisibleHint != z) {
            this.mUserVisibleHint = z;
            Fragment fragment = this.mCurrentPrimaryItem;
            if (fragment != null) {
                fragment.setMenuVisibility(z);
                this.mCurrentPrimaryItem.setUserVisibleHint(z);
            }
        }
    }

    @Override // android.support.v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Fragment.SavedState savedState;
        Fragment fragment;
        if (this.mFragments.size() > i && (fragment = this.mFragments.get(i)) != null) {
            return fragment;
        }
        if (this.mCurTransaction == null) {
            this.mCurTransaction = this.mFragmentManager.beginTransaction();
        }
        Fragment item = getItem(i);
        String tag = getTag(i);
        if (this.mSavedState.size() > i && Utils.isEqualsNotNull(tag, this.mSavedFragmentTags.get(i)) && (savedState = this.mSavedState.get(i)) != null) {
            item.setInitialSavedState(savedState);
        }
        while (this.mFragments.size() <= i) {
            this.mFragments.add(null);
        }
        item.setMenuVisibility(false);
        item.setUserVisibleHint(false);
        this.mFragments.set(i, item);
        this.mCurTransaction.add(viewGroup.getId(), item, tag);
        return item;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.view.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.mCurTransaction == null) {
            this.mCurTransaction = this.mFragmentManager.beginTransaction();
        }
        while (this.mSavedState.size() <= i) {
            this.mSavedState.add(null);
            this.mSavedFragmentTags.add(null);
        }
        if (fragment.isAdded()) {
            boolean z = fragment instanceof FragmentSaveInstanceInPagerListener;
            if (z) {
                ((FragmentSaveInstanceInPagerListener) fragment).onPreSaveInstanceInPager();
            }
            this.mSavedState.set(i, this.mFragmentManager.saveFragmentInstanceState(fragment));
            if (z) {
                ((FragmentSaveInstanceInPagerListener) fragment).onPostSaveInstanceInPager();
            }
        } else {
            this.mSavedState.set(i, null);
        }
        this.mSavedFragmentTags.set(i, fragment.getTag());
        this.mFragments.set(i, null);
        this.mCurTransaction.remove(fragment);
    }

    @Override // android.support.v4.view.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.mCurrentPrimaryItem;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                this.mCurrentPrimaryItem.setUserVisibleHint(false);
            }
            if (fragment != null) {
                fragment.setMenuVisibility(true);
                fragment.setUserVisibleHint(true);
            }
            this.mCurrentPrimaryItem = fragment;
        }
    }

    @Override // android.support.v4.view.PagerAdapter
    public void finishUpdate(ViewGroup viewGroup) {
        FragmentTransaction fragmentTransaction = this.mCurTransaction;
        if (fragmentTransaction != null) {
            fragmentTransaction.commitAllowingStateLoss();
            this.mCurTransaction = null;
            this.mFragmentManager.executePendingTransactions();
        }
    }

    @Override // android.support.v4.view.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // android.support.v4.view.PagerAdapter
    public Parcelable saveState() {
        Bundle bundle = null;
        for (int i = 0; i < this.mFragments.size(); i++) {
            Fragment fragment = this.mFragments.get(i);
            if (fragment != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                this.mFragmentManager.putFragment(bundle, "f" + i, fragment);
            }
        }
        return bundle;
    }

    public FragmentManager getFragmentManager() {
        return this.mFragmentManager;
    }

    @Override // android.support.v4.view.PagerAdapter
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) throws NumberFormatException {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int i = Integer.parseInt(str.substring(1));
                    Fragment fragment = this.mFragmentManager.getFragment(bundle, str);
                    if (fragment != null) {
                        while (this.mFragments.size() <= i) {
                            this.mFragments.add(null);
                        }
                        fragment.setMenuVisibility(false);
                        this.mFragments.set(i, fragment);
                    }
                }
            }
        }
    }
}
