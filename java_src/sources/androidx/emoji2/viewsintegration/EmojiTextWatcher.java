package androidx.emoji2.viewsintegration;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
@RestrictTo
final class EmojiTextWatcher implements TextWatcher {
    private final EditText mEditText;
    private final boolean mExpectInitializedEmojiCompat;
    private EmojiCompat.InitCallback mInitCallback;
    private int mMaxEmojiCount = Integer.MAX_VALUE;
    private int mEmojiReplaceStrategy = 0;
    private boolean mEnabled = true;

    static void c(@Nullable EditText editText, int i10) {
        if (i10 == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            EmojiCompat.b().o(editableText);
            EmojiInputFilter.b(editableText, selectionStart, selectionEnd);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    public boolean b() {
        return this.mEnabled;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    @RequiresApi
    private static class InitCallbackImpl extends EmojiCompat.InitCallback {
        private final Reference<EditText> mViewRef;

        InitCallbackImpl(EditText editText) {
            this.mViewRef = new WeakReference(editText);
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public void b() {
            super.b();
            EmojiTextWatcher.c(this.mViewRef.get(), 1);
        }
    }

    private EmojiCompat.InitCallback a() {
        if (this.mInitCallback == null) {
            this.mInitCallback = new InitCallbackImpl(this.mEditText);
        }
        return this.mInitCallback;
    }

    private boolean e() {
        return (this.mEnabled && (this.mExpectInitializedEmojiCompat || EmojiCompat.h())) ? false : true;
    }

    public void d(boolean z6) {
        if (this.mEnabled != z6) {
            if (this.mInitCallback != null) {
                EmojiCompat.b().t(this.mInitCallback);
            }
            this.mEnabled = z6;
            if (z6) {
                c(this.mEditText, EmojiCompat.b().d());
            }
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        if (this.mEditText.isInEditMode() || e() || i11 > i12 || !(charSequence instanceof Spannable)) {
            return;
        }
        int iD = EmojiCompat.b().d();
        if (iD != 0) {
            if (iD == 1) {
                EmojiCompat.b().r((Spannable) charSequence, i10, i10 + i12, this.mMaxEmojiCount, this.mEmojiReplaceStrategy);
                return;
            } else if (iD != 3) {
                return;
            }
        }
        EmojiCompat.b().s(a());
    }

    EmojiTextWatcher(EditText editText, boolean z6) {
        this.mEditText = editText;
        this.mExpectInitializedEmojiCompat = z6;
    }
}
