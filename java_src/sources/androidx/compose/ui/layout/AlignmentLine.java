package androidx.compose.ui.layout;

import androidx.compose.runtime.Immutable;
import e8.p;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@Immutable
public abstract class AlignmentLine {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int Unspecified = Integer.MIN_VALUE;

    @NotNull
    private final p<Integer, Integer, Integer> merger;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ AlignmentLine(p pVar, k kVar) {
        this(pVar);
    }

    @NotNull
    public final p<Integer, Integer, Integer> a() {
        return this.merger;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private AlignmentLine(p<? super Integer, ? super Integer, Integer> pVar) {
        this.merger = pVar;
    }
}
