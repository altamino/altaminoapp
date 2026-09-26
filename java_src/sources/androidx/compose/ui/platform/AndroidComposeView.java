package androidx.compose.ui.platform;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Trace;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.animation.AnimationUtils;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.AndroidAutofill;
import androidx.compose.ui.autofill.AndroidAutofill_androidKt;
import androidx.compose.ui.autofill.Autofill;
import androidx.compose.ui.autofill.AutofillCallback;
import androidx.compose.ui.autofill.AutofillTree;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusManagerImpl;
import androidx.compose.ui.focus.FocusModifier;
import androidx.compose.ui.focus.FocusTraversalKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.input.InputMode;
import androidx.compose.ui.input.InputModeManager;
import androidx.compose.ui.input.InputModeManagerImpl;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifier;
import androidx.compose.ui.input.pointer.MotionEventAdapter;
import androidx.compose.ui.input.pointer.PointerIcon;
import androidx.compose.ui.input.pointer.PointerIconService;
import androidx.compose.ui.input.pointer.PointerInputEvent;
import androidx.compose.ui.input.pointer.PointerInputEventData;
import androidx.compose.ui.input.pointer.PointerInputEventProcessor;
import androidx.compose.ui.input.pointer.PointerInputEventProcessorKt;
import androidx.compose.ui.input.pointer.PositionCalculator;
import androidx.compose.ui.input.pointer.ProcessResult;
import androidx.compose.ui.input.rotary.RotaryInputModifierKt;
import androidx.compose.ui.input.rotary.RotaryScrollEvent;
import androidx.compose.ui.layout.RootMeasurePolicy;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.MeasureAndLayoutDelegate;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.node.RootForTest;
import androidx.compose.ui.semantics.SemanticsEntity;
import androidx.compose.ui.semantics.SemanticsModifierCore;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontFamilyResolver_androidKt;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputServiceAndroid;
import androidx.compose.ui.unit.AndroidDensity_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor", "VisibleForTests"})
public final class AndroidComposeView extends ViewGroup implements Owner, ViewRootForTest, PositionCalculator, DefaultLifecycleObserver {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final String FocusTag = "Compose Focus";
    private static final int MaximumLayerCacheSize = 10;

    @Nullable
    private static Method getBooleanMethod;

    @Nullable
    private static Class<?> systemPropertiesClass;

    @Nullable
    private AndroidViewsHandler _androidViewsHandler;

    @Nullable
    private final AndroidAutofill _autofill;

    @NotNull
    private final FocusManagerImpl _focusManager;

    @NotNull
    private final InputModeManagerImpl _inputModeManager;

    @NotNull
    private final WindowInfoImpl _windowInfo;

    @NotNull
    private final AndroidComposeViewAccessibilityDelegateCompat accessibilityDelegate;

    @NotNull
    private final AndroidAccessibilityManager accessibilityManager;

    @NotNull
    private final AutofillTree autofillTree;

    @NotNull
    private final CanvasHolder canvasHolder;

    @NotNull
    private final AndroidClipboardManager clipboardManager;

    @NotNull
    private e8.l<? super Configuration, w7.l0> configurationChangeObserver;
    private int currentFontWeightAdjustment;

    @NotNull
    private Density density;

    @Nullable
    private PointerIcon desiredPointerIcon;

    @NotNull
    private final List<OwnedLayer> dirtyLayers;

    @NotNull
    private final MutableVector<e8.a<w7.l0>> endApplyChangesListeners;

    @NotNull
    private final MutableState fontFamilyResolver$delegate;

    @NotNull
    private final Font.ResourceLoader fontLoader;
    private boolean forceUseMatrixCache;

    @NotNull
    private final ViewTreeObserver.OnGlobalLayoutListener globalLayoutListener;
    private long globalPosition;

    @NotNull
    private final HapticFeedback hapticFeedBack;
    private boolean hoverExitReceived;
    private boolean isDrawingContent;
    private boolean isRenderNodeCompatible;

    @NotNull
    private final KeyInputModifier keyInputModifier;
    private long lastDownPointerPosition;
    private long lastMatrixRecalculationAnimationTime;

    @NotNull
    private final WeakCache<OwnedLayer> layerCache;

    @NotNull
    private final MutableState layoutDirection$delegate;

    @NotNull
    private final CalculateMatrixToWindow matrixToWindow;

    @NotNull
    private final MeasureAndLayoutDelegate measureAndLayoutDelegate;

    @NotNull
    private final MotionEventAdapter motionEventAdapter;
    private boolean observationClearRequested;

    @Nullable
    private Constraints onMeasureConstraints;

    @Nullable
    private e8.l<? super ViewTreeOwners, w7.l0> onViewTreeOwnersAvailable;

    @NotNull
    private final PointerIconService pointerIconService;

    @NotNull
    private final PointerInputEventProcessor pointerInputEventProcessor;

    @Nullable
    private List<OwnedLayer> postponedDirtyLayers;

    @Nullable
    private MotionEvent previousMotionEvent;
    private long relayoutTime;

    @NotNull
    private final e8.a<w7.l0> resendMotionEventOnLayout;

    @NotNull
    private final AndroidComposeView$resendMotionEventRunnable$1 resendMotionEventRunnable;

    @NotNull
    private final LayoutNode root;

    @NotNull
    private final RootForTest rootForTest;

    @NotNull
    private final Modifier rotaryInputModifier;

    @NotNull
    private final ViewTreeObserver.OnScrollChangedListener scrollChangedListener;

    @NotNull
    private final SemanticsModifierCore semanticsModifier;

    @NotNull
    private final SemanticsOwner semanticsOwner;

    @NotNull
    private final Runnable sendHoverExitEvent;

    @NotNull
    private final LayoutNodeDrawScope sharedDrawScope;
    private boolean showLayoutBounds;

    @NotNull
    private final OwnerSnapshotObserver snapshotObserver;
    private boolean superclassInitComplete;

    @NotNull
    private final TextInputService textInputService;

    @NotNull
    private final TextInputServiceAndroid textInputServiceAndroid;

    @NotNull
    private final TextToolbar textToolbar;

    @NotNull
    private final int[] tmpPositionArray;

    @NotNull
    private final ViewTreeObserver.OnTouchModeChangeListener touchModeChangeListener;

    @NotNull
    private final ViewConfiguration viewConfiguration;

    @Nullable
    private DrawChildContainer viewLayersContainer;

    @NotNull
    private final float[] viewToWindowMatrix;

    @NotNull
    private final MutableState viewTreeOwners$delegate;
    private boolean wasMeasuredWithMultipleConstraints;
    private long windowPosition;

    @NotNull
    private final float[] windowToViewMatrix;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @SuppressLint({"PrivateApi", "BanUncheckedReflection"})
        public final boolean b() {
            try {
                if (AndroidComposeView.systemPropertiesClass == null) {
                    AndroidComposeView.systemPropertiesClass = Class.forName("android.os.SystemProperties");
                    Class cls = AndroidComposeView.systemPropertiesClass;
                    AndroidComposeView.getBooleanMethod = cls != null ? cls.getDeclaredMethod("getBoolean", String.class, Boolean.TYPE) : null;
                }
                Method method = AndroidComposeView.getBooleanMethod;
                Object objInvoke = method != null ? method.invoke(null, "debug.layout", Boolean.FALSE) : null;
                Boolean bool = objInvoke instanceof Boolean ? (Boolean) objInvoke : null;
                if (bool != null) {
                    return bool.booleanValue();
                }
                return false;
            } catch (Exception unused) {
                return false;
            }
        }

