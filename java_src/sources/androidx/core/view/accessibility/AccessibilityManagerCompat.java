package androidx.core.view.accessibility;

import android.view.accessibility.AccessibilityManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes5.dex */
public final class AccessibilityManagerCompat {

    @Deprecated
    public interface AccessibilityStateChangeListener {
        @Deprecated
        void onAccessibilityStateChanged(boolean z6);
    }

    @Deprecated
    public static abstract class AccessibilityStateChangeListenerCompat implements AccessibilityStateChangeListener {
    }

    private static class AccessibilityStateChangeListenerWrapper implements AccessibilityManager.AccessibilityStateChangeListener {
        AccessibilityStateChangeListener mListener;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof AccessibilityStateChangeListenerWrapper) {
                return this.mListener.equals(((AccessibilityStateChangeListenerWrapper) obj).mListener);
            }
            return false;
        }

        public int hashCode() {
            return this.mListener.hashCode();
        }

        @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
        public void onAccessibilityStateChanged(boolean z6) {
            this.mListener.onAccessibilityStateChanged(z6);
        }
    }

    @RequiresApi
    static class Api19Impl {
        @DoNotInline
        static boolean a(AccessibilityManager accessibilityManager, TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
            return accessibilityManager.addTouchExplorationStateChangeListener(new TouchExplorationStateChangeListenerWrapper(touchExplorationStateChangeListener));
        }

        @DoNotInline
        static boolean b(AccessibilityManager accessibilityManager, TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
            return accessibilityManager.removeTouchExplorationStateChangeListener(new TouchExplorationStateChangeListenerWrapper(touchExplorationStateChangeListener));
        }

        private Api19Impl() {
        }
    }

    public interface TouchExplorationStateChangeListener {
        void onTouchExplorationStateChanged(boolean z6);
    }

    @RequiresApi
    private static final class TouchExplorationStateChangeListenerWrapper implements AccessibilityManager.TouchExplorationStateChangeListener {
        final TouchExplorationStateChangeListener mListener;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TouchExplorationStateChangeListenerWrapper) {
                return this.mListener.equals(((TouchExplorationStateChangeListenerWrapper) obj).mListener);
            }
            return false;
        }

        public int hashCode() {
            return this.mListener.hashCode();
        }

        @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
        public void onTouchExplorationStateChanged(boolean z6) {
            this.mListener.onTouchExplorationStateChanged(z6);
        }

        TouchExplorationStateChangeListenerWrapper(@NonNull TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
            this.mListener = touchExplorationStateChangeListener;
        }
    }

    private AccessibilityManagerCompat() {
    }

    public static boolean a(@NonNull AccessibilityManager accessibilityManager, @NonNull TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
        return Api19Impl.a(accessibilityManager, touchExplorationStateChangeListener);
    }

    public static boolean b(@NonNull AccessibilityManager accessibilityManager, @NonNull TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
        return Api19Impl.b(accessibilityManager, touchExplorationStateChangeListener);
    }
}
