package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class EditingBuffer {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int NOWHERE = -1;
    private int compositionEnd;
    private int compositionStart;

    @NotNull
    private final PartialGapBuffer gapBuffer;
    private int selectionEnd;
    private int selectionStart;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ EditingBuffer(AnnotatedString annotatedString, long j6, k kVar) {
        this(annotatedString, j6);
    }

    public final void a() {
        this.compositionStart = -1;
        this.compositionEnd = -1;
    }

    public final int e() {
        return this.compositionEnd;
    }

    public final int f() {
        return this.compositionStart;
    }

    public final int g() {
        int i10 = this.selectionStart;
        int i11 = this.selectionEnd;
        if (i10 == i11) {
            return i11;
        }
        return -1;
    }

    public final int j() {
        return this.selectionEnd;
    }

    public final int k() {
        return this.selectionStart;
    }

    public final boolean l() {
        return this.compositionStart != -1;
    }

    public /* synthetic */ EditingBuffer(String str, long j6, k kVar) {
        this(str, j6);
    }

    public final char c(int i10) {
        return this.gapBuffer.a(i10);
    }

    public final int h() {
        return this.gapBuffer.b();
    }

    public final long i() {
        return TextRangeKt.b(this.selectionStart, this.selectionEnd);
    }

    public final void m(int i10, int i11, @NotNull String text) {
        t.j(text, "text");
        if (i10 < 0 || i10 > this.gapBuffer.b()) {
            throw new IndexOutOfBoundsException("start (" + i10 + ") offset is outside of text region " + this.gapBuffer.b());
        }
        if (i11 < 0 || i11 > this.gapBuffer.b()) {
            throw new IndexOutOfBoundsException("end (" + i11 + ") offset is outside of text region " + this.gapBuffer.b());
        }
        if (i10 <= i11) {
            this.gapBuffer.c(i10, i11, text);
            this.selectionStart = text.length() + i10;
            this.selectionEnd = i10 + text.length();
            this.compositionStart = -1;
            this.compositionEnd = -1;
            return;
        }
        throw new IllegalArgumentException("Do not set reversed range: " + i10 + " > " + i11);
    }

    public final void n(int i10, int i11) {
        if (i10 < 0 || i10 > this.gapBuffer.b()) {
            throw new IndexOutOfBoundsException("start (" + i10 + ") offset is outside of text region " + this.gapBuffer.b());
        }
        if (i11 < 0 || i11 > this.gapBuffer.b()) {
            throw new IndexOutOfBoundsException("end (" + i11 + ") offset is outside of text region " + this.gapBuffer.b());
        }
        if (i10 < i11) {
            this.compositionStart = i10;
            this.compositionEnd = i11;
            return;
        }
        throw new IllegalArgumentException("Do not set reversed or empty range: " + i10 + " > " + i11);
    }

    public final void p(int i10, int i11) {
        if (i10 < 0 || i10 > this.gapBuffer.b()) {
            throw new IndexOutOfBoundsException("start (" + i10 + ") offset is outside of text region " + this.gapBuffer.b());
        }
        if (i11 < 0 || i11 > this.gapBuffer.b()) {
            throw new IndexOutOfBoundsException("end (" + i11 + ") offset is outside of text region " + this.gapBuffer.b());
        }
        if (i10 <= i11) {
            this.selectionStart = i10;
            this.selectionEnd = i11;
            return;
        }
        throw new IllegalArgumentException("Do not set reversed range: " + i10 + " > " + i11);
    }

    @NotNull
    public final AnnotatedString q() {
        return new AnnotatedString(toString(), null, null, 6, null);
    }

    @NotNull
    public String toString() {
        return this.gapBuffer.toString();
    }

    private EditingBuffer(AnnotatedString annotatedString, long j6) {
        this.gapBuffer = new PartialGapBuffer(annotatedString.g());
        this.selectionStart = TextRange.l(j6);
        this.selectionEnd = TextRange.k(j6);
        this.compositionStart = -1;
        this.compositionEnd = -1;
        int iL = TextRange.l(j6);
        int iK = TextRange.k(j6);
        if (iL >= 0 && iL <= annotatedString.length()) {
            if (iK < 0 || iK > annotatedString.length()) {
                throw new IndexOutOfBoundsException("end (" + iK + ") offset is outside of text region " + annotatedString.length());
            }
            if (iL <= iK) {
                return;
            }
            throw new IllegalArgumentException("Do not set reversed range: " + iL + " > " + iK);
        }
        throw new IndexOutOfBoundsException("start (" + iL + ") offset is outside of text region " + annotatedString.length());
    }

    public final void b(int i10, int i11) {
        long jB = TextRangeKt.b(i10, i11);
        this.gapBuffer.c(i10, i11, "");
        long jA = EditingBufferKt.a(TextRangeKt.b(this.selectionStart, this.selectionEnd), jB);
        this.selectionStart = TextRange.l(jA);
        this.selectionEnd = TextRange.k(jA);
        if (l()) {
            long jA2 = EditingBufferKt.a(TextRangeKt.b(this.compositionStart, this.compositionEnd), jB);
            if (TextRange.h(jA2)) {
                a();
            } else {
                this.compositionStart = TextRange.l(jA2);
                this.compositionEnd = TextRange.k(jA2);
            }
        }
    }

    @Nullable
    public final TextRange d() {
        if (l()) {
            return TextRange.b(TextRangeKt.b(this.compositionStart, this.compositionEnd));
        }
        return null;
    }

    public final void o(int i10) {
        p(i10, i10);
    }

    private EditingBuffer(String str, long j6) {
        this(new AnnotatedString(str, null, null, 6, null), j6, (k) null);
    }
}
