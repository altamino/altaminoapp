package androidx.compose.foundation.layout;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public final class Arrangement {

    @NotNull
    public static final Arrangement INSTANCE = new Arrangement();

    @NotNull
    private static final Horizontal Start = new Horizontal() { // from class: androidx.compose.foundation.layout.Arrangement$Start$1
        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
        public /* synthetic */ float a() {
            return a.a(this);
        }

        @NotNull
        public String toString() {
            return "Arrangement#Start";
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
        public void b(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
            t.j(density, "<this>");
            t.j(sizes, "sizes");
            t.j(layoutDirection, "layoutDirection");
            t.j(outPositions, "outPositions");
            if (layoutDirection == LayoutDirection.Ltr) {
                Arrangement.INSTANCE.h(sizes, outPositions, false);
            } else {
                Arrangement.INSTANCE.i(i10, sizes, outPositions, true);
            }
        }
    };

    @NotNull
    private static final Horizontal End = new Horizontal() { // from class: androidx.compose.foundation.layout.Arrangement$End$1
        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
        public /* synthetic */ float a() {
            return a.a(this);
        }

        @NotNull
        public String toString() {
            return "Arrangement#End";
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
        public void b(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
            t.j(density, "<this>");
            t.j(sizes, "sizes");
            t.j(layoutDirection, "layoutDirection");
            t.j(outPositions, "outPositions");
            if (layoutDirection == LayoutDirection.Ltr) {
                Arrangement.INSTANCE.i(i10, sizes, outPositions, false);
            } else {
                Arrangement.INSTANCE.h(sizes, outPositions, true);
            }
        }
    };

    @NotNull
    private static final Vertical Top = new Vertical() { // from class: androidx.compose.foundation.layout.Arrangement$Top$1
        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public /* synthetic */ float a() {
            return b.a(this);
        }

        @NotNull
        public String toString() {
            return "Arrangement#Top";
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public void c(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull int[] outPositions) {
            t.j(density, "<this>");
            t.j(sizes, "sizes");
            t.j(outPositions, "outPositions");
            Arrangement.INSTANCE.h(sizes, outPositions, false);
        }
    };

    @NotNull
    private static final Vertical Bottom = new Vertical() { // from class: androidx.compose.foundation.layout.Arrangement$Bottom$1
        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public /* synthetic */ float a() {
            return b.a(this);
        }

        @NotNull
        public String toString() {
            return "Arrangement#Bottom";
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public void c(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull int[] outPositions) {
            t.j(density, "<this>");
            t.j(sizes, "sizes");
            t.j(outPositions, "outPositions");
            Arrangement.INSTANCE.i(i10, sizes, outPositions, false);
        }
    };

    @NotNull
    private static final HorizontalOrVertical Center = new HorizontalOrVertical() { // from class: androidx.compose.foundation.layout.Arrangement$Center$1
        private final float spacing = Dp.f(0);

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
        public float a() {
            return this.spacing;
        }

        @NotNull
        public String toString() {
            return "Arrangement#Center";
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
        public void b(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
            t.j(density, "<this>");
            t.j(sizes, "sizes");
            t.j(layoutDirection, "layoutDirection");
            t.j(outPositions, "outPositions");
            if (layoutDirection == LayoutDirection.Ltr) {
                Arrangement.INSTANCE.g(i10, sizes, outPositions, false);
            } else {
                Arrangement.INSTANCE.g(i10, sizes, outPositions, true);
            }
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public void c(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull int[] outPositions) {
            t.j(density, "<this>");
            t.j(sizes, "sizes");
            t.j(outPositions, "outPositions");
            Arrangement.INSTANCE.g(i10, sizes, outPositions, false);
        }
    };

    @NotNull
    private static final HorizontalOrVertical SpaceEvenly = new HorizontalOrVertical() { // from class: androidx.compose.foundation.layout.Arrangement$SpaceEvenly$1
        private final float spacing = Dp.f(0);

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
        public float a() {
            return this.spacing;
        }

        @NotNull
        public String toString() {
            return "Arrangement#SpaceEvenly";
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
        public void b(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
            t.j(density, "<this>");
            t.j(sizes, "sizes");
            t.j(layoutDirection, "layoutDirection");
            t.j(outPositions, "outPositions");
            if (layoutDirection == LayoutDirection.Ltr) {
                Arrangement.INSTANCE.l(i10, sizes, outPositions, false);
            } else {
                Arrangement.INSTANCE.l(i10, sizes, outPositions, true);
            }
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public void c(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull int[] outPositions) {
            t.j(density, "<this>");
            t.j(sizes, "sizes");
            t.j(outPositions, "outPositions");
            Arrangement.INSTANCE.l(i10, sizes, outPositions, false);
        }
    };

    @NotNull
    private static final HorizontalOrVertical SpaceBetween = new HorizontalOrVertical() { // from class: androidx.compose.foundation.layout.Arrangement$SpaceBetween$1
        private final float spacing = Dp.f(0);

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
        public float a() {
            return this.spacing;
        }

        @NotNull
        public String toString() {
            return "Arrangement#SpaceBetween";
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
        public void b(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
            t.j(density, "<this>");
            t.j(sizes, "sizes");
            t.j(layoutDirection, "layoutDirection");
            t.j(outPositions, "outPositions");
            if (layoutDirection == LayoutDirection.Ltr) {
                Arrangement.INSTANCE.k(i10, sizes, outPositions, false);
            } else {
                Arrangement.INSTANCE.k(i10, sizes, outPositions, true);
            }
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public void c(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull int[] outPositions) {
            t.j(density, "<this>");
            t.j(sizes, "sizes");
            t.j(outPositions, "outPositions");
            Arrangement.INSTANCE.k(i10, sizes, outPositions, false);
        }
    };

    @NotNull
    private static final HorizontalOrVertical SpaceAround = new HorizontalOrVertical() { // from class: androidx.compose.foundation.layout.Arrangement$SpaceAround$1
        private final float spacing = Dp.f(0);

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
        public float a() {
            return this.spacing;
        }

        @NotNull
        public String toString() {
            return "Arrangement#SpaceAround";
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
        public void b(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
            t.j(density, "<this>");
            t.j(sizes, "sizes");
            t.j(layoutDirection, "layoutDirection");
            t.j(outPositions, "outPositions");
            if (layoutDirection == LayoutDirection.Ltr) {
                Arrangement.INSTANCE.j(i10, sizes, outPositions, false);
            } else {
                Arrangement.INSTANCE.j(i10, sizes, outPositions, true);
            }
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public void c(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull int[] outPositions) {
            t.j(density, "<this>");
            t.j(sizes, "sizes");
            t.j(outPositions, "outPositions");
            Arrangement.INSTANCE.j(i10, sizes, outPositions, false);
        }
    };

    @Stable
    public interface Horizontal {

        public static final class DefaultImpls {
        }

        float a();

        void b(@NotNull Density density, int i10, @NotNull int[] iArr, @NotNull LayoutDirection layoutDirection, @NotNull int[] iArr2);
    }

    @Stable
    public interface HorizontalOrVertical extends Horizontal, Vertical {

        public static final class DefaultImpls {
        }
    }

    @Immutable
    public static final class SpacedAligned implements HorizontalOrVertical {

        @Nullable
        private final e8.p<Integer, LayoutDirection, Integer> alignment;
        private final boolean rtlMirror;
        private final float space;
        private final float spacing;

        public /* synthetic */ SpacedAligned(float f, boolean z6, e8.p pVar, kotlin.jvm.internal.k kVar) {
            this(f, z6, pVar);
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
        public float a() {
            return this.spacing;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SpacedAligned)) {
                return false;
            }
            SpacedAligned spacedAligned = (SpacedAligned) obj;
            return Dp.i(this.space, spacedAligned.space) && this.rtlMirror == spacedAligned.rtlMirror && t.e(this.alignment, spacedAligned.alignment);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v3, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v7 */
        public int hashCode() {
            int iJ = Dp.j(this.space) * 31;
            boolean z6 = this.rtlMirror;
            ?? r1 = z6;
            if (z6) {
                r1 = 1;
            }
            int i10 = (iJ + r1) * 31;
            e8.p<Integer, LayoutDirection, Integer> pVar = this.alignment;
            return i10 + (pVar == null ? 0 : pVar.hashCode());
        }

        /* JADX WARN: Multi-variable type inference failed */
        private SpacedAligned(float f, boolean z6, e8.p<? super Integer, ? super LayoutDirection, Integer> pVar) {
            this.space = f;
            this.rtlMirror = z6;
            this.alignment = pVar;
            this.spacing = f;
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
        public void b(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
            int i11;
            int iMin;
            t.j(density, "<this>");
            t.j(sizes, "sizes");
            t.j(layoutDirection, "layoutDirection");
            t.j(outPositions, "outPositions");
            if (sizes.length == 0) {
                return;
            }
            int iJ0 = density.j0(this.space);
            boolean z6 = this.rtlMirror && layoutDirection == LayoutDirection.Rtl;
            Arrangement arrangement = Arrangement.INSTANCE;
            if (z6) {
                i11 = 0;
                iMin = 0;
                for (int length = sizes.length - 1; -1 < length; length--) {
                    int i12 = sizes[length];
                    int iMin2 = Math.min(i11, i10 - i12);
                    outPositions[length] = iMin2;
                    iMin = Math.min(iJ0, (i10 - iMin2) - i12);
                    i11 = outPositions[length] + i12 + iMin;
                }
            } else {
                int length2 = sizes.length;
                int i13 = 0;
                i11 = 0;
                iMin = 0;
                int i14 = 0;
                while (i13 < length2) {
                    int i15 = sizes[i13];
                    int iMin3 = Math.min(i11, i10 - i15);
                    outPositions[i14] = iMin3;
                    int iMin4 = Math.min(iJ0, (i10 - iMin3) - i15);
                    int i16 = outPositions[i14] + i15 + iMin4;
                    i13++;
                    i14++;
                    iMin = iMin4;
                    i11 = i16;
                }
            }
            int i17 = i11 - iMin;
            e8.p<Integer, LayoutDirection, Integer> pVar = this.alignment;
            if (pVar == null || i17 >= i10) {
                return;
            }
            int iIntValue = pVar.invoke(Integer.valueOf(i10 - i17), layoutDirection).intValue();
            int length3 = outPositions.length;
            for (int i18 = 0; i18 < length3; i18++) {
                outPositions[i18] = outPositions[i18] + iIntValue;
            }
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public void c(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull int[] outPositions) {
            t.j(density, "<this>");
            t.j(sizes, "sizes");
            t.j(outPositions, "outPositions");
            b(density, i10, sizes, LayoutDirection.Ltr, outPositions);
        }

        @NotNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.rtlMirror ? "" : "Absolute");
            sb.append("Arrangement#spacedAligned(");
            sb.append((Object) Dp.k(this.space));
            sb.append(", ");
            sb.append(this.alignment);
            sb.append(')');
            return sb.toString();
        }
    }

    @Stable
    public interface Vertical {

        public static final class DefaultImpls {
        }

        float a();

        void c(@NotNull Density density, int i10, @NotNull int[] iArr, @NotNull int[] iArr2);
    }

    @NotNull
    public final Vertical a() {
        return Bottom;
    }

    @NotNull
    public final HorizontalOrVertical b() {
        return Center;
    }

    @NotNull
    public final Horizontal c() {
        return End;
    }

    @NotNull
    public final HorizontalOrVertical d() {
        return SpaceBetween;
    }

    @NotNull
    public final Horizontal e() {
        return Start;
    }

    @NotNull
    public final Vertical f() {
        return Top;
    }

    @Immutable
    public static final class Absolute {

        @NotNull
        public static final Absolute INSTANCE = new Absolute();

        @NotNull
        private static final Horizontal Left = new Horizontal() { // from class: androidx.compose.foundation.layout.Arrangement$Absolute$Left$1
            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
            public /* synthetic */ float a() {
                return a.a(this);
            }

            @NotNull
            public String toString() {
                return "AbsoluteArrangement#Left";
            }

            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
            public void b(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
                t.j(density, "<this>");
                t.j(sizes, "sizes");
                t.j(layoutDirection, "layoutDirection");
                t.j(outPositions, "outPositions");
                Arrangement.INSTANCE.h(sizes, outPositions, false);
            }
        };

        @NotNull
        private static final Horizontal Center = new Horizontal() { // from class: androidx.compose.foundation.layout.Arrangement$Absolute$Center$1
            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
            public /* synthetic */ float a() {
                return a.a(this);
            }

            @NotNull
            public String toString() {
                return "AbsoluteArrangement#Center";
            }

            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
            public void b(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
                t.j(density, "<this>");
                t.j(sizes, "sizes");
                t.j(layoutDirection, "layoutDirection");
                t.j(outPositions, "outPositions");
                Arrangement.INSTANCE.g(i10, sizes, outPositions, false);
            }
        };

        @NotNull
        private static final Horizontal Right = new Horizontal() { // from class: androidx.compose.foundation.layout.Arrangement$Absolute$Right$1
            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
            public /* synthetic */ float a() {
                return a.a(this);
            }

            @NotNull
            public String toString() {
                return "AbsoluteArrangement#Right";
            }

            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
            public void b(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
                t.j(density, "<this>");
                t.j(sizes, "sizes");
                t.j(layoutDirection, "layoutDirection");
                t.j(outPositions, "outPositions");
                Arrangement.INSTANCE.i(i10, sizes, outPositions, false);
            }
        };

        @NotNull
        private static final Horizontal SpaceBetween = new Horizontal() { // from class: androidx.compose.foundation.layout.Arrangement$Absolute$SpaceBetween$1
            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
            public /* synthetic */ float a() {
                return a.a(this);
            }

            @NotNull
            public String toString() {
                return "AbsoluteArrangement#SpaceBetween";
            }

            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
            public void b(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
                t.j(density, "<this>");
                t.j(sizes, "sizes");
                t.j(layoutDirection, "layoutDirection");
                t.j(outPositions, "outPositions");
                Arrangement.INSTANCE.k(i10, sizes, outPositions, false);
            }
        };

        @NotNull
        private static final Horizontal SpaceEvenly = new Horizontal() { // from class: androidx.compose.foundation.layout.Arrangement$Absolute$SpaceEvenly$1
            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
            public /* synthetic */ float a() {
                return a.a(this);
            }

            @NotNull
            public String toString() {
                return "AbsoluteArrangement#SpaceEvenly";
            }

            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
            public void b(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
                t.j(density, "<this>");
                t.j(sizes, "sizes");
                t.j(layoutDirection, "layoutDirection");
                t.j(outPositions, "outPositions");
                Arrangement.INSTANCE.l(i10, sizes, outPositions, false);
            }
        };

        @NotNull
        private static final Horizontal SpaceAround = new Horizontal() { // from class: androidx.compose.foundation.layout.Arrangement$Absolute$SpaceAround$1
            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
            public /* synthetic */ float a() {
                return a.a(this);
            }

            @NotNull
            public String toString() {
                return "AbsoluteArrangement#SpaceAround";
            }

            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
            public void b(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
                t.j(density, "<this>");
                t.j(sizes, "sizes");
                t.j(layoutDirection, "layoutDirection");
                t.j(outPositions, "outPositions");
                Arrangement.INSTANCE.j(i10, sizes, outPositions, false);
            }
        };

        private Absolute() {
        }
    }

    public final void g(int i10, @NotNull int[] size, @NotNull int[] outPosition, boolean z6) {
        t.j(size, "size");
        t.j(outPosition, "outPosition");
        int i11 = 0;
        int i12 = 0;
        for (int i13 : size) {
            i12 += i13;
        }
        float f = (i10 - i12) / 2;
        if (!z6) {
            int length = size.length;
            int i14 = 0;
            while (i11 < length) {
                int i15 = size[i11];
                outPosition[i14] = g8.c.c(f);
                f += i15;
                i11++;
                i14++;
            }
            return;
        }
        int length2 = size.length;
        while (true) {
            length2--;
            if (-1 >= length2) {
                return;
            }
            int i16 = size[length2];
            outPosition[length2] = g8.c.c(f);
            f += i16;
        }
    }

    public final void h(@NotNull int[] size, @NotNull int[] outPosition, boolean z6) {
        t.j(size, "size");
        t.j(outPosition, "outPosition");
        int i10 = 0;
        if (!z6) {
            int length = size.length;
            int i11 = 0;
            int i12 = 0;
            while (i10 < length) {
                int i13 = size[i10];
                outPosition[i11] = i12;
                i12 += i13;
                i10++;
                i11++;
            }
            return;
        }
        int length2 = size.length;
        while (true) {
            length2--;
            if (-1 >= length2) {
                return;
            }
            int i14 = size[length2];
            outPosition[length2] = i10;
            i10 += i14;
        }
    }

    public final void i(int i10, @NotNull int[] size, @NotNull int[] outPosition, boolean z6) {
        t.j(size, "size");
        t.j(outPosition, "outPosition");
        int i11 = 0;
        int i12 = 0;
        for (int i13 : size) {
            i12 += i13;
        }
        int i14 = i10 - i12;
        if (!z6) {
            int length = size.length;
            int i15 = 0;
            while (i11 < length) {
                int i16 = size[i11];
                outPosition[i15] = i14;
                i14 += i16;
                i11++;
                i15++;
            }
            return;
        }
        int length2 = size.length;
        while (true) {
            length2--;
            if (-1 >= length2) {
                return;
            }
            int i17 = size[length2];
            outPosition[length2] = i14;
            i14 += i17;
        }
    }

    public final void j(int i10, @NotNull int[] size, @NotNull int[] outPosition, boolean z6) {
        t.j(size, "size");
        t.j(outPosition, "outPosition");
        int i11 = 0;
        int i12 = 0;
        for (int i13 : size) {
            i12 += i13;
        }
        float length = (size.length == 0) ^ true ? (i10 - i12) / size.length : 0.0f;
        float f = length / 2;
        if (z6) {
            for (int length2 = size.length - 1; -1 < length2; length2--) {
                int i14 = size[length2];
                outPosition[length2] = g8.c.c(f);
                f += i14 + length;
            }
            return;
        }
        int length3 = size.length;
        int i15 = 0;
        while (i11 < length3) {
            int i16 = size[i11];
            outPosition[i15] = g8.c.c(f);
            f += i16 + length;
            i11++;
            i15++;
        }
    }

    public final void k(int i10, @NotNull int[] size, @NotNull int[] outPosition, boolean z6) {
        t.j(size, "size");
        t.j(outPosition, "outPosition");
        int i11 = 0;
        int i12 = 0;
        for (int i13 : size) {
            i12 += i13;
        }
        float f = 0.0f;
        float length = size.length > 1 ? (i10 - i12) / (size.length - 1) : 0.0f;
        if (z6) {
            for (int length2 = size.length - 1; -1 < length2; length2--) {
                int i14 = size[length2];
                outPosition[length2] = g8.c.c(f);
                f += i14 + length;
            }
            return;
        }
        int length3 = size.length;
        int i15 = 0;
        while (i11 < length3) {
            int i16 = size[i11];
            outPosition[i15] = g8.c.c(f);
            f += i16 + length;
            i11++;
            i15++;
        }
    }

    public final void l(int i10, @NotNull int[] size, @NotNull int[] outPosition, boolean z6) {
        t.j(size, "size");
        t.j(outPosition, "outPosition");
        int i11 = 0;
        int i12 = 0;
        for (int i13 : size) {
            i12 += i13;
        }
        float length = (i10 - i12) / (size.length + 1);
        if (z6) {
            float f = length;
            for (int length2 = size.length - 1; -1 < length2; length2--) {
                int i14 = size[length2];
                outPosition[length2] = g8.c.c(f);
                f += i14 + length;
            }
            return;
        }
        int length3 = size.length;
        float f6 = length;
        int i15 = 0;
        while (i11 < length3) {
            int i16 = size[i11];
            outPosition[i15] = g8.c.c(f6);
            f6 += i16 + length;
            i11++;
            i15++;
        }
    }

    private Arrangement() {
    }
}
