package com.narvii.app;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.narvii.lib.R;

/* loaded from: classes2.dex */
public abstract class NVTabFragment extends NVFragment {
    private static final int MAX_TABS = 8;
    private boolean created;
    private int currentIndex;
    private Fragment fragment;
    private RadioGroup tabGroup;
    protected boolean updating;
    private Fragment[] tabFragments = new Fragment[8];
    private RadioGroup.OnCheckedChangeListener switchListener = new RadioGroup.OnCheckedChangeListener() { // from class: com.narvii.app.NVTabFragment.1
        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i) throws IllegalAccessException, IllegalArgumentException {
            NVTabFragment nVTabFragment = NVTabFragment.this;
            if (nVTabFragment.updating) {
                return;
            }
            nVTabFragment.setTabIndex(i);
        }
    };

    protected abstract Fragment createTabFragment(int i);

    protected abstract CharSequence getTabLabel(int i);

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.tab_fragment_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.tabGroup = (RadioGroup) view.findViewById(R.id.tab_fragment_group);
        this.tabGroup.setOnCheckedChangeListener(this.switchListener);
        if (bundle != null) {
            this.currentIndex = bundle.getInt("tabIndex");
            FragmentManager childFragmentManager = getChildFragmentManager();
            FragmentTransaction fragmentTransactionBeginTransaction = childFragmentManager.beginTransaction();
            for (int i = 0; i < 8; i++) {
                Fragment fragmentFindFragmentByTag = childFragmentManager.findFragmentByTag("fragment" + i);
                if (fragmentFindFragmentByTag != null) {
                    this.tabFragments[i] = fragmentFindFragmentByTag;
                    if (i == this.currentIndex) {
                        fragmentTransactionBeginTransaction.show(fragmentFindFragmentByTag);
                        this.fragment = fragmentFindFragmentByTag;
                    } else {
                        fragmentTransactionBeginTransaction.hide(fragmentFindFragmentByTag);
                    }
                }
            }
            fragmentTransactionBeginTransaction.commit();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        update();
        this.created = true;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("tabIndex", this.currentIndex);
    }

    public Fragment getTabFragment(int i, boolean z) {
        Fragment fragment = this.tabFragments[i];
        if (fragment != null || !z) {
            return fragment;
        }
        Fragment fragmentCreateTabFragment = createTabFragment(i);
        this.tabFragments[i] = fragmentCreateTabFragment;
        return fragmentCreateTabFragment;
    }

    public int getTabIndex() {
        return this.currentIndex;
    }

    public void setTabIndex(int i) throws IllegalAccessException, IllegalArgumentException {
        this.currentIndex = i;
        if (this.created) {
            update();
        }
    }

    public Fragment getCurrentFragment() {
        return this.fragment;
    }

    protected int itemLayoutId() {
        return R.layout.tab_fragment_button;
    }

    protected void update() throws IllegalAccessException, IllegalArgumentException {
        this.updating = true;
        if (this.tabGroup.getVisibility() == 0) {
            LayoutInflater layoutInflater = null;
            while (this.tabGroup.getChildCount() < 8) {
                if (layoutInflater == null) {
                    layoutInflater = getLayoutInflater(null);
                }
                RadioButton radioButton = (RadioButton) layoutInflater.inflate(itemLayoutId(), (ViewGroup) this.tabGroup, false);
                radioButton.setId(this.tabGroup.getChildCount());
                this.tabGroup.addView(radioButton);
            }
            for (int i = 0; i < 8; i++) {
                CharSequence tabLabel = getTabLabel(i);
                RadioButton radioButton2 = (RadioButton) this.tabGroup.getChildAt(i);
                if (tabLabel != null) {
                    if (!tabLabel.equals(radioButton2.getText().toString())) {
                        radioButton2.setText(tabLabel);
                    }
                    radioButton2.setVisibility(0);
                } else {
                    radioButton2.setVisibility(8);
                }
            }
            this.tabGroup.check(this.currentIndex);
        }
        Fragment tabFragment = getTabFragment(this.currentIndex, true);
        if (this.fragment != tabFragment) {
            FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
            Fragment fragment = this.fragment;
            if (fragment != null) {
                fragmentTransactionBeginTransaction.hide(fragment);
            }
            this.fragment = tabFragment;
            if (tabFragment != null) {
                if (getChildFragmentManager().findFragmentByTag("fragment" + this.currentIndex) == null) {
                    fragmentTransactionBeginTransaction.add(R.id.tab_fragment_container, tabFragment, "fragment" + this.currentIndex);
                } else {
                    fragmentTransactionBeginTransaction.show(tabFragment);
                }
            }
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        }
        this.updating = false;
    }

    @Override // com.narvii.app.NVFragment
    public void smoothScrollToTop() {
        Fragment fragment = this.fragment;
        if (fragment instanceof NVFragment) {
            ((NVFragment) fragment).smoothScrollToTop();
        } else {
            super.smoothScrollToTop();
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean canScrollUp() {
        Fragment fragment = this.fragment;
        if (fragment instanceof NVFragment) {
            return ((NVFragment) fragment).canScrollUp();
        }
        return super.canScrollUp();
    }

    public void notifyTabChanged() throws IllegalAccessException, IllegalArgumentException {
        if (this.created) {
            if (getTabLabel(this.currentIndex) == null) {
                int i = this.currentIndex;
                while (true) {
                    i--;
                    if (i < 0) {
                        i = -1;
                        break;
                    } else if (getTabLabel(i) != null) {
                        break;
                    }
                }
                if (i == -1) {
                    int i2 = this.currentIndex;
                    while (true) {
                        i2++;
                        if (i2 >= 8) {
                            break;
                        } else if (getTabLabel(i2) != null) {
                            i = i2;
                            break;
                        }
                    }
                }
                if (i != -1) {
                    this.currentIndex = i;
                }
            }
            update();
        }
    }
}
