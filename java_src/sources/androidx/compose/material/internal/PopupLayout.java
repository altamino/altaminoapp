package androidx.compose.material.internal;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Outline;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.ViewRootForInspector;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import e8.a;
import e8.p;
import java.util.UUID;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.s;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ViewConstructor"})
final class PopupLayout extends AbstractComposeView implements ViewRootForInspector, ViewTreeObserver.OnGlobalLayoutListener {

    @NotNull
    private final State canCalculatePosition$delegate;

    @NotNull
    private final View composeView;

    @NotNull
    private final MutableState content$delegate;

    @NotNull
    private final p<Offset, IntRect, Boolean> dismissOnOutsideClick;
    private final float maxSupportedElevation;

    @Nullable
    private a<l0> onDismissRequest;

    @NotNull
    private final WindowManager.LayoutParams params;

    @NotNull
    private final MutableState parentBounds$delegate;

    @NotNull
    private LayoutDirection parentLayoutDirection;

    @NotNull
    private final MutableState popupContentSize$delegate;

    @NotNull
    private PopupPositionProvider positionProvider;

    @NotNull
    private final Rect previousWindowVisibleFrame;
    private boolean shouldCreateCompositionOnAttachedToWindow;

    @NotNull
    private String testTag;

    @NotNull
    private final Rect tmpWindowVisibleFrame;

    @NotNull
    private final WindowManager windowManager;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            iArr[LayoutDirection.Ltr.ordinal()] = 1;
            iArr[LayoutDirection.Rtl.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    protected boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.shouldCreateCompositionOnAttachedToWindow;
    }

    public final void l() {
        ViewTreeLifecycleOwner.b(this, null);
        this.composeView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        this.windowManager.removeViewImmediate(this);
    }

    @Override // android.view.View
    public void setLayoutDirection(int i10) {
    }

