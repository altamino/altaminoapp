package androidx.compose.ui.text.input;

import kotlin.collections.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class GapBuffer {

    @NotNull
    private char[] buffer;
    private int capacity;
    private int gapEnd;
    private int gapStart;

    private final int c() {
        return this.gapEnd - this.gapStart;
    }

    public GapBuffer(@NotNull char[] initBuffer, int i10, int i11) {
        t.j(initBuffer, "initBuffer");
        this.capacity = initBuffer.length;
        this.buffer = initBuffer;
        this.gapStart = i10;
        this.gapEnd = i11;
    }

    private final void b(int i10, int i11) {
        int i12 = this.gapStart;
        if (i10 < i12 && i11 <= i12) {
            int i13 = i12 - i11;
            char[] cArr = this.buffer;
            o.e(cArr, cArr, this.gapEnd - i13, i11, i12);
            this.gapStart = i10;
            this.gapEnd -= i13;
            return;
        }
        if (i10 < i12 && i11 >= i12) {
            this.gapEnd = i11 + c();
            this.gapStart = i10;
            return;
        }
        int iC = i10 + c();
        int iC2 = i11 + c();
        int i14 = this.gapEnd;
        int i15 = iC - i14;
        char[] cArr2 = this.buffer;
        o.e(cArr2, cArr2, this.gapStart, i14, iC);
        this.gapStart += i15;
        this.gapEnd = iC2;
    }

    public final void a(@NotNull StringBuilder builder) {
        t.j(builder, "builder");
        builder.append(this.buffer, 0, this.gapStart);
        char[] cArr = this.buffer;
        int i10 = this.gapEnd;
        builder.append(cArr, i10, this.capacity - i10);
    }

    public final char d(int i10) {
        int i11 = this.gapStart;
        return i10 < i11 ? this.buffer[i10] : this.buffer[(i10 - i11) + this.gapEnd];
    }

    public final int e() {
        return this.capacity - c();
    }

    public final void g(int i10, int i11, @NotNull String text) {
        t.j(text, "text");
        f(text.length() - (i11 - i10));
        b(i10, i11);
        GapBufferKt.c(text, this.buffer, this.gapStart, 0, 0, 12, null);
        this.gapStart += text.length();
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) sb);
        String string = sb.toString();
        t.i(string, "StringBuilder().apply { append(this) }.toString()");
        return string;
    }

    private final void f(int i10) {
        if (i10 <= c()) {
            return;
        }
        int iC = i10 - c();
        int i11 = this.capacity;
        do {
            i11 *= 2;
        } while (i11 - this.capacity < iC);
        char[] cArr = new char[i11];
        o.e(this.buffer, cArr, 0, 0, this.gapStart);
        int i12 = this.capacity;
        int i13 = this.gapEnd;
        int i14 = i12 - i13;
        int i15 = i11 - i14;
        o.e(this.buffer, cArr, i15, i13, i14 + i13);
        this.buffer = cArr;
        this.capacity = i11;
        this.gapEnd = i15;
    }
}
