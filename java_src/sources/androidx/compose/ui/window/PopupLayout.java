package androidx.compose.ui.window;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Outline;
import android.graphics.Rect;
import android.os.Build;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.WindowManager;
import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.R;
import androidx.compose.ui.UiComposable;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.ViewRootForInspector;
import androidx.compose.ui.platform.k1;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import e8.a;
import e8.p;
import g8.c;
import java.util.UUID;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.s;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"ViewConstructor"})
public final class PopupLayout extends AbstractComposeView implements ViewRootForInspector {

    @NotNull
    private final State canCalculatePosition$delegate;

    @NotNull
    private final View composeView;

    @NotNull
    private final MutableState content$delegate;

    @NotNull
    private final int[] locationOnScreen;
    private final float maxSupportedElevation;

    @Nullable
    private a<l0> onDismissRequest;

    @NotNull
    private final WindowManager.LayoutParams params;

    @Nullable
    private IntRect parentBounds;

    @NotNull
    private final MutableState parentLayoutCoordinates$delegate;

    @NotNull
    private LayoutDirection parentLayoutDirection;

    @NotNull
    private final MutableState popupContentSize$delegate;

    @NotNull
    private final PopupLayoutHelper popupLayoutHelper;

    @NotNull
    private PopupPositionProvider positionProvider;

    @NotNull
    private final Rect previousWindowVisibleFrame;

    @NotNull
    private PopupProperties properties;
    private boolean shouldCreateCompositionOnAttachedToWindow;

    @NotNull
    private String testTag;

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

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ PopupLayout(a aVar, PopupProperties popupProperties, String str, View view, Density density, PopupPositionProvider popupPositionProvider, UUID uuid, PopupLayoutHelper popupLayoutHelper, int i10, k kVar) {
        PopupLayoutHelper popupLayoutHelperImpl29;
        if ((i10 & 128) != 0) {
            popupLayoutHelperImpl29 = Build.VERSION.SDK_INT >= 29 ? new PopupLayoutHelperImpl29() : new PopupLayoutHelperImpl();
        } else {
            popupLayoutHelperImpl29 = popupLayoutHelper;
        }
        this(aVar, popupProperties, str, view, density, popupPositionProvider, uuid, popupLayoutHelperImpl29);
    }

    @VisibleForTesting
    public static /* synthetic */ void getParams$ui_release$annotations() {
    }

    @NotNull
    public final WindowManager.LayoutParams getParams$ui_release() {
        return this.params;
    }

    @NotNull
    public final LayoutDirection getParentLayoutDirection() {
        return this.parentLayoutDirection;
    }

    @NotNull
    public final PopupPositionProvider getPositionProvider() {
        return this.positionProvider;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    protected boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.shouldCreateCompositionOnAttachedToWindow;
    }

    @NotNull
    public AbstractComposeView getSubCompositionView() {
        return this;
    }

    @NotNull
    public final String getTestTag() {
        return this.testTag;
    }

    @Nullable
    public /* bridge */ /* synthetic */ View getViewRoot() {
        return k1.b(this);
    }

