package androidx.preference;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.annotation.CallSuper;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentFactory;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.LifecycleOwner;
import androidx.slidingpanelayout.widget.SlidingPaneLayout;
import com.safedk.android.utils.Logger;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PreferenceHeaderFragmentCompat extends Fragment implements PreferenceFragmentCompat.OnPreferenceStartFragmentCallback {

    @Nullable
    private OnBackPressedCallback onBackPressedCallback;

    private static final class InnerOnBackPressedCallback extends OnBackPressedCallback implements SlidingPaneLayout.PanelSlideListener {

        @NotNull
        private final PreferenceHeaderFragmentCompat caller;

        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.PanelSlideListener
        public void c(@NotNull View panel, float f) {
            t.j(panel, "panel");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InnerOnBackPressedCallback(@NotNull PreferenceHeaderFragmentCompat caller) {
            super(true);
            t.j(caller, "caller");
            this.caller = caller;
            caller.i().a(this);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void e() {
            this.caller.i().b();
        }

        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.PanelSlideListener
        public void a(@NotNull View panel) {
            t.j(panel, "panel");
            i(true);
        }

        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.PanelSlideListener
        public void b(@NotNull View panel) {
            t.j(panel, "panel");
            i(false);
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @NotNull
    public abstract PreferenceFragmentCompat k();

    private final SlidingPaneLayout h(LayoutInflater layoutInflater) {
        SlidingPaneLayout slidingPaneLayout = new SlidingPaneLayout(layoutInflater.getContext());
        slidingPaneLayout.setId(R.id.preferences_sliding_pane_layout);
        FragmentContainerView fragmentContainerView = new FragmentContainerView(layoutInflater.getContext());
        fragmentContainerView.setId(R.id.preferences_header);
        SlidingPaneLayout.LayoutParams layoutParams = new SlidingPaneLayout.LayoutParams(getResources().getDimensionPixelSize(R.dimen.preferences_header_width), -1);
        layoutParams.weight = getResources().getInteger(R.integer.preferences_header_pane_weight);
        slidingPaneLayout.addView(fragmentContainerView, layoutParams);
        FragmentContainerView fragmentContainerView2 = new FragmentContainerView(layoutInflater.getContext());
        fragmentContainerView2.setId(R.id.preferences_detail);
        SlidingPaneLayout.LayoutParams layoutParams2 = new SlidingPaneLayout.LayoutParams(getResources().getDimensionPixelSize(R.dimen.preferences_detail_width), -1);
        layoutParams2.weight = getResources().getInteger(R.integer.preferences_detail_pane_weight);
        slidingPaneLayout.addView(fragmentContainerView2, layoutParams2);
        return slidingPaneLayout;
    }

    private final void m(Intent intent) {
        if (intent == null) {
            return;
        }
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    @Override // androidx.preference.PreferenceFragmentCompat.OnPreferenceStartFragmentCallback
    @CallSuper
    public boolean b(@NotNull PreferenceFragmentCompat caller, @NotNull Preference pref) {
        t.j(caller, "caller");
        t.j(pref, "pref");
        if (caller.getId() == R.id.preferences_header) {
            n(pref);
            return true;
        }
        int id = caller.getId();
        int i10 = R.id.preferences_detail;
        if (id != i10) {
            return false;
        }
        FragmentFactory fragmentFactoryZ0 = getChildFragmentManager().z0();
        ClassLoader classLoader = requireContext().getClassLoader();
        String strL = pref.l();
        t.g(strL);
        Fragment fragmentA = fragmentFactoryZ0.a(classLoader, strL);
        t.i(fragmentA, "childFragmentManager.fra….fragment!!\n            )");
        fragmentA.setArguments(pref.j());
        FragmentManager childFragmentManager = getChildFragmentManager();
        t.i(childFragmentManager, "childFragmentManager");
        FragmentTransaction fragmentTransactionQ = childFragmentManager.q();
        t.i(fragmentTransactionQ, "beginTransaction()");
        fragmentTransactionQ.C(true);
        fragmentTransactionQ.u(i10, fragmentA);
        fragmentTransactionQ.D(FragmentTransaction.TRANSIT_FRAGMENT_FADE);
        fragmentTransactionQ.h(null);
        fragmentTransactionQ.j();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onAttach(@NotNull Context context) {
        t.j(context, "context");
        super.onAttach(context);
        FragmentManager parentFragmentManager = getParentFragmentManager();
        t.i(parentFragmentManager, "parentFragmentManager");
        FragmentTransaction fragmentTransactionQ = parentFragmentManager.q();
        t.i(fragmentTransactionQ, "beginTransaction()");
        fragmentTransactionQ.B(this);
        fragmentTransactionQ.j();
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        SlidingPaneLayout slidingPaneLayoutH = h(inflater);
        FragmentManager childFragmentManager = getChildFragmentManager();
        int i10 = R.id.preferences_header;
        if (childFragmentManager.l0(i10) == null) {
            PreferenceFragmentCompat preferenceFragmentCompatK = k();
            FragmentManager childFragmentManager2 = getChildFragmentManager();
            t.i(childFragmentManager2, "childFragmentManager");
            FragmentTransaction fragmentTransactionQ = childFragmentManager2.q();
            t.i(fragmentTransactionQ, "beginTransaction()");
            fragmentTransactionQ.C(true);
            fragmentTransactionQ.b(i10, preferenceFragmentCompatK);
            fragmentTransactionQ.j();
        }
        slidingPaneLayoutH.setLockMode(3);
        return slidingPaneLayoutH;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(PreferenceHeaderFragmentCompat this$0) {
        boolean z6;
        t.j(this$0, "this$0");
        OnBackPressedCallback onBackPressedCallback = this$0.onBackPressedCallback;
        t.g(onBackPressedCallback);
        if (this$0.getChildFragmentManager().u0() == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        onBackPressedCallback.i(z6);
    }

    private final void n(Preference preference) {
        Fragment fragmentA;
        if (preference.l() == null) {
            m(preference.p());
            return;
        }
        String strL = preference.l();
        if (strL == null) {
            fragmentA = null;
        } else {
            fragmentA = getChildFragmentManager().z0().a(requireContext().getClassLoader(), strL);
        }
        if (fragmentA != null) {
            fragmentA.setArguments(preference.j());
        }
        if (getChildFragmentManager().u0() > 0) {
            FragmentManager.BackStackEntry backStackEntryT0 = getChildFragmentManager().t0(0);
            t.i(backStackEntryT0, "childFragmentManager.getBackStackEntryAt(0)");
            getChildFragmentManager().j1(backStackEntryT0.getId(), 1);
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        t.i(childFragmentManager, "childFragmentManager");
        FragmentTransaction fragmentTransactionQ = childFragmentManager.q();
        t.i(fragmentTransactionQ, "beginTransaction()");
        fragmentTransactionQ.C(true);
        int i10 = R.id.preferences_detail;
        t.g(fragmentA);
        fragmentTransactionQ.u(i10, fragmentA);
        if (i().m()) {
            fragmentTransactionQ.D(FragmentTransaction.TRANSIT_FRAGMENT_FADE);
        }
        i().q();
        fragmentTransactionQ.j();
    }

    @NotNull
    public final SlidingPaneLayout i() {
        return (SlidingPaneLayout) requireView();
    }

    @Nullable
    public Fragment j() {
        Fragment fragmentL0 = getChildFragmentManager().l0(R.id.preferences_header);
        if (fragmentL0 != null) {
            PreferenceFragmentCompat preferenceFragmentCompat = (PreferenceFragmentCompat) fragmentL0;
            if (preferenceFragmentCompat.i().C0() <= 0) {
                return null;
            }
            int iC0 = preferenceFragmentCompat.i().C0();
            int i10 = 0;
            while (i10 < iC0) {
                int i11 = i10 + 1;
                Preference preferenceB0 = preferenceFragmentCompat.i().B0(i10);
                t.i(preferenceB0, "headerFragment.preferenc…reen.getPreference(index)");
                if (preferenceB0.l() == null) {
                    i10 = i11;
                } else {
                    String strL = preferenceB0.l();
                    if (strL == null) {
                        return null;
                    }
                    return getChildFragmentManager().z0().a(requireContext().getClassLoader(), strL);
                }
            }
            return null;
        }
        throw new NullPointerException("null cannot be cast to non-null type androidx.preference.PreferenceFragmentCompat");
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        OnBackPressedDispatcherOwner onBackPressedDispatcherOwner;
        boolean z6;
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        this.onBackPressedCallback = new InnerOnBackPressedCallback(this);
        SlidingPaneLayout slidingPaneLayoutI = i();
        if (ViewCompat.X(slidingPaneLayoutI) && !slidingPaneLayoutI.isLayoutRequested()) {
            OnBackPressedCallback onBackPressedCallback = this.onBackPressedCallback;
            t.g(onBackPressedCallback);
            if (i().n() && i().m()) {
                z6 = true;
            } else {
                z6 = false;
            }
            onBackPressedCallback.i(z6);
        } else {
            slidingPaneLayoutI.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.preference.PreferenceHeaderFragmentCompat$onViewCreated$$inlined$doOnLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(@NotNull View view2, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                    boolean z10;
                    t.k(view2, "view");
                    view2.removeOnLayoutChangeListener(this);
                    OnBackPressedCallback onBackPressedCallback2 = this.this$0.onBackPressedCallback;
                    t.g(onBackPressedCallback2);
                    if (this.this$0.i().n() && this.this$0.i().m()) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    onBackPressedCallback2.i(z10);
                }
            });
        }
        getChildFragmentManager().l(new FragmentManager.OnBackStackChangedListener() { // from class: androidx.preference.b
            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public final void a() {
                PreferenceHeaderFragmentCompat.l(this.f751a);
            }
        });
        Object objRequireContext = requireContext();
        if (objRequireContext instanceof OnBackPressedDispatcherOwner) {
            onBackPressedDispatcherOwner = (OnBackPressedDispatcherOwner) objRequireContext;
        } else {
            onBackPressedDispatcherOwner = null;
        }
        if (onBackPressedDispatcherOwner != null) {
            OnBackPressedDispatcher onBackPressedDispatcher = onBackPressedDispatcherOwner.getOnBackPressedDispatcher();
            LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
            OnBackPressedCallback onBackPressedCallback2 = this.onBackPressedCallback;
            t.g(onBackPressedCallback2);
            onBackPressedDispatcher.b(viewLifecycleOwner, onBackPressedCallback2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewStateRestored(@Nullable Bundle bundle) {
        Fragment fragmentJ;
        super.onViewStateRestored(bundle);
        if (bundle == null && (fragmentJ = j()) != null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            t.i(childFragmentManager, "childFragmentManager");
            FragmentTransaction fragmentTransactionQ = childFragmentManager.q();
            t.i(fragmentTransactionQ, "beginTransaction()");
            fragmentTransactionQ.C(true);
            fragmentTransactionQ.u(R.id.preferences_detail, fragmentJ);
            fragmentTransactionQ.j();
        }
    }
}
