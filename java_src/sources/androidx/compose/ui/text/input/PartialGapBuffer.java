package androidx.compose.ui.text.input;

import androidx.compose.ui.text.InternalTextApi;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@InternalTextApi
public final class PartialGapBuffer {
    public static final int BUF_SIZE = 255;

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int NOWHERE = -1;
    public static final int SURROUNDING_SIZE = 64;
    private int bufEnd;
    private int bufStart;

    @Nullable
    private GapBuffer buffer;

    @NotNull
    private String text;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public PartialGapBuffer(@NotNull String text) {
        t.j(text, "text");
        this.text = text;
        this.bufStart = -1;
        this.bufEnd = -1;
    }

    public final char a(int i10) {
        GapBuffer gapBuffer = this.buffer;
        if (gapBuffer == null) {
            return this.text.charAt(i10);
        }
        if (i10 < this.bufStart) {
            return this.text.charAt(i10);
        }
        int iE = gapBuffer.e();
        int i11 = this.bufStart;
        return i10 < iE + i11 ? gapBuffer.d(i10 - i11) : this.text.charAt(i10 - ((iE - this.bufEnd) + i11));
    }

    public final int b() {
        GapBuffer gapBuffer = this.buffer;
        return gapBuffer == null ? this.text.length() : (this.text.length() - (this.bufEnd - this.bufStart)) + gapBuffer.e();
    }

    public final void c(int i10, int i11, @NotNull String text) {
        t.j(text, "text");
        GapBuffer gapBuffer = this.buffer;
        if (gapBuffer != null) {
            int i12 = this.bufStart;
            int i13 = i10 - i12;
            int i14 = i11 - i12;
            if (i13 >= 0 && i14 <= gapBuffer.e()) {
                gapBuffer.g(i13, i14, text);
                return;
            }
            this.text = toString();
            this.buffer = null;
            this.bufStart = -1;
            this.bufEnd = -1;
            c(i10, i11, text);
            return;
        }
        int iMax = Math.max(255, text.length() + 128);
        char[] cArr = new char[iMax];
        int iMin = Math.min(i10, 64);
        int iMin2 = Math.min(this.text.length() - i11, 64);
        int i15 = i10 - iMin;
        GapBufferKt.b(this.text, cArr, 0, i15, i10);
        int i16 = iMax - iMin2;
        int i17 = i11 + iMin2;
        GapBufferKt.b(this.text, cArr, i16, i11, i17);
        GapBufferKt.c(text, cArr, iMin, 0, 0, 12, null);
        this.buffer = new GapBuffer(cArr, iMin + text.length(), i16);
        this.bufStart = i15;
        this.bufEnd = i17;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @NotNull
    public String toString() {
        GapBuffer gapBuffer = this.buffer;
        if (gapBuffer == null) {
            return this.text;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) this.text, 0, this.bufStart);
        gapBuffer.a(sb);
        String str = this.text;
        sb.append((CharSequence) str, this.bufEnd, str.length());
        String string = sb.toString();
        t.i(string, "sb.toString()");
        return string;
    }
}
