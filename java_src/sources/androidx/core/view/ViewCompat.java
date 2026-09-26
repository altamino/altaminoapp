package androidx.core.view;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContentInfo;
import android.view.Display;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.collection.SimpleArrayMap;
import androidx.core.R;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"PrivateConstructorForUtilityClass"})
public class ViewCompat {
    public static final int ACCESSIBILITY_LIVE_REGION_ASSERTIVE = 2;
    public static final int ACCESSIBILITY_LIVE_REGION_NONE = 0;
    public static final int ACCESSIBILITY_LIVE_REGION_POLITE = 1;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS = 4;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;

    @Deprecated
    public static final int LAYER_TYPE_HARDWARE = 2;

    @Deprecated
    public static final int LAYER_TYPE_NONE = 0;

    @Deprecated
    public static final int LAYER_TYPE_SOFTWARE = 1;
    public static final int LAYOUT_DIRECTION_INHERIT = 2;
    public static final int LAYOUT_DIRECTION_LOCALE = 3;
    public static final int LAYOUT_DIRECTION_LTR = 0;
    public static final int LAYOUT_DIRECTION_RTL = 1;

    @Deprecated
    public static final int MEASURED_HEIGHT_STATE_SHIFT = 16;

    @Deprecated
    public static final int MEASURED_SIZE_MASK = 16777215;

    @Deprecated
    public static final int MEASURED_STATE_MASK = -16777216;

    @Deprecated
    public static final int MEASURED_STATE_TOO_SMALL = 16777216;

    @Deprecated
    public static final int OVER_SCROLL_ALWAYS = 0;

    @Deprecated
    public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;

    @Deprecated
    public static final int OVER_SCROLL_NEVER = 2;
    public static final int SCROLL_AXIS_HORIZONTAL = 1;
    public static final int SCROLL_AXIS_NONE = 0;
    public static final int SCROLL_AXIS_VERTICAL = 2;
    public static final int SCROLL_INDICATOR_BOTTOM = 2;
    public static final int SCROLL_INDICATOR_END = 32;
    public static final int SCROLL_INDICATOR_LEFT = 4;
    public static final int SCROLL_INDICATOR_RIGHT = 8;
    public static final int SCROLL_INDICATOR_START = 16;
    public static final int SCROLL_INDICATOR_TOP = 1;
    private static final String TAG = "ViewCompat";
    public static final int TYPE_NON_TOUCH = 1;
    public static final int TYPE_TOUCH = 0;
    private static Field sAccessibilityDelegateField;
    private static Method sChildrenDrawingOrderMethod;
    private static Method sDispatchFinishTemporaryDetach;
    private static Method sDispatchStartTemporaryDetach;
    private static Field sMinHeightField;
    private static boolean sMinHeightFieldFetched;
    private static Field sMinWidthField;
    private static boolean sMinWidthFieldFetched;
    private static boolean sTempDetachBound;
    private static ThreadLocal<Rect> sThreadLocalRect;
    private static WeakHashMap<View, String> sTransitionNameMap;
    private static final AtomicInteger sNextGeneratedId = new AtomicInteger(1);
    private static WeakHashMap<View, ViewPropertyAnimatorCompat> sViewPropertyAnimatorMap = null;
    private static boolean sAccessibilityDelegateCheckFailed = false;
    private static final int[] ACCESSIBILITY_ACTIONS_RESOURCE_IDS = {R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};
    private static final OnReceiveContentViewBehavior NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR = new OnReceiveContentViewBehavior() { // from class: androidx.core.view.u
        @Override // androidx.core.view.OnReceiveContentViewBehavior
        public final ContentInfoCompat onReceiveContent(ContentInfoCompat contentInfoCompat) {
            return ViewCompat.b0(contentInfoCompat);
        }
    };
    private static final AccessibilityPaneVisibilityManager sAccessibilityPaneVisibilityManager = new AccessibilityPaneVisibilityManager();

    static class AccessibilityPaneVisibilityManager implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {
        private final WeakHashMap<View, Boolean> mPanesToVisible = new WeakHashMap<>();

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }

        @RequiresApi
        void a(View view) {
            this.mPanesToVisible.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(this);
            if (Api19Impl.b(view)) {
                c(view);
            }
        }

