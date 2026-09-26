package com.narvii.app;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes5.dex */
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
        public void onCheckedChanged(RadioGroup radioGroup, int i10) {
            NVTabFragment nVTabFragment = NVTabFragment.this;
            if (nVTabFragment.updating) {
                return;
            }
            nVTabFragment.setTabIndex(i10);
        }
    };

    protected abstract Fragment createTabFragment(int i10);

    public Fragment getCurrentFragment() {
        return this.fragment;
    }

    public int getTabIndex() {
        return this.currentIndex;
    }

    protected abstract CharSequence getTabLabel(int i10);

    protected int itemLayoutId() {
        return R.layout.tab_fragment_button;
    }

    protected void update() {
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
            for (int i10 = 0; i10 < 8; i10++) {
                CharSequence tabLabel = getTabLabel(i10);
                RadioButton radioButton2 = (RadioButton) this.tabGroup.getChildAt(i10);
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
            FragmentTransaction fragmentTransactionQ = getChildFragmentManager().q();
            Fragment fragment = this.fragment;
            if (fragment != null) {
                fragmentTransactionQ.r(fragment);
            }
            this.fragment = tabFragment;
            if (tabFragment != null) {
                if (getChildFragmentManager().m0("fragment" + this.currentIndex) == null) {
                    fragmentTransactionQ.c(R.id.tab_fragment_container, tabFragment, "fragment" + this.currentIndex);
                } else {
                    fragmentTransactionQ.E(tabFragment);
                }
            }
            fragmentTransactionQ.k();
        }
        this.updating = false;
    }

    @Override // com.narvii.app.NVFragment
    public boolean canScrollUp() {
        Fragment fragment = this.fragment;
        return fragment instanceof NVFragment ? ((NVFragment) fragment).canScrollUp() : super.canScrollUp();
    }

    public Fragment getTabFragment(int i10, boolean z6) {
        Fragment fragment = this.tabFragments[i10];
        if (fragment != null || !z6) {
            return fragment;
        }
        Fragment fragmentCreateTabFragment = createTabFragment(i10);
        this.tabFragments[i10] = fragmentCreateTabFragment;
        return fragmentCreateTabFragment;
    }

    public void notifyTabChanged() {
        if (this.created) {
            if (getTabLabel(this.currentIndex) == null) {
                int i10 = this.currentIndex;
                do {
                    i10--;
                    if (i10 < 0) {
                        i10 = -1;
                        break;
                    }
                } while (getTabLabel(i10) == null);
                if (i10 == -1) {
                    int i11 = this.currentIndex;
                    while (true) {
                        i11++;
                        if (i11 >= 8) {
                            break;
                        } else if (getTabLabel(i11) != null) {
                            i10 = i11;
                            break;
                        }
                    }
                }
                if (i10 != -1) {
                    this.currentIndex = i10;
                }
            }
            update();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.tab_fragment_layout, viewGroup, false);
    }

    public void setTabIndex(int i10) {
        this.currentIndex = i10;
        if (this.created) {
            update();
        }
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

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        update();
        this.created = true;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("tabIndex", this.currentIndex);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        RadioGroup radioGroup = (RadioGroup) view.findViewById(R.id.tab_fragment_group);
        this.tabGroup = radioGroup;
        radioGroup.setOnCheckedChangeListener(this.switchListener);
        if (bundle != null) {
            this.currentIndex = bundle.getInt("tabIndex");
            FragmentManager childFragmentManager = getChildFragmentManager();
            FragmentTransaction fragmentTransactionQ = childFragmentManager.q();
            for (int i10 = 0; i10 < 8; i10++) {
                Fragment fragmentM0 = childFragmentManager.m0("fragment" + i10);
                if (fragmentM0 != null) {
                    this.tabFragments[i10] = fragmentM0;
                    if (i10 == this.currentIndex) {
                        fragmentTransactionQ.E(fragmentM0);
                        this.fragment = fragmentM0;
                    } else {
                        fragmentTransactionQ.r(fragmentM0);
                    }
                }
            }
            fragmentTransactionQ.j();
        }
    }
}
