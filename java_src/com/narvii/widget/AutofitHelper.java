package com.narvii.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
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

/* loaded from: classes3.dex */
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
    private View.OnLayoutChangeListener mOnLayoutChangeListener;
    private TextPaint mPaint;
    private float mPrecision;
    private float mTextSize;
    private TextView mTextView;
    private TextWatcher mTextWatcher;
    private int maxWidth = -1;
    private boolean fitHeight = false;

    public interface OnTextSizeChangeListener {
        void onTextSizeChange(float f, float f2);
    }

    public static AutofitHelper create(TextView textView) {
        return create(textView, null, 0);
    }

    public static AutofitHelper create(TextView textView, AttributeSet attributeSet) {
        return create(textView, attributeSet, 0);
    }

    public static AutofitHelper create(TextView textView, AttributeSet attributeSet, int i) {
        AutofitHelper autofitHelper = new AutofitHelper(textView);
        boolean z = true;
        if (attributeSet != null) {
            Context context = textView.getContext();
            int minTextSize = (int) autofitHelper.getMinTextSize();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AutoFitTextView, i, 0);
            z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AutoFitTextView_fitSize, true);
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AutoFitTextView_minTextSize, minTextSize);
            typedArrayObtainStyledAttributes.recycle();
            autofitHelper.setMinTextSize(0, dimensionPixelSize);
        }
        autofitHelper.setEnabled(z);
        return autofitHelper;
    }

    private void autofit(TextView textView, TextPaint textPaint, float f, float f2, int i) {
        int height;
        if (i <= 0) {
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
        textPaint.setTextSize(f2);
        if ((i == 1 && textPaint.measureText(text, 0, text.length()) > paddingLeft) || getLineCount(text, textPaint, f2, paddingLeft, displayMetrics) > i) {
            f2 = getAutofitTextSize(text, textPaint, paddingLeft, i, 0.0f, f2, displayMetrics);
        }
        if (this.fitHeight && (height = (textView.getHeight() - textView.getPaddingTop()) - textView.getPaddingBottom()) > 0) {
            while (getTextHeight(text, textPaint, paddingLeft, f2) > height) {
                f2 -= 1.0f;
                if (f2 < f) {
                    break;
                }
            }
        }
        if (f2 >= f) {
            f = f2;
        }
        textView.setTextSize(0, f);
    }

    private static float getTextHeight(CharSequence charSequence, TextPaint textPaint, int i, float f) {
        textPaint.setTextSize(f);
        return new StaticLayout(charSequence, textPaint, i, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true).getHeight();
    }

    private static float getAutofitTextSize(CharSequence charSequence, TextPaint textPaint, float f, int i, float f2, float f3, DisplayMetrics displayMetrics) {
        StaticLayout staticLayout;
        int lineCount;
        float fMeasureText;
        float f4 = (f2 + f3) / 2.0f;
        textPaint.setTextSize(TypedValue.applyDimension(0, f4, displayMetrics));
        if (i != 1) {
            staticLayout = new StaticLayout(charSequence, textPaint, (int) f, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            lineCount = staticLayout.getLineCount();
        } else {
            staticLayout = null;
            lineCount = 1;
        }
        if (lineCount > i) {
            return f3 - f2 < ((float) 1) ? f2 : getAutofitTextSize(charSequence, textPaint, f, i, f2, f4, displayMetrics);
        }
        if (lineCount < i) {
            return getAutofitTextSize(charSequence, textPaint, f, i, f4, f3, displayMetrics);
        }
        float lineWidth = 0.0f;
        if (i == 1) {
            fMeasureText = textPaint.measureText(charSequence, 0, charSequence.length());
        } else {
            for (int i2 = 0; i2 < lineCount; i2++) {
                if (staticLayout.getLineWidth(i2) > lineWidth) {
                    lineWidth = staticLayout.getLineWidth(i2);
                }
            }
            fMeasureText = lineWidth;
        }
        if (f3 - f2 < 1) {
            return f2;
        }
        if (fMeasureText > f) {
            return getAutofitTextSize(charSequence, textPaint, f, i, f2, f4, displayMetrics);
        }
        return fMeasureText < f ? getAutofitTextSize(charSequence, textPaint, f, i, f4, f3, displayMetrics) : f4;
    }

    public void setMaxWidth(int i) {
        this.maxWidth = i;
    }

    private static int getLineCount(CharSequence charSequence, TextPaint textPaint, float f, float f2, DisplayMetrics displayMetrics) {
        textPaint.setTextSize(TypedValue.applyDimension(0, f, displayMetrics));
        return new StaticLayout(charSequence, textPaint, (int) f2, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true).getLineCount();
    }

    private static int getMaxLines(TextView textView) {
        TransformationMethod transformationMethod = textView.getTransformationMethod();
        if (transformationMethod != null && (transformationMethod instanceof SingleLineTransformationMethod)) {
            return 1;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return textView.getMaxLines();
        }
        return -1;
    }

    private AutofitHelper(TextView textView) {
        this.mTextWatcher = new AutofitTextWatcher();
        this.mOnLayoutChangeListener = new AutofitOnLayoutChangeListener();
        float f = textView.getContext().getResources().getDisplayMetrics().scaledDensity;
        this.mTextView = textView;
        this.mPaint = new TextPaint();
        setRawTextSize(textView.getTextSize());
        this.mMaxLines = getMaxLines(textView);
        this.mMinTextSize = f * 8.0f;
        this.mMaxTextSize = this.mTextSize;
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

    public float getMinTextSize() {
        return this.mMinTextSize;
    }

    public AutofitHelper setMinTextSize(float f) {
        return setMinTextSize(2, f);
    }

    public AutofitHelper setMinTextSize(int i, float f) {
        Context context = this.mTextView.getContext();
        Resources system = Resources.getSystem();
        if (context != null) {
            system = context.getResources();
        }
        setRawMinTextSize(TypedValue.applyDimension(i, f, system.getDisplayMetrics()));
        return this;
    }

    private void setRawMinTextSize(float f) {
        if (f != this.mMinTextSize) {
            this.mMinTextSize = f;
            autofit();
        }
    }

    public float getMaxTextSize() {
        return this.mMaxTextSize;
    }

    public AutofitHelper setMaxTextSize(float f) {
        return setMaxTextSize(2, f);
    }

    public AutofitHelper setMaxTextSize(int i, float f) {
        Context context = this.mTextView.getContext();
        Resources system = Resources.getSystem();
        if (context != null) {
            system = context.getResources();
        }
        setRawMaxTextSize(TypedValue.applyDimension(i, f, system.getDisplayMetrics()));
        return this;
    }

    private void setRawMaxTextSize(float f) {
        if (f != this.mMaxTextSize) {
            this.mMaxTextSize = f;
            autofit();
        }
    }

    public int getMaxLines() {
        return this.mMaxLines;
    }

    public AutofitHelper setMaxLines(int i) {
        if (this.mMaxLines != i) {
            this.mMaxLines = i;
            autofit();
        }
        return this;
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public AutofitHelper setEnabled(boolean z) {
        if (this.mEnabled != z) {
            this.mEnabled = z;
            if (z) {
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

    public void setFitHeight(boolean z) {
        this.fitHeight = z;
    }

    public float getTextSize() {
        return this.mTextSize;
    }

    public void setTextSize(float f) {
        setTextSize(2, f);
    }

    public void setTextSize(int i, float f) {
        if (this.mIsAutofitting) {
            return;
        }
        Context context = this.mTextView.getContext();
        Resources system = Resources.getSystem();
        if (context != null) {
            system = context.getResources();
        }
        setRawTextSize(TypedValue.applyDimension(i, f, system.getDisplayMetrics()));
    }

    private void setRawTextSize(float f) {
        if (this.mTextSize != f) {
            this.mTextSize = f;
        }
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

    private void sendTextSizeChange(float f, float f2) {
        ArrayList<OnTextSizeChangeListener> arrayList = this.mListeners;
        if (arrayList == null) {
            return;
        }
        Iterator<OnTextSizeChangeListener> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().onTextSizeChange(f, f2);
        }
    }

    private class AutofitTextWatcher implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        private AutofitTextWatcher() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            AutofitHelper.this.autofit();
        }
    }

    private class AutofitOnLayoutChangeListener implements View.OnLayoutChangeListener {
        private AutofitOnLayoutChangeListener() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            AutofitHelper.this.autofit();
        }
    }
}
