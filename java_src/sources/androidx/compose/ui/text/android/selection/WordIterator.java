package androidx.compose.ui.text.android.selection;

import androidx.compose.ui.text.android.CharSequenceCharacterIterator;
import java.text.BreakIterator;
import java.util.Locale;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.serialization.json.internal.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class WordIterator {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int WINDOW_WIDTH = 50;

    @NotNull
    private final CharSequence charSequence;
    private final int end;

    @NotNull
    private final BreakIterator iterator;
    private final int start;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final boolean a(int i10) {
            int type = Character.getType(i10);
            if (type != 23 && type != 20 && type != 22 && type != 30 && type != 29 && type != 24 && type != 21) {
                return false;
            }
            return true;
        }
    }

    public final int d(int i10) {
        return c(i10, true);
    }

    public final int e(int i10) {
        return b(i10, true);
    }

    public WordIterator(@NotNull CharSequence charSequence, int i10, int i11, @Nullable Locale locale) {
        t.j(charSequence, "charSequence");
        this.charSequence = charSequence;
        if (i10 < 0 || i10 > charSequence.length()) {
            throw new IllegalArgumentException("input start index is outside the CharSequence".toString());
        }
        if (i11 < 0 || i11 > charSequence.length()) {
            throw new IllegalArgumentException("input end index is outside the CharSequence".toString());
        }
        BreakIterator wordInstance = BreakIterator.getWordInstance(locale);
        t.i(wordInstance, "getWordInstance(locale)");
        this.iterator = wordInstance;
        this.start = Math.max(0, i10 - 50);
        this.end = Math.min(charSequence.length(), i11 + 50);
        wordInstance.setText(new CharSequenceCharacterIterator(charSequence, i10, i11));
    }

    private final void a(int i10) {
        int i11 = this.start;
        if (i10 > this.end || i11 > i10) {
            throw new IllegalArgumentException(("Invalid offset: " + i10 + ". Valid range is [" + this.start + " , " + this.end + b.END_LIST).toString());
        }
    }

    private final boolean h(int i10) {
        return i10 <= this.end && this.start + 1 <= i10 && Character.isLetterOrDigit(Character.codePointBefore(this.charSequence, i10));
    }

    private final boolean j(int i10) {
        return i10 < this.end && this.start <= i10 && Character.isLetterOrDigit(Character.codePointAt(this.charSequence, i10));
    }

    public final boolean i(int i10) {
        int i11 = this.start + 1;
        if (i10 > this.end || i11 > i10) {
            return false;
        }
        return Companion.a(Character.codePointBefore(this.charSequence, i10));
    }

    public final boolean k(int i10) {
        int i11 = this.start;
        if (i10 >= this.end || i11 > i10) {
            return false;
        }
        return Companion.a(Character.codePointAt(this.charSequence, i10));
    }

    private final int b(int i10, boolean z6) {
        a(i10);
        if (j(i10)) {
            if (!this.iterator.isBoundary(i10) || (h(i10) && z6)) {
                return this.iterator.preceding(i10);
            }
            return i10;
        }
        if (h(i10)) {
            return this.iterator.preceding(i10);
        }
        return -1;
    }

    private final int c(int i10, boolean z6) {
        a(i10);
        if (h(i10)) {
            if (!this.iterator.isBoundary(i10) || (j(i10) && z6)) {
                return this.iterator.following(i10);
            }
            return i10;
        }
        if (j(i10)) {
            return this.iterator.following(i10);
        }
        return -1;
    }

    private final boolean l(int i10) {
        if (!k(i10) && i(i10)) {
            return true;
        }
        return false;
    }

    private final boolean m(int i10) {
        if (k(i10) && !i(i10)) {
            return true;
        }
        return false;
    }

    public final int f(int i10) {
        a(i10);
        while (i10 != -1 && !m(i10)) {
            i10 = o(i10);
        }
        return i10;
    }

    public final int g(int i10) {
        a(i10);
        while (i10 != -1 && !l(i10)) {
            i10 = n(i10);
        }
        return i10;
    }

    public final int n(int i10) {
        a(i10);
        return this.iterator.following(i10);
    }

    public final int o(int i10) {
        a(i10);
        return this.iterator.preceding(i10);
    }
}
