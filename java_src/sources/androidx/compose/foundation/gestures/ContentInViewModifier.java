package androidx.compose.foundation.gestures;

import androidx.compose.foundation.FocusedBoundsKt;
import androidx.compose.foundation.relocation.BringIntoViewResponder;
import androidx.compose.foundation.relocation.BringIntoViewResponderKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.OnPlacedModifier;
import androidx.compose.ui.layout.OnRemeasuredModifier;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import e8.l;
import e8.p;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.s;

/* JADX INFO: loaded from: classes5.dex */
final class ContentInViewModifier implements BringIntoViewResponder, OnRemeasuredModifier, OnPlacedModifier {

    @Nullable
    private LayoutCoordinates coordinates;

    @Nullable
    private LayoutCoordinates focusedChild;

    @NotNull
    private final Modifier modifier;

    @Nullable
    private IntSize oldSize;

    @NotNull
    private final Orientation orientation;
    private final boolean reverseDirection;

    @NotNull
    private final o0 scope;

    @NotNull
    private final ScrollableState scrollableState;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Orientation.values().length];
            iArr[Orientation.Vertical.ordinal()] = 1;
            iArr[Orientation.Horizontal.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final float j(float f, float f6, float f7) {
        if ((f >= 0.0f && f6 <= f7) || (f < 0.0f && f6 > f7)) {
            return 0.0f;
        }
        float f10 = f6 - f7;
        return Math.abs(f) < Math.abs(f10) ? f : f10;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    @Override // androidx.compose.ui.layout.OnPlacedModifier
    public void e(@NotNull LayoutCoordinates coordinates) {
        t.j(coordinates, "coordinates");
        this.coordinates = coordinates;
    }

    @NotNull
    public final Modifier g() {
        return this.modifier;
    }

    public ContentInViewModifier(@NotNull o0 scope, @NotNull Orientation orientation, @NotNull ScrollableState scrollableState, boolean z6) {
        t.j(scope, "scope");
        t.j(orientation, "orientation");
        t.j(scrollableState, "scrollableState");
        this.scope = scope;
        this.orientation = orientation;
        this.scrollableState = scrollableState;
        this.reverseDirection = z6;
        this.modifier = BringIntoViewResponderKt.c(FocusedBoundsKt.b(this, new ContentInViewModifier$modifier$1(this)), this);
    }

    private final void h(LayoutCoordinates layoutCoordinates, long j6) {
        Rect rectR;
        if (this.orientation == Orientation.Horizontal) {
            if (IntSize.g(layoutCoordinates.a()) >= IntSize.g(j6)) {
                return;
            }
        } else if (IntSize.f(layoutCoordinates.a()) >= IntSize.f(j6)) {
            return;
        }
        LayoutCoordinates layoutCoordinates2 = this.focusedChild;
        if (layoutCoordinates2 == null || (rectR = layoutCoordinates.r(layoutCoordinates2, false)) == null) {
            return;
        }
        Rect rectB = RectKt.b(Offset.Companion.c(), IntSizeKt.b(j6));
        Rect rectF = f(rectR, layoutCoordinates.a());
        boolean zR = rectB.r(rectR);
        boolean z6 = !t.e(rectF, rectR);
        if (zR && z6) {
            k.d(this.scope, null, null, new ContentInViewModifier$onSizeChanged$1(this, rectR, rectF, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object i(Rect rect, Rect rect2, d<? super l0> dVar) {
        float fM;
        float fM2;
        int i10 = WhenMappings.$EnumSwitchMapping$0[this.orientation.ordinal()];
        if (i10 == 1) {
            fM = rect.m();
            fM2 = rect2.m();
        } else {
            if (i10 != 2) {
                throw new s();
            }
            fM = rect.j();
            fM2 = rect2.j();
        }
        float f = fM - fM2;
        if (this.reverseDirection) {
            f = -f;
        }
        Object objB = ScrollExtensionsKt.b(this.scrollableState, f, null, dVar, 2, null);
        return objB == kotlin.coroutines.intrinsics.d.e() ? objB : l0.INSTANCE;
    }

    @Override // androidx.compose.foundation.relocation.BringIntoViewResponder
    @NotNull
    public Rect b(@NotNull Rect localRect) {
        t.j(localRect, "localRect");
        IntSize intSize = this.oldSize;
        if (intSize != null) {
            return f(localRect, intSize.j());
        }
        throw new IllegalStateException("Expected BringIntoViewRequester to not be used before parents are placed.".toString());
    }

    @Override // androidx.compose.ui.layout.OnRemeasuredModifier
    public void b0(long j6) {
        LayoutCoordinates layoutCoordinates = this.coordinates;
        IntSize intSize = this.oldSize;
        if (intSize != null && !IntSize.e(intSize.j(), j6) && layoutCoordinates != null && layoutCoordinates.Q()) {
            h(layoutCoordinates, intSize.j());
        }
        this.oldSize = IntSize.b(j6);
    }

    private final Rect f(Rect rect, long j6) {
        long jB = IntSizeKt.b(j6);
        int i10 = WhenMappings.$EnumSwitchMapping$0[this.orientation.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return rect.s(j(rect.j(), rect.k(), Size.i(jB)), 0.0f);
            }
            throw new s();
        }
        return rect.s(0.0f, j(rect.m(), rect.e(), Size.g(jB)));
    }

    @Override // androidx.compose.foundation.relocation.BringIntoViewResponder
    @Nullable
    public Object a(@NotNull Rect rect, @NotNull d<? super l0> dVar) {
        Object objI = i(rect, b(rect), dVar);
        if (objI == kotlin.coroutines.intrinsics.d.e()) {
            return objI;
        }
        return l0.INSTANCE;
    }
}
