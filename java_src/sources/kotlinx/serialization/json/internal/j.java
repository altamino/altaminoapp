package kotlinx.serialization.json.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class j {

    @NotNull
    public static final byte[] CHAR_TO_TOKEN;

    @NotNull
    public static final char[] ESCAPE_2_CHAR;

    @NotNull
    public static final j INSTANCE;

    private final void e() {
        for (int i10 = 0; i10 < 33; i10++) {
            d(i10, (byte) 127);
        }
        d(9, (byte) 3);
        d(10, (byte) 3);
        d(13, (byte) 3);
        d(32, (byte) 3);
        c(b.COMMA, (byte) 4);
        c(b.COLON, (byte) 5);
        c(b.BEGIN_OBJ, (byte) 6);
        c(b.END_OBJ, (byte) 7);
        c(b.BEGIN_LIST, (byte) 8);
        c(b.END_LIST, (byte) 9);
        c(b.STRING, (byte) 1);
        c(b.STRING_ESC, (byte) 2);
    }

    private final void f() {
        for (int i10 = 0; i10 < 32; i10++) {
            b(i10, b.UNICODE_ESC);
        }
        b(8, 'b');
        b(9, 't');
        b(10, 'n');
        b(12, 'f');
        b(13, 'r');
        a('/', '/');
        a(b.STRING, b.STRING);
        a(b.STRING_ESC, b.STRING_ESC);
    }

    static {
        j jVar = new j();
        INSTANCE = jVar;
        ESCAPE_2_CHAR = new char[117];
        CHAR_TO_TOKEN = new byte[126];
        jVar.f();
        jVar.e();
    }

    private final void b(int i10, char c7) {
        if (c7 != 'u') {
            ESCAPE_2_CHAR[c7] = (char) i10;
        }
    }

    private final void d(int i10, byte b7) {
        CHAR_TO_TOKEN[i10] = b7;
    }

    private j() {
    }

    private final void a(char c7, char c10) {
        b(c7, c10);
    }

    private final void c(char c7, byte b7) {
        d(c7, b7);
    }
}
