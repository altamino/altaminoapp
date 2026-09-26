package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.core.app.SharedElementCallback;
import androidx.core.os.CancellationSignal;
import androidx.core.util.Preconditions;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
class DefaultSpecialEffectsController extends SpecialEffectsController {

    private static class AnimationInfo extends SpecialEffectsInfo {

        @Nullable
        private FragmentAnim.AnimationOrAnimator mAnimation;
        private boolean mIsPop;
        private boolean mLoadedAnim;

        @Nullable
        FragmentAnim.AnimationOrAnimator e(@NonNull Context context) {
            if (this.mLoadedAnim) {
                return this.mAnimation;
            }
            FragmentAnim.AnimationOrAnimator animationOrAnimatorB = FragmentAnim.b(context, b().f(), b().e() == SpecialEffectsController.Operation.State.VISIBLE, this.mIsPop);
            this.mAnimation = animationOrAnimatorB;
            this.mLoadedAnim = true;
            return animationOrAnimatorB;
        }

        AnimationInfo(@NonNull SpecialEffectsController.Operation operation, @NonNull CancellationSignal cancellationSignal, boolean z6) {
            super(operation, cancellationSignal);
            this.mLoadedAnim = false;
            this.mIsPop = z6;
        }
    }

    private static class SpecialEffectsInfo {

        @NonNull
        private final SpecialEffectsController.Operation mOperation;

        @NonNull
        private final CancellationSignal mSignal;

        @NonNull
        SpecialEffectsController.Operation b() {
            return this.mOperation;
        }

        @NonNull
        CancellationSignal c() {
            return this.mSignal;
        }

        void a() {
            this.mOperation.d(this.mSignal);
        }

        boolean d() {
            SpecialEffectsController.Operation.State state;
            SpecialEffectsController.Operation.State stateC = SpecialEffectsController.Operation.State.c(this.mOperation.f().mView);
            SpecialEffectsController.Operation.State stateE = this.mOperation.e();
            return stateC == stateE || !(stateC == (state = SpecialEffectsController.Operation.State.VISIBLE) || stateE == state);
        }

        SpecialEffectsInfo(@NonNull SpecialEffectsController.Operation operation, @NonNull CancellationSignal cancellationSignal) {
            this.mOperation = operation;
            this.mSignal = cancellationSignal;
        }
    }

    private static class TransitionInfo extends SpecialEffectsInfo {
        private final boolean mOverlapAllowed;

        @Nullable
        private final Object mSharedElementTransition;

        @Nullable
        private final Object mTransition;

        @Nullable
        public Object g() {
            return this.mSharedElementTransition;
        }

        @Nullable
        Object h() {
            return this.mTransition;
        }

        public boolean i() {
            return this.mSharedElementTransition != null;
        }

        boolean j() {
            return this.mOverlapAllowed;
        }

        @Nullable
        private FragmentTransitionImpl f(Object obj) {
            if (obj == null) {
                return null;
            }
            FragmentTransitionImpl fragmentTransitionImpl = FragmentTransition.PLATFORM_IMPL;
            if (fragmentTransitionImpl != null && fragmentTransitionImpl.e(obj)) {
                return fragmentTransitionImpl;
            }
            FragmentTransitionImpl fragmentTransitionImpl2 = FragmentTransition.SUPPORT_IMPL;
            if (fragmentTransitionImpl2 != null && fragmentTransitionImpl2.e(obj)) {
                return fragmentTransitionImpl2;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + b().f() + " is not a valid framework Transition or AndroidX Transition");
        }

        @Nullable
        FragmentTransitionImpl e() {
            FragmentTransitionImpl fragmentTransitionImplF = f(this.mTransition);
            FragmentTransitionImpl fragmentTransitionImplF2 = f(this.mSharedElementTransition);
            if (fragmentTransitionImplF == null || fragmentTransitionImplF2 == null || fragmentTransitionImplF == fragmentTransitionImplF2) {
                return fragmentTransitionImplF != null ? fragmentTransitionImplF : fragmentTransitionImplF2;
            }
            throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + b().f() + " returned Transition " + this.mTransition + " which uses a different Transition  type than its shared element transition " + this.mSharedElementTransition);
        }

