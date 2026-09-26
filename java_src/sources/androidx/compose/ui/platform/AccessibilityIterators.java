package androidx.compose.ui.platform;

import android.graphics.Rect;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import java.text.BreakIterator;
import java.util.Locale;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class AccessibilityIterators {

    @StabilityInferred
    public static abstract class AbstractTextSegmentIterator implements TextSegmentIterator {
        public static final int $stable = 8;

        @NotNull
        private final int[] segment = new int[2];
        protected String text;

        protected final void f(@NotNull String str) {
            kotlin.jvm.internal.t.j(str, "<set-?>");
            this.text = str;
        }

        @Nullable
        protected final int[] c(int i10, int i11) {
            if (i10 < 0 || i11 < 0 || i10 == i11) {
                return null;
            }
            int[] iArr = this.segment;
            iArr[0] = i10;
            iArr[1] = i11;
            return iArr;
        }

        @NotNull
        protected final String d() {
            String str = this.text;
            if (str != null) {
                return str;
            }
            kotlin.jvm.internal.t.B("text");
            return null;
        }

        public void e(@NotNull String text) {
            kotlin.jvm.internal.t.j(text, "text");
            f(text);
        }
    }

    @StabilityInferred
    public static class CharacterTextSegmentIterator extends AbstractTextSegmentIterator {

        @Nullable
        private static CharacterTextSegmentIterator instance;
        private BreakIterator impl;

        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int $stable = 8;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            @NotNull
            public final CharacterTextSegmentIterator a(@NotNull Locale locale) {
                kotlin.jvm.internal.t.j(locale, "locale");
                if (CharacterTextSegmentIterator.instance == null) {
                    CharacterTextSegmentIterator.instance = new CharacterTextSegmentIterator(locale, null);
                }
                CharacterTextSegmentIterator characterTextSegmentIterator = CharacterTextSegmentIterator.instance;
                if (characterTextSegmentIterator != null) {
                    return characterTextSegmentIterator;
                }
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.CharacterTextSegmentIterator");
            }
        }

        public /* synthetic */ CharacterTextSegmentIterator(Locale locale, kotlin.jvm.internal.k kVar) {
            this(locale);
        }

        private CharacterTextSegmentIterator(Locale locale) {
            i(locale);
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.AbstractTextSegmentIterator
        public void e(@NotNull String text) {
            kotlin.jvm.internal.t.j(text, "text");
            super.e(text);
            BreakIterator breakIterator = this.impl;
            if (breakIterator == null) {
                kotlin.jvm.internal.t.B("impl");
                breakIterator = null;
            }
            breakIterator.setText(text);
        }

        private final void i(Locale locale) {
            BreakIterator characterInstance = BreakIterator.getCharacterInstance(locale);
            kotlin.jvm.internal.t.i(characterInstance, "getCharacterInstance(locale)");
            this.impl = characterInstance;
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] a(int i10) {
            int length = d().length();
            if (length <= 0 || i10 >= length) {
                return null;
            }
            if (i10 < 0) {
                i10 = 0;
            }
            do {
                BreakIterator breakIterator = this.impl;
                if (breakIterator == null) {
                    kotlin.jvm.internal.t.B("impl");
                    breakIterator = null;
                }
                if (!breakIterator.isBoundary(i10)) {
                    BreakIterator breakIterator2 = this.impl;
                    if (breakIterator2 == null) {
                        kotlin.jvm.internal.t.B("impl");
                        breakIterator2 = null;
                    }
                    i10 = breakIterator2.following(i10);
                } else {
                    BreakIterator breakIterator3 = this.impl;
                    if (breakIterator3 == null) {
                        kotlin.jvm.internal.t.B("impl");
                        breakIterator3 = null;
                    }
                    int iFollowing = breakIterator3.following(i10);
                    if (iFollowing == -1) {
                        return null;
                    }
                    return c(i10, iFollowing);
                }
            } while (i10 != -1);
            return null;
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] b(int i10) {
            int length = d().length();
            if (length <= 0 || i10 <= 0) {
                return null;
            }
            if (i10 > length) {
                i10 = length;
            }
            do {
                BreakIterator breakIterator = this.impl;
                if (breakIterator == null) {
                    kotlin.jvm.internal.t.B("impl");
                    breakIterator = null;
                }
                if (!breakIterator.isBoundary(i10)) {
                    BreakIterator breakIterator2 = this.impl;
                    if (breakIterator2 == null) {
                        kotlin.jvm.internal.t.B("impl");
                        breakIterator2 = null;
                    }
                    i10 = breakIterator2.preceding(i10);
                } else {
                    BreakIterator breakIterator3 = this.impl;
                    if (breakIterator3 == null) {
                        kotlin.jvm.internal.t.B("impl");
                        breakIterator3 = null;
                    }
                    int iPreceding = breakIterator3.preceding(i10);
                    if (iPreceding == -1) {
                        return null;
                    }
                    return c(iPreceding, i10);
                }
            } while (i10 != -1);
            return null;
        }
    }

    @StabilityInferred
    public static final class LineTextSegmentIterator extends AbstractTextSegmentIterator {

        @Nullable
        private static LineTextSegmentIterator lineInstance;
        private TextLayoutResult layoutResult;

        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int $stable = 8;

        @NotNull
        private static final ResolvedTextDirection DirectionStart = ResolvedTextDirection.Rtl;

        @NotNull
        private static final ResolvedTextDirection DirectionEnd = ResolvedTextDirection.Ltr;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            @NotNull
            public final LineTextSegmentIterator a() {
                if (LineTextSegmentIterator.lineInstance == null) {
                    LineTextSegmentIterator.lineInstance = new LineTextSegmentIterator(null);
                }
                LineTextSegmentIterator lineTextSegmentIterator = LineTextSegmentIterator.lineInstance;
                if (lineTextSegmentIterator != null) {
                    return lineTextSegmentIterator;
                }
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.LineTextSegmentIterator");
            }
        }

        public /* synthetic */ LineTextSegmentIterator(kotlin.jvm.internal.k kVar) {
            this();
        }

        private LineTextSegmentIterator() {
        }

        private final int i(int i10, ResolvedTextDirection resolvedTextDirection) {
            TextLayoutResult textLayoutResult = this.layoutResult;
            TextLayoutResult textLayoutResult2 = null;
            if (textLayoutResult == null) {
                kotlin.jvm.internal.t.B("layoutResult");
                textLayoutResult = null;
            }
            int iT = textLayoutResult.t(i10);
            TextLayoutResult textLayoutResult3 = this.layoutResult;
            if (textLayoutResult3 == null) {
                kotlin.jvm.internal.t.B("layoutResult");
                textLayoutResult3 = null;
            }
            if (resolvedTextDirection != textLayoutResult3.x(iT)) {
                TextLayoutResult textLayoutResult4 = this.layoutResult;
                if (textLayoutResult4 == null) {
                    kotlin.jvm.internal.t.B("layoutResult");
                } else {
                    textLayoutResult2 = textLayoutResult4;
                }
                return textLayoutResult2.t(i10);
            }
            TextLayoutResult textLayoutResult5 = this.layoutResult;
            if (textLayoutResult5 == null) {
                kotlin.jvm.internal.t.B("layoutResult");
                textLayoutResult5 = null;
            }
            return TextLayoutResult.o(textLayoutResult5, i10, false, 2, null) - 1;
        }

        public final void j(@NotNull String text, @NotNull TextLayoutResult layoutResult) {
            kotlin.jvm.internal.t.j(text, "text");
            kotlin.jvm.internal.t.j(layoutResult, "layoutResult");
            f(text);
            this.layoutResult = layoutResult;
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] a(int i10) {
            int iP;
            if (d().length() <= 0 || i10 >= d().length()) {
                return null;
            }
            if (i10 < 0) {
                TextLayoutResult textLayoutResult = this.layoutResult;
                if (textLayoutResult == null) {
                    kotlin.jvm.internal.t.B("layoutResult");
                    textLayoutResult = null;
                }
                iP = textLayoutResult.p(0);
            } else {
                TextLayoutResult textLayoutResult2 = this.layoutResult;
                if (textLayoutResult2 == null) {
                    kotlin.jvm.internal.t.B("layoutResult");
                    textLayoutResult2 = null;
                }
                int iP2 = textLayoutResult2.p(i10);
                if (i(iP2, DirectionStart) == i10) {
                    iP = iP2;
                } else {
                    iP = iP2 + 1;
                }
            }
            TextLayoutResult textLayoutResult3 = this.layoutResult;
            if (textLayoutResult3 == null) {
                kotlin.jvm.internal.t.B("layoutResult");
                textLayoutResult3 = null;
            }
            if (iP >= textLayoutResult3.m()) {
                return null;
            }
            return c(i(iP, DirectionStart), i(iP, DirectionEnd) + 1);
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] b(int i10) {
            int iP;
            if (d().length() <= 0 || i10 <= 0) {
                return null;
            }
            if (i10 > d().length()) {
                TextLayoutResult textLayoutResult = this.layoutResult;
                if (textLayoutResult == null) {
                    kotlin.jvm.internal.t.B("layoutResult");
                    textLayoutResult = null;
                }
                iP = textLayoutResult.p(d().length());
            } else {
                TextLayoutResult textLayoutResult2 = this.layoutResult;
                if (textLayoutResult2 == null) {
                    kotlin.jvm.internal.t.B("layoutResult");
                    textLayoutResult2 = null;
                }
                int iP2 = textLayoutResult2.p(i10);
                if (i(iP2, DirectionEnd) + 1 == i10) {
                    iP = iP2;
                } else {
                    iP = iP2 - 1;
                }
            }
            if (iP < 0) {
                return null;
            }
            return c(i(iP, DirectionStart), i(iP, DirectionEnd) + 1);
        }
    }

    @StabilityInferred
    public static final class PageTextSegmentIterator extends AbstractTextSegmentIterator {

        @Nullable
        private static PageTextSegmentIterator pageInstance;
        private TextLayoutResult layoutResult;
        private SemanticsNode node;

        @NotNull
        private Rect tempRect;

        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int $stable = 8;

        @NotNull
        private static final ResolvedTextDirection DirectionStart = ResolvedTextDirection.Rtl;

        @NotNull
        private static final ResolvedTextDirection DirectionEnd = ResolvedTextDirection.Ltr;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            @NotNull
            public final PageTextSegmentIterator a() {
                if (PageTextSegmentIterator.pageInstance == null) {
                    PageTextSegmentIterator.pageInstance = new PageTextSegmentIterator(null);
                }
                PageTextSegmentIterator pageTextSegmentIterator = PageTextSegmentIterator.pageInstance;
                if (pageTextSegmentIterator != null) {
                    return pageTextSegmentIterator;
                }
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.PageTextSegmentIterator");
            }
        }

        public /* synthetic */ PageTextSegmentIterator(kotlin.jvm.internal.k kVar) {
            this();
        }

        private PageTextSegmentIterator() {
            this.tempRect = new Rect();
        }

        private final int i(int i10, ResolvedTextDirection resolvedTextDirection) {
            TextLayoutResult textLayoutResult = this.layoutResult;
            TextLayoutResult textLayoutResult2 = null;
            if (textLayoutResult == null) {
                kotlin.jvm.internal.t.B("layoutResult");
                textLayoutResult = null;
            }
            int iT = textLayoutResult.t(i10);
            TextLayoutResult textLayoutResult3 = this.layoutResult;
            if (textLayoutResult3 == null) {
                kotlin.jvm.internal.t.B("layoutResult");
                textLayoutResult3 = null;
            }
            if (resolvedTextDirection != textLayoutResult3.x(iT)) {
                TextLayoutResult textLayoutResult4 = this.layoutResult;
                if (textLayoutResult4 == null) {
                    kotlin.jvm.internal.t.B("layoutResult");
                } else {
                    textLayoutResult2 = textLayoutResult4;
                }
                return textLayoutResult2.t(i10);
            }
            TextLayoutResult textLayoutResult5 = this.layoutResult;
            if (textLayoutResult5 == null) {
                kotlin.jvm.internal.t.B("layoutResult");
                textLayoutResult5 = null;
            }
            return TextLayoutResult.o(textLayoutResult5, i10, false, 2, null) - 1;
        }

        public final void j(@NotNull String text, @NotNull TextLayoutResult layoutResult, @NotNull SemanticsNode node) {
            kotlin.jvm.internal.t.j(text, "text");
            kotlin.jvm.internal.t.j(layoutResult, "layoutResult");
            kotlin.jvm.internal.t.j(node, "node");
            f(text);
            this.layoutResult = layoutResult;
            this.node = node;
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] a(int i10) {
            int iM;
            TextLayoutResult textLayoutResult = null;
            if (d().length() <= 0 || i10 >= d().length()) {
                return null;
            }
            try {
                SemanticsNode semanticsNode = this.node;
                if (semanticsNode == null) {
                    kotlin.jvm.internal.t.B("node");
                    semanticsNode = null;
                }
                int iC = g8.c.c(semanticsNode.f().i());
                int iE = j8.o.e(0, i10);
                TextLayoutResult textLayoutResult2 = this.layoutResult;
                if (textLayoutResult2 == null) {
                    kotlin.jvm.internal.t.B("layoutResult");
                    textLayoutResult2 = null;
                }
                int iP = textLayoutResult2.p(iE);
                TextLayoutResult textLayoutResult3 = this.layoutResult;
                if (textLayoutResult3 == null) {
                    kotlin.jvm.internal.t.B("layoutResult");
                    textLayoutResult3 = null;
                }
                float fU = textLayoutResult3.u(iP) + iC;
                TextLayoutResult textLayoutResult4 = this.layoutResult;
                if (textLayoutResult4 == null) {
                    kotlin.jvm.internal.t.B("layoutResult");
                    textLayoutResult4 = null;
                }
                TextLayoutResult textLayoutResult5 = this.layoutResult;
                if (textLayoutResult5 == null) {
                    kotlin.jvm.internal.t.B("layoutResult");
                    textLayoutResult5 = null;
                }
                if (fU < textLayoutResult4.u(textLayoutResult5.m() - 1)) {
                    TextLayoutResult textLayoutResult6 = this.layoutResult;
                    if (textLayoutResult6 == null) {
                        kotlin.jvm.internal.t.B("layoutResult");
                    } else {
                        textLayoutResult = textLayoutResult6;
                    }
                    iM = textLayoutResult.q(fU);
                } else {
                    TextLayoutResult textLayoutResult7 = this.layoutResult;
                    if (textLayoutResult7 == null) {
                        kotlin.jvm.internal.t.B("layoutResult");
                    } else {
                        textLayoutResult = textLayoutResult7;
                    }
                    iM = textLayoutResult.m();
                }
                return c(iE, i(iM - 1, DirectionEnd) + 1);
            } catch (IllegalStateException unused) {
                return null;
            }
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] b(int i10) {
            int iQ;
            TextLayoutResult textLayoutResult = null;
            if (d().length() <= 0 || i10 <= 0) {
                return null;
            }
            try {
                SemanticsNode semanticsNode = this.node;
                if (semanticsNode == null) {
                    kotlin.jvm.internal.t.B("node");
                    semanticsNode = null;
                }
                int iC = g8.c.c(semanticsNode.f().i());
                int iJ = j8.o.j(d().length(), i10);
                TextLayoutResult textLayoutResult2 = this.layoutResult;
                if (textLayoutResult2 == null) {
                    kotlin.jvm.internal.t.B("layoutResult");
                    textLayoutResult2 = null;
                }
                int iP = textLayoutResult2.p(iJ);
                TextLayoutResult textLayoutResult3 = this.layoutResult;
                if (textLayoutResult3 == null) {
                    kotlin.jvm.internal.t.B("layoutResult");
                    textLayoutResult3 = null;
                }
                float fU = textLayoutResult3.u(iP) - iC;
                if (fU > 0.0f) {
                    TextLayoutResult textLayoutResult4 = this.layoutResult;
                    if (textLayoutResult4 == null) {
                        kotlin.jvm.internal.t.B("layoutResult");
                    } else {
                        textLayoutResult = textLayoutResult4;
                    }
                    iQ = textLayoutResult.q(fU);
                } else {
                    iQ = 0;
                }
                if (iJ == d().length() && iQ < iP) {
                    iQ++;
                }
                return c(i(iQ, DirectionStart), iJ);
            } catch (IllegalStateException unused) {
                return null;
            }
        }
    }

    @StabilityInferred
    public static final class ParagraphTextSegmentIterator extends AbstractTextSegmentIterator {
        public static final int $stable = 0;

        @NotNull
        public static final Companion Companion = new Companion(null);

        @Nullable
        private static ParagraphTextSegmentIterator instance;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            @NotNull
            public final ParagraphTextSegmentIterator a() {
                if (ParagraphTextSegmentIterator.instance == null) {
                    ParagraphTextSegmentIterator.instance = new ParagraphTextSegmentIterator(null);
                }
                ParagraphTextSegmentIterator paragraphTextSegmentIterator = ParagraphTextSegmentIterator.instance;
                if (paragraphTextSegmentIterator != null) {
                    return paragraphTextSegmentIterator;
                }
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.ParagraphTextSegmentIterator");
            }
        }

        public /* synthetic */ ParagraphTextSegmentIterator(kotlin.jvm.internal.k kVar) {
            this();
        }

        private ParagraphTextSegmentIterator() {
        }

        private final boolean i(int i10) {
            return i10 > 0 && d().charAt(i10 + (-1)) != '\n' && (i10 == d().length() || d().charAt(i10) == '\n');
        }

        private final boolean j(int i10) {
            if (d().charAt(i10) != '\n' && (i10 == 0 || d().charAt(i10 - 1) == '\n')) {
                return true;
            }
            return false;
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] a(int i10) {
            int length = d().length();
            if (length <= 0 || i10 >= length) {
                return null;
            }
            if (i10 < 0) {
                i10 = 0;
            }
            while (i10 < length && d().charAt(i10) == '\n' && !j(i10)) {
                i10++;
            }
            if (i10 >= length) {
                return null;
            }
            int i11 = i10 + 1;
            while (i11 < length && !i(i11)) {
                i11++;
            }
            return c(i10, i11);
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] b(int i10) {
            int length = d().length();
            if (length <= 0 || i10 <= 0) {
                return null;
            }
            if (i10 > length) {
                i10 = length;
            }
            while (i10 > 0 && d().charAt(i10 - 1) == '\n' && !i(i10)) {
                i10--;
            }
            if (i10 <= 0) {
                return null;
            }
            int i11 = i10 - 1;
            while (i11 > 0 && !j(i11)) {
                i11--;
            }
            return c(i11, i10);
        }
    }

    public interface TextSegmentIterator {
        @Nullable
        int[] a(int i10);

        @Nullable
        int[] b(int i10);
    }

    @StabilityInferred
    public static final class WordTextSegmentIterator extends AbstractTextSegmentIterator {

        @Nullable
        private static WordTextSegmentIterator instance;
        private BreakIterator impl;

        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int $stable = 8;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            @NotNull
            public final WordTextSegmentIterator a(@NotNull Locale locale) {
                kotlin.jvm.internal.t.j(locale, "locale");
                if (WordTextSegmentIterator.instance == null) {
                    WordTextSegmentIterator.instance = new WordTextSegmentIterator(locale, null);
                }
                WordTextSegmentIterator wordTextSegmentIterator = WordTextSegmentIterator.instance;
                if (wordTextSegmentIterator != null) {
                    return wordTextSegmentIterator;
                }
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.WordTextSegmentIterator");
            }
        }

        public /* synthetic */ WordTextSegmentIterator(Locale locale, kotlin.jvm.internal.k kVar) {
            this(locale);
        }

        private WordTextSegmentIterator(Locale locale) {
            l(locale);
        }

        private final boolean i(int i10) {
            return i10 > 0 && j(i10 + (-1)) && (i10 == d().length() || !j(i10));
        }

        private final boolean j(int i10) {
            if (i10 < 0 || i10 >= d().length()) {
                return false;
            }
            return Character.isLetterOrDigit(d().codePointAt(i10));
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.AbstractTextSegmentIterator
        public void e(@NotNull String text) {
            kotlin.jvm.internal.t.j(text, "text");
            super.e(text);
            BreakIterator breakIterator = this.impl;
            if (breakIterator == null) {
                kotlin.jvm.internal.t.B("impl");
                breakIterator = null;
            }
            breakIterator.setText(text);
        }

        private final boolean k(int i10) {
            if (j(i10) && (i10 == 0 || !j(i10 - 1))) {
                return true;
            }
            return false;
        }

        private final void l(Locale locale) {
            BreakIterator wordInstance = BreakIterator.getWordInstance(locale);
            kotlin.jvm.internal.t.i(wordInstance, "getWordInstance(locale)");
            this.impl = wordInstance;
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] a(int i10) {
            if (d().length() <= 0 || i10 >= d().length()) {
                return null;
            }
            if (i10 < 0) {
                i10 = 0;
            }
            while (!j(i10) && !k(i10)) {
                BreakIterator breakIterator = this.impl;
                if (breakIterator == null) {
                    kotlin.jvm.internal.t.B("impl");
                    breakIterator = null;
                }
                i10 = breakIterator.following(i10);
                if (i10 == -1) {
                    return null;
                }
            }
            BreakIterator breakIterator2 = this.impl;
            if (breakIterator2 == null) {
                kotlin.jvm.internal.t.B("impl");
                breakIterator2 = null;
            }
            int iFollowing = breakIterator2.following(i10);
            if (iFollowing == -1 || !i(iFollowing)) {
                return null;
            }
            return c(i10, iFollowing);
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] b(int i10) {
            int length = d().length();
            if (length <= 0 || i10 <= 0) {
                return null;
            }
            if (i10 > length) {
                i10 = length;
            }
            while (i10 > 0 && !j(i10 - 1) && !i(i10)) {
                BreakIterator breakIterator = this.impl;
                if (breakIterator == null) {
                    kotlin.jvm.internal.t.B("impl");
                    breakIterator = null;
                }
                i10 = breakIterator.preceding(i10);
                if (i10 == -1) {
                    return null;
                }
            }
            BreakIterator breakIterator2 = this.impl;
            if (breakIterator2 == null) {
                kotlin.jvm.internal.t.B("impl");
                breakIterator2 = null;
            }
            int iPreceding = breakIterator2.preceding(i10);
            if (iPreceding == -1 || !k(iPreceding)) {
                return null;
            }
            return c(iPreceding, i10);
        }
    }
}
