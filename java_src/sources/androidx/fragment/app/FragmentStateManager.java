package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.os.EnvironmentCompat;
import androidx.core.view.ViewCompat;
import androidx.fragment.R;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelStoreOwner;

/* JADX INFO: loaded from: classes2.dex */
class FragmentStateManager {
    private static final String TAG = "FragmentManager";
    private static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
    private static final String TARGET_STATE_TAG = "android:target_state";
    private static final String USER_VISIBLE_HINT_TAG = "android:user_visible_hint";
    private static final String VIEW_REGISTRY_STATE_TAG = "android:view_registry_state";
    private static final String VIEW_STATE_TAG = "android:view_state";
    private final FragmentLifecycleCallbacksDispatcher mDispatcher;

    @NonNull
    private final Fragment mFragment;
    private final FragmentStore mFragmentStore;
    private boolean mMovingToState = false;
    private int mFragmentManagerState = -1;

    FragmentStateManager(@NonNull FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, @NonNull FragmentStore fragmentStore, @NonNull Fragment fragment) {
        this.mDispatcher = fragmentLifecycleCallbacksDispatcher;
        this.mFragmentStore = fragmentStore;
        this.mFragment = fragment;
    }

    void a() {
        if (FragmentManager.P0(3)) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + this.mFragment);
        }
        Fragment fragment = this.mFragment;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
        Fragment fragment2 = this.mFragment;
        fragmentLifecycleCallbacksDispatcher.a(fragment2, fragment2.mSavedFragmentState, false);
    }

    void c() {
        if (FragmentManager.P0(3)) {
            Log.d("FragmentManager", "moveto ATTACHED: " + this.mFragment);
        }
        Fragment fragment = this.mFragment;
        Fragment fragment2 = fragment.mTarget;
        FragmentStateManager fragmentStateManagerN = null;
        if (fragment2 != null) {
            FragmentStateManager fragmentStateManagerN2 = this.mFragmentStore.n(fragment2.mWho);
            if (fragmentStateManagerN2 == null) {
                throw new IllegalStateException("Fragment " + this.mFragment + " declared target fragment " + this.mFragment.mTarget + " that does not belong to this FragmentManager!");
            }
            Fragment fragment3 = this.mFragment;
            fragment3.mTargetWho = fragment3.mTarget.mWho;
            fragment3.mTarget = null;
            fragmentStateManagerN = fragmentStateManagerN2;
        } else {
            String str = fragment.mTargetWho;
            if (str != null && (fragmentStateManagerN = this.mFragmentStore.n(str)) == null) {
                throw new IllegalStateException("Fragment " + this.mFragment + " declared target fragment " + this.mFragment.mTargetWho + " that does not belong to this FragmentManager!");
            }
        }
        if (fragmentStateManagerN != null) {
            fragmentStateManagerN.m();
        }
        Fragment fragment4 = this.mFragment;
        fragment4.mHost = fragment4.mFragmentManager.C0();
        Fragment fragment5 = this.mFragment;
        fragment5.mParentFragment = fragment5.mFragmentManager.F0();
        this.mDispatcher.g(this.mFragment, false);
        this.mFragment.performAttach();
        this.mDispatcher.b(this.mFragment, false);
    }

    void e() {
        if (FragmentManager.P0(3)) {
            Log.d("FragmentManager", "moveto CREATED: " + this.mFragment);
        }
        Fragment fragment = this.mFragment;
        if (fragment.mIsCreated) {
            fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
            this.mFragment.mState = 1;
            return;
        }
        this.mDispatcher.h(fragment, fragment.mSavedFragmentState, false);
        Fragment fragment2 = this.mFragment;
        fragment2.performCreate(fragment2.mSavedFragmentState);
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
        Fragment fragment3 = this.mFragment;
        fragmentLifecycleCallbacksDispatcher.c(fragment3, fragment3.mSavedFragmentState, false);
    }

    void g() {
        Fragment fragmentF;
        if (FragmentManager.P0(3)) {
            Log.d("FragmentManager", "movefrom CREATED: " + this.mFragment);
        }
        Fragment fragment = this.mFragment;
        boolean zIsChangingConfigurations = true;
        boolean z6 = fragment.mRemoving && !fragment.isInBackStack();
        if (z6) {
            Fragment fragment2 = this.mFragment;
            if (!fragment2.mBeingSaved) {
                this.mFragmentStore.B(fragment2.mWho, null);
            }
        }
        if (!z6 && !this.mFragmentStore.p().n(this.mFragment)) {
            String str = this.mFragment.mTargetWho;
            if (str != null && (fragmentF = this.mFragmentStore.f(str)) != null && fragmentF.mRetainInstance) {
                this.mFragment.mTarget = fragmentF;
            }
            this.mFragment.mState = 0;
            return;
        }
        FragmentHostCallback<?> fragmentHostCallback = this.mFragment.mHost;
        if (fragmentHostCallback instanceof ViewModelStoreOwner) {
            zIsChangingConfigurations = this.mFragmentStore.p().k();
        } else if (fragmentHostCallback.f() instanceof Activity) {
            zIsChangingConfigurations = true ^ ((Activity) fragmentHostCallback.f()).isChangingConfigurations();
        }
        if ((z6 && !this.mFragment.mBeingSaved) || zIsChangingConfigurations) {
            this.mFragmentStore.p().c(this.mFragment);
        }
        this.mFragment.performDestroy();
        this.mDispatcher.d(this.mFragment, false);
        for (FragmentStateManager fragmentStateManager : this.mFragmentStore.k()) {
            if (fragmentStateManager != null) {
                Fragment fragmentK = fragmentStateManager.k();
                if (this.mFragment.mWho.equals(fragmentK.mTargetWho)) {
                    fragmentK.mTarget = this.mFragment;
                    fragmentK.mTargetWho = null;
                }
            }
        }
        Fragment fragment3 = this.mFragment;
        String str2 = fragment3.mTargetWho;
        if (str2 != null) {
            fragment3.mTarget = this.mFragmentStore.f(str2);
        }
        this.mFragmentStore.s(this);
    }

    void h() {
        View view;
        if (FragmentManager.P0(3)) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + this.mFragment);
        }
        Fragment fragment = this.mFragment;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        this.mFragment.performDestroyView();
        this.mDispatcher.n(this.mFragment, false);
        Fragment fragment2 = this.mFragment;
        fragment2.mContainer = null;
        fragment2.mView = null;
        fragment2.mViewLifecycleOwner = null;
        fragment2.mViewLifecycleOwnerLiveData.p(null);
        this.mFragment.mInLayout = false;
    }

    void i() {
        if (FragmentManager.P0(3)) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + this.mFragment);
        }
        this.mFragment.performDetach();
        this.mDispatcher.e(this.mFragment, false);
        Fragment fragment = this.mFragment;
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        if ((!fragment.mRemoving || fragment.isInBackStack()) && !this.mFragmentStore.p().n(this.mFragment)) {
            return;
        }
        if (FragmentManager.P0(3)) {
            Log.d("FragmentManager", "initState called for fragment: " + this.mFragment);
        }
        this.mFragment.initState();
    }

    @NonNull
    Fragment k() {
        return this.mFragment;
    }

    void n() {
        if (FragmentManager.P0(3)) {
            Log.d("FragmentManager", "movefrom RESUMED: " + this.mFragment);
        }
        this.mFragment.performPause();
        this.mDispatcher.f(this.mFragment, false);
    }

    void p() {
        if (FragmentManager.P0(3)) {
            Log.d("FragmentManager", "moveto RESUMED: " + this.mFragment);
        }
        View focusedView = this.mFragment.getFocusedView();
        if (focusedView != null && l(focusedView)) {
            boolean zRequestFocus = focusedView.requestFocus();
            if (FragmentManager.P0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("requestFocus: Restoring focused view ");
                sb.append(focusedView);
                sb.append(" ");
                sb.append(zRequestFocus ? "succeeded" : "failed");
                sb.append(" on Fragment ");
                sb.append(this.mFragment);
                sb.append(" resulting in focused view ");
                sb.append(this.mFragment.mView.findFocus());
                Log.v("FragmentManager", sb.toString());
            }
        }
        this.mFragment.setFocusedView(null);
        this.mFragment.performResume();
        this.mDispatcher.i(this.mFragment, false);
        Fragment fragment = this.mFragment;
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    void u(int i10) {
        this.mFragmentManagerState = i10;
    }

    void v() {
        if (FragmentManager.P0(3)) {
            Log.d("FragmentManager", "moveto STARTED: " + this.mFragment);
        }
        this.mFragment.performStart();
        this.mDispatcher.k(this.mFragment, false);
    }

    void w() {
        if (FragmentManager.P0(3)) {
            Log.d("FragmentManager", "movefrom STARTED: " + this.mFragment);
        }
        this.mFragment.performStop();
        this.mDispatcher.l(this.mFragment, false);
    }

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentStateManager$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$androidx$lifecycle$Lifecycle$State;

        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            $SwitchMap$androidx$lifecycle$Lifecycle$State = iArr;
            try {
                iArr[Lifecycle.State.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    FragmentStateManager(@NonNull FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, @NonNull FragmentStore fragmentStore, @NonNull ClassLoader classLoader, @NonNull FragmentFactory fragmentFactory, @NonNull FragmentState fragmentState) {
        this.mDispatcher = fragmentLifecycleCallbacksDispatcher;
        this.mFragmentStore = fragmentStore;
        Fragment fragmentA = fragmentState.a(fragmentFactory, classLoader);
        this.mFragment = fragmentA;
        if (FragmentManager.P0(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + fragmentA);
        }
    }

    private boolean l(@NonNull View view) {
        if (view == this.mFragment.mView) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this.mFragment.mView) {
                return true;
            }
        }
        return false;
    }

    private Bundle q() {
        Bundle bundle = new Bundle();
        this.mFragment.performSaveInstanceState(bundle);
        this.mDispatcher.j(this.mFragment, bundle, false);
        if (bundle.isEmpty()) {
            bundle = null;
        }
        if (this.mFragment.mView != null) {
            t();
        }
        if (this.mFragment.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray(VIEW_STATE_TAG, this.mFragment.mSavedViewState);
        }
        if (this.mFragment.mSavedViewRegistryState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBundle(VIEW_REGISTRY_STATE_TAG, this.mFragment.mSavedViewRegistryState);
        }
        if (!this.mFragment.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(USER_VISIBLE_HINT_TAG, this.mFragment.mUserVisibleHint);
        }
        return bundle;
    }

    void b() {
        int iJ = this.mFragmentStore.j(this.mFragment);
        Fragment fragment = this.mFragment;
        fragment.mContainer.addView(fragment.mView, iJ);
    }

    int d() {
        Fragment fragment = this.mFragment;
        if (fragment.mFragmentManager == null) {
            return fragment.mState;
        }
        int iMin = this.mFragmentManagerState;
        int i10 = AnonymousClass2.$SwitchMap$androidx$lifecycle$Lifecycle$State[fragment.mMaxState.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                iMin = Math.min(iMin, 5);
            } else if (i10 != 3) {
                iMin = i10 != 4 ? Math.min(iMin, -1) : Math.min(iMin, 0);
            } else {
                iMin = Math.min(iMin, 1);
            }
        }
        Fragment fragment2 = this.mFragment;
        if (fragment2.mFromLayout) {
            if (fragment2.mInLayout) {
                iMin = Math.max(this.mFragmentManagerState, 2);
                View view = this.mFragment.mView;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.mFragmentManagerState < 4 ? Math.min(iMin, fragment2.mState) : Math.min(iMin, 1);
            }
        }
        if (!this.mFragment.mAdded) {
            iMin = Math.min(iMin, 1);
        }
        Fragment fragment3 = this.mFragment;
        ViewGroup viewGroup = fragment3.mContainer;
        SpecialEffectsController.Operation.LifecycleImpact lifecycleImpactL = viewGroup != null ? SpecialEffectsController.n(viewGroup, fragment3.getParentFragmentManager()).l(this) : null;
        if (lifecycleImpactL == SpecialEffectsController.Operation.LifecycleImpact.ADDING) {
            iMin = Math.min(iMin, 6);
        } else if (lifecycleImpactL == SpecialEffectsController.Operation.LifecycleImpact.REMOVING) {
            iMin = Math.max(iMin, 3);
        } else {
            Fragment fragment4 = this.mFragment;
            if (fragment4.mRemoving) {
                iMin = fragment4.isInBackStack() ? Math.min(iMin, 1) : Math.min(iMin, -1);
            }
        }
        Fragment fragment5 = this.mFragment;
        if (fragment5.mDeferStart && fragment5.mState < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (FragmentManager.P0(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + iMin + " for " + this.mFragment);
        }
        return iMin;
    }

    void f() {
        String resourceName;
        if (this.mFragment.mFromLayout) {
            return;
        }
        if (FragmentManager.P0(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.mFragment);
        }
        Fragment fragment = this.mFragment;
        LayoutInflater layoutInflaterPerformGetLayoutInflater = fragment.performGetLayoutInflater(fragment.mSavedFragmentState);
        Fragment fragment2 = this.mFragment;
        ViewGroup viewGroup = fragment2.mContainer;
        if (viewGroup == null) {
            int i10 = fragment2.mContainerId;
            if (i10 == 0) {
                viewGroup = null;
            } else {
                if (i10 == -1) {
                    throw new IllegalArgumentException("Cannot create fragment " + this.mFragment + " for a container view with no id");
                }
                viewGroup = (ViewGroup) fragment2.mFragmentManager.w0().c(this.mFragment.mContainerId);
                if (viewGroup == null) {
                    Fragment fragment3 = this.mFragment;
                    if (!fragment3.mRestored) {
                        try {
                            resourceName = fragment3.getResources().getResourceName(this.mFragment.mContainerId);
                        } catch (Resources.NotFoundException unused) {
                            resourceName = EnvironmentCompat.MEDIA_UNKNOWN;
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.mFragment.mContainerId) + " (" + resourceName + ") for fragment " + this.mFragment);
                    }
                } else if (!(viewGroup instanceof FragmentContainerView)) {
                    FragmentStrictMode.p(this.mFragment, viewGroup);
                }
            }
        }
        Fragment fragment4 = this.mFragment;
        fragment4.mContainer = viewGroup;
        fragment4.performCreateView(layoutInflaterPerformGetLayoutInflater, viewGroup, fragment4.mSavedFragmentState);
        View view = this.mFragment.mView;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            Fragment fragment5 = this.mFragment;
            fragment5.mView.setTag(R.id.fragment_container_view_tag, fragment5);
            if (viewGroup != null) {
                b();
            }
            Fragment fragment6 = this.mFragment;
            if (fragment6.mHidden) {
                fragment6.mView.setVisibility(8);
            }
            if (ViewCompat.W(this.mFragment.mView)) {
                ViewCompat.q0(this.mFragment.mView);
            } else {
                final View view2 = this.mFragment.mView;
                view2.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.fragment.app.FragmentStateManager.1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(View view3) {
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(View view3) {
                        view2.removeOnAttachStateChangeListener(this);
                        ViewCompat.q0(view2);
                    }
                });
            }
            this.mFragment.performViewCreated();
            FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
            Fragment fragment7 = this.mFragment;
            fragmentLifecycleCallbacksDispatcher.m(fragment7, fragment7.mView, fragment7.mSavedFragmentState, false);
            int visibility = this.mFragment.mView.getVisibility();
            this.mFragment.setPostOnViewCreatedAlpha(this.mFragment.mView.getAlpha());
            Fragment fragment8 = this.mFragment;
            if (fragment8.mContainer != null && visibility == 0) {
                View viewFindFocus = fragment8.mView.findFocus();
                if (viewFindFocus != null) {
                    this.mFragment.setFocusedView(viewFindFocus);
                    if (FragmentManager.P0(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + this.mFragment);
                    }
                }
                this.mFragment.mView.setAlpha(0.0f);
            }
        }
        this.mFragment.mState = 2;
    }

    void j() {
        Fragment fragment = this.mFragment;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (FragmentManager.P0(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.mFragment);
            }
            Fragment fragment2 = this.mFragment;
            fragment2.performCreateView(fragment2.performGetLayoutInflater(fragment2.mSavedFragmentState), null, this.mFragment.mSavedFragmentState);
            View view = this.mFragment.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                Fragment fragment3 = this.mFragment;
                fragment3.mView.setTag(R.id.fragment_container_view_tag, fragment3);
                Fragment fragment4 = this.mFragment;
                if (fragment4.mHidden) {
                    fragment4.mView.setVisibility(8);
                }
                this.mFragment.performViewCreated();
                FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
                Fragment fragment5 = this.mFragment;
                fragmentLifecycleCallbacksDispatcher.m(fragment5, fragment5.mView, fragment5.mSavedFragmentState, false);
                this.mFragment.mState = 2;
            }
        }
    }

    void m() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        if (this.mMovingToState) {
            if (FragmentManager.P0(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + k());
                return;
            }
            return;
        }
        try {
            this.mMovingToState = true;
            boolean z6 = false;
            while (true) {
                int iD = d();
                Fragment fragment = this.mFragment;
                int i10 = fragment.mState;
                if (iD == i10) {
                    if (!z6 && i10 == -1 && fragment.mRemoving && !fragment.isInBackStack() && !this.mFragment.mBeingSaved) {
                        if (FragmentManager.P0(3)) {
                            Log.d("FragmentManager", "Cleaning up state of never attached fragment: " + this.mFragment);
                        }
                        this.mFragmentStore.p().c(this.mFragment);
                        this.mFragmentStore.s(this);
                        if (FragmentManager.P0(3)) {
                            Log.d("FragmentManager", "initState called for fragment: " + this.mFragment);
                        }
                        this.mFragment.initState();
                    }
                    Fragment fragment2 = this.mFragment;
                    if (fragment2.mHiddenChanged) {
                        if (fragment2.mView != null && (viewGroup = fragment2.mContainer) != null) {
                            SpecialEffectsController specialEffectsControllerN = SpecialEffectsController.n(viewGroup, fragment2.getParentFragmentManager());
                            if (this.mFragment.mHidden) {
                                specialEffectsControllerN.c(this);
                            } else {
                                specialEffectsControllerN.e(this);
                            }
                        }
                        Fragment fragment3 = this.mFragment;
                        FragmentManager fragmentManager = fragment3.mFragmentManager;
                        if (fragmentManager != null) {
                            fragmentManager.N0(fragment3);
                        }
                        Fragment fragment4 = this.mFragment;
                        fragment4.mHiddenChanged = false;
                        fragment4.onHiddenChanged(fragment4.mHidden);
                        this.mFragment.mChildFragmentManager.M();
                    }
                    return;
                }
                if (iD <= i10) {
                    switch (i10 - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            if (fragment.mBeingSaved && this.mFragmentStore.q(fragment.mWho) == null) {
                                s();
                            }
                            g();
                            break;
                        case 1:
                            h();
                            this.mFragment.mState = 1;
                            break;
                        case 2:
                            fragment.mInLayout = false;
                            fragment.mState = 2;
                            break;
                        case 3:
                            if (FragmentManager.P0(3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + this.mFragment);
                            }
                            Fragment fragment5 = this.mFragment;
                            if (fragment5.mBeingSaved) {
                                s();
                            } else if (fragment5.mView != null && fragment5.mSavedViewState == null) {
                                t();
                            }
                            Fragment fragment6 = this.mFragment;
                            if (fragment6.mView != null && (viewGroup2 = fragment6.mContainer) != null) {
                                SpecialEffectsController.n(viewGroup2, fragment6.getParentFragmentManager()).d(this);
                            }
                            this.mFragment.mState = 3;
                            break;
                        case 4:
                            w();
                            break;
                        case 5:
                            fragment.mState = 5;
                            break;
                        case 6:
                            n();
                            break;
                    }
                } else {
                    switch (i10 + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (fragment.mView != null && (viewGroup3 = fragment.mContainer) != null) {
                                SpecialEffectsController.n(viewGroup3, fragment.getParentFragmentManager()).b(SpecialEffectsController.Operation.State.b(this.mFragment.mView.getVisibility()), this);
                            }
                            this.mFragment.mState = 4;
                            break;
                        case 5:
                            v();
                            break;
                        case 6:
                            fragment.mState = 6;
                            break;
                        case 7:
                            p();
                            break;
                    }
                }
                z6 = true;
            }
        } finally {
            this.mMovingToState = false;
        }
    }

    void o(@NonNull ClassLoader classLoader) {
        Bundle bundle = this.mFragment.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        Fragment fragment = this.mFragment;
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_TAG);
        Fragment fragment2 = this.mFragment;
        fragment2.mSavedViewRegistryState = fragment2.mSavedFragmentState.getBundle(VIEW_REGISTRY_STATE_TAG);
        Fragment fragment3 = this.mFragment;
        fragment3.mTargetWho = fragment3.mSavedFragmentState.getString(TARGET_STATE_TAG);
        Fragment fragment4 = this.mFragment;
        if (fragment4.mTargetWho != null) {
            fragment4.mTargetRequestCode = fragment4.mSavedFragmentState.getInt(TARGET_REQUEST_CODE_STATE_TAG, 0);
        }
        Fragment fragment5 = this.mFragment;
        Boolean bool = fragment5.mSavedUserVisibleHint;
        if (bool != null) {
            fragment5.mUserVisibleHint = bool.booleanValue();
            this.mFragment.mSavedUserVisibleHint = null;
        } else {
            fragment5.mUserVisibleHint = fragment5.mSavedFragmentState.getBoolean(USER_VISIBLE_HINT_TAG, true);
        }
        Fragment fragment6 = this.mFragment;
        if (fragment6.mUserVisibleHint) {
            return;
        }
        fragment6.mDeferStart = true;
    }

    @Nullable
    Fragment.SavedState r() {
        Bundle bundleQ;
        if (this.mFragment.mState <= -1 || (bundleQ = q()) == null) {
            return null;
        }
        return new Fragment.SavedState(bundleQ);
    }

    void s() {
        FragmentState fragmentState = new FragmentState(this.mFragment);
        Fragment fragment = this.mFragment;
        if (fragment.mState <= -1 || fragmentState.mSavedFragmentState != null) {
            fragmentState.mSavedFragmentState = fragment.mSavedFragmentState;
        } else {
            Bundle bundleQ = q();
            fragmentState.mSavedFragmentState = bundleQ;
            if (this.mFragment.mTargetWho != null) {
                if (bundleQ == null) {
                    fragmentState.mSavedFragmentState = new Bundle();
                }
                fragmentState.mSavedFragmentState.putString(TARGET_STATE_TAG, this.mFragment.mTargetWho);
                int i10 = this.mFragment.mTargetRequestCode;
                if (i10 != 0) {
                    fragmentState.mSavedFragmentState.putInt(TARGET_REQUEST_CODE_STATE_TAG, i10);
                }
            }
        }
        this.mFragmentStore.B(this.mFragment.mWho, fragmentState);
    }

    void t() {
        if (this.mFragment.mView == null) {
            return;
        }
        if (FragmentManager.P0(2)) {
            Log.v("FragmentManager", "Saving view state for fragment " + this.mFragment + " with view " + this.mFragment.mView);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.mFragment.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.mFragment.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.mFragment.mViewLifecycleOwner.e(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.mFragment.mSavedViewRegistryState = bundle;
    }

    FragmentStateManager(@NonNull FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, @NonNull FragmentStore fragmentStore, @NonNull Fragment fragment, @NonNull FragmentState fragmentState) {
        this.mDispatcher = fragmentLifecycleCallbacksDispatcher;
        this.mFragmentStore = fragmentStore;
        this.mFragment = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        Bundle bundle = fragmentState.mSavedFragmentState;
        if (bundle != null) {
            fragment.mSavedFragmentState = bundle;
        } else {
            fragment.mSavedFragmentState = new Bundle();
        }
    }
}
