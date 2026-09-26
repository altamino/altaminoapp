package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.annotation.CallSuper;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.LifecycleOwner;
import androidx.slidingpanelayout.widget.SlidingPaneLayout;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public abstract class AbstractListDetailFragment extends Fragment {

    @Nullable
    private NavHostFragment _detailPaneNavHostFragment;
    private int graphId;

    @Nullable
    private OnBackPressedCallback onBackPressedCallback;

    private static final class InnerOnBackPressedCallback extends OnBackPressedCallback implements SlidingPaneLayout.PanelSlideListener {

        @NotNull
        private final SlidingPaneLayout slidingPaneLayout;

        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.PanelSlideListener
        public void c(@NotNull View panel, float f) {
            t.j(panel, "panel");
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void e() {
            this.slidingPaneLayout.b();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InnerOnBackPressedCallback(@NotNull SlidingPaneLayout slidingPaneLayout) {
            super(true);
            t.j(slidingPaneLayout, "slidingPaneLayout");
            this.slidingPaneLayout = slidingPaneLayout;
            slidingPaneLayout.a(this);
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

    @NotNull
    public abstract View i(@NotNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle);

    public void j(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
    }

    @NotNull
    public NavHostFragment h() {
        int i10 = this.graphId;
        return i10 != 0 ? NavHostFragment.Companion.b(NavHostFragment.Companion, i10, null, 2, null) : new NavHostFragment();
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    @NotNull
    public final View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        NavHostFragment navHostFragmentH;
        t.j(inflater, "inflater");
        if (bundle != null) {
            this.graphId = bundle.getInt(NavHostFragment.KEY_GRAPH_ID);
        }
        final SlidingPaneLayout slidingPaneLayout = new SlidingPaneLayout(inflater.getContext());
        slidingPaneLayout.setId(R.id.sliding_pane_layout);
        View viewI = i(inflater, slidingPaneLayout, bundle);
        if (!t.e(viewI, slidingPaneLayout) && !t.e(viewI.getParent(), slidingPaneLayout)) {
            slidingPaneLayout.addView(viewI);
        }
        Context context = inflater.getContext();
        t.i(context, "inflater.context");
        FragmentContainerView fragmentContainerView = new FragmentContainerView(context);
        int i10 = R.id.sliding_pane_detail_container;
        fragmentContainerView.setId(i10);
        SlidingPaneLayout.LayoutParams layoutParams = new SlidingPaneLayout.LayoutParams(inflater.getContext().getResources().getDimensionPixelSize(R.dimen.sliding_pane_detail_pane_width), -1);
        layoutParams.weight = 1.0f;
        slidingPaneLayout.addView(fragmentContainerView, layoutParams);
        Fragment fragmentL0 = getChildFragmentManager().l0(i10);
        if (fragmentL0 != null) {
            navHostFragmentH = (NavHostFragment) fragmentL0;
        } else {
            navHostFragmentH = h();
            FragmentManager childFragmentManager = getChildFragmentManager();
            t.i(childFragmentManager, "childFragmentManager");
            FragmentTransaction fragmentTransactionQ = childFragmentManager.q();
            t.i(fragmentTransactionQ, "beginTransaction()");
            fragmentTransactionQ.C(true);
            fragmentTransactionQ.b(i10, navHostFragmentH);
            fragmentTransactionQ.j();
        }
        this._detailPaneNavHostFragment = navHostFragmentH;
        this.onBackPressedCallback = new InnerOnBackPressedCallback(slidingPaneLayout);
        if (!ViewCompat.X(slidingPaneLayout) || slidingPaneLayout.isLayoutRequested()) {
            slidingPaneLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.navigation.fragment.AbstractListDetailFragment$onCreateView$$inlined$doOnLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(@NotNull View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
                    boolean z6;
                    t.k(view, "view");
                    view.removeOnLayoutChangeListener(this);
                    OnBackPressedCallback onBackPressedCallback = this.this$0.onBackPressedCallback;
                    t.g(onBackPressedCallback);
                    if (slidingPaneLayout.n() && slidingPaneLayout.m()) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    onBackPressedCallback.i(z6);
                }
            });
        } else {
            OnBackPressedCallback onBackPressedCallback = this.onBackPressedCallback;
            t.g(onBackPressedCallback);
            onBackPressedCallback.i(slidingPaneLayout.n() && slidingPaneLayout.m());
        }
        OnBackPressedDispatcher onBackPressedDispatcher = requireActivity().getOnBackPressedDispatcher();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        OnBackPressedCallback onBackPressedCallback2 = this.onBackPressedCallback;
        t.g(onBackPressedCallback2);
        onBackPressedDispatcher.b(viewLifecycleOwner, onBackPressedCallback2);
        return slidingPaneLayout;
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onInflate(@NotNull Context context, @NotNull AttributeSet attrs, @Nullable Bundle bundle) {
        t.j(context, "context");
        t.j(attrs, "attrs");
        super.onInflate(context, attrs, bundle);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, androidx.navigation.R.styleable.NavHost);
        t.i(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…yleable.NavHost\n        )");
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.R.styleable.NavHost_navGraph, 0);
        if (resourceId != 0) {
            this.graphId = resourceId;
        }
        l0 l0Var = l0.INSTANCE;
        typedArrayObtainStyledAttributes.recycle();
    }

    @NotNull
    public final SlidingPaneLayout g() {
        return (SlidingPaneLayout) requireView();
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onSaveInstanceState(@NotNull Bundle outState) {
        t.j(outState, "outState");
        super.onSaveInstanceState(outState);
        int i10 = this.graphId;
        if (i10 != 0) {
            outState.putInt(NavHostFragment.KEY_GRAPH_ID, i10);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public final void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        View listPaneView = g().getChildAt(0);
        t.i(listPaneView, "listPaneView");
        j(listPaneView, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onViewStateRestored(@Nullable Bundle bundle) {
        boolean z6;
        super.onViewStateRestored(bundle);
        OnBackPressedCallback onBackPressedCallback = this.onBackPressedCallback;
        t.g(onBackPressedCallback);
        if (g().n() && g().m()) {
            z6 = true;
        } else {
            z6 = false;
        }
        onBackPressedCallback.i(z6);
    }
}
