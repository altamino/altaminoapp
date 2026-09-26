package kotlinx.serialization.json.internal;

import java.util.Arrays;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class h0 implements p0 {

    @NotNull
    private char[] array = i.INSTANCE.b();
    private int size;

    private final int f(int i10, int i11) {
        int i12 = i11 + i10;
        char[] cArr = this.array;
        if (cArr.length <= i12) {
            char[] cArrCopyOf = Arrays.copyOf(cArr, j8.o.e(i12, i10 * 2));
            kotlin.jvm.internal.t.i(cArrCopyOf, "copyOf(this, newSize)");
            this.array = cArrCopyOf;
        }
        return i10;
    }

    @Override // kotlinx.serialization.json.internal.p0
    public void a(char c7) {
        e(1);
        char[] cArr = this.array;
        int i10 = this.size;
        this.size = i10 + 1;
        cArr[i10] = c7;
    }

    private final void e(int i10) {
        f(this.size, i10);
    }

    @Override // kotlinx.serialization.json.internal.p0
    public void b(@NotNull String text) {
        kotlin.jvm.internal.t.j(text, "text");
        e(text.length() + 2);
        char[] cArr = this.array;
        int i10 = this.size;
        int i11 = i10 + 1;
        cArr[i10] = b.STRING;
        int length = text.length();
        text.getChars(0, length, cArr, i11);
        int i12 = length + i11;
        for (int i13 = i11; i13 < i12; i13++) {
            char c7 = cArr[i13];
            if (c7 < w0.a().length && w0.a()[c7] != 0) {
                d(i13 - i11, i13, text);
                return;
            }
        }
        cArr[i12] = b.STRING;
        this.size = i12 + 1;
    }

    @Override // kotlinx.serialization.json.internal.p0
    public void c(@NotNull String text) {
        kotlin.jvm.internal.t.j(text, "text");
        int length = text.length();
        if (length == 0) {
            return;
        }
        e(length);
        text.getChars(0, text.length(), this.array, this.size);
        this.size += length;
    }

    public void g() {
        i.INSTANCE.a(this.array);
    }

    @NotNull
    public String toString() {
        return new String(this.array, 0, this.size);
    }

    private final void d(int i10, int i11, String str) {
        byte b7;
        int length = str.length();
        while (i10 < length) {
            int iF = f(i11, 2);
            char cCharAt = str.charAt(i10);
            if (cCharAt >= w0.a().length || (b7 = w0.a()[cCharAt]) == 0) {
                int i12 = iF + 1;
                this.array[iF] = cCharAt;
                i11 = i12;
            } else if (b7 == 1) {
                String str2 = w0.b()[cCharAt];
                kotlin.jvm.internal.t.g(str2);
                int iF2 = f(iF, str2.length());
                str2.getChars(0, str2.length(), this.array, iF2);
                i11 = iF2 + str2.length();
                this.size = i11;
            } else {
                char[] cArr = this.array;
                cArr[iF] = b.STRING_ESC;
                cArr[iF + 1] = (char) b7;
                i11 = iF + 2;
                this.size = i11;
            }
            i10++;
        }
        int iF3 = f(i11, 1);
        this.array[iF3] = b.STRING;
        this.size = iF3 + 1;
    }

    @Override // kotlinx.serialization.json.internal.p0
    public void writeLong(long j6) {
        c(String.valueOf(j6));
    }
}
