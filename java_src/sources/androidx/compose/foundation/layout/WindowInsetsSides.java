package androidx.compose.foundation.layout;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class WindowInsetsSides {
    private static final int AllowLeftInLtr;
    private static final int AllowLeftInRtl;
    private static final int AllowRightInLtr;
    private static final int AllowRightInRtl;
    private static final int Bottom;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int End;
    private static final int Horizontal;
    private static final int Left;
    private static final int Right;
    private static final int Start;
    private static final int Top;
    private static final int Vertical;
    private final int value;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return WindowInsetsSides.AllowLeftInLtr;
        }

        public final int b() {
            return WindowInsetsSides.AllowLeftInRtl;
        }

        public final int c() {
            return WindowInsetsSides.AllowRightInLtr;
        }

        public final int d() {
            return WindowInsetsSides.AllowRightInRtl;
        }

        public final int e() {
            return WindowInsetsSides.Bottom;
        }

        public final int f() {
            return WindowInsetsSides.End;
        }

        public final int g() {
            return WindowInsetsSides.Left;
        }

        public final int h() {
            return WindowInsetsSides.Right;
        }

        public final int i() {
            return WindowInsetsSides.Start;
        }

        public final int j() {
            return WindowInsetsSides.Top;
        }
    }

    private static int k(int i10) {
        return i10;
    }

    public static boolean l(int i10, Object obj) {
        return (obj instanceof WindowInsetsSides) && i10 == ((WindowInsetsSides) obj).r();
    }

    public static final boolean m(int i10, int i11) {
        return i10 == i11;
    }

    public static final boolean n(int i10, int i11) {
        return (i10 & i11) != 0;
    }

    public static int o(int i10) {
        return i10;
    }

    public static final int p(int i10, int i11) {
        return k(i10 | i11);
    }

    public boolean equals(Object obj) {
        return l(this.value, obj);
    }

    public int hashCode() {
        return o(this.value);
    }

    public final /* synthetic */ int r() {
        return this.value;
    }

    static {
        int iK = k(8);
        AllowLeftInLtr = iK;
        int iK2 = k(4);
        AllowRightInLtr = iK2;
        int iK3 = k(2);
        AllowLeftInRtl = iK3;
        int iK4 = k(1);
        AllowRightInRtl = iK4;
        Start = p(iK, iK4);
        End = p(iK2, iK3);
        int iK5 = k(16);
        Top = iK5;
        int iK6 = k(32);
        Bottom = iK6;
        int iP = p(iK, iK3);
        Left = iP;
        int iP2 = p(iK2, iK4);
        Right = iP2;
        Horizontal = p(iP, iP2);
        Vertical = p(iK5, iK6);
    }

    @NotNull
    public static String q(int i10) {
        return "WindowInsetsSides(" + s(i10) + ')';
    }

    private static final String s(int i10) {
        StringBuilder sb = new StringBuilder();
        int i11 = Start;
        if ((i10 & i11) == i11) {
            t(sb, "Start");
        }
        int i12 = Left;
        if ((i10 & i12) == i12) {
            t(sb, "Left");
        }
        int i13 = Top;
        if ((i10 & i13) == i13) {
            t(sb, "Top");
        }
        int i14 = End;
        if ((i10 & i14) == i14) {
            t(sb, "End");
        }
        int i15 = Right;
        if ((i10 & i15) == i15) {
            t(sb, "Right");
        }
        int i16 = Bottom;
        if ((i10 & i16) == i16) {
            t(sb, "Bottom");
        }
        String string = sb.toString();
        t.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @NotNull
    public String toString() {
        return q(this.value);
    }

    private static final void t(StringBuilder sb, String str) {
        if (sb.length() > 0) {
            sb.append('+');
        }
        sb.append(str);
    }
}
