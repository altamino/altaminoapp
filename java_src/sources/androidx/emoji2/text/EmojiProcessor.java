package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import androidx.annotation.AnyThread;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.PaintCompat;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
@AnyThread
@RequiresApi
@RestrictTo
final class EmojiProcessor {
    private static final int ACTION_ADVANCE_BOTH = 1;
    private static final int ACTION_ADVANCE_END = 2;
    private static final int ACTION_FLUSH = 3;

    @Nullable
    private final int[] mEmojiAsDefaultStyleExceptions;

    @NonNull
    private EmojiCompat.GlyphChecker mGlyphChecker;

    @NonNull
    private final MetadataRepo mMetadataRepo;

    @NonNull
    private final EmojiCompat.SpanFactory mSpanFactory;
    private final boolean mUseEmojiAsDefaultStyle;

    @AnyThread
    @RestrictTo
    public static class DefaultGlyphChecker implements EmojiCompat.GlyphChecker {
        private static final int PAINT_TEXT_SIZE = 10;
        private static final ThreadLocal<StringBuilder> sStringBuilder = new ThreadLocal<>();
        private final TextPaint mTextPaint;

        private static StringBuilder b() {
            ThreadLocal<StringBuilder> threadLocal = sStringBuilder;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            return threadLocal.get();
        }

        DefaultGlyphChecker() {
            TextPaint textPaint = new TextPaint();
            this.mTextPaint = textPaint;
            textPaint.setTextSize(10.0f);
        }

        @Override // androidx.emoji2.text.EmojiCompat.GlyphChecker
        public boolean a(@NonNull CharSequence charSequence, int i10, int i11, int i12) {
            StringBuilder sbB = b();
            sbB.setLength(0);
            while (i10 < i11) {
                sbB.append(charSequence.charAt(i10));
                i10++;
            }
            return PaintCompat.a(this.mTextPaint, sbB.toString());
        }
    }

    static final class ProcessorSm {
        private static final int STATE_DEFAULT = 1;
        private static final int STATE_WALKING = 2;
        private int mCurrentDepth;
        private MetadataRepo.Node mCurrentNode;
        private final int[] mEmojiAsDefaultStyleExceptions;
        private MetadataRepo.Node mFlushNode;
        private int mLastCodepoint;
        private final MetadataRepo.Node mRootNode;
        private int mState = 1;
        private final boolean mUseEmojiAsDefaultStyle;

        private static boolean d(int i10) {
            return i10 == 65039;
        }

        private static boolean f(int i10) {
            return i10 == 65038;
        }

        private int g() {
            this.mState = 1;
            this.mCurrentNode = this.mRootNode;
            this.mCurrentDepth = 0;
            return 1;
        }

        private boolean h() {
            if (this.mCurrentNode.b().j() || d(this.mLastCodepoint)) {
                return true;
            }
            if (this.mUseEmojiAsDefaultStyle) {
                if (this.mEmojiAsDefaultStyleExceptions == null) {
                    return true;
                }
                if (Arrays.binarySearch(this.mEmojiAsDefaultStyleExceptions, this.mCurrentNode.b().b(0)) < 0) {
                    return true;
                }
            }
            return false;
        }

        int a(int i10) {
            MetadataRepo.Node nodeA = this.mCurrentNode.a(i10);
            int iG = 2;
            if (this.mState != 2) {
                if (nodeA == null) {
                    iG = g();
                } else {
                    this.mState = 2;
                    this.mCurrentNode = nodeA;
                    this.mCurrentDepth = 1;
                }
            } else if (nodeA != null) {
                this.mCurrentNode = nodeA;
                this.mCurrentDepth++;
            } else if (f(i10)) {
                iG = g();
            } else if (!d(i10)) {
                if (this.mCurrentNode.b() != null) {
                    iG = 3;
                    if (this.mCurrentDepth != 1 || h()) {
                        this.mFlushNode = this.mCurrentNode;
                        g();
                    } else {
                        iG = g();
                    }
                } else {
                    iG = g();
                }
            }
            this.mLastCodepoint = i10;
            return iG;
        }

        EmojiMetadata b() {
            return this.mCurrentNode.b();
        }

        EmojiMetadata c() {
            return this.mFlushNode.b();
        }

        boolean e() {
            return this.mState == 2 && this.mCurrentNode.b() != null && (this.mCurrentDepth > 1 || h());
        }

        ProcessorSm(MetadataRepo.Node node, boolean z6, int[] iArr) {
            this.mRootNode = node;
            this.mCurrentNode = node;
            this.mUseEmojiAsDefaultStyle = z6;
            this.mEmojiAsDefaultStyleExceptions = iArr;
        }
    }

