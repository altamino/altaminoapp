package androidx.emoji2.viewsintegration;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
@RestrictTo
final class EmojiInputFilter implements InputFilter {
    private EmojiCompat.InitCallback mInitCallback;
    private final TextView mTextView;

    @RequiresApi
    private static class InitCallbackImpl extends EmojiCompat.InitCallback {
        private final Reference<EmojiInputFilter> mEmojiInputFilterReference;
        private final Reference<TextView> mViewRef;

        private boolean c(@Nullable TextView textView, @Nullable InputFilter inputFilter) {
            InputFilter[] filters;
            if (inputFilter == null || textView == null || (filters = textView.getFilters()) == null) {
                return false;
            }
            for (InputFilter inputFilter2 : filters) {
                if (inputFilter2 == inputFilter) {
                    return true;
                }
            }
            return false;
        }

        InitCallbackImpl(TextView textView, EmojiInputFilter emojiInputFilter) {
            this.mViewRef = new WeakReference(textView);
            this.mEmojiInputFilterReference = new WeakReference(emojiInputFilter);
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public void b() {
            super.b();
            TextView textView = this.mViewRef.get();
            if (c(textView, this.mEmojiInputFilterReference.get()) && textView.isAttachedToWindow()) {
                CharSequence charSequenceO = EmojiCompat.b().o(textView.getText());
                int selectionStart = Selection.getSelectionStart(charSequenceO);
                int selectionEnd = Selection.getSelectionEnd(charSequenceO);
                textView.setText(charSequenceO);
                if (charSequenceO instanceof Spannable) {
                    EmojiInputFilter.b((Spannable) charSequenceO, selectionStart, selectionEnd);
                }
            }
        }
    }

    private EmojiCompat.InitCallback a() {
        if (this.mInitCallback == null) {
            this.mInitCallback = new InitCallbackImpl(this.mTextView, this);
        }
        return this.mInitCallback;
    }

    static void b(Spannable spannable, int i10, int i11) {
        if (i10 >= 0 && i11 >= 0) {
            Selection.setSelection(spannable, i10, i11);
        } else if (i10 >= 0) {
            Selection.setSelection(spannable, i10);
        } else if (i11 >= 0) {
            Selection.setSelection(spannable, i11);
        }
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
        if (this.mTextView.isInEditMode()) {
            return charSequence;
        }
        int iD = EmojiCompat.b().d();
        if (iD != 0) {
            if (iD == 1) {
                if ((i13 == 0 && i12 == 0 && spanned.length() == 0 && charSequence == this.mTextView.getText()) || charSequence == null) {
                    return charSequence;
                }
                if (i10 != 0 || i11 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i10, i11);
                }
                return EmojiCompat.b().p(charSequence, 0, charSequence.length());
            }
            if (iD != 3) {
                return charSequence;
            }
        }
        EmojiCompat.b().s(a());
        return charSequence;
    }

    EmojiInputFilter(@NonNull TextView textView) {
        this.mTextView = textView;
    }
}
