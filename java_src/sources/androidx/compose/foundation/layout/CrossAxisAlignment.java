package androidx.compose.foundation.layout;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
public abstract class CrossAxisAlignment {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final CrossAxisAlignment Center = CenterCrossAxisAlignment.INSTANCE;

    @NotNull
    private static final CrossAxisAlignment Start = StartCrossAxisAlignment.INSTANCE;

    @NotNull
    private static final CrossAxisAlignment End = EndCrossAxisAlignment.INSTANCE;

    private static final class AlignmentLineCrossAxisAlignment extends CrossAxisAlignment {

        @NotNull
        private final AlignmentLineProvider alignmentLineProvider;

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public boolean c() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AlignmentLineCrossAxisAlignment(@NotNull AlignmentLineProvider alignmentLineProvider) {
            super(null);
            t.j(alignmentLineProvider, "alignmentLineProvider");
            this.alignmentLineProvider = alignmentLineProvider;
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public int a(int i10, @NotNull LayoutDirection layoutDirection, @NotNull Placeable placeable, int i11) {
            t.j(layoutDirection, "layoutDirection");
            t.j(placeable, "placeable");
            int iA = this.alignmentLineProvider.a(placeable);
            if (iA == Integer.MIN_VALUE) {
                return 0;
            }
            int i12 = i11 - iA;
            return layoutDirection == LayoutDirection.Rtl ? i10 - i12 : i12;
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        @NotNull
        public Integer b(@NotNull Placeable placeable) {
            t.j(placeable, "placeable");
            return Integer.valueOf(this.alignmentLineProvider.a(placeable));
        }
    }

    private static final class CenterCrossAxisAlignment extends CrossAxisAlignment {

        @NotNull
        public static final CenterCrossAxisAlignment INSTANCE = new CenterCrossAxisAlignment();

        private CenterCrossAxisAlignment() {
            super(null);
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public int a(int i10, @NotNull LayoutDirection layoutDirection, @NotNull Placeable placeable, int i11) {
            t.j(layoutDirection, "layoutDirection");
            t.j(placeable, "placeable");
            return i10 / 2;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final CrossAxisAlignment a(@NotNull AlignmentLineProvider alignmentLineProvider) {
            t.j(alignmentLineProvider, "alignmentLineProvider");
            return new AlignmentLineCrossAxisAlignment(alignmentLineProvider);
        }

        @NotNull
        public final CrossAxisAlignment b(@NotNull Alignment.Horizontal horizontal) {
            t.j(horizontal, "horizontal");
            return new HorizontalCrossAxisAlignment(horizontal);
        }

        @NotNull
        public final CrossAxisAlignment c(@NotNull Alignment.Vertical vertical) {
            t.j(vertical, "vertical");
            return new VerticalCrossAxisAlignment(vertical);
        }
    }

    private static final class EndCrossAxisAlignment extends CrossAxisAlignment {

        @NotNull
        public static final EndCrossAxisAlignment INSTANCE = new EndCrossAxisAlignment();

        private EndCrossAxisAlignment() {
            super(null);
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public int a(int i10, @NotNull LayoutDirection layoutDirection, @NotNull Placeable placeable, int i11) {
            t.j(layoutDirection, "layoutDirection");
            t.j(placeable, "placeable");
            if (layoutDirection == LayoutDirection.Ltr) {
                return i10;
            }
            return 0;
        }
    }

    private static final class HorizontalCrossAxisAlignment extends CrossAxisAlignment {

        @NotNull
        private final Alignment.Horizontal horizontal;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HorizontalCrossAxisAlignment(@NotNull Alignment.Horizontal horizontal) {
            super(null);
            t.j(horizontal, "horizontal");
            this.horizontal = horizontal;
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public int a(int i10, @NotNull LayoutDirection layoutDirection, @NotNull Placeable placeable, int i11) {
            t.j(layoutDirection, "layoutDirection");
            t.j(placeable, "placeable");
            return this.horizontal.a(0, i10, layoutDirection);
        }
    }

    private static final class StartCrossAxisAlignment extends CrossAxisAlignment {

        @NotNull
        public static final StartCrossAxisAlignment INSTANCE = new StartCrossAxisAlignment();

        private StartCrossAxisAlignment() {
            super(null);
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public int a(int i10, @NotNull LayoutDirection layoutDirection, @NotNull Placeable placeable, int i11) {
            t.j(layoutDirection, "layoutDirection");
            t.j(placeable, "placeable");
            if (layoutDirection == LayoutDirection.Ltr) {
                return 0;
            }
            return i10;
        }
    }

    private static final class VerticalCrossAxisAlignment extends CrossAxisAlignment {

        @NotNull
        private final Alignment.Vertical vertical;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public VerticalCrossAxisAlignment(@NotNull Alignment.Vertical vertical) {
            super(null);
            t.j(vertical, "vertical");
            this.vertical = vertical;
        }

        @Override // androidx.compose.foundation.layout.CrossAxisAlignment
        public int a(int i10, @NotNull LayoutDirection layoutDirection, @NotNull Placeable placeable, int i11) {
            t.j(layoutDirection, "layoutDirection");
            t.j(placeable, "placeable");
            return this.vertical.a(0, i10);
        }
    }

    public /* synthetic */ CrossAxisAlignment(kotlin.jvm.internal.k kVar) {
        this();
    }

    public abstract int a(int i10, @NotNull LayoutDirection layoutDirection, @NotNull Placeable placeable, int i11);

    @Nullable
    public Integer b(@NotNull Placeable placeable) {
        t.j(placeable, "placeable");
        return null;
    }

    public boolean c() {
        return false;
    }

    private CrossAxisAlignment() {
    }
}