    static boolean c(@NonNull InputConnection inputConnection, @NonNull Editable editable, @IntRange int i10, @IntRange int i11, boolean z6) {
        int iMax;
        int iMin;
        if (editable != null && inputConnection != null && i10 >= 0 && i11 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (f(selectionStart, selectionEnd)) {
                return false;
            }
            if (z6) {
                iMax = CodepointIndexFinder.a(editable, selectionStart, Math.max(i10, 0));
                iMin = CodepointIndexFinder.b(editable, selectionEnd, Math.max(i11, 0));
                if (iMax == -1 || iMin == -1) {
                    return false;
                }
            } else {
                iMax = Math.max(selectionStart - i10, 0);
                iMin = Math.min(selectionEnd + i11, editable.length());
            }
            EmojiSpan[] emojiSpanArr = (EmojiSpan[]) editable.getSpans(iMax, iMin, EmojiSpan.class);
            if (emojiSpanArr != null && emojiSpanArr.length > 0) {
                for (EmojiSpan emojiSpan : emojiSpanArr) {
                    int spanStart = editable.getSpanStart(emojiSpan);
                    int spanEnd = editable.getSpanEnd(emojiSpan);
                    iMax = Math.min(spanStart, iMax);
                    iMin = Math.max(spanEnd, iMin);
                }
                int iMax2 = Math.max(iMax, 0);
                int iMin2 = Math.min(iMin, editable.length());
                inputConnection.beginBatchEdit();
                editable.delete(iMax2, iMin2);
                inputConnection.endBatchEdit();
                return true;
            }
        }
        return false;
    }

    private static boolean f(int i10, int i11) {
        return i10 == -1 || i11 == -1 || i10 != i11;
    }

    @RequiresApi
    private static final class CodepointIndexFinder {
        private static final int INVALID_INDEX = -1;

        private CodepointIndexFinder() {
        }

        static int a(CharSequence charSequence, int i10, int i11) {
            int length = charSequence.length();
            if (i10 < 0 || length < i10 || i11 < 0) {
                return -1;
            }
            while (true) {
                boolean z6 = false;
                while (i11 != 0) {
                    i10--;
                    if (i10 < 0) {
                        if (z6) {
                            return -1;
                        }
                        return 0;
                    }
                    char cCharAt = charSequence.charAt(i10);
                    if (z6) {
                        if (!Character.isHighSurrogate(cCharAt)) {
                            return -1;
                        }
                        i11--;
                    } else if (!Character.isSurrogate(cCharAt)) {
                        i11--;
                    } else {
                        if (Character.isHighSurrogate(cCharAt)) {
                            return -1;
                        }
                        z6 = true;
                    }
                }
                return i10;
            }
        }

        static int b(CharSequence charSequence, int i10, int i11) {
            int length = charSequence.length();
            if (i10 < 0 || length < i10 || i11 < 0) {
                return -1;
            }
            while (true) {
                boolean z6 = false;
                while (i11 != 0) {
                    if (i10 >= length) {
                        if (z6) {
                            return -1;
                        }
                        return length;
                    }
                    char cCharAt = charSequence.charAt(i10);
                    if (z6) {
                        if (!Character.isLowSurrogate(cCharAt)) {
                            return -1;
                        }
                        i11--;
                        i10++;
                    } else if (!Character.isSurrogate(cCharAt)) {
                        i11--;
                        i10++;
                    } else {
                        if (Character.isLowSurrogate(cCharAt)) {
                            return -1;
                        }
                        i10++;
                        z6 = true;
                    }
                }
                return i10;
            }
        }
    }

    private void a(@NonNull Spannable spannable, EmojiMetadata emojiMetadata, int i10, int i11) {
        spannable.setSpan(this.mSpanFactory.a(emojiMetadata), i10, i11, 33);
    }

