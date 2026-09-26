package androidx.emoji2.viewsintegration;

import android.text.method.KeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes7.dex */
public final class EmojiEditTextHelper {
    private int mEmojiReplaceStrategy;
    private final HelperInternal mHelper;
    private int mMaxEmojiCount;

    @RequiresApi
    private static class HelperInternal19 extends HelperInternal {
        private final EditText mEditText;
        private final EmojiTextWatcher mTextWatcher;

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal
        KeyListener a(@Nullable KeyListener keyListener) {
            if (keyListener instanceof EmojiKeyListener) {
                return keyListener;
            }
            if (keyListener == null) {
                return null;
            }
            return new EmojiKeyListener(keyListener);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal
        boolean b() {
            return this.mTextWatcher.b();
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal
        InputConnection c(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
            return inputConnection instanceof EmojiInputConnection ? inputConnection : new EmojiInputConnection(this.mEditText, inputConnection, editorInfo);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper.HelperInternal
        void d(boolean z6) {
            this.mTextWatcher.d(z6);
        }

        HelperInternal19(@NonNull EditText editText, boolean z6) {
            this.mEditText = editText;
            EmojiTextWatcher emojiTextWatcher = new EmojiTextWatcher(editText, z6);
            this.mTextWatcher = emojiTextWatcher;
            editText.addTextChangedListener(emojiTextWatcher);
            editText.setEditableFactory(EmojiEditableFactory.getInstance());
        }
    }

    public EmojiEditTextHelper(@NonNull EditText editText) {
        this(editText, true);
    }

    static class HelperInternal {
        @Nullable
        KeyListener a(@Nullable KeyListener keyListener) {
            return keyListener;
        }

        boolean b() {
            return false;
        }

        InputConnection c(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
            return inputConnection;
        }

        void d(boolean z6) {
        }

        HelperInternal() {
        }
    }

    public EmojiEditTextHelper(@NonNull EditText editText, boolean z6) {
        this.mMaxEmojiCount = Integer.MAX_VALUE;
        this.mEmojiReplaceStrategy = 0;
        Preconditions.j(editText, "editText cannot be null");
        this.mHelper = new HelperInternal19(editText, z6);
    }

    @Nullable
    public KeyListener a(@Nullable KeyListener keyListener) {
        return this.mHelper.a(keyListener);
    }

    public boolean b() {
        return this.mHelper.b();
    }

    @Nullable
    public InputConnection c(@Nullable InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        if (inputConnection == null) {
            return null;
        }
        return this.mHelper.c(inputConnection, editorInfo);
    }

    public void d(boolean z6) {
        this.mHelper.d(z6);
    }
}
