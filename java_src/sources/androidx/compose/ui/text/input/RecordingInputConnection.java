package androidx.compose.ui.text.input;

import android.R;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputContentInfo;
import androidx.compose.ui.text.TextRange;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class RecordingInputConnection implements InputConnection {
    private final boolean autoCorrect;
    private int batchDepth;
    private int currentExtractedTextRequestToken;

    @NotNull
    private final List<EditCommand> editCommands;

    @NotNull
    private final InputEventCallback2 eventCallback;
    private boolean extractedTextMonitorMode;
    private boolean isActive;

    @NotNull
    private TextFieldValue mTextFieldValue;

    private final boolean b() {
        this.batchDepth++;
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean clearMetaKeyStates(int i10) {
        boolean z6 = this.isActive;
        if (z6) {
            return false;
        }
        return z6;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitCompletion(@Nullable CompletionInfo completionInfo) {
        boolean z6 = this.isActive;
        if (z6) {
            return false;
        }
        return z6;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitContent(@NotNull InputContentInfo inputContentInfo, int i10, @Nullable Bundle bundle) {
        t.j(inputContentInfo, "inputContentInfo");
        boolean z6 = this.isActive;
        if (z6) {
            return false;
        }
        return z6;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitCorrection(@Nullable CorrectionInfo correctionInfo) {
        boolean z6 = this.isActive;
        return z6 ? this.autoCorrect : z6;
    }

    public final void e(@NotNull TextFieldValue value) {
        t.j(value, "value");
        this.mTextFieldValue = value;
    }

    @Override // android.view.inputmethod.InputConnection
    @NotNull
    public ExtractedText getExtractedText(@Nullable ExtractedTextRequest extractedTextRequest, int i10) {
        boolean z6 = (i10 & 1) != 0;
        this.extractedTextMonitorMode = z6;
        if (z6) {
            this.currentExtractedTextRequestToken = extractedTextRequest != null ? extractedTextRequest.token : 0;
        }
        return InputState_androidKt.a(this.mTextFieldValue);
    }

    @Override // android.view.inputmethod.InputConnection
    @Nullable
    public Handler getHandler() {
        return null;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(@Nullable String str, @Nullable Bundle bundle) {
        boolean z6 = this.isActive;
        if (z6) {
            return true;
        }
        return z6;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean reportFullscreenMode(boolean z6) {
        return false;
    }

    public RecordingInputConnection(@NotNull TextFieldValue initState, @NotNull InputEventCallback2 eventCallback, boolean z6) {
        t.j(initState, "initState");
        t.j(eventCallback, "eventCallback");
        this.eventCallback = eventCallback;
        this.autoCorrect = z6;
        this.mTextFieldValue = initState;
        this.editCommands = new ArrayList();
        this.isActive = true;
    }

    private final boolean c() {
        int i10 = this.batchDepth - 1;
        this.batchDepth = i10;
        if (i10 == 0 && (!this.editCommands.isEmpty())) {
            this.eventCallback.c(d0.W0(this.editCommands));
            this.editCommands.clear();
        }
        return this.batchDepth > 0;
    }

    private final void d(int i10) {
        sendKeyEvent(new KeyEvent(0, i10));
        sendKeyEvent(new KeyEvent(1, i10));
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean beginBatchEdit() {
        boolean z6 = this.isActive;
        return z6 ? b() : z6;
    }

    @Override // android.view.inputmethod.InputConnection
    public void closeConnection() {
        this.editCommands.clear();
        this.batchDepth = 0;
        this.isActive = false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitText(@Nullable CharSequence charSequence, int i10) {
        boolean z6 = this.isActive;
        if (z6) {
            a(new CommitTextCommand(String.valueOf(charSequence), i10));
        }
        return z6;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i10, int i11) {
        boolean z6 = this.isActive;
        if (!z6) {
            return z6;
        }
        a(new DeleteSurroundingTextCommand(i10, i11));
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean deleteSurroundingTextInCodePoints(int i10, int i11) {
        boolean z6 = this.isActive;
        if (!z6) {
            return z6;
        }
        a(new DeleteSurroundingTextInCodePointsCommand(i10, i11));
        return true;
    }

    public final void f(@NotNull TextFieldValue state, @NotNull InputMethodManager inputMethodManager, @NotNull View view) {
        t.j(state, "state");
        t.j(inputMethodManager, "inputMethodManager");
        t.j(view, "view");
        if (this.isActive) {
            e(state);
            if (this.extractedTextMonitorMode) {
                inputMethodManager.d(view, this.currentExtractedTextRequestToken, InputState_androidKt.a(state));
            }
            TextRange textRangeF = state.f();
            int iL = textRangeF != null ? TextRange.l(textRangeF.r()) : -1;
            TextRange textRangeF2 = state.f();
            inputMethodManager.c(view, TextRange.l(state.g()), TextRange.k(state.g()), iL, textRangeF2 != null ? TextRange.k(textRangeF2.r()) : -1);
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean finishComposingText() {
        boolean z6 = this.isActive;
        if (!z6) {
            return z6;
        }
        a(new FinishComposingTextCommand());
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public int getCursorCapsMode(int i10) {
        return TextUtils.getCapsMode(this.mTextFieldValue.h(), TextRange.l(this.mTextFieldValue.g()), i10);
    }

    @Override // android.view.inputmethod.InputConnection
    @Nullable
    public CharSequence getSelectedText(int i10) {
        if (TextRange.h(this.mTextFieldValue.g())) {
            return null;
        }
        return TextFieldValueKt.a(this.mTextFieldValue).toString();
    }

    @Override // android.view.inputmethod.InputConnection
    @NotNull
    public CharSequence getTextAfterCursor(int i10, int i11) {
        return TextFieldValueKt.b(this.mTextFieldValue, i10).toString();
    }

    @Override // android.view.inputmethod.InputConnection
    @NotNull
    public CharSequence getTextBeforeCursor(int i10, int i11) {
        return TextFieldValueKt.c(this.mTextFieldValue, i10).toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.inputmethod.InputConnection
    public boolean performContextMenuAction(int i10) {
        boolean z6 = this.isActive;
        if (z6) {
            z6 = false;
            switch (i10) {
                case R.id.selectAll:
                    a(new SetSelectionCommand(0, this.mTextFieldValue.h().length()));
                    break;
                case R.id.cut:
                    d(277);
                    break;
                case R.id.copy:
                    d(278);
                    break;
                case R.id.paste:
                    d(279);
                    break;
            }
        }
        return z6;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performEditorAction(int i10) {
        int iA;
        boolean z6 = this.isActive;
        if (!z6) {
            return z6;
        }
        if (i10 != 0) {
            switch (i10) {
                case 2:
                    iA = ImeAction.Companion.c();
                    break;
                case 3:
                    iA = ImeAction.Companion.g();
                    break;
                case 4:
                    iA = ImeAction.Companion.h();
                    break;
                case 5:
                    iA = ImeAction.Companion.d();
                    break;
                case 6:
                    iA = ImeAction.Companion.b();
                    break;
                case 7:
                    iA = ImeAction.Companion.f();
                    break;
                default:
                    Log.w(RecordingInputConnection_androidKt.TAG, "IME sends unsupported Editor Action: " + i10);
                    iA = ImeAction.Companion.a();
                    break;
            }
        } else {
            iA = ImeAction.Companion.a();
        }
        this.eventCallback.b(iA);
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean requestCursorUpdates(int i10) {
        boolean z6 = this.isActive;
        if (!z6) {
            return z6;
        }
        Log.w(RecordingInputConnection_androidKt.TAG, "requestCursorUpdates is not supported");
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean sendKeyEvent(@NotNull KeyEvent event) {
        t.j(event, "event");
        boolean z6 = this.isActive;
        if (!z6) {
            return z6;
        }
        this.eventCallback.a(event);
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingRegion(int i10, int i11) {
        boolean z6 = this.isActive;
        if (z6) {
            a(new SetComposingRegionCommand(i10, i11));
        }
        return z6;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingText(@Nullable CharSequence charSequence, int i10) {
        boolean z6 = this.isActive;
        if (z6) {
            a(new SetComposingTextCommand(String.valueOf(charSequence), i10));
        }
        return z6;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setSelection(int i10, int i11) {
        boolean z6 = this.isActive;
        if (!z6) {
            return z6;
        }
        a(new SetSelectionCommand(i10, i11));
        return true;
    }

    private final void a(EditCommand editCommand) {
        b();
        try {
            this.editCommands.add(editCommand);
        } finally {
            c();
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean endBatchEdit() {
        return c();
    }
}
