package androidx.compose.ui.text.style;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.text.TempListUtilsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.serialization.json.internal.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@Immutable
public final class TextDecoration {
    private final int mask;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final TextDecoration None = new TextDecoration(0);

    @NotNull
    private static final TextDecoration Underline = new TextDecoration(1);

    @NotNull
    private static final TextDecoration LineThrough = new TextDecoration(2);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final TextDecoration a(@NotNull List<TextDecoration> decorations) {
            t.j(decorations, "decorations");
            Integer numValueOf = 0;
            int size = decorations.size();
            for (int i10 = 0; i10 < size; i10++) {
                numValueOf = Integer.valueOf(numValueOf.intValue() | decorations.get(i10).e());
            }
            return new TextDecoration(numValueOf.intValue());
        }

        @NotNull
        public final TextDecoration b() {
            return TextDecoration.LineThrough;
        }

        @NotNull
        public final TextDecoration c() {
            return TextDecoration.None;
        }

        @NotNull
        public final TextDecoration d() {
            return TextDecoration.Underline;
        }
    }

    public final int e() {
        return this.mask;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TextDecoration) && this.mask == ((TextDecoration) obj).mask;
    }

    public int hashCode() {
        return this.mask;
    }

    public final boolean d(@NotNull TextDecoration other) {
        t.j(other, "other");
        int i10 = this.mask;
        return (other.mask | i10) == i10;
    }

    @NotNull
    public String toString() {
        if (this.mask == 0) {
            return "TextDecoration.None";
        }
        ArrayList arrayList = new ArrayList();
        if ((this.mask & Underline.mask) != 0) {
            arrayList.add("Underline");
        }
        if ((this.mask & LineThrough.mask) != 0) {
            arrayList.add("LineThrough");
        }
        if (arrayList.size() == 1) {
            return "TextDecoration." + ((String) arrayList.get(0));
        }
        return "TextDecoration[" + TempListUtilsKt.e(arrayList, ", ", null, null, 0, null, null, 62, null) + b.END_LIST;
    }

    public TextDecoration(int i10) {
        this.mask = i10;
    }
}
