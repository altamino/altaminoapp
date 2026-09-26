package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.os.CancellationSignal;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
@SuppressLint({"UnknownNullness"})
@RestrictTo
public abstract class FragmentTransitionImpl {
    private static boolean g(List<View> list, View view, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (list.get(i11) == view) {
                return true;
            }
        }
        return false;
    }

    public abstract void a(Object obj, View view);

    public abstract void b(Object obj, ArrayList<View> arrayList);

    public abstract void c(ViewGroup viewGroup, Object obj);

    public abstract boolean e(Object obj);

    public abstract Object f(Object obj);

    public abstract Object j(Object obj, Object obj2, Object obj3);

    public abstract Object k(Object obj, Object obj2, Object obj3);

    public abstract void m(Object obj, View view, ArrayList<View> arrayList);

    public abstract void n(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    public abstract void o(Object obj, Rect rect);

    public abstract void p(Object obj, View view);

    public abstract void s(Object obj, View view, ArrayList<View> arrayList);

    public abstract void t(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    public abstract Object u(Object obj);

    protected static boolean i(List list) {
        return list == null || list.isEmpty();
    }

    ArrayList<String> l(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view = arrayList.get(i10);
            arrayList2.add(ViewCompat.N(view));
            ViewCompat.W0(view, null);
        }
        return arrayList2;
    }

    protected static void d(List<View> list, View view) {
        int size = list.size();
        if (g(list, view, size)) {
            return;
        }
        if (ViewCompat.N(view) != null) {
            list.add(view);
        }
        for (int i10 = size; i10 < list.size(); i10++) {
            View view2 = list.get(i10);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i11 = 0; i11 < childCount; i11++) {
                    View childAt = viewGroup.getChildAt(i11);
                    if (!g(list, childAt, size) && ViewCompat.N(childAt) != null) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    protected void h(View view, Rect rect) {
        if (!ViewCompat.W(view)) {
            return;
        }
        RectF rectF = new RectF();
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getMatrix().mapRect(rectF);
        rectF.offset(view.getLeft(), view.getTop());
        Object parent = view.getParent();
        while (parent instanceof View) {
            View view2 = (View) parent;
            rectF.offset(-view2.getScrollX(), -view2.getScrollY());
            view2.getMatrix().mapRect(rectF);
            rectF.offset(view2.getLeft(), view2.getTop());
            parent = view2.getParent();
        }
        int[] iArr = new int[2];
        view.getRootView().getLocationOnScreen(iArr);
        rectF.offset(iArr[0], iArr[1]);
        rect.set(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
    }

    public void q(@NonNull Fragment fragment, @NonNull Object obj, @NonNull CancellationSignal cancellationSignal, @NonNull Runnable runnable) {
        runnable.run();
    }

    void r(View view, final ArrayList<View> arrayList, final ArrayList<View> arrayList2, final ArrayList<String> arrayList3, Map<String, String> map) {
        final int size = arrayList2.size();
        final ArrayList arrayList4 = new ArrayList();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = arrayList.get(i10);
            String strN = ViewCompat.N(view2);
            arrayList4.add(strN);
            if (strN != null) {
                ViewCompat.W0(view2, null);
                String str = map.get(strN);
                for (int i11 = 0; i11 < size; i11++) {
                    if (str.equals(arrayList3.get(i11))) {
                        ViewCompat.W0(arrayList2.get(i11), strN);
                        break;
                    }
                }
            }
        }
        OneShotPreDrawListener.a(view, new Runnable() { // from class: androidx.fragment.app.FragmentTransitionImpl.1
            @Override // java.lang.Runnable
            public void run() {
                for (int i12 = 0; i12 < size; i12++) {
                    ViewCompat.W0((View) arrayList2.get(i12), (String) arrayList3.get(i12));
                    ViewCompat.W0((View) arrayList.get(i12), (String) arrayList4.get(i12));
                }
            }
        });
    }
}