    public final void setParentLayoutDirection(@NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "<set-?>");
        this.parentLayoutDirection = layoutDirection;
    }

    public final void setPositionProvider(@NotNull PopupPositionProvider popupPositionProvider) {
        t.j(popupPositionProvider, "<set-?>");
        this.positionProvider = popupPositionProvider;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PopupLayout(@Nullable a<l0> aVar, @NotNull String testTag, @NotNull View composeView, @NotNull Density density, @NotNull PopupPositionProvider initialPositionProvider, @NotNull UUID popupId) {
        t.j(testTag, "testTag");
        t.j(composeView, "composeView");
        t.j(density, "density");
        t.j(initialPositionProvider, "initialPositionProvider");
        t.j(popupId, "popupId");
        Context context = composeView.getContext();
        t.i(context, "composeView.context");
        super(context, null, 0, 6, null);
        this.onDismissRequest = aVar;
        this.testTag = testTag;
        this.composeView = composeView;
        Object systemService = composeView.getContext().getSystemService("window");
        if (systemService == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.WindowManager");
        }
        this.windowManager = (WindowManager) systemService;
        this.params = k();
        this.positionProvider = initialPositionProvider;
        this.parentLayoutDirection = LayoutDirection.Ltr;
        this.parentBounds$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.popupContentSize$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.canCalculatePosition$delegate = SnapshotStateKt.c(new PopupLayout$canCalculatePosition$2(this));
        float f = Dp.f(30);
        this.maxSupportedElevation = f;
        this.previousWindowVisibleFrame = new Rect();
        this.tmpWindowVisibleFrame = new Rect();
        this.dismissOnOutsideClick = PopupLayout$dismissOnOutsideClick$1.INSTANCE;
        setId(R.id.content);
        ViewTreeLifecycleOwner.b(this, ViewTreeLifecycleOwner.a(composeView));
        ViewTreeViewModelStoreOwner.b(this, ViewTreeViewModelStoreOwner.a(composeView));
        ViewTreeSavedStateRegistryOwner.b(this, ViewTreeSavedStateRegistryOwner.a(composeView));
        composeView.getViewTreeObserver().addOnGlobalLayoutListener(this);
        setTag(androidx.compose.ui.R.id.compose_view_saveable_id_tag, "Popup:" + popupId);
        setClipChildren(false);
        setElevation(density.H0(f));
        setOutlineProvider(new ViewOutlineProvider() { // from class: androidx.compose.material.internal.PopupLayout.2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(@NotNull View view, @NotNull Outline result) {
                t.j(view, "view");
                t.j(result, "result");
                result.setRect(0, 0, view.getWidth(), view.getHeight());
                result.setAlpha(0.0f);
            }
        });
        this.content$delegate = SnapshotStateKt__SnapshotStateKt.e(ComposableSingletons$ExposedDropdownMenuPopupKt.INSTANCE.a(), null, 2, null);
    }

    private final p<Composer, Integer, l0> getContent() {
        return (p) this.content$delegate.getValue();
    }

    private final WindowManager.LayoutParams k() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = 8388659;
        layoutParams.flags = 393248;
        layoutParams.softInputMode = 1;
        layoutParams.type = 1000;
        layoutParams.token = this.composeView.getApplicationWindowToken();
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.setTitle(this.composeView.getContext().getResources().getString(androidx.compose.ui.R.string.default_popup_window_title));
        return layoutParams;
    }

    private final void q(LayoutDirection layoutDirection) {
        int i10 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
        int i11 = 1;
        if (i10 == 1) {
            i11 = 0;
        } else if (i10 != 2) {
            throw new s();
        }
        super.setLayoutDirection(i11);
    }

    private final IntRect r(Rect rect) {
        return new IntRect(rect.left, rect.top, rect.right, rect.bottom);
    }

    private final void setContent(p<? super Composer, ? super Integer, l0> pVar) {
        this.content$delegate.setValue(pVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(@NotNull KeyEvent event) {
        KeyEvent.DispatcherState keyDispatcherState;
        t.j(event, "event");
        if (event.getKeyCode() == 4) {
            if (getKeyDispatcherState() == null) {
                return super.dispatchKeyEvent(event);
            }
            if (event.getAction() == 0 && event.getRepeatCount() == 0) {
                KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                if (keyDispatcherState2 != null) {
                    keyDispatcherState2.startTracking(event, this);
                }
                return true;
            }
            if (event.getAction() == 1 && (keyDispatcherState = getKeyDispatcherState()) != null && keyDispatcherState.isTracking(event) && !event.isCanceled()) {
                a<l0> aVar = this.onDismissRequest;
                if (aVar != null) {
                    aVar.invoke();
                }
                return true;
            }
        }
        return super.dispatchKeyEvent(event);
    }

    public final boolean getCanCalculatePosition() {
        return ((Boolean) this.canCalculatePosition$delegate.getValue()).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    /* JADX INFO: renamed from: getPopupContentSize-bOM6tXw, reason: not valid java name */
    public final IntSize m0getPopupContentSizebOM6tXw() {
        return (IntSize) this.popupContentSize$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final IntRect m() {
        return (IntRect) this.parentBounds$delegate.getValue();
    }

    public final void n(@NotNull CompositionContext parent, @NotNull p<? super Composer, ? super Integer, l0> content) {
        t.j(parent, "parent");
        t.j(content, "content");
        setParentCompositionContext(parent);
        setContent(content);
        this.shouldCreateCompositionOnAttachedToWindow = true;
    }

    public final void o(@Nullable IntRect intRect) {
        this.parentBounds$delegate.setValue(intRect);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.composeView.getWindowVisibleDisplayFrame(this.tmpWindowVisibleFrame);
        if (t.e(this.tmpWindowVisibleFrame, this.previousWindowVisibleFrame)) {
            return;
        }
        t();
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007f, code lost:
    
        if (r5.dismissOnOutsideClick.invoke((r6.getX() == 0.0f && r6.getY() == 0.0f) ? null : androidx.compose.ui.geometry.Offset.d(androidx.compose.ui.geometry.OffsetKt.a(r5.params.x + r6.getX(), r5.params.y + r6.getY())), r0).booleanValue() != false) goto L27;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(@Nullable MotionEvent motionEvent) {
        if (motionEvent == null) {
            return super.onTouchEvent(motionEvent);
        }
        if ((motionEvent.getAction() == 0 && (motionEvent.getX() < 0.0f || motionEvent.getX() >= getWidth() || motionEvent.getY() < 0.0f || motionEvent.getY() >= getHeight())) || motionEvent.getAction() == 4) {
            IntRect intRectM = m();
            if (intRectM != null) {
            }
            a<l0> aVar = this.onDismissRequest;
            if (aVar == null) {
                return true;
            }
            aVar.invoke();
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public final void p() {
        this.windowManager.addView(this, this.params);
    }

    public final void s(@Nullable a<l0> aVar, @NotNull String testTag, @NotNull LayoutDirection layoutDirection) {
        t.j(testTag, "testTag");
        t.j(layoutDirection, "layoutDirection");
        this.onDismissRequest = aVar;
        this.testTag = testTag;
        q(layoutDirection);
    }

    /* JADX INFO: renamed from: setPopupContentSize-fhxjrPA, reason: not valid java name */
    public final void m1setPopupContentSizefhxjrPA(@Nullable IntSize intSize) {
        this.popupContentSize$delegate.setValue(intSize);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    @Composable
    public void a(@Nullable Composer composer, int i10) {
        Composer composerS = composer.s(-1288867704);
        getContent().invoke(composerS, 0);
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new PopupLayout$Content$4(this, i10));
        }
    }

    public final void t() {
        IntSize intSizeM0getPopupContentSizebOM6tXw;
        IntRect intRectM = m();
        if (intRectM != null && (intSizeM0getPopupContentSizebOM6tXw = m0getPopupContentSizebOM6tXw()) != null) {
            long j6 = intSizeM0getPopupContentSizebOM6tXw.j();
            Rect rect = this.previousWindowVisibleFrame;
            this.composeView.getWindowVisibleDisplayFrame(rect);
            IntRect intRectR = r(rect);
            long jA = this.positionProvider.a(intRectM, IntSizeKt.a(intRectR.f(), intRectR.b()), this.parentLayoutDirection, j6);
            this.params.x = IntOffset.j(jA);
            this.params.y = IntOffset.k(jA);
            this.windowManager.updateViewLayout(this, this.params);
        }
    }
}
