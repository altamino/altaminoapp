package com.narvii.master.theme;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class MasterThemeExtensionKt {
    @NotNull
    public static final MasterThemeFragment addMasterThemeFragment(@NotNull FragmentManager fragmentManager) {
        NVFragment nVFragment;
        t.j(fragmentManager, "<this>");
        Fragment fragmentM0 = fragmentManager.m0("theme");
        if (fragmentM0 == null || !(fragmentM0 instanceof MasterThemeFragment)) {
            Fragment fragment = (Fragment) MasterThemeFragment.class.newInstance();
            FragmentTransaction fragmentTransactionQ = fragmentManager.q();
            t.i(fragmentTransactionQ, "beginTransaction(...)");
            fragmentTransactionQ.c(R.id.master_background, fragment, "theme");
            fragmentTransactionQ.k();
            t.g(fragment);
            nVFragment = (NVFragment) fragment;
        } else {
            nVFragment = (NVFragment) fragmentM0;
        }
        return (MasterThemeFragment) nVFragment;
    }
}
