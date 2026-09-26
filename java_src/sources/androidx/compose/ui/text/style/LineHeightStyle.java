package androidx.compose.ui.text.style;

import androidx.compose.ui.text.ExperimentalTextApi;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@ExperimentalTextApi
public final class LineHeightStyle {

    @NotNull
    public static final Companion Companion;

    @NotNull
    private static final LineHeightStyle Default;
    private final int alignment;
    private final int trim;

    @ExperimentalTextApi
    public static final class Alignment {
        private final int topPercentage;

        @NotNull
        public static final Companion Companion = new Companion(null);
        private static final int Top = b(0);
        private static final int Center = b(50);
        private static final int Proportional = b(-1);
        private static final int Bottom = b(100);

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }

            public final int a() {
                return Alignment.Proportional;
            }
        }

        public static boolean c(int i10, Object obj) {
            return (obj instanceof Alignment) && i10 == ((Alignment) obj).g();
        }

        public static final boolean d(int i10, int i11) {
            return i10 == i11;
        }

        public static int e(int i10) {
            return i10;
        }

        public boolean equals(Object obj) {
            return c(this.topPercentage, obj);
        }

        public final /* synthetic */ int g() {
            return this.topPercentage;
        }

        public int hashCode() {
            return e(this.topPercentage);
        }

        private static int b(int i10) {
            if ((i10 < 0 || i10 >= 101) && i10 != -1) {
                throw new IllegalStateException("topRatio should be in [0..100] range or -1".toString());
            }
            return i10;
        }

        @NotNull
        public static String f(int i10) {
            if (i10 == Top) {
                return "LineHeightStyle.Alignment.Top";
            }
            if (i10 == Center) {
                return "LineHeightStyle.Alignment.Center";
            }
            if (i10 == Proportional) {
                return "LineHeightStyle.Alignment.Proportional";
            }
            if (i10 == Bottom) {
                return "LineHeightStyle.Alignment.Bottom";
            }
            return "LineHeightStyle.Alignment(topPercentage = " + i10 + ')';
        }

        @NotNull
        public String toString() {
            return f(this.topPercentage);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final LineHeightStyle a() {
            return LineHeightStyle.Default;
        }
    }

    @ExperimentalTextApi
    public static final class Trim {
        private static final int FlagTrimBottom = 16;
        private static final int FlagTrimTop = 1;
        private final int value;

        @NotNull
        public static final Companion Companion = new Companion(null);
        private static final int FirstLineTop = b(1);
        private static final int LastLineBottom = b(16);
        private static final int Both = b(17);
        private static final int None = b(0);

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }

            public final int a() {
                return Trim.Both;
            }
        }

        private static int b(int i10) {
            return i10;
        }

        public static boolean c(int i10, Object obj) {
            return (obj instanceof Trim) && i10 == ((Trim) obj).i();
        }

        public static final boolean d(int i10, int i11) {
            return i10 == i11;
        }

        public static int e(int i10) {
            return i10;
        }

        public static final boolean f(int i10) {
            return (i10 & 1) > 0;
        }

        public static final boolean g(int i10) {
            return (i10 & 16) > 0;
        }

        @NotNull
        public static String h(int i10) {
            if (i10 == FirstLineTop) {
                return "LineHeightStyle.Trim.FirstLineTop";
            }
            if (i10 == LastLineBottom) {
                return "LineHeightStyle.Trim.LastLineBottom";
            }
            if (i10 == Both) {
                return "LineHeightStyle.Trim.Both";
            }
            return i10 == None ? "LineHeightStyle.Trim.None" : "Invalid";
        }

        public boolean equals(Object obj) {
            return c(this.value, obj);
        }

        public int hashCode() {
            return e(this.value);
        }

        public final /* synthetic */ int i() {
            return this.value;
        }

        @NotNull
        public String toString() {
            return h(this.value);
        }
    }

    public /* synthetic */ LineHeightStyle(int i10, int i11, k kVar) {
        this(i10, i11);
    }

    public final int b() {
        return this.alignment;
    }

    public final int c() {
        return this.trim;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LineHeightStyle)) {
            return false;
        }
        LineHeightStyle lineHeightStyle = (LineHeightStyle) obj;
        return Alignment.d(this.alignment, lineHeightStyle.alignment) && Trim.d(this.trim, lineHeightStyle.trim);
    }

    static {
        k kVar = null;
        Companion = new Companion(kVar);
        Default = new LineHeightStyle(Alignment.Companion.a(), Trim.Companion.a(), kVar);
    }

    private LineHeightStyle(int i10, int i11) {
        this.alignment = i10;
        this.trim = i11;
    }

    public int hashCode() {
        return (Alignment.e(this.alignment) * 31) + Trim.e(this.trim);
    }

    @NotNull
    public String toString() {
        return "LineHeightStyle(alignment=" + ((Object) Alignment.f(this.alignment)) + ", trim=" + ((Object) Trim.h(this.trim)) + ')';
    }
}
