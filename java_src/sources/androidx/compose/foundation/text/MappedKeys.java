package androidx.compose.foundation.text;

import androidx.compose.ui.input.key.Key_androidKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class MappedKeys {

    @NotNull
    public static final MappedKeys INSTANCE = new MappedKeys();
    private static final long A = Key_androidKt.a(29);
    private static final long C = Key_androidKt.a(31);
    private static final long H = Key_androidKt.a(36);
    private static final long V = Key_androidKt.a(50);
    private static final long X = Key_androidKt.a(52);
    private static final long Z = Key_androidKt.a(54);
    private static final long Backslash = Key_androidKt.a(73);
    private static final long DirectionLeft = Key_androidKt.a(21);
    private static final long DirectionRight = Key_androidKt.a(22);
    private static final long DirectionUp = Key_androidKt.a(19);
    private static final long DirectionDown = Key_androidKt.a(20);
    private static final long PageUp = Key_androidKt.a(92);
    private static final long PageDown = Key_androidKt.a(93);
    private static final long MoveHome = Key_androidKt.a(122);
    private static final long MoveEnd = Key_androidKt.a(123);
    private static final long Insert = Key_androidKt.a(124);
    private static final long Enter = Key_androidKt.a(66);
    private static final long Backspace = Key_androidKt.a(67);
    private static final long Delete = Key_androidKt.a(112);
    private static final long Paste = Key_androidKt.a(279);
    private static final long Cut = Key_androidKt.a(277);
    private static final long Tab = Key_androidKt.a(61);

    public final long a() {
        return A;
    }

    public final long b() {
        return Backslash;
    }

    public final long c() {
        return Backspace;
    }

    public final long d() {
        return C;
    }

    public final long e() {
        return Cut;
    }

    public final long f() {
        return Delete;
    }

    public final long g() {
        return DirectionDown;
    }

    public final long h() {
        return DirectionLeft;
    }

    public final long i() {
        return DirectionRight;
    }

    public final long j() {
        return DirectionUp;
    }

    public final long k() {
        return Enter;
    }

    public final long l() {
        return H;
    }

    public final long m() {
        return Insert;
    }

    public final long n() {
        return MoveEnd;
    }

    public final long o() {
        return MoveHome;
    }

    public final long p() {
        return PageDown;
    }

    public final long q() {
        return PageUp;
    }

    public final long r() {
        return Paste;
    }

    public final long s() {
        return Tab;
    }

    public final long t() {
        return V;
    }

    public final long u() {
        return X;
    }

    public final long v() {
        return Z;
    }

    private MappedKeys() {
    }
}
