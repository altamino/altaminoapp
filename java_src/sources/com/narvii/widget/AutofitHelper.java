package com.narvii.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.Editable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextWatcher;
import android.text.method.SingleLineTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import com.narvii.lib.R;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class AutofitHelper {
    private static final int DEFAULT_MIN_TEXT_SIZE = 8;
    private static final boolean SPEW = false;
    private static final String TAG = "AutoFitTextHelper";
    private boolean mEnabled;
    private boolean mIsAutofitting;
    private ArrayList<OnTextSizeChangeListener> mListeners;
    private int mMaxLines;
    private float mMaxTextSize;
    private float mMinTextSize;
    private TextPaint mPaint;
    private float mPrecision;
    private float mTextSize;
    private TextView mTextView;
    private int maxWidth = -1;
    private boolean fitHeight = false;
    private TextWatcher mTextWatcher = new AutofitTextWatcher();
    private View.OnLayoutChangeListener mOnLayoutChangeListener = new AutofitOnLayoutChangeListener();

    private class AutofitOnLayoutChangeListener implements View.OnLayoutChangeListener {
        private AutofitOnLayoutChangeListener() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            AutofitHelper.this.autofit();
        }
    }

    private class AutofitTextWatcher implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        private AutofitTextWatcher() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            AutofitHelper.this.autofit();
        }
    }

    public interface OnTextSizeChangeListener {
        void onTextSizeChange(float f, float f6);
    }

    private void autofit(TextView textView, TextPaint textPaint, float f, float f6, int i10) {
        int height;
        if (i10 <= 0) {
            return;
        }
        int width = this.maxWidth;
        if (width <= 0) {
            width = textView.getWidth();
        }
        int paddingLeft = (width - textView.getPaddingLeft()) - textView.getPaddingRight();
        if (paddingLeft <= 0) {
            return;
        }
        CharSequence text = textView.getText();
        TransformationMethod transformationMethod = textView.getTransformationMethod();
        if (transformationMethod != null) {
            text = transformationMethod.getTransformation(text, textView);
        }
        Context context = textView.getContext();
        Resources system = Resources.getSystem();
        if (context != null) {
            system = context.getResources();
        }
        DisplayMetrics displayMetrics = system.getDisplayMetrics();
        textPaint.set(textView.getPaint());
        textPaint.setTextSize(f6);
        if ((i10 == 1 && textPaint.measureText(text, 0, text.length()) > paddingLeft) || getLineCount(text, textPaint, f6, paddingLeft, displayMetrics) > i10) {
            f6 = getAutofitTextSize(text, textPaint, paddingLeft, i10, 0.0f, f6, displayMetrics);
        }
        if (this.fitHeight && (height = (textView.getHeight() - textView.getPaddingTop()) - textView.getPaddingBottom()) > 0) {
            while (getTextHeight(text, textPaint, paddingLeft, f6) > height) {
                f6 -= 1.0f;
                if (f6 < f) {
                    break;
                }
            }
        }
        if (f6 >= f) {
            f = f6;
        }
        textView.setTextSize(0, f);
    }

    public static AutofitHelper create(TextView textView) {
        return create(textView, null, 0);
    }

    private static int getLineCount(CharSequence charSequence, TextPaint textPaint, float f, float f6, DisplayMetrics displayMetrics) {
        textPaint.setTextSize(TypedValue.applyDimension(0, f, displayMetrics));
        return new StaticLayout(charSequence, textPaint, (int) f6, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true).getLineCount();
    }

    private void setRawTextSize(float f) {
        if (this.mTextSize != f) {
            this.mTextSize = f;
        }
    }

    public int getMaxLines() {
        return this.mMaxLines;
    }

    public float getMaxTextSize() {
        return this.mMaxTextSize;
    }

    public float getMinTextSize() {
        return this.mMinTextSize;
    }

    public float getTextSize() {
        return this.mTextSize;
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public void setFitHeight(boolean z6) {
        this.fitHeight = z6;
    }

    public AutofitHelper setMaxTextSize(float f) {
        return setMaxTextSize(2, f);
    }

    public void setMaxWidth(int i10) {
        this.maxWidth = i10;
    }

    public AutofitHelper setMinTextSize(float f) {
        return setMinTextSize(2, f);
    }

    public void setTextSize(float f) {
        setTextSize(2, f);
    }

    public static AutofitHelper create(TextView textView, AttributeSet attributeSet) {
        return create(textView, attributeSet, 0);
    }

    private static float getAutofitTextSize(CharSequence charSequence, TextPaint textPaint, float f, int i10, float f6, float f7, DisplayMetrics displayMetrics) {
        StaticLayout staticLayout;
        int lineCount;
        float fMeasureText;
        float f10 = (f6 + f7) / 2.0f;
        textPaint.setTextSize(TypedValue.applyDimension(0, f10, displayMetrics));
        if (i10 != 1) {
            staticLayout = new StaticLayout(charSequence, textPaint, (int) f, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            lineCount = staticLayout.getLineCount();
        } else {
            staticLayout = null;
            lineCount = 1;
        }
        if (lineCount > i10) {
            return f7 - f6 < ((float) 1) ? f6 : getAutofitTextSize(charSequence, textPaint, f, i10, f6, f10, displayMetrics);
        }
        if (lineCount < i10) {
            return getAutofitTextSize(charSequence, textPaint, f, i10, f10, f7, displayMetrics);
        }
        if (i10 == 1) {
            fMeasureText = textPaint.measureText(charSequence, 0, charSequence.length());
        } else {
            float lineWidth = 0.0f;
            for (int i11 = 0; i11 < lineCount; i11++) {
                if (staticLayout.getLineWidth(i11) > lineWidth) {
                    lineWidth = staticLayout.getLineWidth(i11);
                }
            }
            fMeasureText = lineWidth;
        }
        if (f7 - f6 < 1) {
            return f6;
        }
        if (fMeasureText > f) {
            return getAutofitTextSize(charSequence, textPaint, f, i10, f6, f10, displayMetrics);
        }
        return fMeasureText < f ? getAutofitTextSize(charSequence, textPaint, f, i10, f10, f7, displayMetrics) : f10;
    }

    private static int getMaxLines(TextView textView) {
        TransformationMethod transformationMethod = textView.getTransformationMethod();
        if (transformationMethod == null || !(transformationMethod instanceof SingleLineTransformationMethod)) {
            return textView.getMaxLines();
        }
        return 1;
    }

    private void sendTextSizeChange(float f, float f6) {
        ArrayList<OnTextSizeChangeListener> arrayList = this.mListeners;
        if (arrayList == null) {
            return;
        }
        Iterator<OnTextSizeChangeListener> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().onTextSizeChange(f, f6);
        }
    }

    private void setRawMaxTextSize(float f) {
        if (f != this.mMaxTextSize) {
            this.mMaxTextSize = f;
            autofit();
        }
    }

    private void setRawMinTextSize(float f) {
        if (f != this.mMinTextSize) {
            this.mMinTextSize = f;
            autofit();
        }
    }

    public AutofitHelper addOnTextSizeChangeListener(OnTextSizeChangeListener onTextSizeChangeListener) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<>();
        }
        this.mListeners.add(onTextSizeChangeListener);
        return this;
    }

    public AutofitHelper removeOnTextSizeChangeListener(OnTextSizeChangeListener onTextSizeChangeListener) {
        ArrayList<OnTextSizeChangeListener> arrayList = this.mListeners;
        if (arrayList != null) {
            arrayList.remove(onTextSizeChangeListener);
        }
        return this;
    }

    public AutofitHelper setEnabled(boolean z6) {
        if (this.mEnabled != z6) {
            this.mEnabled = z6;
            if (z6) {
                this.mTextView.addTextChangedListener(this.mTextWatcher);
                this.mTextView.addOnLayoutChangeListener(this.mOnLayoutChangeListener);
                autofit();
            } else {
                this.mTextView.removeTextChangedListener(this.mTextWatcher);
                this.mTextView.removeOnLayoutChangeListener(this.mOnLayoutChangeListener);
                this.mTextView.setTextSize(0, this.mTextSize);
            }
        }
        return this;
    }

    public AutofitHelper setMaxLines(int i10) {
        if (this.mMaxLines != i10) {
            this.mMaxLines = i10;
            autofit();
        }
        return this;
    }

    public AutofitHelper setMaxTextSize(int i10, float f) {
        Context context = this.mTextView.getContext();
        Resources system = Resources.getSystem();
        if (context != null) {
            system = context.getResources();
        }
        setRawMaxTextSize(TypedValue.applyDimension(i10, f, system.getDisplayMetrics()));
        return this;
    }

    public AutofitHelper setMinTextSize(int i10, float f) {
        Context context = this.mTextView.getContext();
        Resources system = Resources.getSystem();
        if (context != null) {
            system = context.getResources();
        }
        setRawMinTextSize(TypedValue.applyDimension(i10, f, system.getDisplayMetrics()));
        return this;
    }

    public void setTextSize(int i10, float f) {
        if (this.mIsAutofitting) {
            return;
        }
        Context context = this.mTextView.getContext();
        Resources system = Resources.getSystem();
        if (context != null) {
            system = context.getResources();
        }
        setRawTextSize(TypedValue.applyDimension(i10, f, system.getDisplayMetrics()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private AutofitHelper(TextView textView) {
        float f = textView.getContext().getResources().getDisplayMetrics().scaledDensity;
        this.mTextView = textView;
        this.mPaint = new TextPaint();
        setRawTextSize(textView.getTextSize());
        this.mMaxLines = getMaxLines(textView);
        this.mMinTextSize = f * 8.0f;
        this.mMaxTextSize = this.mTextSize;
    }

    public static AutofitHelper create(TextView textView, AttributeSet attributeSet, int i10) {
        AutofitHelper autofitHelper = new AutofitHelper(textView);
        boolean z6 = true;
        if (attributeSet != null) {
            Context context = textView.getContext();
            int minTextSize = (int) autofitHelper.getMinTextSize();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AutoFitTextView, i10, 0);
            z6 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AutoFitTextView_fitSize, true);
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AutoFitTextView_minTextSize, minTextSize);
            typedArrayObtainStyledAttributes.recycle();
            autofitHelper.setMinTextSize(0, dimensionPixelSize);
        }
        autofitHelper.setEnabled(z6);
        return autofitHelper;
    }

    private static float getTextHeight(CharSequence charSequence, TextPaint textPaint, int i10, float f) {
        textPaint.setTextSize(f);
        return new StaticLayout(charSequence, textPaint, i10, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true).getHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void autofit() {
        float textSize = this.mTextView.getTextSize();
        this.mIsAutofitting = true;
        autofit(this.mTextView, this.mPaint, this.mMinTextSize, this.mMaxTextSize, this.mMaxLines);
        this.mIsAutofitting = false;
        float textSize2 = this.mTextView.getTextSize();
        if (textSize2 != textSize) {
            sendTextSizeChange(textSize2, textSize);
        }
    }
}
