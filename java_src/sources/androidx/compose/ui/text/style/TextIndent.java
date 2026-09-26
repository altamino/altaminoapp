package androidx.compose.ui.text.style;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@Immutable
public final class TextIndent {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final TextIndent None = new TextIndent(0, 0, 3, null);
    private final long firstLine;
    private final long restLine;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final TextIndent a() {
            return TextIndent.None;
        }
    }

    public /* synthetic */ TextIndent(long j6, long j10, k kVar) {
        this(j6, j10);
    }

    public final long b() {
        return this.firstLine;
    }

    public final long c() {
        return this.restLine;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextIndent)) {
            return false;
        }
        TextIndent textIndent = (TextIndent) obj;
        return TextUnit.e(this.firstLine, textIndent.firstLine) && TextUnit.e(this.restLine, textIndent.restLine);
    }

    private TextIndent(long j6, long j10) {
        this.firstLine = j6;
        this.restLine = j10;
    }

    public int hashCode() {
        return (TextUnit.i(this.firstLine) * 31) + TextUnit.i(this.restLine);
    }

    @NotNull
    public String toString() {
        return "TextIndent(firstLine=" + ((Object) TextUnit.j(this.firstLine)) + ", restLine=" + ((Object) TextUnit.j(this.restLine)) + ')';
    }

    public /* synthetic */ TextIndent(long j6, long j10, int i10, k kVar) {
        this((i10 & 1) != 0 ? TextUnitKt.e(0) : j6, (i10 & 2) != 0 ? TextUnitKt.e(0) : j10, null);
    }
}