        TransitionInfo(@NonNull SpecialEffectsController.Operation operation, @NonNull CancellationSignal cancellationSignal, boolean z6, boolean z10) {
            Object exitTransition;
            Object enterTransition;
            boolean allowEnterTransitionOverlap;
            super(operation, cancellationSignal);
            if (operation.e() == SpecialEffectsController.Operation.State.VISIBLE) {
                if (z6) {
                    enterTransition = operation.f().getReenterTransition();
                } else {
                    enterTransition = operation.f().getEnterTransition();
                }
                this.mTransition = enterTransition;
                if (z6) {
                    allowEnterTransitionOverlap = operation.f().getAllowReturnTransitionOverlap();
                } else {
                    allowEnterTransitionOverlap = operation.f().getAllowEnterTransitionOverlap();
                }
                this.mOverlapAllowed = allowEnterTransitionOverlap;
            } else {
                if (z6) {
                    exitTransition = operation.f().getReturnTransition();
                } else {
                    exitTransition = operation.f().getExitTransition();
                }
                this.mTransition = exitTransition;
                this.mOverlapAllowed = true;
            }
            if (z10) {
                if (z6) {
                    this.mSharedElementTransition = operation.f().getSharedElementReturnTransition();
                    return;
                } else {
                    this.mSharedElementTransition = operation.f().getSharedElementEnterTransition();
                    return;
                }
            }
            this.mSharedElementTransition = null;
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.DefaultSpecialEffectsController$10, reason: invalid class name */
    static /* synthetic */ class AnonymousClass10 {
        static final /* synthetic */ int[] $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State;

        static {
            int[] iArr = new int[SpecialEffectsController.Operation.State.values().length];
            $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State = iArr;
            try {
                iArr[SpecialEffectsController.Operation.State.GONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[SpecialEffectsController.Operation.State.INVISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[SpecialEffectsController.Operation.State.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[SpecialEffectsController.Operation.State.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @NonNull
    private Map<SpecialEffectsController.Operation, Boolean> x(@NonNull List<TransitionInfo> list, @NonNull List<SpecialEffectsController.Operation> list2, final boolean z6, @Nullable final SpecialEffectsController.Operation operation, @Nullable final SpecialEffectsController.Operation operation2) {
        String str;
        String str2;
        String str3;
        View view;
        Object objK;
        ArrayList<View> arrayList;
        Object objK2;
        ArrayList<View> arrayList2;
        SpecialEffectsController.Operation operation3;
        SpecialEffectsController.Operation operation4;
        View view2;
        SpecialEffectsController.Operation operation5;
        HashMap map;
        View view3;
        ArrayList<View> arrayList3;
        SpecialEffectsController.Operation operation6;
        final Rect rect;
        SharedElementCallback enterTransitionCallback;
        SharedElementCallback exitTransitionCallback;
        ArrayList<String> arrayList4;
        int i10;
        final View view4;
        String strB;
        ArrayList<String> arrayList5;
        SpecialEffectsController.Operation operation7 = operation;
        SpecialEffectsController.Operation operation8 = operation2;
        HashMap map2 = new HashMap();
        final FragmentTransitionImpl fragmentTransitionImpl = null;
        for (TransitionInfo transitionInfo : list) {
            if (!transitionInfo.d()) {
                FragmentTransitionImpl fragmentTransitionImplE = transitionInfo.e();
                if (fragmentTransitionImpl == null) {
                    fragmentTransitionImpl = fragmentTransitionImplE;
                } else if (fragmentTransitionImplE != null && fragmentTransitionImpl != fragmentTransitionImplE) {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + transitionInfo.b().f() + " returned Transition " + transitionInfo.h() + " which uses a different Transition  type than other Fragments.");
                }
            }
        }
        if (fragmentTransitionImpl == null) {
            for (TransitionInfo transitionInfo2 : list) {
                map2.put(transitionInfo2.b(), Boolean.FALSE);
                transitionInfo2.a();
            }
            return map2;
        }
        View view5 = new View(m().getContext());
        Rect rect2 = new Rect();
        ArrayList<View> arrayList6 = new ArrayList<>();
        ArrayList<View> arrayList7 = new ArrayList<>();
        ArrayMap arrayMap = new ArrayMap();
        Iterator<TransitionInfo> it = list.iterator();
        Object obj = null;
        View view6 = null;
        boolean z10 = false;
        while (true) {
            boolean zHasNext = it.hasNext();
            str = FragmentManager.TAG;
            if (!zHasNext) {
                break;
            }
            TransitionInfo next = it.next();
            if (!next.i() || operation7 == null || operation8 == null) {
                operation5 = operation7;
                map = map2;
                view3 = view5;
                arrayList3 = arrayList7;
                operation6 = operation8;
                rect = rect2;
                view6 = view6;
            } else {
                Object objU = fragmentTransitionImpl.u(fragmentTransitionImpl.f(next.g()));
                ArrayList<String> sharedElementSourceNames = operation2.f().getSharedElementSourceNames();
                ArrayList<String> sharedElementSourceNames2 = operation.f().getSharedElementSourceNames();
                ArrayList<String> sharedElementTargetNames = operation.f().getSharedElementTargetNames();
                View view7 = view6;
                HashMap map3 = map2;
                int i11 = 0;
                while (i11 < sharedElementTargetNames.size()) {
                    int iIndexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i11));
                    ArrayList<String> arrayList8 = sharedElementTargetNames;
                    if (iIndexOf != -1) {
                        sharedElementSourceNames.set(iIndexOf, sharedElementSourceNames2.get(i11));
                    }
                    i11++;
                    sharedElementTargetNames = arrayList8;
                }
                ArrayList<String> sharedElementTargetNames2 = operation2.f().getSharedElementTargetNames();
                if (z6 == 0) {
                    enterTransitionCallback = operation.f().getExitTransitionCallback();
                    exitTransitionCallback = operation2.f().getEnterTransitionCallback();
                } else {
                    enterTransitionCallback = operation.f().getEnterTransitionCallback();
                    exitTransitionCallback = operation2.f().getExitTransitionCallback();
                }
                int size = sharedElementSourceNames.size();
                view3 = view5;
                int i12 = 0;
                while (i12 < size) {
                    arrayMap.put(sharedElementSourceNames.get(i12), sharedElementTargetNames2.get(i12));
                    i12++;
                    size = size;
                    rect2 = rect2;
                }
                Rect rect3 = rect2;
                if (FragmentManager.P0(2)) {
                    Log.v(FragmentManager.TAG, ">>> entering view names <<<");
                    for (Iterator<String> it2 = sharedElementTargetNames2.iterator(); it2.hasNext(); it2 = it2) {
                        Log.v(FragmentManager.TAG, "Name: " + it2.next());
                    }
                    Log.v(FragmentManager.TAG, ">>> exiting view names <<<");
                    for (Iterator<String> it3 = sharedElementSourceNames.iterator(); it3.hasNext(); it3 = it3) {
                        Log.v(FragmentManager.TAG, "Name: " + it3.next());
                    }
                }
                ArrayMap<String, View> arrayMap2 = new ArrayMap<>();
                u(arrayMap2, operation.f().mView);
                arrayMap2.t(sharedElementSourceNames);
                if (enterTransitionCallback != null) {
                    if (FragmentManager.P0(2)) {
                        Log.v(FragmentManager.TAG, "Executing exit callback for operation " + operation7);
                    }
                    enterTransitionCallback.onMapSharedElements(sharedElementSourceNames, arrayMap2);
                    int size2 = sharedElementSourceNames.size() - 1;
                    while (size2 >= 0) {
                        String str4 = sharedElementSourceNames.get(size2);
                        View view8 = arrayMap2.get(str4);
                        if (view8 == null) {
                            arrayMap.remove(str4);
                            arrayList5 = sharedElementSourceNames;
                        } else {
                            arrayList5 = sharedElementSourceNames;
                            if (!str4.equals(ViewCompat.N(view8))) {
                                arrayMap.put(ViewCompat.N(view8), (String) arrayMap.remove(str4));
                            }
                        }
                        size2--;
                        sharedElementSourceNames = arrayList5;
                    }
                    arrayList4 = sharedElementSourceNames;
                } else {
                    arrayList4 = sharedElementSourceNames;
                    arrayMap.t(arrayMap2.keySet());
                }
                final ArrayMap<String, View> arrayMap3 = new ArrayMap<>();
                u(arrayMap3, operation2.f().mView);
                arrayMap3.t(sharedElementTargetNames2);
                arrayMap3.t(arrayMap.values());
                if (exitTransitionCallback != null) {
                    if (FragmentManager.P0(2)) {
                        Log.v(FragmentManager.TAG, "Executing enter callback for operation " + operation8);
                    }
                    exitTransitionCallback.onMapSharedElements(sharedElementTargetNames2, arrayMap3);
                    for (int size3 = sharedElementTargetNames2.size() - 1; size3 >= 0; size3--) {
                        String str5 = sharedElementTargetNames2.get(size3);
                        View view9 = arrayMap3.get(str5);
                        if (view9 == null) {
                            String strB2 = FragmentTransition.b(arrayMap, str5);
                            if (strB2 != null) {
                                arrayMap.remove(strB2);
                            }
                        } else if (!str5.equals(ViewCompat.N(view9)) && (strB = FragmentTransition.b(arrayMap, str5)) != null) {
                            arrayMap.put(strB, ViewCompat.N(view9));
                        }
                    }
                } else {
                    FragmentTransition.d(arrayMap, arrayMap3);
                }
                v(arrayMap2, arrayMap.keySet());
                v(arrayMap3, arrayMap.values());
                if (arrayMap.isEmpty()) {
                    arrayList6.clear();
                    arrayList7.clear();
                    arrayList3 = arrayList7;
                    operation5 = operation7;
                    view6 = view7;
                    view3 = view3;
                    map = map3;
                    rect = rect3;
                    obj = null;
                    operation6 = operation8;
                } else {
                    FragmentTransition.a(operation2.f(), operation.f(), z6, arrayMap2, true);
                    ArrayList<View> arrayList9 = arrayList7;
                    OneShotPreDrawListener.a(m(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.6
                        @Override // java.lang.Runnable
                        public void run() {
                            FragmentTransition.a(operation2.f(), operation.f(), z6, arrayMap3, false);
                        }
                    });
                    arrayList6.addAll(arrayMap2.values());
                    if (arrayList4.isEmpty()) {
                        i10 = 0;
                        view6 = view7;
                    } else {
                        i10 = 0;
                        view6 = arrayMap2.get(arrayList4.get(0));
                        fragmentTransitionImpl.p(objU, view6);
                    }
                    arrayList9.addAll(arrayMap3.values());
                    if (sharedElementTargetNames2.isEmpty() || (view4 = arrayMap3.get(sharedElementTargetNames2.get(i10))) == null) {
                        rect = rect3;
                    } else {
                        rect = rect3;
                        OneShotPreDrawListener.a(m(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.7
                            @Override // java.lang.Runnable
                            public void run() {
                                fragmentTransitionImpl.h(view4, rect);
                            }
                        });
                        z10 = true;
                    }
                    fragmentTransitionImpl.s(objU, view3, arrayList6);
                    fragmentTransitionImpl.n(objU, null, null, null, null, objU, arrayList9);
                    Boolean bool = Boolean.TRUE;
                    operation5 = operation;
                    arrayList3 = arrayList9;
                    map = map3;
                    map.put(operation5, bool);
                    operation6 = operation2;
                    map.put(operation6, bool);
                    obj = objU;
                }
            }
            view5 = view3;
            rect2 = rect;
            arrayList6 = arrayList6;
            arrayList7 = arrayList3;
            operation8 = operation6;
            map2 = map;
            fragmentTransitionImpl = fragmentTransitionImpl;
            operation7 = operation5;
            arrayMap = arrayMap;
        }
        View view10 = view6;
        ArrayMap arrayMap4 = arrayMap;
        SpecialEffectsController.Operation operation9 = operation7;
        HashMap map4 = map2;
        ArrayList<View> arrayList10 = arrayList6;
        View view11 = view5;
        FragmentTransitionImpl fragmentTransitionImpl2 = fragmentTransitionImpl;
        ArrayList<View> arrayList11 = arrayList7;
        SpecialEffectsController.Operation operation10 = operation8;
        Rect rect4 = rect2;
        ArrayList arrayList12 = new ArrayList();
        Iterator<TransitionInfo> it4 = list.iterator();
        Object obj2 = null;
        Object obj3 = null;
        while (it4.hasNext()) {
            TransitionInfo next2 = it4.next();
            if (next2.d()) {
                map4.put(next2.b(), Boolean.FALSE);
                next2.a();
                it4 = it4;
            } else {
                Iterator<TransitionInfo> it5 = it4;
                Object objF = fragmentTransitionImpl2.f(next2.h());
                SpecialEffectsController.Operation operationB = next2.b();
                boolean z11 = obj != null && (operationB == operation9 || operationB == operation10);
                if (objF == null) {
                    if (!z11) {
                        map4.put(operationB, Boolean.FALSE);
                        next2.a();
                    }
                    view = view11;
                    str3 = str;
                    arrayList = arrayList10;
                    arrayList2 = arrayList11;
                    objK = obj2;
                    objK2 = obj3;
                    operation3 = operation10;
                    view2 = view10;
                } else {
                    str3 = str;
                    final ArrayList<View> arrayList13 = new ArrayList<>();
                    Object obj4 = obj2;
                    t(arrayList13, operationB.f().mView);
                    if (z11) {
                        if (operationB == operation9) {
                            arrayList13.removeAll(arrayList10);
                        } else {
                            arrayList13.removeAll(arrayList11);
                        }
                    }
                    if (arrayList13.isEmpty()) {
                        fragmentTransitionImpl2.a(objF, view11);
                        view = view11;
                        arrayList = arrayList10;
                        arrayList2 = arrayList11;
                        objK2 = obj3;
                        operation4 = operationB;
                        operation3 = operation10;
                        objK = obj4;
                    } else {
                        fragmentTransitionImpl2.b(objF, arrayList13);
                        view = view11;
                        objK = obj4;
                        arrayList = arrayList10;
                        objK2 = obj3;
                        arrayList2 = arrayList11;
                        operation3 = operation10;
                        fragmentTransitionImpl2.n(objF, objF, arrayList13, null, null, null, null);
                        if (operationB.e() == SpecialEffectsController.Operation.State.GONE) {
                            operation4 = operationB;
                            list2.remove(operation4);
                            ArrayList<View> arrayList14 = new ArrayList<>(arrayList13);
                            arrayList14.remove(operation4.f().mView);
                            fragmentTransitionImpl2.m(objF, operation4.f().mView, arrayList14);
                            OneShotPreDrawListener.a(m(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.8
                                @Override // java.lang.Runnable
                                public void run() {
                                    FragmentTransition.e(arrayList13, 4);
                                }
                            });
                        } else {
                            operation4 = operationB;
                        }
                    }
                    if (operation4.e() == SpecialEffectsController.Operation.State.VISIBLE) {
                        arrayList12.addAll(arrayList13);
                        if (z10) {
                            fragmentTransitionImpl2.o(objF, rect4);
                        }
                        view2 = view10;
                    } else {
                        view2 = view10;
                        fragmentTransitionImpl2.p(objF, view2);
                    }
                    map4.put(operation4, Boolean.TRUE);
                    if (next2.j()) {
                        objK2 = fragmentTransitionImpl2.k(objK2, objF, null);
                    } else {
                        objK = fragmentTransitionImpl2.k(objK, objF, null);
                    }
                }
                it4 = it5;
                obj2 = objK;
                view10 = view2;
                obj3 = objK2;
                operation10 = operation3;
                str = str3;
                view11 = view;
                arrayList10 = arrayList;
                arrayList11 = arrayList2;
            }
        }
        String str6 = str;
        ArrayList<View> arrayList15 = arrayList10;
        ArrayList<View> arrayList16 = arrayList11;
        SpecialEffectsController.Operation operation11 = operation10;
        Object objJ = fragmentTransitionImpl2.j(obj3, obj2, obj);
        if (objJ == null) {
            return map4;
        }
        for (final TransitionInfo transitionInfo3 : list) {
            if (!transitionInfo3.d()) {
                Object objH = transitionInfo3.h();
                final SpecialEffectsController.Operation operationB2 = transitionInfo3.b();
                boolean z12 = obj != null && (operationB2 == operation9 || operationB2 == operation11);
                if (objH == null && !z12) {
                    str2 = str6;
                } else if (ViewCompat.X(m())) {
                    str2 = str6;
                    fragmentTransitionImpl2.q(transitionInfo3.b().f(), objJ, transitionInfo3.c(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.9
                        @Override // java.lang.Runnable
                        public void run() {
                            transitionInfo3.a();
                            if (FragmentManager.P0(2)) {
                                Log.v(FragmentManager.TAG, "Transition for operation " + operationB2 + "has completed");
                            }
                        }
                    });
                } else {
                    if (FragmentManager.P0(2)) {
                        str2 = str6;
                        Log.v(str2, "SpecialEffectsController: Container " + m() + " has not been laid out. Completing operation " + operationB2);
                    } else {
                        str2 = str6;
                    }
                    transitionInfo3.a();
                }
                str6 = str2;
            }
        }
        String str7 = str6;
        if (!ViewCompat.X(m())) {
            return map4;
        }
        FragmentTransition.e(arrayList12, 4);
        ArrayList<String> arrayListL = fragmentTransitionImpl2.l(arrayList16);
        if (FragmentManager.P0(2)) {
            Log.v(str7, ">>>>> Beginning transition <<<<<");
            Log.v(str7, ">>>>> SharedElementFirstOutViews <<<<<");
            for (View view12 : arrayList15) {
                Log.v(str7, "View: " + view12 + " Name: " + ViewCompat.N(view12));
            }
            Log.v(str7, ">>>>> SharedElementLastInViews <<<<<");
            for (View view13 : arrayList16) {
                Log.v(str7, "View: " + view13 + " Name: " + ViewCompat.N(view13));
            }
        }
        fragmentTransitionImpl2.c(m(), objJ);
        fragmentTransitionImpl2.r(m(), arrayList15, arrayList16, arrayListL, arrayMap4);
        FragmentTransition.e(arrayList12, 0);
        fragmentTransitionImpl2.t(obj, arrayList15, arrayList16);
        return map4;
    }

    void t(ArrayList<View> arrayList, View view) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (ViewGroupCompat.a(viewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(viewGroup);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt.getVisibility() == 0) {
                t(arrayList, childAt);
            }
        }
    }

    DefaultSpecialEffectsController(@NonNull ViewGroup viewGroup) {
        super(viewGroup);
    }

    private void w(@NonNull List<AnimationInfo> list, @NonNull List<SpecialEffectsController.Operation> list2, boolean z6, @NonNull Map<SpecialEffectsController.Operation, Boolean> map) {
        int i10;
        boolean z10;
        Context context;
        View view;
        int i11;
        boolean z11;
        final SpecialEffectsController.Operation operation;
        final ViewGroup viewGroupM = m();
        Context context2 = viewGroupM.getContext();
        ArrayList<AnimationInfo> arrayList = new ArrayList();
        Iterator<AnimationInfo> it = list.iterator();
        boolean z12 = false;
        while (true) {
            i10 = 2;
            if (!it.hasNext()) {
                break;
            }
            final AnimationInfo next = it.next();
            if (next.d()) {
                next.a();
            } else {
                FragmentAnim.AnimationOrAnimator animationOrAnimatorE = next.e(context2);
                if (animationOrAnimatorE == null) {
                    next.a();
                } else {
                    final Animator animator = animationOrAnimatorE.animator;
                    if (animator == null) {
                        arrayList.add(next);
                    } else {
                        final SpecialEffectsController.Operation operationB = next.b();
                        Fragment fragmentF = operationB.f();
                        if (Boolean.TRUE.equals(map.get(operationB))) {
                            if (FragmentManager.P0(2)) {
                                Log.v(FragmentManager.TAG, "Ignoring Animator set on " + fragmentF + " as this Fragment was involved in a Transition.");
                            }
                            next.a();
                        } else {
                            if (operationB.e() == SpecialEffectsController.Operation.State.GONE) {
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                            if (z11) {
                                list2.remove(operationB);
                            }
                            final View view2 = fragmentF.mView;
                            viewGroupM.startViewTransition(view2);
                            final boolean z13 = z11;
                            animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.2
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator2) {
                                    viewGroupM.endViewTransition(view2);
                                    if (z13) {
                                        operationB.e().a(view2);
                                    }
                                    next.a();
                                    if (FragmentManager.P0(2)) {
                                        Log.v(FragmentManager.TAG, "Animator from operation " + operationB + " has ended.");
                                    }
                                }
                            });
                            animator.setTarget(view2);
                            animator.start();
                            if (FragmentManager.P0(2)) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("Animator from operation ");
                                operation = operationB;
                                sb.append(operation);
                                sb.append(" has started.");
                                Log.v(FragmentManager.TAG, sb.toString());
                            } else {
                                operation = operationB;
                            }
                            next.c().c(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.3
                                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                                public void onCancel() {
                                    animator.end();
                                    if (FragmentManager.P0(2)) {
                                        Log.v(FragmentManager.TAG, "Animator from operation " + operation + " has been canceled.");
                                    }
                                }
                            });
                            z12 = true;
                        }
                    }
                }
            }
        }
        for (final AnimationInfo animationInfo : arrayList) {
            final SpecialEffectsController.Operation operationB2 = animationInfo.b();
            Fragment fragmentF2 = operationB2.f();
            if (z6) {
                if (FragmentManager.P0(i10)) {
                    Log.v(FragmentManager.TAG, "Ignoring Animation set on " + fragmentF2 + " as Animations cannot run alongside Transitions.");
                }
                animationInfo.a();
            } else if (z12) {
                if (FragmentManager.P0(i10)) {
                    Log.v(FragmentManager.TAG, "Ignoring Animation set on " + fragmentF2 + " as Animations cannot run alongside Animators.");
                }
                animationInfo.a();
            } else {
                final View view3 = fragmentF2.mView;
                Animation animation = (Animation) Preconditions.i(((FragmentAnim.AnimationOrAnimator) Preconditions.i(animationInfo.e(context2))).animation);
                if (operationB2.e() != SpecialEffectsController.Operation.State.REMOVED) {
                    view3.startAnimation(animation);
                    animationInfo.a();
                    z10 = z12;
                    context = context2;
                    i11 = i10;
                    view = view3;
                } else {
                    viewGroupM.startViewTransition(view3);
                    FragmentAnim.EndViewTransitionAnimation endViewTransitionAnimation = new FragmentAnim.EndViewTransitionAnimation(animation, viewGroupM, view3);
                    z10 = z12;
                    context = context2;
                    view = view3;
                    endViewTransitionAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.4
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation2) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation2) {
                            if (FragmentManager.P0(2)) {
                                Log.v(FragmentManager.TAG, "Animation from operation " + operationB2 + " has reached onAnimationStart.");
                            }
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation2) {
                            viewGroupM.post(new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                    viewGroupM.endViewTransition(view3);
                                    animationInfo.a();
                                }
                            });
                            if (FragmentManager.P0(2)) {
                                Log.v(FragmentManager.TAG, "Animation from operation " + operationB2 + " has ended.");
                            }
                        }
                    });
                    view.startAnimation(endViewTransitionAnimation);
                    i11 = 2;
                    if (FragmentManager.P0(2)) {
                        Log.v(FragmentManager.TAG, "Animation from operation " + operationB2 + " has started.");
                    }
                }
                final View view4 = view;
                animationInfo.c().c(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.5
                    @Override // androidx.core.os.CancellationSignal.OnCancelListener
                    public void onCancel() {
                        view4.clearAnimation();
                        viewGroupM.endViewTransition(view4);
                        animationInfo.a();
                        if (FragmentManager.P0(2)) {
                            Log.v(FragmentManager.TAG, "Animation from operation " + operationB2 + " has been cancelled.");
                        }
                    }
                });
                i10 = i11;
                z12 = z10;
                context2 = context;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00a5  */
    @Override // androidx.fragment.app.SpecialEffectsController
    void f(@NonNull List<SpecialEffectsController.Operation> list, boolean z6) {
        SpecialEffectsController.Operation operation = null;
        SpecialEffectsController.Operation operation2 = null;
        for (SpecialEffectsController.Operation operation3 : list) {
            SpecialEffectsController.Operation.State stateC = SpecialEffectsController.Operation.State.c(operation3.f().mView);
            int i10 = AnonymousClass10.$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[operation3.e().ordinal()];
            if (i10 != 1 && i10 != 2 && i10 != 3) {
                if (i10 == 4 && stateC != SpecialEffectsController.Operation.State.VISIBLE) {
                    operation2 = operation3;
                }
            } else if (stateC == SpecialEffectsController.Operation.State.VISIBLE && operation == null) {
                operation = operation3;
            }
        }
        if (FragmentManager.P0(2)) {
            Log.v(FragmentManager.TAG, "Executing operations from " + operation + " to " + operation2);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList(list);
        for (final SpecialEffectsController.Operation operation4 : list) {
            CancellationSignal cancellationSignal = new CancellationSignal();
            operation4.j(cancellationSignal);
            arrayList.add(new AnimationInfo(operation4, cancellationSignal, z6));
            CancellationSignal cancellationSignal2 = new CancellationSignal();
            operation4.j(cancellationSignal2);
            boolean z10 = false;
            if (z6) {
                if (operation4 == operation) {
                    z10 = true;
                }
            } else if (operation4 == operation2) {
                z10 = true;
            }
            arrayList2.add(new TransitionInfo(operation4, cancellationSignal2, z6, z10));
            operation4.a(new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.1
                @Override // java.lang.Runnable
                public void run() {
                    if (arrayList3.contains(operation4)) {
                        arrayList3.remove(operation4);
                        DefaultSpecialEffectsController.this.s(operation4);
                    }
                }
            });
        }
        Map<SpecialEffectsController.Operation, Boolean> mapX = x(arrayList2, arrayList3, z6, operation, operation2);
        w(arrayList, arrayList3, mapX.containsValue(Boolean.TRUE), mapX);
        Iterator<SpecialEffectsController.Operation> it = arrayList3.iterator();
        while (it.hasNext()) {
            s(it.next());
        }
        arrayList3.clear();
        if (FragmentManager.P0(2)) {
            Log.v(FragmentManager.TAG, "Completed executing operations from " + operation + " to " + operation2);
        }
    }

    void s(@NonNull SpecialEffectsController.Operation operation) {
        operation.e().a(operation.f().mView);
    }

    void u(Map<String, View> map, @NonNull View view) {
        String strN = ViewCompat.N(view);
        if (strN != null) {
            map.put(strN, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt.getVisibility() == 0) {
                    u(map, childAt);
                }
            }
        }
    }

    void v(@NonNull ArrayMap<String, View> arrayMap, @NonNull Collection<String> collection) {
        Iterator<Map.Entry<String, View>> it = arrayMap.entrySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(ViewCompat.N(it.next().getValue()))) {
                it.remove();
            }
        }
    }
}
