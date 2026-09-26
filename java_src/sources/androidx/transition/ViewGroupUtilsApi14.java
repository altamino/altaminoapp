package androidx.transition;

import android.animation.LayoutTransition;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
class ViewGroupUtilsApi14 {
    private static final int LAYOUT_TRANSITION_CHANGING = 4;
    private static final String TAG = "ViewGroupUtilsApi14";
    private static Method sCancelMethod;
    private static boolean sCancelMethodFetched;
    private static LayoutTransition sEmptyLayoutTransition;
    private static Field sLayoutSuppressedField;
    private static boolean sLayoutSuppressedFieldFetched;

    /* JADX INFO: renamed from: androidx.transition.ViewGroupUtilsApi14$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes10.dex */
    class AnonymousClass1 extends LayoutTransition {
        @Override // android.animation.LayoutTransition
        public boolean isChangingLayout() {
            return true;
        }

        AnonymousClass1() {
        }
    }

    private ViewGroupUtilsApi14() {
    }
}
