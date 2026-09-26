package androidx.compose.ui;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.LayoutDirection;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
@Stable
public interface Alignment {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @Stable
    public interface Horizontal {
        int a(int i10, int i11, @NotNull LayoutDirection layoutDirection);
    }

    @Stable
    public interface Vertical {
        int a(int i10, int i11);
    }

    long a(long j6, long j10, @NotNull LayoutDirection layoutDirection);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @NotNull
        private static final Alignment TopStart = new BiasAlignment(-1.0f, -1.0f);

        @NotNull
        private static final Alignment TopCenter = new BiasAlignment(0.0f, -1.0f);

        @NotNull
        private static final Alignment TopEnd = new BiasAlignment(1.0f, -1.0f);

        @NotNull
        private static final Alignment CenterStart = new BiasAlignment(-1.0f, 0.0f);

        @NotNull
        private static final Alignment Center = new BiasAlignment(0.0f, 0.0f);

        @NotNull
        private static final Alignment CenterEnd = new BiasAlignment(1.0f, 0.0f);

        @NotNull
        private static final Alignment BottomStart = new BiasAlignment(-1.0f, 1.0f);

        @NotNull
        private static final Alignment BottomCenter = new BiasAlignment(0.0f, 1.0f);

        @NotNull
        private static final Alignment BottomEnd = new BiasAlignment(1.0f, 1.0f);

        @NotNull
        private static final Vertical Top = new BiasAlignment.Vertical(-1.0f);

        @NotNull
        private static final Vertical CenterVertically = new BiasAlignment.Vertical(0.0f);

        @NotNull
        private static final Vertical Bottom = new BiasAlignment.Vertical(1.0f);

        @NotNull
        private static final Horizontal Start = new BiasAlignment.Horizontal(-1.0f);

        @NotNull
        private static final Horizontal CenterHorizontally = new BiasAlignment.Horizontal(0.0f);

        @NotNull
        private static final Horizontal End = new BiasAlignment.Horizontal(1.0f);

        @NotNull
        public final Vertical a() {
            return Bottom;
        }

        @NotNull
        public final Alignment b() {
            return BottomCenter;
        }

        @NotNull
        public final Alignment c() {
            return BottomEnd;
        }

        @NotNull
        public final Alignment d() {
            return BottomStart;
        }

        @NotNull
        public final Alignment e() {
            return Center;
        }

        @NotNull
        public final Alignment f() {
            return CenterEnd;
        }

        @NotNull
        public final Horizontal g() {
            return CenterHorizontally;
        }

        @NotNull
        public final Alignment h() {
            return CenterStart;
        }

        @NotNull
        public final Vertical i() {
            return CenterVertically;
        }

        @NotNull
        public final Horizontal j() {
            return End;
        }

        @NotNull
        public final Horizontal k() {
            return Start;
        }

        @NotNull
        public final Vertical l() {
            return Top;
        }

        @NotNull
        public final Alignment m() {
            return TopCenter;
        }

        @NotNull
        public final Alignment n() {
            return TopEnd;
        }

        @NotNull
        public final Alignment o() {
            return TopStart;
        }

        private Companion() {
        }
    }
}
