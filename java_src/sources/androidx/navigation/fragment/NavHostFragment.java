package androidx.navigation.fragment;

import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.annotation.CallSuper;
import androidx.annotation.NavigationRes;
import androidx.annotation.RestrictTo;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.ViewModelStore;
import androidx.navigation.NavController;
import androidx.navigation.NavHost;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigation;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public class NavHostFragment extends Fragment implements NavHost {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final String KEY_DEFAULT_NAV_HOST = "android-support-nav:fragment:defaultHost";

    @RestrictTo
    @NotNull
    public static final String KEY_GRAPH_ID = "android-support-nav:fragment:graphId";

    @NotNull
    private static final String KEY_NAV_CONTROLLER_STATE = "android-support-nav:fragment:navControllerState";

    @RestrictTo
    @NotNull
    public static final String KEY_START_DESTINATION_ARGS = "android-support-nav:fragment:startDestinationArgs";
    private boolean defaultNavHost;
    private int graphId;

    @Nullable
    private Boolean isPrimaryBeforeOnCreate;

    @Nullable
    private NavHostController navHostController;

    @Nullable
    private View viewParent;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ NavHostFragment b(Companion companion, int i10, Bundle bundle, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                bundle = null;
            }
            return companion.a(i10, bundle);
        }

        @NotNull
        public final NavHostFragment a(@NavigationRes int i10, @Nullable Bundle bundle) {
            Bundle bundle2;
            if (i10 != 0) {
                bundle2 = new Bundle();
                bundle2.putInt(NavHostFragment.KEY_GRAPH_ID, i10);
            } else {
                bundle2 = null;
            }
            if (bundle != null) {
                if (bundle2 == null) {
                    bundle2 = new Bundle();
                }
                bundle2.putBundle(NavHostFragment.KEY_START_DESTINATION_ARGS, bundle);
            }
            NavHostFragment navHostFragment = new NavHostFragment();
            if (bundle2 != null) {
                navHostFragment.setArguments(bundle2);
            }
            return navHostFragment;
        }

        @NotNull
        public final NavController c(@NotNull Fragment fragment) {
            Dialog dialog;
            Window window;
            t.j(fragment, "fragment");
            for (Fragment parentFragment = fragment; parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
                if (parentFragment instanceof NavHostFragment) {
                    NavHostController navHostController = ((NavHostFragment) parentFragment).navHostController;
                    if (navHostController != null) {
                        return navHostController;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type androidx.navigation.NavController");
                }
                Fragment fragmentG0 = parentFragment.getParentFragmentManager().G0();
                if (fragmentG0 instanceof NavHostFragment) {
                    NavHostController navHostController2 = ((NavHostFragment) fragmentG0).navHostController;
                    if (navHostController2 != null) {
                        return navHostController2;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type androidx.navigation.NavController");
                }
            }
            View view = fragment.getView();
            if (view != null) {
                return Navigation.b(view);
            }
            View decorView = null;
            DialogFragment dialogFragment = fragment instanceof DialogFragment ? (DialogFragment) fragment : null;
            if (dialogFragment != null && (dialog = dialogFragment.getDialog()) != null && (window = dialog.getWindow()) != null) {
                decorView = window.getDecorView();
            }
            if (decorView != null) {
                return Navigation.b(decorView);
            }
            throw new IllegalStateException("Fragment " + fragment + " does not have a NavController set");
        }
    }

    @NotNull
    protected Navigator<? extends FragmentNavigator.Destination> g() {
        Context contextRequireContext = requireContext();
        t.i(contextRequireContext, "requireContext()");
        FragmentManager childFragmentManager = getChildFragmentManager();
        t.i(childFragmentManager, "childFragmentManager");
        return new FragmentNavigator(contextRequireContext, childFragmentManager, h());
    }

    @CallSuper
    protected void i(@NotNull NavController navController) {
        t.j(navController, "navController");
        NavigatorProvider navigatorProviderF = navController.F();
        Context contextRequireContext = requireContext();
        t.i(contextRequireContext, "requireContext()");
        FragmentManager childFragmentManager = getChildFragmentManager();
        t.i(childFragmentManager, "childFragmentManager");
        navigatorProviderF.b(new DialogFragmentNavigator(contextRequireContext, childFragmentManager));
        navController.F().b(g());
    }

    @CallSuper
    protected void j(@NotNull NavHostController navHostController) {
        t.j(navHostController, "navHostController");
        i(navHostController);
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onAttach(@NotNull Context context) {
        t.j(context, "context");
        super.onAttach(context);
        if (this.defaultNavHost) {
            getParentFragmentManager().q().B(this).j();
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        Context context = inflater.getContext();
        t.i(context, "inflater.context");
        FragmentContainerView fragmentContainerView = new FragmentContainerView(context);
        fragmentContainerView.setId(h());
        return fragmentContainerView;
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
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attrs, R.styleable.NavHostFragment);
        t.i(typedArrayObtainStyledAttributes2, "context.obtainStyledAttr…tyleable.NavHostFragment)");
        if (typedArrayObtainStyledAttributes2.getBoolean(R.styleable.NavHostFragment_defaultNavHost, false)) {
            this.defaultNavHost = true;
        }
        typedArrayObtainStyledAttributes2.recycle();
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onPrimaryNavigationFragmentChanged(boolean z6) {
        NavHostController navHostController = this.navHostController;
        if (navHostController == null) {
            this.isPrimaryBeforeOnCreate = Boolean.valueOf(z6);
        } else if (navHostController != null) {
            navHostController.r(z6);
        }
    }

    private final int h() {
        int id = getId();
        if (id == 0 || id == -1) {
            return R.id.nav_host_fragment_container;
        }
        return id;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x005d  */
    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onCreate(@Nullable Bundle bundle) {
        boolean z6;
        Bundle bundle2;
        Context contextRequireContext = requireContext();
        t.i(contextRequireContext, "requireContext()");
        NavHostController navHostController = new NavHostController(contextRequireContext);
        this.navHostController = navHostController;
        t.g(navHostController);
        navHostController.e0(this);
        Object obj = contextRequireContext;
        while (obj instanceof ContextWrapper) {
            if (obj instanceof OnBackPressedDispatcherOwner) {
                NavHostController navHostController2 = this.navHostController;
                t.g(navHostController2);
                OnBackPressedDispatcher onBackPressedDispatcher = ((OnBackPressedDispatcherOwner) obj).getOnBackPressedDispatcher();
                t.i(onBackPressedDispatcher, "context as OnBackPressed…).onBackPressedDispatcher");
                navHostController2.f0(onBackPressedDispatcher);
                break;
            }
            Context baseContext = ((ContextWrapper) obj).getBaseContext();
            t.i(baseContext, "context.baseContext");
            obj = baseContext;
        }
        NavHostController navHostController3 = this.navHostController;
        t.g(navHostController3);
        Boolean bool = this.isPrimaryBeforeOnCreate;
        int i10 = 0;
        if (bool != null) {
            if (bool != null) {
                if (bool.booleanValue()) {
                    z6 = true;
                } else {
                    z6 = false;
                }
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
            }
        } else {
            z6 = false;
        }
        navHostController3.r(z6);
        Bundle bundle3 = null;
        this.isPrimaryBeforeOnCreate = null;
        NavHostController navHostController4 = this.navHostController;
        t.g(navHostController4);
        ViewModelStore viewModelStore = getViewModelStore();
        t.i(viewModelStore, "viewModelStore");
        navHostController4.g0(viewModelStore);
        NavHostController navHostController5 = this.navHostController;
        t.g(navHostController5);
        j(navHostController5);
        if (bundle != null) {
            bundle2 = bundle.getBundle(KEY_NAV_CONTROLLER_STATE);
            if (bundle.getBoolean(KEY_DEFAULT_NAV_HOST, false)) {
                this.defaultNavHost = true;
                getParentFragmentManager().q().B(this).j();
            }
            this.graphId = bundle.getInt(KEY_GRAPH_ID);
        } else {
            bundle2 = null;
        }
        if (bundle2 != null) {
            NavHostController navHostController6 = this.navHostController;
            t.g(navHostController6);
            navHostController6.Y(bundle2);
        }
        if (this.graphId != 0) {
            NavHostController navHostController7 = this.navHostController;
            t.g(navHostController7);
            navHostController7.b0(this.graphId);
        } else {
            Bundle arguments = getArguments();
            if (arguments != null) {
                i10 = arguments.getInt(KEY_GRAPH_ID);
            }
            if (arguments != null) {
                bundle3 = arguments.getBundle(KEY_START_DESTINATION_ARGS);
            }
            if (i10 != 0) {
                NavHostController navHostController8 = this.navHostController;
                t.g(navHostController8);
                navHostController8.c0(i10, bundle3);
            }
        }
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        View view = this.viewParent;
        if (view != null && Navigation.b(view) == this.navHostController) {
            Navigation.e(view, null);
        }
        this.viewParent = null;
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onSaveInstanceState(@NotNull Bundle outState) {
        t.j(outState, "outState");
        super.onSaveInstanceState(outState);
        NavHostController navHostController = this.navHostController;
        t.g(navHostController);
        Bundle bundleA0 = navHostController.a0();
        if (bundleA0 != null) {
            outState.putBundle(KEY_NAV_CONTROLLER_STATE, bundleA0);
        }
        if (this.defaultNavHost) {
            outState.putBoolean(KEY_DEFAULT_NAV_HOST, true);
        }
        int i10 = this.graphId;
        if (i10 != 0) {
            outState.putInt(KEY_GRAPH_ID, i10);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        if (view instanceof ViewGroup) {
            Navigation.e(view, this.navHostController);
            if (view.getParent() != null) {
                Object parent = view.getParent();
                if (parent != null) {
                    View view2 = (View) parent;
                    this.viewParent = view2;
                    t.g(view2);
                    if (view2.getId() == getId()) {
                        View view3 = this.viewParent;
                        t.g(view3);
                        Navigation.e(view3, this.navHostController);
                        return;
                    }
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type android.view.View");
            }
            return;
        }
        throw new IllegalStateException(("created host view " + view + " is not a ViewGroup").toString());
    }
}
