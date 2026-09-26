package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import e8.q;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class IntrinsicMeasureBlocks$HorizontalMinWidth$1 extends v implements q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> {
    public static final IntrinsicMeasureBlocks$HorizontalMinWidth$1 INSTANCE = new IntrinsicMeasureBlocks$HorizontalMinWidth$1();

    /* JADX INFO: renamed from: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMinWidth$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.p<IntrinsicMeasurable, Integer, Integer> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(2);
        }

        @NotNull
        public final Integer a(@NotNull IntrinsicMeasurable intrinsicSize, int i10) {
            t.j(intrinsicSize, "$this$intrinsicSize");
            return Integer.valueOf(intrinsicSize.Y(i10));
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
            return a(intrinsicMeasurable, num.intValue());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMinWidth$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements e8.p<IntrinsicMeasurable, Integer, Integer> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        AnonymousClass2() {
            super(2);
        }

        @NotNull
        public final Integer a(@NotNull IntrinsicMeasurable intrinsicSize, int i10) {
            t.j(intrinsicSize, "$this$intrinsicSize");
            return Integer.valueOf(intrinsicSize.M(i10));
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
            return a(intrinsicMeasurable, num.intValue());
        }
    }

    IntrinsicMeasureBlocks$HorizontalMinWidth$1() {
        super(3);
    }

    @NotNull
    public final Integer a(@NotNull List<? extends IntrinsicMeasurable> measurables, int i10, int i11) {
        t.j(measurables, "measurables");
        AnonymousClass1 anonymousClass1 = AnonymousClass1.INSTANCE;
        AnonymousClass2 anonymousClass2 = AnonymousClass2.INSTANCE;
        LayoutOrientation layoutOrientation = LayoutOrientation.Horizontal;
        return Integer.valueOf(RowColumnImplKt.w(measurables, anonymousClass1, anonymousClass2, i10, i11, layoutOrientation, layoutOrientation));
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Integer invoke(List<? extends IntrinsicMeasurable> list, Integer num, Integer num2) {
        return a(list, num.intValue(), num2.intValue());
    }
}