        private Companion() {
        }
    }

    @StabilityInferred
    public static final class ViewTreeOwners {
        public static final int $stable = 8;

        @NotNull
        private final LifecycleOwner lifecycleOwner;

        @NotNull
        private final SavedStateRegistryOwner savedStateRegistryOwner;

        @NotNull
        public final LifecycleOwner a() {
            return this.lifecycleOwner;
        }

        @NotNull
        public final SavedStateRegistryOwner b() {
            return this.savedStateRegistryOwner;
        }

        public ViewTreeOwners(@NotNull LifecycleOwner lifecycleOwner, @NotNull SavedStateRegistryOwner savedStateRegistryOwner) {
            kotlin.jvm.internal.t.j(lifecycleOwner, "lifecycleOwner");
            kotlin.jvm.internal.t.j(savedStateRegistryOwner, "savedStateRegistryOwner");
            this.lifecycleOwner = lifecycleOwner;
            this.savedStateRegistryOwner = savedStateRegistryOwner;
        }
    }

    private final boolean G() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static /* synthetic */ void getFontLoader$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getLastMatrixRecalculationAnimationTime$ui_release$annotations() {
    }

    public static /* synthetic */ void getShowLayoutBounds$annotations() {
    }

    public static /* synthetic */ void getTextInputService$annotations() {
    }

    @Nullable
    public final View findViewByAccessibilityIdTraversal(int i10) throws IllegalAccessException, InvocationTargetException {
        View viewL = null;
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                Method declaredMethod = View.class.getDeclaredMethod("findViewByAccessibilityIdTraversal", Integer.TYPE);
                declaredMethod.setAccessible(true);
                Object objInvoke = declaredMethod.invoke(this, Integer.valueOf(i10));
                if (objInvoke instanceof View) {
                    viewL = (View) objInvoke;
                }
            } else {
                viewL = L(i10, this);
            }
        } catch (NoSuchMethodException unused) {
        }
        return viewL;
    }

    public final void g0() {
        this.observationClearRequested = true;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public AndroidAccessibilityManager getAccessibilityManager() {
        return this.accessibilityManager;
    }

    @Override // androidx.compose.ui.node.Owner
    @Nullable
    public Autofill getAutofill() {
        return this._autofill;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public AutofillTree getAutofillTree() {
        return this.autofillTree;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public AndroidClipboardManager getClipboardManager() {
        return this.clipboardManager;
    }

    @NotNull
    public final e8.l<Configuration, w7.l0> getConfigurationChangeObserver() {
        return this.configurationChangeObserver;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public Density getDensity() {
        return this.density;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public FocusManager getFocusManager() {
        return this._focusManager;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public Font.ResourceLoader getFontLoader() {
        return this.fontLoader;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public HapticFeedback getHapticFeedBack() {
        return this.hapticFeedBack;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public InputModeManager getInputModeManager() {
        return this._inputModeManager;
    }

    public final long getLastMatrixRecalculationAnimationTime$ui_release() {
        return this.lastMatrixRecalculationAnimationTime;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public PointerIconService getPointerIconService() {
        return this.pointerIconService;
    }

    @NotNull
    public LayoutNode getRoot() {
        return this.root;
    }

    @NotNull
    public RootForTest getRootForTest() {
        return this.rootForTest;
    }

    @NotNull
    public SemanticsOwner getSemanticsOwner() {
        return this.semanticsOwner;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public LayoutNodeDrawScope getSharedDrawScope() {
        return this.sharedDrawScope;
    }

    @Override // androidx.compose.ui.node.Owner
    public boolean getShowLayoutBounds() {
        return this.showLayoutBounds;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public OwnerSnapshotObserver getSnapshotObserver() {
        return this.snapshotObserver;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public TextInputService getTextInputService() {
        return this.textInputService;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public TextToolbar getTextToolbar() {
        return this.textToolbar;
    }

    @NotNull
    public View getView() {
        return this;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public ViewConfiguration getViewConfiguration() {
        return this.viewConfiguration;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public WindowInfo getWindowInfo() {
        return this._windowInfo;
    }

    @Override // androidx.compose.ui.node.Owner
    public void l(@NotNull LayoutNode node) {
        kotlin.jvm.internal.t.j(node, "node");
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.c.a(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public /* synthetic */ void onDestroy(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.c.b(this, lifecycleOwner);
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        kotlin.jvm.internal.t.j(canvas, "canvas");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        this.onMeasureConstraints = null;
        q0();
        if (this._androidViewsHandler != null) {
            getAndroidViewsHandler$ui_release().layout(0, 0, i12 - i10, i13 - i11);
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.c.c(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public /* synthetic */ void onStart(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.c.e(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public /* synthetic */ void onStop(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.c.f(this, lifecycleOwner);
    }

    public final void setConfigurationChangeObserver(@NotNull e8.l<? super Configuration, w7.l0> lVar) {
        kotlin.jvm.internal.t.j(lVar, "<set-?>");
        this.configurationChangeObserver = lVar;
    }

    public final void setLastMatrixRecalculationAnimationTime$ui_release(long j6) {
        this.lastMatrixRecalculationAnimationTime = j6;
    }

    @Override // androidx.compose.ui.node.Owner
    public void setShowLayoutBounds(boolean z6) {
        this.showLayoutBounds = z6;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v10, types: [androidx.compose.ui.platform.AndroidComposeView$resendMotionEventRunnable$1] */
    public AndroidComposeView(@NotNull Context context) {
        super(context);
        kotlin.jvm.internal.t.j(context, "context");
        Offset.Companion companion = Offset.Companion;
        this.lastDownPointerPosition = companion.b();
        int i10 = 1;
        this.superclassInitComplete = true;
        Object[] objArr = 0;
        this.sharedDrawScope = new LayoutNodeDrawScope(null, i10, 0 == true ? 1 : 0);
        this.density = AndroidDensity_androidKt.a(context);
        SemanticsModifierCore semanticsModifierCore = new SemanticsModifierCore(SemanticsModifierCore.Companion.a(), false, false, AndroidComposeView$semanticsModifier$1.INSTANCE);
        this.semanticsModifier = semanticsModifierCore;
        FocusManagerImpl focusManagerImpl = new FocusManagerImpl(0 == true ? 1 : 0, i10, 0 == true ? 1 : 0);
        this._focusManager = focusManagerImpl;
        this._windowInfo = new WindowInfoImpl();
        KeyInputModifier keyInputModifier = new KeyInputModifier(new AndroidComposeView$keyInputModifier$1(this), null);
        this.keyInputModifier = keyInputModifier;
        Modifier.Companion companion2 = Modifier.Companion;
        Modifier modifierC = RotaryInputModifierKt.c(companion2, AndroidComposeView$rotaryInputModifier$1.INSTANCE);
        this.rotaryInputModifier = modifierC;
        this.canvasHolder = new CanvasHolder();
        LayoutNode layoutNode = new LayoutNode(false, i10, 0 == true ? 1 : 0);
        layoutNode.c(RootMeasurePolicy.INSTANCE);
        layoutNode.d(companion2.B(semanticsModifierCore).B(modifierC).B(focusManagerImpl.f()).B(keyInputModifier));
        layoutNode.g(getDensity());
        this.root = layoutNode;
        this.rootForTest = this;
        this.semanticsOwner = new SemanticsOwner(getRoot());
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = new AndroidComposeViewAccessibilityDelegateCompat(this);
        this.accessibilityDelegate = androidComposeViewAccessibilityDelegateCompat;
        this.autofillTree = new AutofillTree();
        this.dirtyLayers = new ArrayList();
        this.motionEventAdapter = new MotionEventAdapter();
        this.pointerInputEventProcessor = new PointerInputEventProcessor(getRoot());
        this.configurationChangeObserver = AndroidComposeView$configurationChangeObserver$1.INSTANCE;
        this._autofill = G() ? new AndroidAutofill(this, getAutofillTree()) : null;
        this.clipboardManager = new AndroidClipboardManager(context);
        this.accessibilityManager = new AndroidAccessibilityManager(context);
        this.snapshotObserver = new OwnerSnapshotObserver(new AndroidComposeView$snapshotObserver$1(this));
        this.measureAndLayoutDelegate = new MeasureAndLayoutDelegate(getRoot());
        android.view.ViewConfiguration viewConfiguration = android.view.ViewConfiguration.get(context);
        kotlin.jvm.internal.t.i(viewConfiguration, "get(context)");
        this.viewConfiguration = new AndroidViewConfiguration(viewConfiguration);
        this.globalPosition = IntOffset.Companion.a();
        this.tmpPositionArray = new int[]{0, 0};
        this.viewToWindowMatrix = Matrix.c(null, 1, null);
        this.windowToViewMatrix = Matrix.c(null, 1, null);
        this.lastMatrixRecalculationAnimationTime = -1L;
        this.windowPosition = companion.a();
        this.isRenderNodeCompatible = true;
        this.viewTreeOwners$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.globalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.compose.ui.platform.c
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                AndroidComposeView.O(this.f116a);
            }
        };
        this.scrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: androidx.compose.ui.platform.d
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                AndroidComposeView.j0(this.f117a);
            }
        };
        this.touchModeChangeListener = new ViewTreeObserver.OnTouchModeChangeListener() { // from class: androidx.compose.ui.platform.e
            @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
            public final void onTouchModeChanged(boolean z6) {
                AndroidComposeView.p0(this.f118a, z6);
            }
        };
        TextInputServiceAndroid textInputServiceAndroid = new TextInputServiceAndroid(this);
        this.textInputServiceAndroid = textInputServiceAndroid;
        this.textInputService = AndroidComposeView_androidKt.e().invoke(textInputServiceAndroid);
        this.fontLoader = new AndroidFontResourceLoader(context);
        this.fontFamilyResolver$delegate = SnapshotStateKt.g(FontFamilyResolver_androidKt.a(context), SnapshotStateKt.m());
        Configuration configuration = context.getResources().getConfiguration();
        kotlin.jvm.internal.t.i(configuration, "context.resources.configuration");
        this.currentFontWeightAdjustment = N(configuration);
        Configuration configuration2 = context.getResources().getConfiguration();
        kotlin.jvm.internal.t.i(configuration2, "context.resources.configuration");
        this.layoutDirection$delegate = SnapshotStateKt__SnapshotStateKt.e(AndroidComposeView_androidKt.d(configuration2), null, 2, null);
        this.hapticFeedBack = new PlatformHapticFeedback(this);
        this._inputModeManager = new InputModeManagerImpl(isInTouchMode() ? InputMode.Companion.b() : InputMode.Companion.a(), new AndroidComposeView$_inputModeManager$1(this), objArr == true ? 1 : 0);
        this.textToolbar = new AndroidTextToolbar(this);
        this.layerCache = new WeakCache<>();
        this.endApplyChangesListeners = new MutableVector<>(new e8.a[16], 0);
        this.resendMotionEventRunnable = new Runnable() { // from class: androidx.compose.ui.platform.AndroidComposeView$resendMotionEventRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                this.this$0.removeCallbacks(this);
                MotionEvent motionEvent = this.this$0.previousMotionEvent;
                if (motionEvent != null) {
                    boolean z6 = motionEvent.getToolType(0) == 3;
                    int actionMasked = motionEvent.getActionMasked();
                    if (z6) {
                        if (actionMasked == 10 || actionMasked == 1) {
                            return;
                        }
                    } else if (actionMasked == 1) {
                        return;
                    }
                    int i11 = 7;
                    if (actionMasked != 7 && actionMasked != 9) {
                        i11 = 2;
                    }
                    AndroidComposeView androidComposeView = this.this$0;
                    androidComposeView.n0(motionEvent, i11, androidComposeView.relayoutTime, false);
                }
            }
        };
        this.sendHoverExitEvent = new Runnable() { // from class: androidx.compose.ui.platform.f
            @Override // java.lang.Runnable
            public final void run() {
                AndroidComposeView.k0(this.f119a);
            }
        };
        this.resendMotionEventOnLayout = new AndroidComposeView$resendMotionEventOnLayout$1(this);
        int i11 = Build.VERSION.SDK_INT;
        this.matrixToWindow = i11 >= 29 ? new CalculateMatrixToWindowApi29() : new CalculateMatrixToWindowApi21();
        setWillNotDraw(false);
        setFocusable(true);
        if (i11 >= 26) {
            AndroidComposeViewVerificationHelperMethodsO.INSTANCE.a(this, 1, false);
        }
        setFocusableInTouchMode(true);
        setClipChildren(false);
        setTransitionGroup(true);
        ViewCompat.u0(this, androidComposeViewAccessibilityDelegateCompat);
        e8.l<ViewRootForTest, w7.l0> lVarA = ViewRootForTest.Companion.a();
        if (lVarA != null) {
            lVarA.invoke(this);
        }
        getRoot().E(this);
        if (i11 >= 29) {
            AndroidComposeViewForceDarkModeQ.INSTANCE.a(this);
        }
        this.pointerIconService = new PointerIconService() { // from class: androidx.compose.ui.platform.AndroidComposeView$pointerIconService$1
            @Override // androidx.compose.ui.input.pointer.PointerIconService
            public void a(@NotNull PointerIcon value) {
                kotlin.jvm.internal.t.j(value, "value");
                this.this$0.desiredPointerIcon = value;
            }
        };
    }

    private final View L(int i10, View view) throws NoSuchMethodException {
        if (Build.VERSION.SDK_INT >= 29) {
            return null;
        }
        Method declaredMethod = View.class.getDeclaredMethod("getAccessibilityViewId", new Class[0]);
        declaredMethod.setAccessible(true);
        if (kotlin.jvm.internal.t.e(declaredMethod.invoke(view, new Object[0]), Integer.valueOf(i10))) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            kotlin.jvm.internal.t.i(childAt, "currentView.getChildAt(i)");
            View viewL = L(i10, childAt);
            if (viewL != null) {
                return viewL;
            }
        }
        return null;
    }

    private final int N(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            return configuration.fontWeightAdjustment;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(AndroidComposeView this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.q0();
    }

    private final int P(MotionEvent motionEvent) {
        removeCallbacks(this.resendMotionEventRunnable);
        try {
            c0(motionEvent);
            boolean z6 = true;
            this.forceUseMatrixCache = true;
            a(false);
            this.desiredPointerIcon = null;
            Trace.beginSection("AndroidOwner:onTouch");
            try {
                int actionMasked = motionEvent.getActionMasked();
                MotionEvent motionEvent2 = this.previousMotionEvent;
                boolean z10 = motionEvent2 != null && motionEvent2.getToolType(0) == 3;
                if (motionEvent2 != null && R(motionEvent, motionEvent2)) {
                    if (W(motionEvent2)) {
                        this.pointerInputEventProcessor.b();
                    } else if (motionEvent2.getActionMasked() != 10 && z10) {
                        o0(this, motionEvent2, 10, motionEvent2.getEventTime(), false, 8, null);
                    }
                }
                if (motionEvent.getToolType(0) != 3) {
                    z6 = false;
                }
                if (!z10 && z6 && actionMasked != 3 && actionMasked != 9 && X(motionEvent)) {
                    o0(this, motionEvent, 9, motionEvent.getEventTime(), false, 8, null);
                }
                if (motionEvent2 != null) {
                    motionEvent2.recycle();
                }
                this.previousMotionEvent = MotionEvent.obtainNoHistory(motionEvent);
                int iM0 = m0(motionEvent);
                Trace.endSection();
                if (Build.VERSION.SDK_INT >= 24) {
                    AndroidComposeViewVerificationHelperMethodsN.INSTANCE.a(this, this.desiredPointerIcon);
                }
                this.forceUseMatrixCache = false;
                return iM0;
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        } catch (Throwable th2) {
            this.forceUseMatrixCache = false;
            throw th2;
        }
    }

    private final void U(LayoutNode layoutNode) {
        int i10 = 0;
        MeasureAndLayoutDelegate.s(this.measureAndLayoutDelegate, layoutNode, false, 2, null);
        MutableVector<LayoutNode> mutableVectorZ0 = layoutNode.z0();
        int iN = mutableVectorZ0.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVectorZ0.m();
            do {
                U(layoutNodeArrM[i10]);
                i10++;
            } while (i10 < iN);
        }
    }

    private final void b0() {
        if (this.forceUseMatrixCache) {
            return;
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (jCurrentAnimationTimeMillis != this.lastMatrixRecalculationAnimationTime) {
            this.lastMatrixRecalculationAnimationTime = jCurrentAnimationTimeMillis;
            d0();
            ViewParent parent = getParent();
            View view = this;
            while (parent instanceof ViewGroup) {
                view = (View) parent;
                parent = ((ViewGroup) view).getParent();
            }
            view.getLocationOnScreen(this.tmpPositionArray);
            int[] iArr = this.tmpPositionArray;
            float f = iArr[0];
            float f6 = iArr[1];
            view.getLocationInWindow(iArr);
            int[] iArr2 = this.tmpPositionArray;
            this.windowPosition = OffsetKt.a(f - iArr2[0], f6 - iArr2[1]);
        }
    }

    private final void d0() {
        this.matrixToWindow.a(this, this.viewToWindowMatrix);
        InvertMatrixKt.a(this.viewToWindowMatrix, this.windowToViewMatrix);
    }

    static /* synthetic */ void i0(AndroidComposeView androidComposeView, LayoutNode layoutNode, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            layoutNode = null;
        }
        androidComposeView.h0(layoutNode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(AndroidComposeView this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.q0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(AndroidComposeView this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.hoverExitReceived = false;
        MotionEvent motionEvent = this$0.previousMotionEvent;
        kotlin.jvm.internal.t.g(motionEvent);
        if (motionEvent.getActionMasked() != 10) {
            throw new IllegalStateException("The ACTION_HOVER_EXIT event was not cleared.".toString());
        }
        this$0.m0(motionEvent);
    }

    private final int m0(MotionEvent motionEvent) {
        PointerInputEventData pointerInputEventDataPrevious;
        PointerInputEvent pointerInputEventC = this.motionEventAdapter.c(motionEvent, this);
        if (pointerInputEventC == null) {
            this.pointerInputEventProcessor.b();
            return PointerInputEventProcessorKt.a(false, false);
        }
        List<PointerInputEventData> listB = pointerInputEventC.b();
        ListIterator<PointerInputEventData> listIterator = listB.listIterator(listB.size());
        do {
            if (!listIterator.hasPrevious()) {
                pointerInputEventDataPrevious = null;
                break;
            }
            pointerInputEventDataPrevious = listIterator.previous();
        } while (!pointerInputEventDataPrevious.a());
        PointerInputEventData pointerInputEventData = pointerInputEventDataPrevious;
        if (pointerInputEventData != null) {
            this.lastDownPointerPosition = pointerInputEventData.e();
        }
        int iA = this.pointerInputEventProcessor.a(pointerInputEventC, this, X(motionEvent));
        int actionMasked = motionEvent.getActionMasked();
        if ((actionMasked != 0 && actionMasked != 5) || ProcessResult.d(iA)) {
            return iA;
        }
        this.motionEventAdapter.e(motionEvent.getPointerId(motionEvent.getActionIndex()));
        return iA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n0(MotionEvent motionEvent, int i10, long j6, boolean z6) {
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = -1;
        if (actionMasked != 1) {
            if (actionMasked == 6) {
                actionIndex = motionEvent.getActionIndex();
            }
        } else if (i10 != 9 && i10 != 10) {
            actionIndex = 0;
        }
        int pointerCount = motionEvent.getPointerCount() - (actionIndex >= 0 ? 1 : 0);
        if (pointerCount == 0) {
            return;
        }
        MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[pointerCount];
        for (int i11 = 0; i11 < pointerCount; i11++) {
            pointerPropertiesArr[i11] = new MotionEvent.PointerProperties();
        }
        MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[pointerCount];
        for (int i12 = 0; i12 < pointerCount; i12++) {
            pointerCoordsArr[i12] = new MotionEvent.PointerCoords();
        }
        int i13 = 0;
        while (i13 < pointerCount) {
            int i14 = ((actionIndex < 0 || i13 < actionIndex) ? 0 : 1) + i13;
            motionEvent.getPointerProperties(i14, pointerPropertiesArr[i13]);
            MotionEvent.PointerCoords pointerCoords = pointerCoordsArr[i13];
            motionEvent.getPointerCoords(i14, pointerCoords);
            long jN = n(OffsetKt.a(pointerCoords.x, pointerCoords.y));
            pointerCoords.x = Offset.m(jN);
            pointerCoords.y = Offset.n(jN);
            i13++;
        }
        MotionEvent event = MotionEvent.obtain(motionEvent.getDownTime() == motionEvent.getEventTime() ? j6 : motionEvent.getDownTime(), j6, i10, pointerCount, pointerPropertiesArr, pointerCoordsArr, motionEvent.getMetaState(), z6 ? 0 : motionEvent.getButtonState(), motionEvent.getXPrecision(), motionEvent.getYPrecision(), motionEvent.getDeviceId(), motionEvent.getEdgeFlags(), motionEvent.getSource(), motionEvent.getFlags());
        MotionEventAdapter motionEventAdapter = this.motionEventAdapter;
        kotlin.jvm.internal.t.i(event, "event");
        PointerInputEvent pointerInputEventC = motionEventAdapter.c(event, this);
        kotlin.jvm.internal.t.g(pointerInputEventC);
        this.pointerInputEventProcessor.a(pointerInputEventC, this, true);
        event.recycle();
    }

    static /* synthetic */ void o0(AndroidComposeView androidComposeView, MotionEvent motionEvent, int i10, long j6, boolean z6, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            z6 = true;
        }
        androidComposeView.n0(motionEvent, i10, j6, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(AndroidComposeView this$0, boolean z6) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0._inputModeManager.b(z6 ? InputMode.Companion.b() : InputMode.Companion.a());
        this$0._focusManager.c();
    }

    private final void q0() {
        getLocationOnScreen(this.tmpPositionArray);
        boolean z6 = false;
        if (IntOffset.j(this.globalPosition) != this.tmpPositionArray[0] || IntOffset.k(this.globalPosition) != this.tmpPositionArray[1]) {
            int[] iArr = this.tmpPositionArray;
            this.globalPosition = IntOffsetKt.a(iArr[0], iArr[1]);
            z6 = true;
        }
        this.measureAndLayoutDelegate.d(z6);
    }

    private void setFontFamilyResolver(FontFamily.Resolver resolver) {
        this.fontFamilyResolver$delegate.setValue(resolver);
    }

    private void setLayoutDirection(LayoutDirection layoutDirection) {
        this.layoutDirection$delegate.setValue(layoutDirection);
    }

    private final void setViewTreeOwners(ViewTreeOwners viewTreeOwners) {
        this.viewTreeOwners$delegate.setValue(viewTreeOwners);
    }

    public final void F(@NotNull AndroidViewHolder view, @NotNull final LayoutNode layoutNode) {
        kotlin.jvm.internal.t.j(view, "view");
        kotlin.jvm.internal.t.j(layoutNode, "layoutNode");
        getAndroidViewsHandler$ui_release().getHolderToLayoutNode().put(view, layoutNode);
        getAndroidViewsHandler$ui_release().addView(view);
        getAndroidViewsHandler$ui_release().getLayoutNodeToHolder().put(layoutNode, view);
        ViewCompat.F0(view, 1);
        ViewCompat.u0(view, new AccessibilityDelegateCompat() { // from class: androidx.compose.ui.platform.AndroidComposeView$addAndroidView$1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(@NotNull View host, @NotNull AccessibilityNodeInfoCompat info) {
                kotlin.jvm.internal.t.j(host, "host");
                kotlin.jvm.internal.t.j(info, "info");
                super.onInitializeAccessibilityNodeInfo(host, info);
                SemanticsEntity semanticsEntityJ = SemanticsNodeKt.j(layoutNode);
                kotlin.jvm.internal.t.g(semanticsEntityJ);
                SemanticsNode semanticsNodeM = new SemanticsNode(semanticsEntityJ, false).m();
                kotlin.jvm.internal.t.g(semanticsNodeM);
                int i10 = semanticsNodeM.i();
                if (i10 == this.getSemanticsOwner().a().i()) {
                    i10 = -1;
                }
                info.A0(this, i10);
            }
        });
    }

    @Nullable
    public final Object H(@NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        Object objK = this.accessibilityDelegate.k(dVar);
        return objK == kotlin.coroutines.intrinsics.d.e() ? objK : w7.l0.INSTANCE;
    }

    public final void K(@NotNull AndroidViewHolder view, @NotNull Canvas canvas) {
        kotlin.jvm.internal.t.j(view, "view");
        kotlin.jvm.internal.t.j(canvas, "canvas");
        getAndroidViewsHandler$ui_release().a(view, canvas);
    }

    @Nullable
    public FocusDirection M(@NotNull KeyEvent keyEvent) {
        kotlin.jvm.internal.t.j(keyEvent, "keyEvent");
        long jA = KeyEvent_androidKt.a(keyEvent);
        Key.Companion companion = Key.Companion;
        if (Key.m(jA, companion.j())) {
            return FocusDirection.i(KeyEvent_androidKt.e(keyEvent) ? FocusDirection.Companion.f() : FocusDirection.Companion.d());
        }
        if (Key.m(jA, companion.e())) {
            return FocusDirection.i(FocusDirection.Companion.g());
        }
        if (Key.m(jA, companion.d())) {
            return FocusDirection.i(FocusDirection.Companion.c());
        }
        if (Key.m(jA, companion.f())) {
            return FocusDirection.i(FocusDirection.Companion.h());
        }
        if (Key.m(jA, companion.c())) {
            return FocusDirection.i(FocusDirection.Companion.a());
        }
        if (Key.m(jA, companion.b()) || Key.m(jA, companion.g()) || Key.m(jA, companion.i())) {
            return FocusDirection.i(FocusDirection.Companion.b());
        }
        if (Key.m(jA, companion.a()) || Key.m(jA, companion.h())) {
            return FocusDirection.i(FocusDirection.Companion.e());
        }
        return null;
    }

    @Nullable
    public final Object Z(@NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        Object objN = this.textInputServiceAndroid.n(dVar);
        return objN == kotlin.coroutines.intrinsics.d.e() ? objN : w7.l0.INSTANCE;
    }

    @Override // androidx.compose.ui.node.Owner
    public void a(boolean z6) {
        e8.a<w7.l0> aVar;
        Trace.beginSection("AndroidOwner:measureAndLayout");
        if (z6) {
            try {
                aVar = this.resendMotionEventOnLayout;
            } finally {
                Trace.endSection();
            }
        } else {
            aVar = null;
        }
        if (this.measureAndLayoutDelegate.k(aVar)) {
            requestLayout();
        }
        MeasureAndLayoutDelegate.e(this.measureAndLayoutDelegate, false, 1, null);
        w7.l0 l0Var = w7.l0.INSTANCE;
    }

    public final void a0(@NotNull OwnedLayer layer, boolean z6) {
        kotlin.jvm.internal.t.j(layer, "layer");
        if (!z6) {
            if (!this.isDrawingContent && !this.dirtyLayers.remove(layer)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        } else {
            if (!this.isDrawingContent) {
                this.dirtyLayers.add(layer);
                return;
            }
            List arrayList = this.postponedDirtyLayers;
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.postponedDirtyLayers = arrayList;
            }
            arrayList.add(layer);
        }
    }

    @Override // android.view.View
    public void autofill(@NotNull SparseArray<AutofillValue> values) {
        AndroidAutofill androidAutofill;
        kotlin.jvm.internal.t.j(values, "values");
        if (!G() || (androidAutofill = this._autofill) == null) {
            return;
        }
        AndroidAutofill_androidKt.a(androidAutofill, values);
    }

    @Override // androidx.compose.ui.node.Owner
    public void b(@NotNull e8.a<w7.l0> listener) {
        kotlin.jvm.internal.t.j(listener, "listener");
        if (this.endApplyChangesListeners.i(listener)) {
            return;
        }
        this.endApplyChangesListeners.b(listener);
    }

    @Override // androidx.compose.ui.node.Owner
    public void c(@NotNull Owner.OnLayoutCompletedListener listener) {
        kotlin.jvm.internal.t.j(listener, "listener");
        this.measureAndLayoutDelegate.n(listener);
        i0(this, null, 1, null);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i10) {
        return this.accessibilityDelegate.l(false, i10, this.lastDownPointerPosition);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i10) {
        return this.accessibilityDelegate.l(true, i10, this.lastDownPointerPosition);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NotNull Canvas canvas) {
        kotlin.jvm.internal.t.j(canvas, "canvas");
        if (!isAttachedToWindow()) {
            T(getRoot());
        }
        androidx.compose.ui.node.b.a(this, false, 1, null);
        this.isDrawingContent = true;
        CanvasHolder canvasHolder = this.canvasHolder;
        Canvas canvasY = canvasHolder.a().y();
        canvasHolder.a().z(canvas);
        getRoot().O(canvasHolder.a());
        canvasHolder.a().z(canvasY);
        if (!this.dirtyLayers.isEmpty()) {
            int size = this.dirtyLayers.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.dirtyLayers.get(i10).i();
            }
        }
        if (ViewLayer.Companion.b()) {
            int iSave = canvas.save();
            canvas.clipRect(0.0f, 0.0f, 0.0f, 0.0f);
            super.dispatchDraw(canvas);
            canvas.restoreToCount(iSave);
        }
        this.dirtyLayers.clear();
        this.isDrawingContent = false;
        List<OwnedLayer> list = this.postponedDirtyLayers;
        if (list != null) {
            kotlin.jvm.internal.t.g(list);
            this.dirtyLayers.addAll(list);
            list.clear();
        }
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(@NotNull MotionEvent event) {
        kotlin.jvm.internal.t.j(event, "event");
        if (event.getActionMasked() != 8) {
            return super.dispatchGenericMotionEvent(event);
        }
        if (event.isFromSource(4194304)) {
            return Q(event);
        }
        return (V(event) || !isAttachedToWindow()) ? super.dispatchGenericMotionEvent(event) : ProcessResult.d(P(event));
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchHoverEvent(@NotNull MotionEvent event) {
        kotlin.jvm.internal.t.j(event, "event");
        if (this.hoverExitReceived) {
            removeCallbacks(this.sendHoverExitEvent);
            this.sendHoverExitEvent.run();
        }
        if (V(event) || !isAttachedToWindow()) {
            return false;
        }
        if (event.isFromSource(4098) && event.getToolType(0) == 1) {
            return this.accessibilityDelegate.s(event);
        }
        int actionMasked = event.getActionMasked();
        if (actionMasked != 7) {
            if (actionMasked == 10 && X(event)) {
                if (event.getToolType(0) != 3) {
                    MotionEvent motionEvent = this.previousMotionEvent;
                    if (motionEvent != null) {
                        motionEvent.recycle();
                    }
                    this.previousMotionEvent = MotionEvent.obtainNoHistory(event);
                    this.hoverExitReceived = true;
                    post(this.sendHoverExitEvent);
                    return false;
                }
                if (event.getButtonState() != 0) {
                    return false;
                }
            }
        } else if (!Y(event)) {
            return false;
        }
        return ProcessResult.d(P(event));
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(@NotNull KeyEvent event) {
        kotlin.jvm.internal.t.j(event, "event");
        return isFocused() ? l0(androidx.compose.ui.input.key.KeyEvent.b(event)) : super.dispatchKeyEvent(event);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(@NotNull MotionEvent motionEvent) {
        kotlin.jvm.internal.t.j(motionEvent, "motionEvent");
        if (this.hoverExitReceived) {
            removeCallbacks(this.sendHoverExitEvent);
            MotionEvent motionEvent2 = this.previousMotionEvent;
            kotlin.jvm.internal.t.g(motionEvent2);
            if (motionEvent.getActionMasked() != 0 || R(motionEvent, motionEvent2)) {
                this.sendHoverExitEvent.run();
            } else {
                this.hoverExitReceived = false;
            }
        }
        if (V(motionEvent) || !isAttachedToWindow()) {
            return false;
        }
        if (motionEvent.getActionMasked() == 2 && !Y(motionEvent)) {
            return false;
        }
        int iP = P(motionEvent);
        if (ProcessResult.c(iP)) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return ProcessResult.d(iP);
    }

    @Override // androidx.compose.ui.node.Owner
    public void e(@NotNull LayoutNode layoutNode, long j6) {
        kotlin.jvm.internal.t.j(layoutNode, "layoutNode");
        Trace.beginSection("AndroidOwner:measureAndLayout");
        try {
            this.measureAndLayoutDelegate.l(layoutNode, j6);
            MeasureAndLayoutDelegate.e(this.measureAndLayoutDelegate, false, 1, null);
            w7.l0 l0Var = w7.l0.INSTANCE;
        } finally {
            Trace.endSection();
        }
    }

    public final boolean e0(@NotNull OwnedLayer layer) {
        kotlin.jvm.internal.t.j(layer, "layer");
        if (this.viewLayersContainer != null) {
            ViewLayer.Companion.b();
        }
        this.layerCache.c(layer);
        return true;
    }

    public final void f0(@NotNull AndroidViewHolder view) {
        kotlin.jvm.internal.t.j(view, "view");
        getAndroidViewsHandler$ui_release().removeView(view);
        HashMap<LayoutNode, AndroidViewHolder> layoutNodeToHolder = getAndroidViewsHandler$ui_release().getLayoutNodeToHolder();
        kotlin.jvm.internal.v0.d(layoutNodeToHolder).remove(getAndroidViewsHandler$ui_release().getHolderToLayoutNode().remove(view));
        ViewCompat.F0(view, 0);
    }

    @Override // androidx.compose.ui.node.Owner
    public void g() {
        if (this.observationClearRequested) {
            getSnapshotObserver().a();
            this.observationClearRequested = false;
        }
        AndroidViewsHandler androidViewsHandler = this._androidViewsHandler;
        if (androidViewsHandler != null) {
            I(androidViewsHandler);
        }
        while (this.endApplyChangesListeners.q()) {
            int iN = this.endApplyChangesListeners.n();
            for (int i10 = 0; i10 < iN; i10++) {
                e8.a<w7.l0> aVar = this.endApplyChangesListeners.m()[i10];
                this.endApplyChangesListeners.y(i10, null);
                if (aVar != null) {
                    aVar.invoke();
                }
            }
            this.endApplyChangesListeners.w(0, iN);
        }
    }

    @NotNull
    public final AndroidViewsHandler getAndroidViewsHandler$ui_release() {
        if (this._androidViewsHandler == null) {
            Context context = getContext();
            kotlin.jvm.internal.t.i(context, "context");
            AndroidViewsHandler androidViewsHandler = new AndroidViewsHandler(context);
            this._androidViewsHandler = androidViewsHandler;
            addView(androidViewsHandler);
        }
        AndroidViewsHandler androidViewsHandler2 = this._androidViewsHandler;
        kotlin.jvm.internal.t.g(androidViewsHandler2);
        return androidViewsHandler2;
    }

    @Override // android.view.View
    public void getFocusedRect(@NotNull Rect rect) {
        w7.l0 l0Var;
        androidx.compose.ui.geometry.Rect rectE;
        kotlin.jvm.internal.t.j(rect, "rect");
        FocusModifier focusModifierD = this._focusManager.d();
        if (focusModifierD == null || (rectE = FocusTraversalKt.e(focusModifierD)) == null) {
            l0Var = null;
        } else {
            rect.left = g8.c.c(rectE.j());
            rect.top = g8.c.c(rectE.m());
            rect.right = g8.c.c(rectE.k());
            rect.bottom = g8.c.c(rectE.e());
            l0Var = w7.l0.INSTANCE;
        }
        if (l0Var == null) {
            super.getFocusedRect(rect);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public FontFamily.Resolver getFontFamilyResolver() {
        return (FontFamily.Resolver) this.fontFamilyResolver$delegate.getValue();
    }

    public boolean getHasPendingMeasureOrLayout() {
        return this.measureAndLayoutDelegate.i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View, android.view.ViewParent, androidx.compose.ui.node.Owner
    @NotNull
    public LayoutDirection getLayoutDirection() {
        return (LayoutDirection) this.layoutDirection$delegate.getValue();
    }

    public long getMeasureIteration() {
        return this.measureAndLayoutDelegate.j();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final ViewTreeOwners getViewTreeOwners() {
        return (ViewTreeOwners) this.viewTreeOwners$delegate.getValue();
    }

    @Override // androidx.compose.ui.node.Owner
    public void i(@NotNull LayoutNode layoutNode) {
        kotlin.jvm.internal.t.j(layoutNode, "layoutNode");
        this.accessibilityDelegate.E(layoutNode);
    }

    @Override // androidx.compose.ui.node.Owner
    public void j(@NotNull LayoutNode layoutNode) {
        kotlin.jvm.internal.t.j(layoutNode, "layoutNode");
        this.measureAndLayoutDelegate.g(layoutNode);
    }

    @Override // androidx.compose.ui.node.Owner
    public void k(@NotNull LayoutNode layoutNode, boolean z6) {
        kotlin.jvm.internal.t.j(layoutNode, "layoutNode");
        if (this.measureAndLayoutDelegate.p(layoutNode, z6)) {
            i0(this, null, 1, null);
        }
    }

    public boolean l0(@NotNull KeyEvent keyEvent) {
        kotlin.jvm.internal.t.j(keyEvent, "keyEvent");
        return this.keyInputModifier.d(keyEvent);
    }

    @Override // androidx.compose.ui.node.Owner
    public void m(@NotNull LayoutNode node) {
        kotlin.jvm.internal.t.j(node, "node");
        this.measureAndLayoutDelegate.m(node);
        g0();
    }

    @Override // androidx.compose.ui.node.Owner
    public void o() {
        this.accessibilityDelegate.F();
    }

    @Override // android.view.View
    public boolean onCheckIsTextEditor() {
        return this.textInputServiceAndroid.k();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(@NotNull Configuration newConfig) {
        kotlin.jvm.internal.t.j(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        Context context = getContext();
        kotlin.jvm.internal.t.i(context, "context");
        this.density = AndroidDensity_androidKt.a(context);
        if (N(newConfig) != this.currentFontWeightAdjustment) {
            this.currentFontWeightAdjustment = N(newConfig);
            Context context2 = getContext();
            kotlin.jvm.internal.t.i(context2, "context");
            setFontFamilyResolver(FontFamilyResolver_androidKt.a(context2));
        }
        this.configurationChangeObserver.invoke(newConfig);
    }

    @Override // android.view.View
    @Nullable
    public InputConnection onCreateInputConnection(@NotNull EditorInfo outAttrs) {
        kotlin.jvm.internal.t.j(outAttrs, "outAttrs");
        return this.textInputServiceAndroid.h(outAttrs);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        Trace.beginSection("AndroidOwner:onMeasure");
        try {
            if (!isAttachedToWindow()) {
                U(getRoot());
            }
            w7.u<Integer, Integer> uVarJ = J(i10);
            int iIntValue = uVarJ.a().intValue();
            int iIntValue2 = uVarJ.b().intValue();
            w7.u<Integer, Integer> uVarJ2 = J(i11);
            long jA = ConstraintsKt.a(iIntValue, iIntValue2, uVarJ2.a().intValue(), uVarJ2.b().intValue());
            Constraints constraints = this.onMeasureConstraints;
            if (constraints == null) {
                this.onMeasureConstraints = Constraints.b(jA);
                this.wasMeasuredWithMultipleConstraints = false;
            } else if (constraints == null || !Constraints.g(constraints.t(), jA)) {
                this.wasMeasuredWithMultipleConstraints = true;
            }
            this.measureAndLayoutDelegate.t(jA);
            this.measureAndLayoutDelegate.k(this.resendMotionEventOnLayout);
            setMeasuredDimension(getRoot().x0(), getRoot().X());
            if (this._androidViewsHandler != null) {
                getAndroidViewsHandler$ui_release().measure(View.MeasureSpec.makeMeasureSpec(getRoot().x0(), 1073741824), View.MeasureSpec.makeMeasureSpec(getRoot().X(), 1073741824));
            }
            w7.l0 l0Var = w7.l0.INSTANCE;
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onResume(@NotNull LifecycleOwner owner) {
        kotlin.jvm.internal.t.j(owner, "owner");
        setShowLayoutBounds(Companion.b());
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i10) {
        if (this.superclassInitComplete) {
            LayoutDirection layoutDirectionF = AndroidComposeView_androidKt.f(i10);
            setLayoutDirection(layoutDirectionF);
            this._focusManager.h(layoutDirectionF);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z6) {
        boolean zB;
        this._windowInfo.b(z6);
        super.onWindowFocusChanged(z6);
        if (!z6 || getShowLayoutBounds() == (zB = Companion.b())) {
            return;
        }
        setShowLayoutBounds(zB);
        S();
    }

    @Override // androidx.compose.ui.node.Owner
    public void p(@NotNull LayoutNode layoutNode, boolean z6) {
        kotlin.jvm.internal.t.j(layoutNode, "layoutNode");
        if (this.measureAndLayoutDelegate.r(layoutNode, z6)) {
            h0(layoutNode);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public OwnedLayer q(@NotNull e8.l<? super androidx.compose.ui.graphics.Canvas, w7.l0> drawBlock, @NotNull e8.a<w7.l0> invalidateParentLayer) {
        DrawChildContainer viewLayerContainer;
        kotlin.jvm.internal.t.j(drawBlock, "drawBlock");
        kotlin.jvm.internal.t.j(invalidateParentLayer, "invalidateParentLayer");
        OwnedLayer ownedLayerB = this.layerCache.b();
        if (ownedLayerB != null) {
            ownedLayerB.c(drawBlock, invalidateParentLayer);
            return ownedLayerB;
        }
        if (isHardwareAccelerated() && this.isRenderNodeCompatible) {
            try {
                return new RenderNodeLayer(this, drawBlock, invalidateParentLayer);
            } catch (Throwable unused) {
                this.isRenderNodeCompatible = false;
            }
        }
        if (this.viewLayersContainer == null) {
            ViewLayer.Companion companion = ViewLayer.Companion;
            if (!companion.a()) {
                companion.d(new View(getContext()));
            }
            if (companion.b()) {
                Context context = getContext();
                kotlin.jvm.internal.t.i(context, "context");
                viewLayerContainer = new DrawChildContainer(context);
            } else {
                Context context2 = getContext();
                kotlin.jvm.internal.t.i(context2, "context");
                viewLayerContainer = new ViewLayerContainer(context2);
            }
            this.viewLayersContainer = viewLayerContainer;
            addView(viewLayerContainer);
        }
        DrawChildContainer drawChildContainer = this.viewLayersContainer;
        kotlin.jvm.internal.t.g(drawChildContainer);
        return new ViewLayer(this, drawChildContainer, drawBlock, invalidateParentLayer);
    }

    public final void setOnViewTreeOwnersAvailable(@NotNull e8.l<? super ViewTreeOwners, w7.l0> callback) {
        kotlin.jvm.internal.t.j(callback, "callback");
        ViewTreeOwners viewTreeOwners = getViewTreeOwners();
        if (viewTreeOwners != null) {
            callback.invoke(viewTreeOwners);
        }
        if (isAttachedToWindow()) {
            return;
        }
        this.onViewTreeOwnersAvailable = callback;
    }

    private final void I(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt instanceof AndroidComposeView) {
                ((AndroidComposeView) childAt).g();
            } else if (childAt instanceof ViewGroup) {
                I((ViewGroup) childAt);
            }
        }
    }

    private final w7.u<Integer, Integer> J(int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode == 1073741824) {
                    return w7.a0.a(Integer.valueOf(size), Integer.valueOf(size));
                }
                throw new IllegalStateException();
            }
            return w7.a0.a(0, Integer.MAX_VALUE);
        }
        return w7.a0.a(0, Integer.valueOf(size));
    }

    private final boolean Q(MotionEvent motionEvent) {
        android.view.ViewConfiguration viewConfiguration = android.view.ViewConfiguration.get(getContext());
        float f = -motionEvent.getAxisValue(26);
        RotaryScrollEvent rotaryScrollEvent = new RotaryScrollEvent(ViewConfigurationCompat.d(viewConfiguration, getContext()) * f, f * ViewConfigurationCompat.b(viewConfiguration, getContext()), motionEvent.getEventTime());
        FocusModifier focusModifierD = this._focusManager.d();
        if (focusModifierD != null) {
            return focusModifierD.p(rotaryScrollEvent);
        }
        return false;
    }

    private final boolean R(MotionEvent motionEvent, MotionEvent motionEvent2) {
        if (motionEvent2.getSource() == motionEvent.getSource() && motionEvent2.getToolType(0) == motionEvent.getToolType(0)) {
            return false;
        }
        return true;
    }

    private final void T(LayoutNode layoutNode) {
        layoutNode.I0();
        MutableVector<LayoutNode> mutableVectorZ0 = layoutNode.z0();
        int iN = mutableVectorZ0.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVectorZ0.m();
            int i10 = 0;
            do {
                T(layoutNodeArrM[i10]);
                i10++;
            } while (i10 < iN);
        }
    }

    private final boolean V(MotionEvent motionEvent) {
        float x6 = motionEvent.getX();
        if (!Float.isInfinite(x6) && !Float.isNaN(x6)) {
            float y6 = motionEvent.getY();
            if (!Float.isInfinite(y6) && !Float.isNaN(y6)) {
                float rawX = motionEvent.getRawX();
                if (!Float.isInfinite(rawX) && !Float.isNaN(rawX)) {
                    float rawY = motionEvent.getRawY();
                    if (!Float.isInfinite(rawY) && !Float.isNaN(rawY)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    private final boolean W(MotionEvent motionEvent) {
        int actionMasked;
        if (motionEvent.getButtonState() != 0 || (actionMasked = motionEvent.getActionMasked()) == 0 || actionMasked == 2 || actionMasked == 6) {
            return true;
        }
        return false;
    }

    private final boolean X(MotionEvent motionEvent) {
        float x6 = motionEvent.getX();
        float y6 = motionEvent.getY();
        if (0.0f <= x6 && x6 <= getWidth() && 0.0f <= y6 && y6 <= getHeight()) {
            return true;
        }
        return false;
    }

    private final boolean Y(MotionEvent motionEvent) {
        MotionEvent motionEvent2;
        if (motionEvent.getPointerCount() != 1 || (motionEvent2 = this.previousMotionEvent) == null || motionEvent.getRawX() != motionEvent2.getRawX() || motionEvent.getRawY() != motionEvent2.getRawY()) {
            return true;
        }
        return false;
    }

    private final void c0(MotionEvent motionEvent) {
        this.lastMatrixRecalculationAnimationTime = AnimationUtils.currentAnimationTimeMillis();
        d0();
        long jF = Matrix.f(this.viewToWindowMatrix, OffsetKt.a(motionEvent.getX(), motionEvent.getY()));
        this.windowPosition = OffsetKt.a(motionEvent.getRawX() - Offset.m(jF), motionEvent.getRawY() - Offset.n(jF));
    }

    private final void h0(LayoutNode layoutNode) {
        if (!isLayoutRequested() && isAttachedToWindow()) {
            if (this.wasMeasuredWithMultipleConstraints && layoutNode != null) {
                while (layoutNode != null && layoutNode.l0() == LayoutNode.UsageByParent.InMeasureBlock) {
                    layoutNode = layoutNode.t0();
                }
                if (layoutNode == getRoot()) {
                    requestLayout();
                    return;
                }
            }
            if (getWidth() != 0 && getHeight() != 0) {
                invalidate();
            } else {
                requestLayout();
            }
        }
    }

    public void S() {
        T(getRoot());
    }

    @Override // androidx.compose.ui.input.pointer.PositionCalculator
    public long d(long j6) {
        b0();
        return Matrix.f(this.windowToViewMatrix, OffsetKt.a(Offset.m(j6) - Offset.m(this.windowPosition), Offset.n(j6) - Offset.n(this.windowPosition)));
    }

    @Override // androidx.compose.ui.node.Owner
    public long f(long j6) {
        b0();
        return Matrix.f(this.windowToViewMatrix, j6);
    }

    @Override // androidx.compose.ui.node.Owner
    public long h(long j6) {
        b0();
        return Matrix.f(this.viewToWindowMatrix, j6);
    }

    @Override // androidx.compose.ui.input.pointer.PositionCalculator
    public long n(long j6) {
        b0();
        long jF = Matrix.f(this.viewToWindowMatrix, j6);
        return OffsetKt.a(Offset.m(jF) + Offset.m(this.windowPosition), Offset.n(jF) + Offset.n(this.windowPosition));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        LifecycleOwner lifecycleOwnerA;
        Lifecycle lifecycle;
        AndroidAutofill androidAutofill;
        super.onAttachedToWindow();
        U(getRoot());
        T(getRoot());
        getSnapshotObserver().f();
        if (G() && (androidAutofill = this._autofill) != null) {
            AutofillCallback.INSTANCE.a(androidAutofill);
        }
        LifecycleOwner lifecycleOwnerA2 = ViewTreeLifecycleOwner.a(this);
        SavedStateRegistryOwner savedStateRegistryOwnerA = ViewTreeSavedStateRegistryOwner.a(this);
        ViewTreeOwners viewTreeOwners = getViewTreeOwners();
        if (viewTreeOwners == null || (lifecycleOwnerA2 != null && savedStateRegistryOwnerA != null && (lifecycleOwnerA2 != viewTreeOwners.a() || savedStateRegistryOwnerA != viewTreeOwners.a()))) {
            if (lifecycleOwnerA2 != null) {
                if (savedStateRegistryOwnerA != null) {
                    if (viewTreeOwners != null && (lifecycleOwnerA = viewTreeOwners.a()) != null && (lifecycle = lifecycleOwnerA.getLifecycle()) != null) {
                        lifecycle.d(this);
                    }
                    lifecycleOwnerA2.getLifecycle().a(this);
                    ViewTreeOwners viewTreeOwners2 = new ViewTreeOwners(lifecycleOwnerA2, savedStateRegistryOwnerA);
                    setViewTreeOwners(viewTreeOwners2);
                    e8.l<? super ViewTreeOwners, w7.l0> lVar = this.onViewTreeOwnersAvailable;
                    if (lVar != null) {
                        lVar.invoke(viewTreeOwners2);
                    }
                    this.onViewTreeOwnersAvailable = null;
                } else {
                    throw new IllegalStateException("Composed into the View which doesn't propagateViewTreeSavedStateRegistryOwner!");
                }
            } else {
                throw new IllegalStateException("Composed into the View which doesn't propagate ViewTreeLifecycleOwner!");
            }
        }
        ViewTreeOwners viewTreeOwners3 = getViewTreeOwners();
        kotlin.jvm.internal.t.g(viewTreeOwners3);
        viewTreeOwners3.a().getLifecycle().a(this);
        getViewTreeObserver().addOnGlobalLayoutListener(this.globalLayoutListener);
        getViewTreeObserver().addOnScrollChangedListener(this.scrollChangedListener);
        getViewTreeObserver().addOnTouchModeChangeListener(this.touchModeChangeListener);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        AndroidAutofill androidAutofill;
        LifecycleOwner lifecycleOwnerA;
        Lifecycle lifecycle;
        super.onDetachedFromWindow();
        getSnapshotObserver().g();
        ViewTreeOwners viewTreeOwners = getViewTreeOwners();
        if (viewTreeOwners != null && (lifecycleOwnerA = viewTreeOwners.a()) != null && (lifecycle = lifecycleOwnerA.getLifecycle()) != null) {
            lifecycle.d(this);
        }
        if (G() && (androidAutofill = this._autofill) != null) {
            AutofillCallback.INSTANCE.b(androidAutofill);
        }
        getViewTreeObserver().removeOnGlobalLayoutListener(this.globalLayoutListener);
        getViewTreeObserver().removeOnScrollChangedListener(this.scrollChangedListener);
        getViewTreeObserver().removeOnTouchModeChangeListener(this.touchModeChangeListener);
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z6, int i10, @Nullable Rect rect) {
        super.onFocusChanged(z6, i10, rect);
        Log.d(FocusTag, "Owner FocusChanged(" + z6 + ')');
        FocusManagerImpl focusManagerImpl = this._focusManager;
        if (z6) {
            focusManagerImpl.i();
        } else {
            focusManagerImpl.g();
        }
    }

    @Override // android.view.View
    public void onProvideAutofillVirtualStructure(@Nullable ViewStructure viewStructure, int i10) {
        AndroidAutofill androidAutofill;
        if (G() && viewStructure != null && (androidAutofill = this._autofill) != null) {
            AndroidAutofill_androidKt.b(androidAutofill, viewStructure);
        }
    }
}
