package com.narvii.widget;

import android.content.Context;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;

/* loaded from: classes3.dex */
public class CodeEditView extends FrameLayout {
    Runnable blink;
    boolean blinkShow;
    ViewGroup codeLayout;
    View currentCursor;
    EditText editText;
    boolean isError;
    CodeContentChangeListener listener;

    public interface CodeContentChangeListener {
        void onCodeChanged(String str);
    }

    public void setOnCodeContentChangeListener(CodeContentChangeListener codeContentChangeListener) {
        this.listener = codeContentChangeListener;
    }

    public CodeEditView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isError = false;
        this.blink = new Runnable() { // from class: com.narvii.widget.CodeEditView.2
            @Override // java.lang.Runnable
            public void run() {
                CodeEditView codeEditView = CodeEditView.this;
                View view = codeEditView.currentCursor;
                if (view != null) {
                    view.setVisibility(codeEditView.blinkShow ? 0 : 8);
                    CodeEditView codeEditView2 = CodeEditView.this;
                    codeEditView2.blinkShow = !codeEditView2.blinkShow;
                    codeEditView2.postDelayed(codeEditView2.blink, 500L);
                }
            }
        };
        FrameLayout.inflate(getContext(), R.layout.view_code_edit, this);
        this.editText = (EditText) findViewById(R.id.edit);
        this.codeLayout = (ViewGroup) findViewById(R.id.code_layout);
        this.editText.addTextChangedListener(new TextWatcher() { // from class: com.narvii.widget.CodeEditView.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String string = editable.toString();
                CodeEditView.this.updateCodeViews(string);
                CodeContentChangeListener codeContentChangeListener = CodeEditView.this.listener;
                if (codeContentChangeListener != null) {
                    codeContentChangeListener.onCodeChanged(string);
                }
            }
        });
        float f = getResources().getDisplayMetrics().widthPixels;
        int i = (int) (0.016f * f);
        int i2 = (int) (f * 0.08f);
        int i3 = 0;
        while (i3 < this.codeLayout.getChildCount()) {
            ViewGroup.LayoutParams layoutParams = this.codeLayout.getChildAt(i3).getLayoutParams();
            if (i3 != 0 && (layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                int i4 = this.codeLayout.getChildCount() / 2 == i3 ? i2 : i;
                if (Build.VERSION.SDK_INT >= 17) {
                    marginLayoutParams.setMarginStart(i4);
                } else {
                    marginLayoutParams.leftMargin = i4;
                }
            }
            i3++;
        }
        updateCodeViews(null);
    }

    public String getCode() {
        EditText editText = this.editText;
        if (editText == null) {
            return null;
        }
        return editText.getText().toString();
    }

    public void clearCode() {
        EditText editText = this.editText;
        if (editText != null) {
            editText.setText((CharSequence) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0051, code lost:
    
        r6 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateCodeViews(java.lang.String r9) {
        /*
            r8 = this;
            r0 = 0
            r8.currentCursor = r0
            java.lang.Runnable r1 = r8.blink
            r8.removeCallbacks(r1)
            android.view.ViewGroup r1 = r8.codeLayout
            int r1 = r1.getChildCount()
            r2 = 0
            r3 = 0
        L10:
            if (r3 >= r1) goto L8f
            android.view.ViewGroup r4 = r8.codeLayout
            android.view.View r4 = r4.getChildAt(r3)
            r5 = 2131296868(0x7f090264, float:1.8211665E38)
            android.view.View r4 = r4.findViewById(r5)
            boolean r5 = r4 instanceof android.widget.TextView
            if (r5 == 0) goto L3d
            android.widget.TextView r4 = (android.widget.TextView) r4
            if (r9 == 0) goto L3a
            int r5 = r9.length()
            if (r5 > r3) goto L2e
            goto L3a
        L2e:
            char r5 = r9.charAt(r3)
            java.lang.String r5 = java.lang.String.valueOf(r5)
            r4.setText(r5)
            goto L3d
        L3a:
            r4.setText(r0)
        L3d:
            android.view.ViewGroup r4 = r8.codeLayout
            android.view.View r4 = r4.getChildAt(r3)
            r5 = 2131297048(0x7f090318, float:1.821203E38)
            android.view.View r4 = r4.findViewById(r5)
            if (r4 == 0) goto L70
            r5 = 1
            if (r9 != 0) goto L55
            if (r3 != 0) goto L53
        L51:
            r6 = 1
            goto L5c
        L53:
            r6 = 0
            goto L5c
        L55:
            int r6 = r9.length()
            if (r3 != r6) goto L53
            goto L51
        L5c:
            if (r6 == 0) goto L60
            r7 = 0
            goto L62
        L60:
            r7 = 8
        L62:
            r4.setVisibility(r7)
            if (r6 == 0) goto L70
            r8.blinkShow = r5
            r8.currentCursor = r4
            java.lang.Runnable r4 = r8.blink
            r8.post(r4)
        L70:
            android.view.ViewGroup r4 = r8.codeLayout
            android.view.View r4 = r4.getChildAt(r3)
            r5 = 2131299330(0x7f090c02, float:1.8216658E38)
            android.view.View r4 = r4.findViewById(r5)
            if (r4 == 0) goto L8c
            boolean r5 = r8.isError
            if (r5 == 0) goto L86
            r5 = -65536(0xffffffffffff0000, float:NaN)
            goto L89
        L86:
            r5 = -855638017(0xffffffffccffffff, float:-1.3421772E8)
        L89:
            r4.setBackgroundColor(r5)
        L8c:
            int r3 = r3 + 1
            goto L10
        L8f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.CodeEditView.updateCodeViews(java.lang.String):void");
    }

    public void isError(boolean z) {
        if (z != this.isError) {
            this.isError = z;
            updateCodeViews(getCode());
        }
    }
}