    static boolean d(@NonNull Editable editable, int i10, @NonNull KeyEvent keyEvent) {
        boolean zB;
        if (i10 != 67) {
            if (i10 == 112) {
                zB = b(editable, keyEvent, true);
            }
            return false;
        }
        zB = b(editable, keyEvent, false);
        if (zB) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
            return true;
        }
        return false;
    }

    CharSequence h(@NonNull CharSequence charSequence, @IntRange int i10, @IntRange int i11, @IntRange int i12, boolean z6) {
        Spannable spannableString;
        int iCharCount;
        EmojiSpan[] emojiSpanArr;
        boolean z10 = charSequence instanceof SpannableBuilder;
        if (z10) {
            ((SpannableBuilder) charSequence).a();
        }
        if (!z10) {
            try {
                spannableString = charSequence instanceof Spannable ? (Spannable) charSequence : (!(charSequence instanceof Spanned) || ((Spanned) charSequence).nextSpanTransition(i10 + (-1), i11 + 1, EmojiSpan.class) > i11) ? null : new SpannableString(charSequence);
            } finally {
                if (z10) {
                    ((SpannableBuilder) charSequence).d();
                }
            }
        }
        if (spannableString != null && (emojiSpanArr = (EmojiSpan[]) spannableString.getSpans(i10, i11, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
            for (EmojiSpan emojiSpan : emojiSpanArr) {
                int spanStart = spannableString.getSpanStart(emojiSpan);
                int spanEnd = spannableString.getSpanEnd(emojiSpan);
                if (spanStart != i11) {
                    spannableString.removeSpan(emojiSpan);
                }
                i10 = Math.min(spanStart, i10);
                i11 = Math.max(spanEnd, i11);
            }
        }
        if (i10 != i11 && i10 < charSequence.length()) {
            if (i12 != Integer.MAX_VALUE && spannableString != null) {
                i12 -= ((EmojiSpan[]) spannableString.getSpans(0, spannableString.length(), EmojiSpan.class)).length;
            }
            ProcessorSm processorSm = new ProcessorSm(this.mMetadataRepo.f(), this.mUseEmojiAsDefaultStyle, this.mEmojiAsDefaultStyleExceptions);
            int iCodePointAt = Character.codePointAt(charSequence, i10);
            int i13 = 0;
            Spannable spannableString2 = spannableString;
            loop1: while (true) {
                iCharCount = i10;
                while (true) {
                    if (i10 >= i11 || i13 >= i12) {
                        break loop1;
                    }
                    int iA = processorSm.a(iCodePointAt);
                    if (iA == 1) {
                        iCharCount += Character.charCount(Character.codePointAt(charSequence, iCharCount));
                        if (iCharCount < i11) {
                            iCodePointAt = Character.codePointAt(charSequence, iCharCount);
                        }
                        i10 = iCharCount;
                    } else if (iA == 2) {
                        i10 += Character.charCount(iCodePointAt);
                        if (i10 < i11) {
                            iCodePointAt = Character.codePointAt(charSequence, i10);
                        }
                    } else if (iA != 3) {
                    }
                }
                if (z6 || !e(charSequence, iCharCount, i10, processorSm.c())) {
                    if (spannableString2 == null) {
                        spannableString2 = new SpannableString(charSequence);
                    }
                    a(spannableString2, processorSm.c(), iCharCount, i10);
                    i13++;
                }
            }
            CharSequence charSequence2 = spannableString2;
            charSequence2 = spannableString2;
            if (processorSm.e() && i13 < i12 && (z6 || !e(charSequence, iCharCount, i10, processorSm.b()))) {
                if (spannableString2 == null) {
                    spannableString2 = new SpannableString(charSequence);
                }
                a(spannableString2, processorSm.b(), iCharCount, i10);
                charSequence2 = spannableString2;
            }
            if (charSequence2 == null) {
                charSequence2 = charSequence;
            }
            return charSequence2;
        }
        return charSequence;
    }

    EmojiProcessor(@NonNull MetadataRepo metadataRepo, @NonNull EmojiCompat.SpanFactory spanFactory, @NonNull EmojiCompat.GlyphChecker glyphChecker, boolean z6, @Nullable int[] iArr) {
        this.mSpanFactory = spanFactory;
        this.mMetadataRepo = metadataRepo;
        this.mGlyphChecker = glyphChecker;
        this.mUseEmojiAsDefaultStyle = z6;
        this.mEmojiAsDefaultStyleExceptions = iArr;
    }

    private static boolean b(@NonNull Editable editable, @NonNull KeyEvent keyEvent, boolean z6) {
        EmojiSpan[] emojiSpanArr;
        if (g(keyEvent)) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!f(selectionStart, selectionEnd) && (emojiSpanArr = (EmojiSpan[]) editable.getSpans(selectionStart, selectionEnd, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
            for (EmojiSpan emojiSpan : emojiSpanArr) {
                int spanStart = editable.getSpanStart(emojiSpan);
                int spanEnd = editable.getSpanEnd(emojiSpan);
                if ((z6 && spanStart == selectionStart) || ((!z6 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    private boolean e(CharSequence charSequence, int i10, int i11, EmojiMetadata emojiMetadata) {
        if (emojiMetadata.d() == 0) {
            emojiMetadata.k(this.mGlyphChecker.a(charSequence, i10, i11, emojiMetadata.h()));
        }
        if (emojiMetadata.d() == 2) {
            return true;
        }
        return false;
    }

    private static boolean g(@NonNull KeyEvent keyEvent) {
        return !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState());
    }
}
