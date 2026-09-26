package com.narvii.util;

import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.viewpager.widget.PagerAdapter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
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

    public FragmentManager getFragmentManager() {
        return this.mFragmentManager;
    }

    public abstract Fragment getItem(int i10);

    public String getTag(int i10) {
        return null;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Parcelable saveState() {
        Bundle bundle = null;
        for (int i10 = 0; i10 < this.mFragments.size(); i10++) {
            Fragment fragment = this.mFragments.get(i10);
            if (fragment != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                this.mFragmentManager.q1(bundle, "f" + i10, fragment);
            }
        }
        return bundle;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(ViewGroup viewGroup) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i10, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.mCurTransaction == null) {
            this.mCurTransaction = this.mFragmentManager.q();
        }
        while (this.mSavedState.size() <= i10) {
            this.mSavedState.add(null);
            this.mSavedFragmentTags.add(null);
        }
        if (fragment.isAdded()) {
            boolean z6 = fragment instanceof FragmentSaveInstanceInPagerListener;
            if (z6) {
                ((FragmentSaveInstanceInPagerListener) fragment).onPreSaveInstanceInPager();
            }
            this.mSavedState.set(i10, this.mFragmentManager.D1(fragment));
            if (z6) {
                ((FragmentSaveInstanceInPagerListener) fragment).onPostSaveInstanceInPager();
            }
        } else {
            this.mSavedState.set(i10, null);
        }
        this.mSavedFragmentTags.set(i10, fragment.getTag());
        this.mFragments.set(i10, null);
        this.mCurTransaction.t(fragment);
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
        Fragment.SavedState savedState;
        Fragment fragment;
        if (this.mFragments.size() > i10 && (fragment = this.mFragments.get(i10)) != null) {
            return fragment;
        }
        if (this.mCurTransaction == null) {
            this.mCurTransaction = this.mFragmentManager.q();
        }
        Fragment item = getItem(i10);
        String tag = getTag(i10);
        if (this.mSavedState.size() > i10 && Utils.isEqualsNotNull(tag, this.mSavedFragmentTags.get(i10)) && (savedState = this.mSavedState.get(i10)) != null) {
            item.setInitialSavedState(savedState);
        }
        while (this.mFragments.size() <= i10) {
            this.mFragments.add(null);
        }
        item.setMenuVisibility(false);
        item.setUserVisibleHint(false);
        this.mFragments.set(i10, item);
        this.mCurTransaction.c(viewGroup.getId(), item, tag);
        return item;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int i10 = Integer.parseInt(str.substring(1));
                    Fragment fragmentX0 = this.mFragmentManager.x0(bundle, str);
                    if (fragmentX0 != null) {
                        while (this.mFragments.size() <= i10) {
                            this.mFragments.add(null);
                        }
                        fragmentX0.setMenuVisibility(false);
                        this.mFragments.set(i10, fragmentX0);
                    }
                }
            }
        }
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
                fragment.setMenuVisibility(true);
                fragment.setUserVisibleHint(true);
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

    public FixedFragmentStatePagerAdapter(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }
}
