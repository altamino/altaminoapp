package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.core.view.ViewCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class TransitionManager {
    private static final String LOG_TAG = "TransitionManager";
    private static Transition sDefaultTransition = new AutoTransition();
    private static ThreadLocal<WeakReference<ArrayMap<ViewGroup, ArrayList<Transition>>>> sRunningTransitions = new ThreadLocal<>();
    static ArrayList<ViewGroup> sPendingTransitions = new ArrayList<>();
    private ArrayMap<Scene, Transition> mSceneTransitions = new ArrayMap<>();
    private ArrayMap<Scene, ArrayMap<Scene, Transition>> mScenePairTransitions = new ArrayMap<>();

    private static class MultiListener implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
        ViewGroup mSceneRoot;
        Transition mTransition;

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        private void a() {
            this.mSceneRoot.getViewTreeObserver().removeOnPreDrawListener(this);
            this.mSceneRoot.removeOnAttachStateChangeListener(this);
        }

        MultiListener(Transition transition, ViewGroup viewGroup) {
            this.mTransition = transition;
            this.mSceneRoot = viewGroup;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            a();
            if (!TransitionManager.sPendingTransitions.remove(this.mSceneRoot)) {
                return true;
            }
            final ArrayMap<ViewGroup, ArrayList<Transition>> arrayMapC = TransitionManager.c();
            ArrayList<Transition> arrayList = arrayMapC.get(this.mSceneRoot);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                arrayMapC.put(this.mSceneRoot, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.mTransition);
            this.mTransition.b(new TransitionListenerAdapter() { // from class: androidx.transition.TransitionManager.MultiListener.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                public void d(@NonNull Transition transition) {
                    ((ArrayList) arrayMapC.get(MultiListener.this.mSceneRoot)).remove(transition);
                    transition.T(this);
                }
            });
            this.mTransition.l(this.mSceneRoot, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((Transition) it.next()).V(this.mSceneRoot);
                }
            }
            this.mTransition.S(this.mSceneRoot);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a();
            TransitionManager.sPendingTransitions.remove(this.mSceneRoot);
            ArrayList<Transition> arrayList = TransitionManager.c().get(this.mSceneRoot);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<Transition> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().V(this.mSceneRoot);
                }
            }
            this.mTransition.m(true);
        }
    }

    public static void a(@NonNull ViewGroup viewGroup) {
        b(viewGroup, null);
    }

    public static void b(@NonNull ViewGroup viewGroup, @Nullable Transition transition) {
        if (sPendingTransitions.contains(viewGroup) || !ViewCompat.X(viewGroup)) {
            return;
        }
        sPendingTransitions.add(viewGroup);
        if (transition == null) {
            transition = sDefaultTransition;
        }
        Transition transitionClone = transition.clone();
        e(viewGroup, transitionClone);
        Scene.c(viewGroup, null);
        d(viewGroup, transitionClone);
    }

    static ArrayMap<ViewGroup, ArrayList<Transition>> c() {
        ArrayMap<ViewGroup, ArrayList<Transition>> arrayMap;
        WeakReference<ArrayMap<ViewGroup, ArrayList<Transition>>> weakReference = sRunningTransitions.get();
        if (weakReference != null && (arrayMap = weakReference.get()) != null) {
            return arrayMap;
        }
        ArrayMap<ViewGroup, ArrayList<Transition>> arrayMap2 = new ArrayMap<>();
        sRunningTransitions.set(new WeakReference<>(arrayMap2));
        return arrayMap2;
    }

    private static void d(ViewGroup viewGroup, Transition transition) {
        if (transition == null || viewGroup == null) {
            return;
        }
        MultiListener multiListener = new MultiListener(transition, viewGroup);
        viewGroup.addOnAttachStateChangeListener(multiListener);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(multiListener);
    }

    private static void e(ViewGroup viewGroup, Transition transition) {
        ArrayList<Transition> arrayList = c().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<Transition> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().R(viewGroup);
            }
        }
        if (transition != null) {
            transition.l(viewGroup, true);
        }
        Scene sceneB = Scene.b(viewGroup);
        if (sceneB != null) {
            sceneB.a();
        }
    }
}
