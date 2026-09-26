package androidx.compose.ui.text.android.selection;

import androidx.compose.ui.text.android.InternalPlatformTextApi;
import java.util.Locale;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@InternalPlatformTextApi
public final class WordBoundary {

    @NotNull
    private final WordIterator wordIterator;

    public WordBoundary(@NotNull Locale locale, @NotNull CharSequence text) {
        t.j(locale, "locale");
        t.j(text, "text");
        this.wordIterator = new WordIterator(text, 0, text.length(), locale);
    }

    public final int a(int i10) {
        int iG = this.wordIterator.i(this.wordIterator.n(i10)) ? this.wordIterator.g(i10) : this.wordIterator.d(i10);
        return iG == -1 ? i10 : iG;
    }

    public final int b(int i10) {
        int iF = this.wordIterator.k(this.wordIterator.o(i10)) ? this.wordIterator.f(i10) : this.wordIterator.e(i10);
        return iF == -1 ? i10 : iF;
    }
}
