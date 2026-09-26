package com.narvii.widget;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public class CodeEditView extends FrameLayout {
    public static String CODE_HINT = "X";
    Runnable blink;
    private boolean blinkShow;
    private final ViewGroup codeLayout;
    private View currentCursor;
    private final EditText editText;
    private boolean isError;
    CodeContentChangeListener listener;
    private final View underline;

    public interface CodeContentChangeListener {
        void onCodeChanged(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0060, code lost:
    
        r7 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateCodeViews(String str) {
        TextView textView;
        this.currentCursor = null;
        removeCallbacks(this.blink);
        int childCount = this.codeLayout.getChildCount();
        int i10 = 0;
        while (i10 < childCount) {
            View viewFindViewById = this.codeLayout.getChildAt(i10).findViewById(R.id.code_text);
            if (viewFindViewById instanceof TextView) {
                textView = (TextView) viewFindViewById;
                if (str == null || str.length() <= i10) {
                    textView.setAlpha(0.3f);
                    textView.setText(CODE_HINT);
                } else {
                    textView.setAlpha(1.0f);
                    textView.setText(String.valueOf(str.charAt(i10)));
                }
            } else {
                textView = null;
            }
            View viewFindViewById2 = this.codeLayout.getChildAt(i10).findViewById(R.id.cursor);
            if (viewFindViewById2 != null) {
                boolean z6 = str == null ? false : false;
                viewFindViewById2.setVisibility(z6 ? 0 : 8);
                if (z6) {
                    if (textView != null) {
                        textView.setText("");
                    }
                    this.blinkShow = true;
                    this.currentCursor = viewFindViewById2;
                    post(this.blink);
                }
            }
            View view = this.underline;
            if (view != null) {
                view.setBackgroundColor(this.isError ? SupportMenu.CATEGORY_MASK : -2130706433);
            }
            i10++;
        }
    }

    public void setOnCodeContentChangeListener(CodeContentChangeListener codeContentChangeListener) {
        this.listener = codeContentChangeListener;
    }

    public void clearCode() {
        EditText editText = this.editText;
        if (editText != null) {
            editText.setText((CharSequence) null);
        }
    }

    public String getCode() {
        EditText editText = this.editText;
        if (editText == null) {
            return null;
        }
        return editText.getText().toString();
    }

    public void isError(boolean z6) {
        if (z6 != this.isError) {
            this.isError = z6;
            updateCodeViews(getCode());
        }
    }

    public void setNumericCodeType(boolean z6) {
        if (z6) {
            this.editText.setInputType(2);
        } else {
            this.editText.setInputType(4096);
        }
    }

    public CodeEditView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isError = false;
        this.blink = new Runnable() { // from class: com.narvii.widget.CodeEditView.2
            @Override // java.lang.Runnable
            public void run() {
                if (CodeEditView.this.currentCursor != null) {
                    CodeEditView.this.currentCursor.setVisibility(CodeEditView.this.blinkShow ? 0 : 8);
                    CodeEditView codeEditView = CodeEditView.this;
                    codeEditView.blinkShow = !codeEditView.blinkShow;
                    CodeEditView codeEditView2 = CodeEditView.this;
                    codeEditView2.postDelayed(codeEditView2.blink, 500L);
                }
            }
        };
        View.inflate(getContext(), R.layout.view_code_edit, this);
        EditText editText = (EditText) findViewById(R.id.edit);
        this.editText = editText;
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.code_layout);
        this.codeLayout = viewGroup;
        this.underline = findViewById(R.id.divider);
        editText.addTextChangedListener(new TextWatcher() { // from class: com.narvii.widget.CodeEditView.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String string = editable.toString();
                if (!string.isEmpty()) {
                    CodeEditView.this.isError = false;
                }
                CodeEditView.this.updateCodeViews(string);
                CodeContentChangeListener codeContentChangeListener = CodeEditView.this.listener;
                if (codeContentChangeListener != null) {
                    codeContentChangeListener.onCodeChanged(string);
                }
            }
        });
        int i10 = ((int) getResources().getDisplayMetrics().density) * 10;
        ViewGroup.LayoutParams layoutParams = viewGroup.getChildAt(viewGroup.getChildCount() / 2).getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams).setMarginStart(i10);
        }
        updateCodeViews(null);
    }
}
