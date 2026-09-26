package androidx.compose.ui.layout;

import e8.l;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public interface BeyondBoundsLayout {

    public interface BeyondBoundsScope {
        boolean a();
    }

    public static final class LayoutDirection {
        private final int value;

        @NotNull
        public static final Companion Companion = new Companion(null);
        private static final int Before = g(1);
        private static final int After = g(2);
        private static final int Left = g(3);
        private static final int Right = g(4);
        private static final int Above = g(5);
        private static final int Below = g(6);

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }

            public final int a() {
                return LayoutDirection.Above;
            }

            public final int b() {
                return LayoutDirection.After;
            }

            public final int c() {
                return LayoutDirection.Before;
            }

            public final int d() {
                return LayoutDirection.Below;
            }

            public final int e() {
                return LayoutDirection.Left;
            }

            public final int f() {
                return LayoutDirection.Right;
            }
        }

        public static int g(int i10) {
            return i10;
        }

        public static boolean h(int i10, Object obj) {
            return (obj instanceof LayoutDirection) && i10 == ((LayoutDirection) obj).l();
        }

        public static final boolean i(int i10, int i11) {
            return i10 == i11;
        }

        public static int j(int i10) {
            return i10;
        }

        public boolean equals(Object obj) {
            return h(this.value, obj);
        }

        public int hashCode() {
            return j(this.value);
        }

        public final /* synthetic */ int l() {
            return this.value;
        }

        @NotNull
        public static String k(int i10) {
            if (i(i10, Before)) {
                return "Before";
            }
            if (i(i10, After)) {
                return "After";
            }
            if (i(i10, Left)) {
                return "Left";
            }
            if (i(i10, Right)) {
                return "Right";
            }
            if (i(i10, Above)) {
                return "Above";
            }
            return i(i10, Below) ? "Below" : "invalid LayoutDirection";
        }

        @NotNull
        public String toString() {
            return k(this.value);
        }
    }

    @Nullable
    <T> T a(int i10, @NotNull l<? super BeyondBoundsScope, ? extends T> lVar);
}