    public final void n() {
        ViewTreeLifecycleOwner.b(this, null);
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

    public final void setTestTag(@NotNull String str) {
        t.j(str, "<set-?>");
        this.testTag = str;
    }

    private final p<Composer, Integer, l0> getContent() {
        return (p) this.content$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutCoordinates getParentLayoutCoordinates() {
        return (LayoutCoordinates) this.parentLayoutCoordinates$delegate.getValue();
    }

    private final void l(int i10) {
        WindowManager.LayoutParams layoutParams = this.params;
        layoutParams.flags = i10;
        this.popupLayoutHelper.a(this.windowManager, this, layoutParams);
    }

    private final WindowManager.LayoutParams m() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = 8388659;
        layoutParams.flags = (layoutParams.flags & (-8552473)) | 262144;
        layoutParams.type = 1002;
        layoutParams.token = this.composeView.getApplicationWindowToken();
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.setTitle(this.composeView.getContext().getResources().getString(R.string.default_popup_window_title));
        return layoutParams;
    }

    private final void r(LayoutDirection layoutDirection) {
        int i10 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
        int i11 = 1;
        if (i10 == 1) {
            i11 = 0;
        } else if (i10 != 2) {
            throw new s();
        }
        super.setLayoutDirection(i11);
    }

    private final void setClippingEnabled(boolean z6) {
        l(z6 ? this.params.flags & (-513) : this.params.flags | 512);
    }

    private final void setContent(p<? super Composer, ? super Integer, l0> pVar) {
        this.content$delegate.setValue(pVar);
    }

    private final void setIsFocusable(boolean z6) {
        l(!z6 ? this.params.flags | 8 : this.params.flags & (-9));
    }

    private final void setParentLayoutCoordinates(LayoutCoordinates layoutCoordinates) {
        this.parentLayoutCoordinates$delegate.setValue(layoutCoordinates);
    }

    private final void setSecurePolicy(SecureFlagPolicy secureFlagPolicy) {
        l(SecureFlagPolicy_androidKt.a(secureFlagPolicy, AndroidPopup_androidKt.g(this.composeView)) ? this.params.flags | 8192 : this.params.flags & (-8193));
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(@NotNull KeyEvent event) {
        KeyEvent.DispatcherState keyDispatcherState;
        t.j(event, "event");
        if (event.getKeyCode() == 4 && this.properties.b()) {
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
    public final IntSize m3getPopupContentSizebOM6tXw() {
        return (IntSize) this.popupContentSize$delegate.getValue();
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void h(int i10, int i11) {
        if (this.properties.g()) {
            super.h(i10, i11);
        } else {
            super.h(View.MeasureSpec.makeMeasureSpec(getDisplayWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getDisplayHeight(), Integer.MIN_VALUE));
        }
    }

    public final void o() {
        int[] iArr = this.locationOnScreen;
        int i10 = iArr[0];
        int i11 = iArr[1];
        this.composeView.getLocationOnScreen(iArr);
        int[] iArr2 = this.locationOnScreen;
        if (i10 == iArr2[0] && i11 == iArr2[1]) {
            return;
        }
        t();
    }

    @Override // android.view.View
    public boolean onTouchEvent(@Nullable MotionEvent motionEvent) {
        if (!this.properties.c()) {
            return super.onTouchEvent(motionEvent);
        }
        if (motionEvent != null && motionEvent.getAction() == 0 && (motionEvent.getX() < 0.0f || motionEvent.getX() >= getWidth() || motionEvent.getY() < 0.0f || motionEvent.getY() >= getHeight())) {
            a<l0> aVar = this.onDismissRequest;
            if (aVar != null) {
                aVar.invoke();
            }
            return true;
        }
        if (motionEvent == null || motionEvent.getAction() != 4) {
            return super.onTouchEvent(motionEvent);
        }
        a<l0> aVar2 = this.onDismissRequest;
        if (aVar2 != null) {
            aVar2.invoke();
        }
        return true;
    }

    public final void p(@NotNull CompositionContext parent, @NotNull p<? super Composer, ? super Integer, l0> content) {
        t.j(parent, "parent");
        t.j(content, "content");
        setParentCompositionContext(parent);
        setContent(content);
        this.shouldCreateCompositionOnAttachedToWindow = true;
    }

    public final void q() {
        this.windowManager.addView(this, this.params);
    }

    public final void s(@Nullable a<l0> aVar, @NotNull PopupProperties properties, @NotNull String testTag, @NotNull LayoutDirection layoutDirection) {
        t.j(properties, "properties");
        t.j(testTag, "testTag");
        t.j(layoutDirection, "layoutDirection");
        this.onDismissRequest = aVar;
        this.properties = properties;
        this.testTag = testTag;
        setIsFocusable(properties.e());
        setSecurePolicy(properties.f());
        setClippingEnabled(properties.a());
        r(layoutDirection);
    }

    /* JADX INFO: renamed from: setPopupContentSize-fhxjrPA, reason: not valid java name */
    public final void m4setPopupContentSizefhxjrPA(@Nullable IntSize intSize) {
        this.popupContentSize$delegate.setValue(intSize);
    }

    public final void u(@NotNull LayoutCoordinates parentLayoutCoordinates) {
        t.j(parentLayoutCoordinates, "parentLayoutCoordinates");
        setParentLayoutCoordinates(parentLayoutCoordinates);
        t();
    }

    public final void v() {
        IntSize intSizeM3getPopupContentSizebOM6tXw;
        IntRect intRect = this.parentBounds;
        if (intRect == null || (intSizeM3getPopupContentSizebOM6tXw = m3getPopupContentSizebOM6tXw()) == null) {
            return;
        }
        long j6 = intSizeM3getPopupContentSizebOM6tXw.j();
        Rect rect = this.previousWindowVisibleFrame;
        this.popupLayoutHelper.c(this.composeView, rect);
        IntRect intRectH = AndroidPopup_androidKt.h(rect);
        long jA = IntSizeKt.a(intRectH.f(), intRectH.b());
        long jA2 = this.positionProvider.a(intRect, jA, this.parentLayoutDirection, j6);
        this.params.x = IntOffset.j(jA2);
        this.params.y = IntOffset.k(jA2);
        if (this.properties.d()) {
            this.popupLayoutHelper.b(this, IntSize.g(jA), IntSize.f(jA));
        }
        this.popupLayoutHelper.a(this.windowManager, this, this.params);
    }

    private final int getDisplayHeight() {
        return c.c(getContext().getResources().getConfiguration().screenHeightDp * getContext().getResources().getDisplayMetrics().density);
    }

    private final int getDisplayWidth() {
        return c.c(getContext().getResources().getConfiguration().screenWidthDp * getContext().getResources().getDisplayMetrics().density);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    @Composable
    @UiComposable
    public void a(@Nullable Composer composer, int i10) {
        Composer composerS = composer.s(-857613600);
        getContent().invoke(composerS, 0);
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new PopupLayout$Content$4(this, i10));
        }
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void g(boolean z6, int i10, int i11, int i12, int i13) {
        super.g(z6, i10, i11, i12, i13);
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        this.params.width = childAt.getMeasuredWidth();
        this.params.height = childAt.getMeasuredHeight();
        this.popupLayoutHelper.a(this.windowManager, this, this.params);
    }

    @VisibleForTesting
    public final void t() {
        LayoutCoordinates parentLayoutCoordinates = getParentLayoutCoordinates();
        if (parentLayoutCoordinates == null) {
            return;
        }
        long jA = parentLayoutCoordinates.a();
        long jF = LayoutCoordinatesKt.f(parentLayoutCoordinates);
        IntRect intRectA = IntRectKt.a(IntOffsetKt.a(c.c(Offset.m(jF)), c.c(Offset.n(jF))), jA);
        if (!t.e(intRectA, this.parentBounds)) {
            this.parentBounds = intRectA;
            v();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PopupLayout(@Nullable a<l0> aVar, @NotNull PopupProperties properties, @NotNull String testTag, @NotNull View composeView, @NotNull Density density, @NotNull PopupPositionProvider initialPositionProvider, @NotNull UUID popupId, @NotNull PopupLayoutHelper popupLayoutHelper) {
        t.j(properties, "properties");
        t.j(testTag, "testTag");
        t.j(composeView, "composeView");
        t.j(density, "density");
        t.j(initialPositionProvider, "initialPositionProvider");
        t.j(popupId, "popupId");
        t.j(popupLayoutHelper, "popupLayoutHelper");
        Context context = composeView.getContext();
        t.i(context, "composeView.context");
        super(context, null, 0, 6, null);
        this.onDismissRequest = aVar;
        this.properties = properties;
        this.testTag = testTag;
        this.composeView = composeView;
        this.popupLayoutHelper = popupLayoutHelper;
        Object systemService = composeView.getContext().getSystemService("window");
        if (systemService != null) {
            this.windowManager = (WindowManager) systemService;
            this.params = m();
            this.positionProvider = initialPositionProvider;
            this.parentLayoutDirection = LayoutDirection.Ltr;
            this.popupContentSize$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
            this.parentLayoutCoordinates$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
            this.canCalculatePosition$delegate = SnapshotStateKt.c(new PopupLayout$canCalculatePosition$2(this));
            float f = Dp.f(30);
            this.maxSupportedElevation = f;
            this.previousWindowVisibleFrame = new Rect();
            setId(android.R.id.content);
            ViewTreeLifecycleOwner.b(this, ViewTreeLifecycleOwner.a(composeView));
            ViewTreeViewModelStoreOwner.b(this, ViewTreeViewModelStoreOwner.a(composeView));
            ViewTreeSavedStateRegistryOwner.b(this, ViewTreeSavedStateRegistryOwner.a(composeView));
            setTag(R.id.compose_view_saveable_id_tag, "Popup:" + popupId);
            setClipChildren(false);
            setElevation(density.H0(f));
            setOutlineProvider(new ViewOutlineProvider() { // from class: androidx.compose.ui.window.PopupLayout.2
                @Override // android.view.ViewOutlineProvider
                public void getOutline(@NotNull View view, @NotNull Outline result) {
                    t.j(view, "view");
                    t.j(result, "result");
                    result.setRect(0, 0, view.getWidth(), view.getHeight());
                    result.setAlpha(0.0f);
                }
            });
            this.content$delegate = SnapshotStateKt__SnapshotStateKt.e(ComposableSingletons$AndroidPopup_androidKt.INSTANCE.a(), null, 2, null);
            this.locationOnScreen = new int[2];
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.WindowManager");
    }
}