        @RequiresApi
        void d(View view) {
            this.mPanesToVisible.remove(view);
            view.removeOnAttachStateChangeListener(this);
            e(view);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        @RequiresApi
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 28) {
                for (Map.Entry<View, Boolean> entry : this.mPanesToVisible.entrySet()) {
                    b(entry.getKey(), entry.getValue().booleanValue());
                }
            }
        }

        AccessibilityPaneVisibilityManager() {
        }

        @RequiresApi
        private void b(View view, boolean z6) {
            boolean z10;
            int i10;
            if (view.isShown() && view.getWindowVisibility() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z6 != z10) {
                if (z10) {
                    i10 = 16;
                } else {
                    i10 = 32;
                }
                ViewCompat.c0(view, i10);
                this.mPanesToVisible.put(view, Boolean.valueOf(z10));
            }
        }

        @RequiresApi
        private void c(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @RequiresApi
        private void e(View view) {
            Api16Impl.o(view.getViewTreeObserver(), this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        @RequiresApi
        public void onViewAttachedToWindow(View view) {
            c(view);
        }
    }

    static abstract class AccessibilityViewProperty<T> {
        private final int mContentChangeType;
        private final int mFrameworkMinimumSdk;
        private final int mTagKey;
        private final Class<T> mType;

        AccessibilityViewProperty(int i10, Class<T> cls, int i11) {
            this(i10, cls, 0, i11);
        }

        private boolean b() {
            return true;
        }

        private boolean c() {
            return Build.VERSION.SDK_INT >= this.mFrameworkMinimumSdk;
        }

        boolean a(Boolean bool, Boolean bool2) {
            return (bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue());
        }

        abstract T d(View view);

        abstract void e(View view, T t5);

        AccessibilityViewProperty(int i10, Class<T> cls, int i11, int i12) {
            this.mTagKey = i10;
            this.mType = cls;
            this.mContentChangeType = i11;
            this.mFrameworkMinimumSdk = i12;
        }

        T f(View view) {
            if (c()) {
                return d(view);
            }
            if (b()) {
                T t5 = (T) view.getTag(this.mTagKey);
                if (this.mType.isInstance(t5)) {
                    return t5;
                }
                return null;
            }
            return null;
        }

        void g(View view, T t5) {
            if (c()) {
                e(view, t5);
            } else if (b() && h(f(view), t5)) {
                ViewCompat.l(view);
                view.setTag(this.mTagKey, t5);
                ViewCompat.c0(view, this.mContentChangeType);
            }
        }

        boolean h(T t5, T t10) {
            return !t10.equals(t5);
        }
    }

    @RequiresApi
    private static class Api21Impl {
        @DoNotInline
        static void a(@NonNull WindowInsets windowInsets, @NonNull View view) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        @DoNotInline
        static void u(@NonNull final View view, @Nullable final OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(R.id.tag_on_apply_window_listener, onApplyWindowInsetsListener);
            }
            if (onApplyWindowInsetsListener == null) {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback));
            } else {
                view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.core.view.ViewCompat.Api21Impl.1
                    WindowInsetsCompat mLastInsets = null;

                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                        WindowInsetsCompat windowInsetsCompatZ = WindowInsetsCompat.z(windowInsets, view2);
                        int i10 = Build.VERSION.SDK_INT;
                        if (i10 < 30) {
                            Api21Impl.a(windowInsets, view);
                            if (windowInsetsCompatZ.equals(this.mLastInsets)) {
                                return onApplyWindowInsetsListener.a(view2, windowInsetsCompatZ).x();
                            }
                        }
                        this.mLastInsets = windowInsetsCompatZ;
                        WindowInsetsCompat windowInsetsCompatA = onApplyWindowInsetsListener.a(view2, windowInsetsCompatZ);
                        if (i10 >= 30) {
                            return windowInsetsCompatA.x();
                        }
                        ViewCompat.q0(view2);
                        return windowInsetsCompatA.x();
                    }
                });
            }
        }

        private Api21Impl() {
        }

        @DoNotInline
        static WindowInsetsCompat b(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Rect rect) {
            WindowInsets windowInsetsX = windowInsetsCompat.x();
            if (windowInsetsX != null) {
                return WindowInsetsCompat.z(view.computeSystemWindowInsets(windowInsetsX, rect), view);
            }
            rect.setEmpty();
            return windowInsetsCompat;
        }

        @DoNotInline
        static boolean c(@NonNull View view, float f, float f6, boolean z6) {
            return view.dispatchNestedFling(f, f6, z6);
        }

        @DoNotInline
        static boolean d(@NonNull View view, float f, float f6) {
            return view.dispatchNestedPreFling(f, f6);
        }

        @DoNotInline
        static boolean e(View view, int i10, int i11, int[] iArr, int[] iArr2) {
            return view.dispatchNestedPreScroll(i10, i11, iArr, iArr2);
        }

        @DoNotInline
        static boolean f(View view, int i10, int i11, int i12, int i13, int[] iArr) {
            return view.dispatchNestedScroll(i10, i11, i12, i13, iArr);
        }

        @DoNotInline
        static ColorStateList g(View view) {
            return view.getBackgroundTintList();
        }

        @DoNotInline
        static PorterDuff.Mode h(View view) {
            return view.getBackgroundTintMode();
        }

        @DoNotInline
        static float i(View view) {
            return view.getElevation();
        }

        @Nullable
        @DoNotInline
        public static WindowInsetsCompat j(@NonNull View view) {
            return WindowInsetsCompat.Api21ReflectionHolder.a(view);
        }

        @DoNotInline
        static String k(View view) {
            return view.getTransitionName();
        }

        @DoNotInline
        static float l(View view) {
            return view.getTranslationZ();
        }

        @DoNotInline
        static float m(@NonNull View view) {
            return view.getZ();
        }

        @DoNotInline
        static boolean n(View view) {
            return view.hasNestedScrollingParent();
        }

        @DoNotInline
        static boolean o(View view) {
            return view.isImportantForAccessibility();
        }

        @DoNotInline
        static boolean p(View view) {
            return view.isNestedScrollingEnabled();
        }

        @DoNotInline
        static void q(View view, ColorStateList colorStateList) {
            view.setBackgroundTintList(colorStateList);
        }

        @DoNotInline
        static void r(View view, PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
        }

        @DoNotInline
        static void s(View view, float f) {
            view.setElevation(f);
        }

        @DoNotInline
        static void t(View view, boolean z6) {
            view.setNestedScrollingEnabled(z6);
        }

        @DoNotInline
        static void v(View view, String str) {
            view.setTransitionName(str);
        }

        @DoNotInline
        static void w(View view, float f) {
            view.setTranslationZ(f);
        }

        @DoNotInline
        static void x(@NonNull View view, float f) {
            view.setZ(f);
        }

        @DoNotInline
        static boolean y(View view, int i10) {
            return view.startNestedScroll(i10);
        }

        @DoNotInline
        static void z(View view) {
            view.stopNestedScroll();
        }
    }

    @RequiresApi
    static class Api28Impl {
        @DoNotInline
        static void a(@NonNull View view, @NonNull final OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
            int i10 = R.id.tag_unhandled_key_listeners;
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) view.getTag(i10);
            if (simpleArrayMap == null) {
                simpleArrayMap = new SimpleArrayMap();
                view.setTag(i10, simpleArrayMap);
            }
            Objects.requireNonNull(onUnhandledKeyEventListenerCompat);
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener = new View.OnUnhandledKeyEventListener() { // from class: androidx.core.view.v
                @Override // android.view.View.OnUnhandledKeyEventListener
                public final boolean onUnhandledKeyEvent(View view2, KeyEvent keyEvent) {
                    return onUnhandledKeyEventListenerCompat.onUnhandledKeyEvent(view2, keyEvent);
                }
            };
            simpleArrayMap.put(onUnhandledKeyEventListenerCompat, onUnhandledKeyEventListener);
            view.addOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        @DoNotInline
        static void e(@NonNull View view, @NonNull OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) view.getTag(R.id.tag_unhandled_key_listeners);
            if (simpleArrayMap == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) simpleArrayMap.get(onUnhandledKeyEventListenerCompat)) == null) {
                return;
            }
            view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        private Api28Impl() {
        }

        @DoNotInline
        static CharSequence b(View view) {
            return view.getAccessibilityPaneTitle();
        }

        @DoNotInline
        static boolean c(View view) {
            return view.isAccessibilityHeading();
        }

        @DoNotInline
        static boolean d(View view) {
            return view.isScreenReaderFocusable();
        }

        @DoNotInline
        static <T> T f(View view, int i10) {
            return (T) view.requireViewById(i10);
        }

        @DoNotInline
        static void g(View view, boolean z6) {
            view.setAccessibilityHeading(z6);
        }

        @DoNotInline
        static void h(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        @DoNotInline
        static void i(View view, boolean z6) {
            view.setScreenReaderFocusable(z6);
        }
    }

    @RequiresApi
    private static final class Api31Impl {
        @DoNotInline
        public static void c(@NonNull View view, @Nullable String[] strArr, @Nullable OnReceiveContentListener onReceiveContentListener) {
            if (onReceiveContentListener == null) {
                view.setOnReceiveContentListener(strArr, null);
            } else {
                view.setOnReceiveContentListener(strArr, new OnReceiveContentListenerAdapter(onReceiveContentListener));
            }
        }

        private Api31Impl() {
        }

        @Nullable
        @DoNotInline
        public static String[] a(@NonNull View view) {
            return view.getReceiveContentMimeTypes();
        }

        @Nullable
        @DoNotInline
        public static ContentInfoCompat b(@NonNull View view, @NonNull ContentInfoCompat contentInfoCompat) {
            ContentInfo contentInfoJ = contentInfoCompat.j();
            ContentInfo contentInfoPerformReceiveContent = view.performReceiveContent(contentInfoJ);
            if (contentInfoPerformReceiveContent == null) {
                return null;
            }
            if (contentInfoPerformReceiveContent == contentInfoJ) {
                return contentInfoCompat;
            }
            return ContentInfoCompat.k(contentInfoPerformReceiveContent);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface FocusDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface FocusRealDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface FocusRelativeDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface NestedScrollType {
    }

    public interface OnUnhandledKeyEventListenerCompat {
        boolean onUnhandledKeyEvent(@NonNull View view, @NonNull KeyEvent keyEvent);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface ScrollAxis {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface ScrollIndicators {
    }

    static class UnhandledKeyEventManager {
        private static final ArrayList<WeakReference<View>> sViewsWithListeners = new ArrayList<>();

        @Nullable
        private WeakHashMap<View, Boolean> mViewsContainingListeners = null;
        private SparseArray<WeakReference<View>> mCapturedKeys = null;
        private WeakReference<KeyEvent> mLastDispatchedPreViewKeyEvent = null;

        static UnhandledKeyEventManager a(View view) {
            int i10 = R.id.tag_unhandled_key_event_manager;
            UnhandledKeyEventManager unhandledKeyEventManager = (UnhandledKeyEventManager) view.getTag(i10);
            if (unhandledKeyEventManager != null) {
                return unhandledKeyEventManager;
            }
            UnhandledKeyEventManager unhandledKeyEventManager2 = new UnhandledKeyEventManager();
            view.setTag(i10, unhandledKeyEventManager2);
            return unhandledKeyEventManager2;
        }

        @Nullable
        private View c(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.mViewsContainingListeners;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View viewC = c(viewGroup.getChildAt(childCount), keyEvent);
                        if (viewC != null) {
                            return viewC;
                        }
                    }
                }
                if (e(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        private SparseArray<WeakReference<View>> d() {
            if (this.mCapturedKeys == null) {
                this.mCapturedKeys = new SparseArray<>();
            }
            return this.mCapturedKeys;
        }

        private boolean e(@NonNull View view, @NonNull KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((OnUnhandledKeyEventListenerCompat) arrayList.get(size)).onUnhandledKeyEvent(view, keyEvent)) {
                    return true;
                }
            }
            return false;
        }

        private void g() {
            WeakHashMap<View, Boolean> weakHashMap = this.mViewsContainingListeners;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList<WeakReference<View>> arrayList = sViewsWithListeners;
            if (arrayList.isEmpty()) {
                return;
            }
            synchronized (arrayList) {
                try {
                    if (this.mViewsContainingListeners == null) {
                        this.mViewsContainingListeners = new WeakHashMap<>();
                    }
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        ArrayList<WeakReference<View>> arrayList2 = sViewsWithListeners;
                        View view = arrayList2.get(size).get();
                        if (view == null) {
                            arrayList2.remove(size);
                        } else {
                            this.mViewsContainingListeners.put(view, Boolean.TRUE);
                            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                                this.mViewsContainingListeners.put((View) parent, Boolean.TRUE);
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        boolean f(KeyEvent keyEvent) {
            WeakReference<View> weakReferenceValueAt;
            int iIndexOfKey;
            WeakReference<KeyEvent> weakReference = this.mLastDispatchedPreViewKeyEvent;
            if (weakReference != null && weakReference.get() == keyEvent) {
                return false;
            }
            this.mLastDispatchedPreViewKeyEvent = new WeakReference<>(keyEvent);
            SparseArray<WeakReference<View>> sparseArrayD = d();
            if (keyEvent.getAction() != 1 || (iIndexOfKey = sparseArrayD.indexOfKey(keyEvent.getKeyCode())) < 0) {
                weakReferenceValueAt = null;
            } else {
                weakReferenceValueAt = sparseArrayD.valueAt(iIndexOfKey);
                sparseArrayD.removeAt(iIndexOfKey);
            }
            if (weakReferenceValueAt == null) {
                weakReferenceValueAt = sparseArrayD.get(keyEvent.getKeyCode());
            }
            if (weakReferenceValueAt == null) {
                return false;
            }
            View view = weakReferenceValueAt.get();
            if (view != null && ViewCompat.W(view)) {
                e(view, keyEvent);
            }
            return true;
        }

        UnhandledKeyEventManager() {
        }

        boolean b(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                g();
            }
            View viewC = c(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (viewC != null && !KeyEvent.isModifierKey(keyCode)) {
                    d().put(keyCode, new WeakReference<>(viewC));
                }
            }
            if (viewC != null) {
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ContentInfoCompat b0(ContentInfoCompat contentInfoCompat) {
        return contentInfoCompat;
    }

    @Nullable
    public static ContentInfoCompat j0(@NonNull View view, @NonNull ContentInfoCompat contentInfoCompat) {
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "performReceiveContent: " + contentInfoCompat + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.b(view, contentInfoCompat);
        }
        OnReceiveContentListener onReceiveContentListener = (OnReceiveContentListener) view.getTag(R.id.tag_on_receive_content_listener);
        if (onReceiveContentListener == null) {
            return z(view).onReceiveContent(contentInfoCompat);
        }
        ContentInfoCompat contentInfoCompatA = onReceiveContentListener.a(view, contentInfoCompat);
        if (contentInfoCompatA == null) {
            return null;
        }
        return z(view).onReceiveContent(contentInfoCompatA);
    }

    @RequiresApi
    static class Api15Impl {
        private Api15Impl() {
        }

        @DoNotInline
        static boolean a(@NonNull View view) {
            return view.hasOnClickListeners();
        }
    }

    @RequiresApi
    static class Api16Impl {
        private Api16Impl() {
        }

        @DoNotInline
        static AccessibilityNodeProvider a(View view) {
            return view.getAccessibilityNodeProvider();
        }

        @DoNotInline
        static boolean b(View view) {
            return view.getFitsSystemWindows();
        }

        @DoNotInline
        static int c(View view) {
            return view.getImportantForAccessibility();
        }

        @DoNotInline
        static int d(View view) {
            return view.getMinimumHeight();
        }

        @DoNotInline
        static int e(View view) {
            return view.getMinimumWidth();
        }

        @DoNotInline
        static ViewParent f(View view) {
            return view.getParentForAccessibility();
        }

        @DoNotInline
        static int g(View view) {
            return view.getWindowSystemUiVisibility();
        }

        @DoNotInline
        static boolean h(View view) {
            return view.hasOverlappingRendering();
        }

        @DoNotInline
        static boolean i(View view) {
            return view.hasTransientState();
        }

        @DoNotInline
        static boolean j(View view, int i10, Bundle bundle) {
            return view.performAccessibilityAction(i10, bundle);
        }

        @DoNotInline
        static void k(View view) {
            view.postInvalidateOnAnimation();
        }

        @DoNotInline
        static void l(View view, int i10, int i11, int i12, int i13) {
            view.postInvalidateOnAnimation(i10, i11, i12, i13);
        }

        @DoNotInline
        static void m(View view, Runnable runnable) {
            view.postOnAnimation(runnable);
        }

        @DoNotInline
        static void n(View view, Runnable runnable, long j6) {
            view.postOnAnimationDelayed(runnable, j6);
        }

        @DoNotInline
        static void o(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }

        @DoNotInline
        static void p(View view) {
            view.requestFitSystemWindows();
        }

        @DoNotInline
        static void q(View view, Drawable drawable) {
            view.setBackground(drawable);
        }

        @DoNotInline
        static void r(View view, boolean z6) {
            view.setHasTransientState(z6);
        }

        @DoNotInline
        static void s(View view, int i10) {
            view.setImportantForAccessibility(i10);
        }
    }

    @RequiresApi
    static class Api17Impl {
        private Api17Impl() {
        }

        @DoNotInline
        static int a() {
            return View.generateViewId();
        }

        @DoNotInline
        static Display b(@NonNull View view) {
            return view.getDisplay();
        }

        @DoNotInline
        static int c(View view) {
            return view.getLabelFor();
        }

        @DoNotInline
        static int d(View view) {
            return view.getLayoutDirection();
        }

        @DoNotInline
        static int e(View view) {
            return view.getPaddingEnd();
        }

        @DoNotInline
        static int f(View view) {
            return view.getPaddingStart();
        }

        @DoNotInline
        static boolean g(View view) {
            return view.isPaddingRelative();
        }

        @DoNotInline
        static void h(View view, int i10) {
            view.setLabelFor(i10);
        }

        @DoNotInline
        static void i(View view, Paint paint) {
            view.setLayerPaint(paint);
        }

        @DoNotInline
        static void j(View view, int i10) {
            view.setLayoutDirection(i10);
        }

        @DoNotInline
        static void k(View view, int i10, int i11, int i12, int i13) {
            view.setPaddingRelative(i10, i11, i12, i13);
        }
    }

    @RequiresApi
    static class Api18Impl {
        private Api18Impl() {
        }

        @DoNotInline
        static Rect a(@NonNull View view) {
            return view.getClipBounds();
        }

        @DoNotInline
        static boolean b(@NonNull View view) {
            return view.isInLayout();
        }

        @DoNotInline
        static void c(@NonNull View view, Rect rect) {
            view.setClipBounds(rect);
        }
    }

    @RequiresApi
    static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        static int a(View view) {
            return view.getAccessibilityLiveRegion();
        }

        @DoNotInline
        static boolean b(@NonNull View view) {
            return view.isAttachedToWindow();
        }

        @DoNotInline
        static boolean c(@NonNull View view) {
            return view.isLaidOut();
        }

        @DoNotInline
        static boolean d(@NonNull View view) {
            return view.isLayoutDirectionResolved();
        }

        @DoNotInline
        static void e(ViewParent viewParent, View view, View view2, int i10) {
            viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i10);
        }

        @DoNotInline
        static void f(View view, int i10) {
            view.setAccessibilityLiveRegion(i10);
        }

        @DoNotInline
        static void g(AccessibilityEvent accessibilityEvent, int i10) {
            accessibilityEvent.setContentChangeTypes(i10);
        }
    }

    @RequiresApi
    static class Api20Impl {
        private Api20Impl() {
        }

        @DoNotInline
        static WindowInsets a(View view, WindowInsets windowInsets) {
            return view.dispatchApplyWindowInsets(windowInsets);
        }

        @DoNotInline
        static WindowInsets b(View view, WindowInsets windowInsets) {
            return view.onApplyWindowInsets(windowInsets);
        }

        @DoNotInline
        static void c(View view) {
            view.requestApplyInsets();
        }
    }

    @RequiresApi
    private static class Api23Impl {
        private Api23Impl() {
        }

        @Nullable
        public static WindowInsetsCompat a(@NonNull View view) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            WindowInsetsCompat windowInsetsCompatY = WindowInsetsCompat.y(rootWindowInsets);
            windowInsetsCompatY.v(windowInsetsCompatY);
            windowInsetsCompatY.d(view.getRootView());
            return windowInsetsCompatY;
        }

        @DoNotInline
        static int b(@NonNull View view) {
            return view.getScrollIndicators();
        }

        @DoNotInline
        static void c(@NonNull View view, int i10) {
            view.setScrollIndicators(i10);
        }

        @DoNotInline
        static void d(@NonNull View view, int i10, int i11) {
            view.setScrollIndicators(i10, i11);
        }
    }

    @RequiresApi
    static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        static void a(@NonNull View view) {
            view.cancelDragAndDrop();
        }

        @DoNotInline
        static void b(View view) {
            view.dispatchFinishTemporaryDetach();
        }

        @DoNotInline
        static void c(View view) {
            view.dispatchStartTemporaryDetach();
        }

        @DoNotInline
        static void d(@NonNull View view, PointerIcon pointerIcon) {
            view.setPointerIcon(pointerIcon);
        }

        @DoNotInline
        static boolean e(@NonNull View view, @Nullable ClipData clipData, @NonNull View.DragShadowBuilder dragShadowBuilder, @Nullable Object obj, int i10) {
            return view.startDragAndDrop(clipData, dragShadowBuilder, obj, i10);
        }

        @DoNotInline
        static void f(@NonNull View view, @NonNull View.DragShadowBuilder dragShadowBuilder) {
            view.updateDragShadow(dragShadowBuilder);
        }
    }

    @RequiresApi
    static class Api26Impl {
        private Api26Impl() {
        }

        @DoNotInline
        static void a(@NonNull View view, Collection<View> collection, int i10) {
            view.addKeyboardNavigationClusters(collection, i10);
        }

        @DoNotInline
        static int b(View view) {
            return view.getImportantForAutofill();
        }

        @DoNotInline
        static int c(@NonNull View view) {
            return view.getNextClusterForwardId();
        }

        @DoNotInline
        static boolean d(@NonNull View view) {
            return view.hasExplicitFocusable();
        }

        @DoNotInline
        static boolean e(@NonNull View view) {
            return view.isFocusedByDefault();
        }

        @DoNotInline
        static boolean f(View view) {
            return view.isImportantForAutofill();
        }

        @DoNotInline
        static boolean g(@NonNull View view) {
            return view.isKeyboardNavigationCluster();
        }

        @DoNotInline
        static View h(@NonNull View view, View view2, int i10) {
            return view.keyboardNavigationClusterSearch(view2, i10);
        }

        @DoNotInline
        static boolean i(@NonNull View view) {
            return view.restoreDefaultFocus();
        }

        @DoNotInline
        static void j(@NonNull View view, String... strArr) {
            view.setAutofillHints(strArr);
        }

        @DoNotInline
        static void k(@NonNull View view, boolean z6) {
            view.setFocusedByDefault(z6);
        }

        @DoNotInline
        static void l(View view, int i10) {
            view.setImportantForAutofill(i10);
        }

        @DoNotInline
        static void m(@NonNull View view, boolean z6) {
            view.setKeyboardNavigationCluster(z6);
        }

        @DoNotInline
        static void n(View view, int i10) {
            view.setNextClusterForwardId(i10);
        }

        @DoNotInline
        static void o(@NonNull View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }
    }

    @RequiresApi
    private static class Api29Impl {
        private Api29Impl() {
        }

        @DoNotInline
        static View.AccessibilityDelegate a(View view) {
            return view.getAccessibilityDelegate();
        }

        @DoNotInline
        static List<Rect> b(View view) {
            return view.getSystemGestureExclusionRects();
        }

        @DoNotInline
        static void c(@NonNull View view, @NonNull Context context, @NonNull int[] iArr, @Nullable AttributeSet attributeSet, @NonNull TypedArray typedArray, int i10, int i11) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i10, i11);
        }

        @DoNotInline
        static void d(View view, List<Rect> list) {
            view.setSystemGestureExclusionRects(list);
        }
    }

    @RequiresApi
    private static class Api30Impl {
        private Api30Impl() {
        }

        @DoNotInline
        static CharSequence a(View view) {
            return view.getStateDescription();
        }

        @DoNotInline
        static void b(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }
    }

    @RequiresApi
    private static final class OnReceiveContentListenerAdapter implements android.view.OnReceiveContentListener {

        @NonNull
        private final OnReceiveContentListener mJetpackListener;

        OnReceiveContentListenerAdapter(@NonNull OnReceiveContentListener onReceiveContentListener) {
            this.mJetpackListener = onReceiveContentListener;
        }

        @Nullable
        public ContentInfo onReceiveContent(@NonNull View view, @NonNull ContentInfo contentInfo) {
            ContentInfoCompat contentInfoCompatK = ContentInfoCompat.k(contentInfo);
            ContentInfoCompat contentInfoCompatA = this.mJetpackListener.a(view, contentInfoCompatK);
            if (contentInfoCompatA == null) {
                return null;
            }
            if (contentInfoCompatA == contentInfoCompatK) {
                return contentInfo;
            }
            return contentInfoCompatA.j();
        }
    }

    @SuppressLint({"InlinedApi"})
    public static int C(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.b(view);
        }
        return 0;
    }

    @Nullable
    public static String[] G(@NonNull View view) {
        return Build.VERSION.SDK_INT >= 31 ? Api31Impl.a(view) : (String[]) view.getTag(R.id.tag_on_receive_content_mime_types);
    }

    public static void G0(@NonNull View view, int i10) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.l(view, i10);
        }
    }

    public static void P0(@NonNull View view, @Nullable PointerIconCompat pointerIconCompat) {
        if (Build.VERSION.SDK_INT >= 24) {
            Api24Impl.d(view, t.a(pointerIconCompat != null ? pointerIconCompat.a() : null));
        }
    }

    private static AccessibilityViewProperty<Boolean> b() {
        return new AccessibilityViewProperty<Boolean>(R.id.tag_accessibility_heading, Boolean.class, 28) { // from class: androidx.core.view.ViewCompat.4
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public Boolean d(View view) {
                return Boolean.valueOf(Api28Impl.c(view));
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public void e(View view, Boolean bool) {
                Api28Impl.g(view, bool.booleanValue());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public boolean h(Boolean bool, Boolean bool2) {
                return !a(bool, bool2);
            }
        };
    }

    private static AccessibilityViewProperty<CharSequence> d1() {
        return new AccessibilityViewProperty<CharSequence>(R.id.tag_state_description, CharSequence.class, 64, 30) { // from class: androidx.core.view.ViewCompat.3
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public CharSequence d(View view) {
                return Api30Impl.a(view);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public void e(View view, CharSequence charSequence) {
                Api30Impl.b(view, charSequence);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public boolean h(CharSequence charSequence, CharSequence charSequence2) {
                return !TextUtils.equals(charSequence, charSequence2);
            }
        };
    }

    @NonNull
    public static ViewPropertyAnimatorCompat e(@NonNull View view) {
        if (sViewPropertyAnimatorMap == null) {
            sViewPropertyAnimatorMap = new WeakHashMap<>();
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = sViewPropertyAnimatorMap.get(view);
        if (viewPropertyAnimatorCompat != null) {
            return viewPropertyAnimatorCompat;
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = new ViewPropertyAnimatorCompat(view);
        sViewPropertyAnimatorMap.put(view, viewPropertyAnimatorCompat2);
        return viewPropertyAnimatorCompat2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void f1(@NonNull View view, int i10) {
        if (view instanceof NestedScrollingChild2) {
            ((NestedScrollingChild2) view).stopNestedScroll(i10);
        } else if (i10 == 0) {
            e1(view);
        }
    }

    private static AccessibilityViewProperty<CharSequence> h0() {
        return new AccessibilityViewProperty<CharSequence>(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28) { // from class: androidx.core.view.ViewCompat.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public CharSequence d(View view) {
                return Api28Impl.b(view);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public void e(View view, CharSequence charSequence) {
                Api28Impl.h(view, charSequence);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public boolean h(CharSequence charSequence, CharSequence charSequence2) {
                return !TextUtils.equals(charSequence, charSequence2);
            }
        };
    }

    @UiThread
    static boolean j(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return UnhandledKeyEventManager.a(view).b(view, keyEvent);
    }

    @UiThread
    static boolean k(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return UnhandledKeyEventManager.a(view).f(keyEvent);
    }

    @Nullable
    private static View.AccessibilityDelegate o(@NonNull View view) {
        return Build.VERSION.SDK_INT >= 29 ? Api29Impl.a(view) : p(view);
    }

    @Nullable
    private static View.AccessibilityDelegate p(@NonNull View view) {
        if (sAccessibilityDelegateCheckFailed) {
            return null;
        }
        if (sAccessibilityDelegateField == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                sAccessibilityDelegateField = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                sAccessibilityDelegateCheckFailed = true;
                return null;
            }
        }
        try {
            Object obj = sAccessibilityDelegateField.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            sAccessibilityDelegateCheckFailed = true;
            return null;
        }
    }

    public static void p0(@NonNull View view, @NonNull AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, @Nullable CharSequence charSequence, @Nullable AccessibilityViewCommand accessibilityViewCommand) {
        if (accessibilityViewCommand == null && charSequence == null) {
            n0(view, accessibilityActionCompat.b());
        } else {
            d(view, accessibilityActionCompat.a(charSequence, accessibilityViewCommand));
        }
    }

    private static List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> s(View view) {
        int i10 = R.id.tag_accessibility_actions;
        ArrayList arrayList = (ArrayList) view.getTag(i10);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(i10, arrayList2);
        return arrayList2;
    }

    public static void s0(@NonNull View view, @NonNull @SuppressLint({"ContextFirst"}) Context context, @NonNull int[] iArr, @Nullable AttributeSet attributeSet, @NonNull TypedArray typedArray, int i10, int i11) {
        if (Build.VERSION.SDK_INT >= 29) {
            Api29Impl.c(view, context, iArr, attributeSet, typedArray, i10, i11);
        }
    }

    private static AccessibilityViewProperty<Boolean> t0() {
        return new AccessibilityViewProperty<Boolean>(R.id.tag_screen_reader_focusable, Boolean.class, 28) { // from class: androidx.core.view.ViewCompat.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi
            /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
            public Boolean d(@NonNull View view) {
                return Boolean.valueOf(Api28Impl.d(view));
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi
            /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
            public void e(@NonNull View view, Boolean bool) {
                Api28Impl.i(view, bool.booleanValue());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
            public boolean h(Boolean bool, Boolean bool2) {
                return !a(bool, bool2);
            }
        };
    }

    public static void u0(@NonNull View view, @Nullable AccessibilityDelegateCompat accessibilityDelegateCompat) {
        if (accessibilityDelegateCompat == null && (o(view) instanceof AccessibilityDelegateCompat.AccessibilityDelegateAdapter)) {
            accessibilityDelegateCompat = new AccessibilityDelegateCompat();
        }
        view.setAccessibilityDelegate(accessibilityDelegateCompat == null ? null : accessibilityDelegateCompat.getBridge());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static OnReceiveContentViewBehavior z(@NonNull View view) {
        return view instanceof OnReceiveContentViewBehavior ? (OnReceiveContentViewBehavior) view : NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR;
    }

    @Deprecated
    protected ViewCompat() {
    }

    public static boolean A(@NonNull View view) {
        return Api16Impl.b(view);
    }

    public static void A0(@NonNull View view, @Nullable PorterDuff.Mode mode) {
        Api21Impl.r(view, mode);
    }

    public static int B(@NonNull View view) {
        return Api16Impl.c(view);
    }

    public static void B0(@NonNull View view, @Nullable Rect rect) {
        Api18Impl.c(view, rect);
    }

    public static void C0(@NonNull View view, float f) {
        Api21Impl.s(view, f);
    }

    public static int D(@NonNull View view) {
        return Api17Impl.d(view);
    }

    @Deprecated
    public static void D0(View view, boolean z6) {
        view.setFitsSystemWindows(z6);
    }

    public static int E(@NonNull View view) {
        return Api16Impl.d(view);
    }

    public static void E0(@NonNull View view, boolean z6) {
        Api16Impl.r(view, z6);
    }

    public static int F(@NonNull View view) {
        return Api16Impl.e(view);
    }

    @UiThread
    public static void F0(@NonNull View view, int i10) {
        Api16Impl.s(view, i10);
    }

    @Px
    public static int H(@NonNull View view) {
        return Api17Impl.e(view);
    }

    public static void H0(@NonNull View view, @Nullable Paint paint) {
        Api17Impl.i(view, paint);
    }

    @Px
    public static int I(@NonNull View view) {
        return Api17Impl.f(view);
    }

    @Deprecated
    public static void I0(View view, int i10, Paint paint) {
        view.setLayerType(i10, paint);
    }

    @Nullable
    public static ViewParent J(@NonNull View view) {
        return Api16Impl.f(view);
    }

    public static void J0(@NonNull View view, int i10) {
        Api17Impl.j(view, i10);
    }

    @Nullable
    public static WindowInsetsCompat K(@NonNull View view) {
        return Api23Impl.a(view);
    }

    public static void K0(@NonNull View view, boolean z6) {
        Api21Impl.t(view, z6);
    }

    @Deprecated
    public static float L(View view) {
        return view.getScaleX();
    }

    public static void L0(@NonNull View view, @Nullable OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        Api21Impl.u(view, onApplyWindowInsetsListener);
    }

    @Nullable
    @UiThread
    public static CharSequence M(@NonNull View view) {
        return d1().f(view);
    }

    public static void M0(@NonNull View view, @Px int i10, @Px int i11, @Px int i12, @Px int i13) {
        Api17Impl.k(view, i10, i11, i12, i13);
    }

    @Nullable
    public static String N(@NonNull View view) {
        return Api21Impl.k(view);
    }

    @Deprecated
    public static void N0(View view, float f) {
        view.setPivotX(f);
    }

    public static float O(@NonNull View view) {
        return Api21Impl.l(view);
    }

    @Deprecated
    public static void O0(View view, float f) {
        view.setPivotY(f);
    }

    @Deprecated
    public static int P(@NonNull View view) {
        return Api16Impl.g(view);
    }

    public static float Q(@NonNull View view) {
        return Api21Impl.m(view);
    }

    @Deprecated
    public static void Q0(View view, float f) {
        view.setRotation(f);
    }

    public static boolean R(@NonNull View view) {
        if (o(view) != null) {
            return true;
        }
        return false;
    }

    @Deprecated
    public static void R0(View view, float f) {
        view.setScaleX(f);
    }

    public static boolean S(@NonNull View view) {
        return Api15Impl.a(view);
    }

    @Deprecated
    public static void S0(View view, float f) {
        view.setScaleY(f);
    }

    public static boolean T(@NonNull View view) {
        return Api16Impl.h(view);
    }

    @UiThread
    public static void T0(@NonNull View view, boolean z6) {
        t0().g(view, Boolean.valueOf(z6));
    }

    public static boolean U(@NonNull View view) {
        return Api16Impl.i(view);
    }

    public static void U0(@NonNull View view, int i10, int i11) {
        Api23Impl.d(view, i10, i11);
    }

    @UiThread
    public static boolean V(@NonNull View view) {
        Boolean boolF = b().f(view);
        if (boolF != null && boolF.booleanValue()) {
            return true;
        }
        return false;
    }

    @UiThread
    public static void V0(@NonNull View view, @Nullable CharSequence charSequence) {
        d1().g(view, charSequence);
    }

    public static boolean W(@NonNull View view) {
        return Api19Impl.b(view);
    }

    public static void W0(@NonNull View view, @Nullable String str) {
        Api21Impl.v(view, str);
    }

    public static boolean X(@NonNull View view) {
        return Api19Impl.c(view);
    }

    @Deprecated
    public static void X0(View view, float f) {
        view.setTranslationX(f);
    }

    public static boolean Y(@NonNull View view) {
        return Api21Impl.p(view);
    }

    @Deprecated
    public static void Y0(View view, float f) {
        view.setTranslationY(f);
    }

    public static boolean Z(@NonNull View view) {
        return Api17Impl.g(view);
    }

    public static void Z0(@NonNull View view, float f) {
        Api21Impl.w(view, f);
    }

    @UiThread
    public static boolean a0(@NonNull View view) {
        Boolean boolF = t0().f(view);
        if (boolF != null && boolF.booleanValue()) {
            return true;
        }
        return false;
    }

    private static void a1(View view) {
        if (B(view) == 0) {
            F0(view, 1);
        }
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            if (B((View) parent) == 4) {
                F0(view, 2);
                return;
            }
        }
    }

    public static void b1(@NonNull View view, @Nullable WindowInsetsAnimationCompat.Callback callback) {
        WindowInsetsAnimationCompat.d(view, callback);
    }

    public static int c(@NonNull View view, @NonNull CharSequence charSequence, @NonNull AccessibilityViewCommand accessibilityViewCommand) {
        int iT = t(view, charSequence);
        if (iT != -1) {
            d(view, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(iT, charSequence, accessibilityViewCommand));
        }
        return iT;
    }

    @RequiresApi
    static void c0(View view, int i10) {
        boolean z6;
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (!accessibilityManager.isEnabled()) {
            return;
        }
        if (r(view) != null && view.isShown() && view.getWindowVisibility() == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        int i11 = 32;
        if (q(view) == 0 && !z6) {
            if (i10 == 32) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                view.onInitializeAccessibilityEvent(accessibilityEventObtain);
                accessibilityEventObtain.setEventType(32);
                Api19Impl.g(accessibilityEventObtain, i10);
                accessibilityEventObtain.setSource(view);
                view.onPopulateAccessibilityEvent(accessibilityEventObtain);
                accessibilityEventObtain.getText().add(r(view));
                accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain);
                return;
            }
            if (view.getParent() != null) {
                try {
                    Api19Impl.e(view.getParent(), view, view, i10);
                    return;
                } catch (AbstractMethodError e) {
                    Log.e(TAG, view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e);
                    return;
                }
            }
            return;
        }
        AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain();
        if (!z6) {
            i11 = 2048;
        }
        accessibilityEventObtain2.setEventType(i11);
        Api19Impl.g(accessibilityEventObtain2, i10);
        if (z6) {
            accessibilityEventObtain2.getText().add(r(view));
            a1(view);
        }
        view.sendAccessibilityEventUnchecked(accessibilityEventObtain2);
    }

    public static void c1(@NonNull View view, float f) {
        Api21Impl.x(view, f);
    }

    private static void d(@NonNull View view, @NonNull AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat) {
        l(view);
        o0(accessibilityActionCompat.b(), view);
        s(view).add(accessibilityActionCompat);
        c0(view, 0);
    }

    public static void d0(@NonNull View view, int i10) {
        view.offsetLeftAndRight(i10);
    }

    public static void e0(@NonNull View view, int i10) {
        view.offsetTopAndBottom(i10);
    }

    public static void e1(@NonNull View view) {
        Api21Impl.z(view);
    }

    @Deprecated
    public static boolean f(View view, int i10) {
        return view.canScrollHorizontally(i10);
    }

    @NonNull
    public static WindowInsetsCompat f0(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
        WindowInsets windowInsetsX = windowInsetsCompat.x();
        if (windowInsetsX != null) {
            WindowInsets windowInsetsB = Api20Impl.b(view, windowInsetsX);
            if (!windowInsetsB.equals(windowInsetsX)) {
                return WindowInsetsCompat.z(windowInsetsB, view);
            }
        }
        return windowInsetsCompat;
    }

    @Deprecated
    public static boolean g(View view, int i10) {
        return view.canScrollVertically(i10);
    }

    public static void g0(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        view.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat.Q0());
    }

    @NonNull
    public static WindowInsetsCompat h(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Rect rect) {
        return Api21Impl.b(view, windowInsetsCompat, rect);
    }

    @NonNull
    public static WindowInsetsCompat i(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
        WindowInsets windowInsetsX = windowInsetsCompat.x();
        if (windowInsetsX != null) {
            WindowInsets windowInsetsA = Api20Impl.a(view, windowInsetsX);
            if (!windowInsetsA.equals(windowInsetsX)) {
                return WindowInsetsCompat.z(windowInsetsA, view);
            }
        }
        return windowInsetsCompat;
    }

    public static boolean i0(@NonNull View view, int i10, @Nullable Bundle bundle) {
        return Api16Impl.j(view, i10, bundle);
    }

    public static void k0(@NonNull View view) {
        Api16Impl.k(view);
    }

    static void l(@NonNull View view) {
        AccessibilityDelegateCompat accessibilityDelegateCompatN = n(view);
        if (accessibilityDelegateCompatN == null) {
            accessibilityDelegateCompatN = new AccessibilityDelegateCompat();
        }
        u0(view, accessibilityDelegateCompatN);
    }

    public static void l0(@NonNull View view, @NonNull Runnable runnable) {
        Api16Impl.m(view, runnable);
    }

    public static int m() {
        return Api17Impl.a();
    }

    @SuppressLint({"LambdaLast"})
    public static void m0(@NonNull View view, @NonNull Runnable runnable, long j6) {
        Api16Impl.n(view, runnable, j6);
    }

    @Nullable
    public static AccessibilityDelegateCompat n(@NonNull View view) {
        View.AccessibilityDelegate accessibilityDelegateO = o(view);
        if (accessibilityDelegateO == null) {
            return null;
        }
        if (accessibilityDelegateO instanceof AccessibilityDelegateCompat.AccessibilityDelegateAdapter) {
            return ((AccessibilityDelegateCompat.AccessibilityDelegateAdapter) accessibilityDelegateO).mCompat;
        }
        return new AccessibilityDelegateCompat(accessibilityDelegateO);
    }

    public static void n0(@NonNull View view, int i10) {
        o0(i10, view);
        c0(view, 0);
    }

    private static void o0(int i10, View view) {
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> listS = s(view);
        for (int i11 = 0; i11 < listS.size(); i11++) {
            if (listS.get(i11).b() == i10) {
                listS.remove(i11);
                return;
            }
        }
    }

    public static int q(@NonNull View view) {
        return Api19Impl.a(view);
    }

    public static void q0(@NonNull View view) {
        Api20Impl.c(view);
    }

    @Nullable
    @UiThread
    public static CharSequence r(@NonNull View view) {
        return h0().f(view);
    }

    @Deprecated
    public static int r0(int i10, int i11, int i12) {
        return View.resolveSizeAndState(i10, i11, i12);
    }

    private static int t(View view, @NonNull CharSequence charSequence) {
        boolean z6;
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> listS = s(view);
        for (int i10 = 0; i10 < listS.size(); i10++) {
            if (TextUtils.equals(charSequence, listS.get(i10).c())) {
                return listS.get(i10).b();
            }
        }
        int i11 = -1;
        int i12 = 0;
        while (true) {
            int[] iArr = ACCESSIBILITY_ACTIONS_RESOURCE_IDS;
            if (i12 >= iArr.length || i11 != -1) {
                break;
            }
            int i13 = iArr[i12];
            boolean z10 = true;
            for (int i14 = 0; i14 < listS.size(); i14++) {
                if (listS.get(i14).b() != i13) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z10 &= z6;
            }
            if (z10) {
                i11 = i13;
            }
            i12++;
        }
        return i11;
    }

    @Nullable
    public static ColorStateList u(@NonNull View view) {
        return Api21Impl.g(view);
    }

    @Nullable
    public static PorterDuff.Mode v(@NonNull View view) {
        return Api21Impl.h(view);
    }

    @UiThread
    public static void v0(@NonNull View view, boolean z6) {
        b().g(view, Boolean.valueOf(z6));
    }

    @Nullable
    public static Rect w(@NonNull View view) {
        return Api18Impl.a(view);
    }

    public static void w0(@NonNull View view, int i10) {
        Api19Impl.f(view, i10);
    }

    @Nullable
    public static Display x(@NonNull View view) {
        return Api17Impl.b(view);
    }

    @UiThread
    public static void x0(@NonNull View view, @Nullable CharSequence charSequence) {
        h0().g(view, charSequence);
        if (charSequence != null) {
            sAccessibilityPaneVisibilityManager.a(view);
        } else {
            sAccessibilityPaneVisibilityManager.d(view);
        }
    }

    public static float y(@NonNull View view) {
        return Api21Impl.i(view);
    }

    public static void y0(@NonNull View view, @Nullable Drawable drawable) {
        Api16Impl.q(view, drawable);
    }

    public static void z0(@NonNull View view, @Nullable ColorStateList colorStateList) {
        Api21Impl.q(view, colorStateList);
    }
}
