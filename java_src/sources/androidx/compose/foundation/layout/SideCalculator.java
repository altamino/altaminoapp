package androidx.compose.foundation.layout;

import android.graphics.Insets;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@RequiresApi
interface SideCalculator {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @NotNull
        private static final SideCalculator$Companion$LeftSideCalculator$1 LeftSideCalculator = new SideCalculator() { // from class: androidx.compose.foundation.layout.SideCalculator$Companion$LeftSideCalculator$1
            @Override // androidx.compose.foundation.layout.SideCalculator
            public /* synthetic */ float a(float f, float f6) {
                return e.b(this, f, f6);
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public /* synthetic */ float b(float f, float f6) {
                return e.a(this, f, f6);
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public float d(float f, float f6) {
                return f;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            @NotNull
            public Insets e(@NotNull Insets oldInsets, int i10) {
                t.j(oldInsets, "oldInsets");
                Insets insetsOf = Insets.of(i10, oldInsets.top, oldInsets.right, oldInsets.bottom);
                t.i(insetsOf, "of(newValue, oldInsets.t….right, oldInsets.bottom)");
                return insetsOf;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public int f(@NotNull Insets insets) {
                t.j(insets, "insets");
                return insets.left;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public long c(long j6) {
                return androidx.compose.ui.geometry.OffsetKt.a(Offset.m(j6), 0.0f);
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public long g(long j6, float f) {
                return VelocityKt.a(Velocity.h(j6) - f, 0.0f);
            }
        };

        @NotNull
        private static final SideCalculator$Companion$TopSideCalculator$1 TopSideCalculator = new SideCalculator() { // from class: androidx.compose.foundation.layout.SideCalculator$Companion$TopSideCalculator$1
            @Override // androidx.compose.foundation.layout.SideCalculator
            public /* synthetic */ float a(float f, float f6) {
                return e.b(this, f, f6);
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public /* synthetic */ float b(float f, float f6) {
                return e.a(this, f, f6);
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public long c(long j6) {
                return androidx.compose.ui.geometry.OffsetKt.a(0.0f, Offset.n(j6));
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public float d(float f, float f6) {
                return f6;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            @NotNull
            public Insets e(@NotNull Insets oldInsets, int i10) {
                t.j(oldInsets, "oldInsets");
                Insets insetsOf = Insets.of(oldInsets.left, i10, oldInsets.right, oldInsets.bottom);
                t.i(insetsOf, "of(oldInsets.left, newVa….right, oldInsets.bottom)");
                return insetsOf;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public int f(@NotNull Insets insets) {
                t.j(insets, "insets");
                return insets.top;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public long g(long j6, float f) {
                return VelocityKt.a(0.0f, Velocity.i(j6) - f);
            }
        };

        @NotNull
        private static final SideCalculator$Companion$RightSideCalculator$1 RightSideCalculator = new SideCalculator() { // from class: androidx.compose.foundation.layout.SideCalculator$Companion$RightSideCalculator$1
            @Override // androidx.compose.foundation.layout.SideCalculator
            public /* synthetic */ float a(float f, float f6) {
                return e.b(this, f, f6);
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public /* synthetic */ float b(float f, float f6) {
                return e.a(this, f, f6);
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public float d(float f, float f6) {
                return -f;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            @NotNull
            public Insets e(@NotNull Insets oldInsets, int i10) {
                t.j(oldInsets, "oldInsets");
                Insets insetsOf = Insets.of(oldInsets.left, oldInsets.top, i10, oldInsets.bottom);
                t.i(insetsOf, "of(oldInsets.left, oldIn…wValue, oldInsets.bottom)");
                return insetsOf;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public int f(@NotNull Insets insets) {
                t.j(insets, "insets");
                return insets.right;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public long c(long j6) {
                return androidx.compose.ui.geometry.OffsetKt.a(Offset.m(j6), 0.0f);
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public long g(long j6, float f) {
                return VelocityKt.a(Velocity.h(j6) + f, 0.0f);
            }
        };

        @NotNull
        private static final SideCalculator$Companion$BottomSideCalculator$1 BottomSideCalculator = new SideCalculator() { // from class: androidx.compose.foundation.layout.SideCalculator$Companion$BottomSideCalculator$1
            @Override // androidx.compose.foundation.layout.SideCalculator
            public /* synthetic */ float a(float f, float f6) {
                return e.b(this, f, f6);
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public /* synthetic */ float b(float f, float f6) {
                return e.a(this, f, f6);
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public long c(long j6) {
                return androidx.compose.ui.geometry.OffsetKt.a(0.0f, Offset.n(j6));
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public float d(float f, float f6) {
                return -f6;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            @NotNull
            public Insets e(@NotNull Insets oldInsets, int i10) {
                t.j(oldInsets, "oldInsets");
                Insets insetsOf = Insets.of(oldInsets.left, oldInsets.top, oldInsets.right, i10);
                t.i(insetsOf, "of(oldInsets.left, oldIn…ldInsets.right, newValue)");
                return insetsOf;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public int f(@NotNull Insets insets) {
                t.j(insets, "insets");
                return insets.bottom;
            }

            @Override // androidx.compose.foundation.layout.SideCalculator
            public long g(long j6, float f) {
                return VelocityKt.a(0.0f, Velocity.i(j6) + f);
            }
        };

        @NotNull
        public final SideCalculator a(int i10, @NotNull LayoutDirection layoutDirection) {
            t.j(layoutDirection, "layoutDirection");
            WindowInsetsSides.Companion companion = WindowInsetsSides.Companion;
            if (WindowInsetsSides.m(i10, companion.g())) {
                return LeftSideCalculator;
            }
            if (WindowInsetsSides.m(i10, companion.j())) {
                return TopSideCalculator;
            }
            if (WindowInsetsSides.m(i10, companion.h())) {
                return RightSideCalculator;
            }
            if (WindowInsetsSides.m(i10, companion.e())) {
                return BottomSideCalculator;
            }
            if (WindowInsetsSides.m(i10, companion.i())) {
                return layoutDirection == LayoutDirection.Ltr ? LeftSideCalculator : RightSideCalculator;
            }
            if (WindowInsetsSides.m(i10, companion.f())) {
                return layoutDirection == LayoutDirection.Ltr ? RightSideCalculator : LeftSideCalculator;
            }
            throw new IllegalStateException("Only Left, Top, Right, Bottom, Start and End are allowed".toString());
        }

        private Companion() {
        }
    }

    float a(float f, float f6);

    float b(float f, float f6);

    long c(long j6);

    float d(float f, float f6);

    @NotNull
    Insets e(@NotNull Insets insets, int i10);

    int f(@NotNull Insets insets);

    long g(long j6, float f);
}
