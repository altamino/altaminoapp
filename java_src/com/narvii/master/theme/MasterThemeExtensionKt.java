package com.narvii.master.theme;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MasterThemeExtension.kt */
/* loaded from: classes3.dex */
public final class MasterThemeExtensionKt {
    public static final MasterThemeFragment addMasterThemeFragment(FragmentManager addMasterThemeFragment) {
        NVFragment nVFragment;
        Intrinsics.checkParameterIsNotNull(addMasterThemeFragment, "$this$addMasterThemeFragment");
        Fragment fragmentFindFragmentByTag = addMasterThemeFragment.findFragmentByTag("theme");
        if (fragmentFindFragmentByTag == null || !(fragmentFindFragmentByTag instanceof MasterThemeFragment)) {
            Fragment fragment = (Fragment) MasterThemeFragment.class.newInstance();
            FragmentTransaction fragmentTransactionBeginTransaction = addMasterThemeFragment.beginTransaction();
            fragmentTransactionBeginTransaction.add(R.id.master_background, fragment, "theme");
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
            nVFragment = (NVFragment) fragment;
        } else {
            nVFragment = (NVFragment) fragmentFindFragmentByTag;
        }
        return (MasterThemeFragment) nVFragment;
    }
}
