package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.os.CancellationSignal;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransitionImpl;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@SuppressLint({"RestrictedApi"})
@RestrictTo
public class FragmentTransitionSupport extends FragmentTransitionImpl {
    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void n(Object obj, final Object obj2, final ArrayList<View> arrayList, final Object obj3, final ArrayList<View> arrayList2, final Object obj4, final ArrayList<View> arrayList3) {
        ((Transition) obj).b(new TransitionListenerAdapter() { // from class: androidx.transition.FragmentTransitionSupport.3
            @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            public void b(@NonNull Transition transition) {
                Object obj5 = obj2;
                if (obj5 != null) {
                    FragmentTransitionSupport.this.w(obj5, arrayList, null);
                }
                Object obj6 = obj3;
                if (obj6 != null) {
                    FragmentTransitionSupport.this.w(obj6, arrayList2, null);
                }
                Object obj7 = obj4;
                if (obj7 != null) {
                    FragmentTransitionSupport.this.w(obj7, arrayList3, null);
                }
            }

            @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            public void d(@NonNull Transition transition) {
                transition.T(this);
            }
        });
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void a(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).c(view);
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void b(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        int i10 = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int iM0 = transitionSet.m0();
            while (i10 < iM0) {
                b(transitionSet.l0(i10), arrayList);
                i10++;
            }
            return;
        }
        if (v(transition) || !FragmentTransitionImpl.i(transition.E())) {
            return;
        }
        int size = arrayList.size();
        while (i10 < size) {
            transition.c(arrayList.get(i10));
            i10++;
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void c(ViewGroup viewGroup, Object obj) {
        TransitionManager.b(viewGroup, (Transition) obj);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public boolean e(Object obj) {
        return obj instanceof Transition;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public Object f(Object obj) {
        if (obj != null) {
            return ((Transition) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public Object j(Object obj, Object obj2, Object obj3) {
        Transition transitionR0 = (Transition) obj;
        Transition transition = (Transition) obj2;
        Transition transition2 = (Transition) obj3;
        if (transitionR0 != null && transition != null) {
            transitionR0 = new TransitionSet().j0(transitionR0).j0(transition).r0(1);
        } else if (transitionR0 == null) {
            transitionR0 = transition != null ? transition : null;
        }
        if (transition2 == null) {
            return transitionR0;
        }
        TransitionSet transitionSet = new TransitionSet();
        if (transitionR0 != null) {
            transitionSet.j0(transitionR0);
        }
        transitionSet.j0(transition2);
        return transitionSet;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public Object k(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.j0((Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.j0((Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.j0((Transition) obj3);
        }
        return transitionSet;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void m(Object obj, final View view, final ArrayList<View> arrayList) {
        ((Transition) obj).b(new Transition.TransitionListener() { // from class: androidx.transition.FragmentTransitionSupport.2
            @Override // androidx.transition.Transition.TransitionListener
            public void a(@NonNull Transition transition) {
            }

            @Override // androidx.transition.Transition.TransitionListener
            public void c(@NonNull Transition transition) {
            }

            @Override // androidx.transition.Transition.TransitionListener
            public void e(@NonNull Transition transition) {
            }

            @Override // androidx.transition.Transition.TransitionListener
            public void b(@NonNull Transition transition) {
                transition.T(this);
                transition.b(this);
            }

            @Override // androidx.transition.Transition.TransitionListener
            public void d(@NonNull Transition transition) {
                transition.T(this);
                view.setVisibility(8);
                int size = arrayList.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((View) arrayList.get(i10)).setVisibility(0);
                }
            }
        });
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void o(Object obj, final Rect rect) {
        if (obj != null) {
            ((Transition) obj).Z(new Transition.EpicenterCallback() { // from class: androidx.transition.FragmentTransitionSupport.6
                @Override // androidx.transition.Transition.EpicenterCallback
                public Rect a(@NonNull Transition transition) {
                    Rect rect2 = rect;
                    if (rect2 == null || rect2.isEmpty()) {
                        return null;
                    }
                    return rect;
                }
            });
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void p(Object obj, View view) {
        if (view != null) {
            final Rect rect = new Rect();
            h(view, rect);
            ((Transition) obj).Z(new Transition.EpicenterCallback() { // from class: androidx.transition.FragmentTransitionSupport.1
                @Override // androidx.transition.Transition.EpicenterCallback
                public Rect a(@NonNull Transition transition) {
                    return rect;
                }
            });
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void q(@NonNull Fragment fragment, @NonNull Object obj, @NonNull CancellationSignal cancellationSignal, @NonNull final Runnable runnable) {
        final Transition transition = (Transition) obj;
        cancellationSignal.c(new CancellationSignal.OnCancelListener() { // from class: androidx.transition.FragmentTransitionSupport.4
            @Override // androidx.core.os.CancellationSignal.OnCancelListener
            public void onCancel() {
                transition.cancel();
            }
        });
        transition.b(new Transition.TransitionListener() { // from class: androidx.transition.FragmentTransitionSupport.5
            @Override // androidx.transition.Transition.TransitionListener
            public void a(@NonNull Transition transition2) {
            }

            @Override // androidx.transition.Transition.TransitionListener
            public void b(@NonNull Transition transition2) {
            }

            @Override // androidx.transition.Transition.TransitionListener
            public void c(@NonNull Transition transition2) {
            }

            @Override // androidx.transition.Transition.TransitionListener
            public void e(@NonNull Transition transition2) {
            }

            @Override // androidx.transition.Transition.TransitionListener
            public void d(@NonNull Transition transition2) {
                runnable.run();
            }
        });
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void s(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List<View> listE = transitionSet.E();
        listE.clear();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            FragmentTransitionImpl.d(listE, arrayList.get(i10));
        }
        listE.add(view);
        arrayList.add(view);
        b(transitionSet, arrayList);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public void t(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.E().clear();
            transitionSet.E().addAll(arrayList2);
            w(transitionSet, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public Object u(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.j0((Transition) obj);
        return transitionSet;
    }

    public void w(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        Transition transition = (Transition) obj;
        int i10 = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int iM0 = transitionSet.m0();
            while (i10 < iM0) {
                w(transitionSet.l0(i10), arrayList, arrayList2);
                i10++;
            }
            return;
        }
        if (v(transition)) {
            return;
        }
        List<View> listE = transition.E();
        if (listE.size() == arrayList.size() && listE.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            while (i10 < size) {
                transition.c(arrayList2.get(i10));
                i10++;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                transition.U(arrayList.get(size2));
            }
        }
    }

    private static boolean v(Transition transition) {
        if (FragmentTransitionImpl.i(transition.B()) && FragmentTransitionImpl.i(transition.C()) && FragmentTransitionImpl.i(transition.D())) {
            return false;
        }
        return true;
    }
}
