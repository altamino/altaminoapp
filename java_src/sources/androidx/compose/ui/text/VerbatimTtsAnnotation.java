package androidx.compose.ui.text;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class VerbatimTtsAnnotation extends TtsAnnotation {

    @NotNull
    private final String verbatim;

    @NotNull
    public final String a() {
        return this.verbatim;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof VerbatimTtsAnnotation) && t.e(this.verbatim, ((VerbatimTtsAnnotation) obj).verbatim);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VerbatimTtsAnnotation(@NotNull String verbatim) {
        super(null);
        t.j(verbatim, "verbatim");
        this.verbatim = verbatim;
    }

    public int hashCode() {
        return this.verbatim.hashCode();
    }

    @NotNull
    public String toString() {
        return "VerbatimTtsAnnotation(verbatim=" + this.verbatim + ')';
    }
}
