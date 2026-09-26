package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.narvii.lib.R;
import com.narvii.util.Callback;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class KeywordsView extends LinearLayout {
    boolean darkTheme;
    Callback<Integer> heightChangeListener;
    Callback<String> keywordClickListener;
    List<String> keywords;
    private final View.OnClickListener listener;
    int mHeight;
    int margin;
    int maxWidth;
    OnSizeChangedListener onSizeChangedListener;
    int padding;
    int paddingTop;
    Paint paint;
    boolean pending;
    int resid;
    int textColor;
    int textSize;

    public interface OnSizeChangedListener {
        void onSizeChanged(int i10, int i11);
    }

    public KeywordsView(Context context) {
        this(context, null);
    }

    public int getCurrentHeight() {
        return this.mHeight;
    }

    public void setHeightChangeListener(Callback<Integer> callback) {
        this.heightChangeListener = callback;
    }

    public void setKeywords(String str) {
        setKeywords(StringUtils.split(str, ","));
    }

    public void setMaxWidth(int i10) {
        this.maxWidth = i10;
    }

    public void setOnKeywordClickListener(Callback<String> callback) {
        this.keywordClickListener = callback;
    }

    public void setOnSizeChangedListener(OnSizeChangedListener onSizeChangedListener) {
        this.onSizeChangedListener = onSizeChangedListener;
    }

    public KeywordsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint();
        this.maxWidth = 0;
        this.listener = new View.OnClickListener() { // from class: com.narvii.widget.KeywordsView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Callback<String> callback = KeywordsView.this.keywordClickListener;
                if (callback != null) {
                    callback.call(((TextView) view).getText().toString());
                }
            }
        };
        int[] iArr = R.styleable.KeywordsView;
        int i10 = R.style.KeywordsView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, i10);
        this.textSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.KeywordsView_keywordSize, 14);
        this.padding = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.KeywordsView_keywordPadding, 6);
        this.paddingTop = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.KeywordsView_keywordPaddingTop, 0);
        this.margin = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.KeywordsView_keywordMargin, 6);
        this.resid = typedArrayObtainStyledAttributes.getResourceId(R.styleable.KeywordsView_keywordBackground, 0);
        this.textColor = typedArrayObtainStyledAttributes.getColor(R.styleable.KeywordsView_keywordColor, ViewCompat.MEASURED_STATE_MASK);
        typedArrayObtainStyledAttributes.recycle();
        setOrientation(1);
        updateView();
    }

    private LinearLayout createRow() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        int i10 = this.margin;
        linearLayout.setPadding(0, i10 / 2, 0, i10 / 2);
        linearLayout.setOrientation(0);
        return linearLayout;
    }

    private TextView createText(String str) {
        TextView textView = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = this.margin;
        textView.setLayoutParams(layoutParams);
        int i10 = this.resid;
        if (i10 != 0) {
            textView.setBackgroundResource(i10);
        }
        textView.setGravity(16);
        textView.setTextSize(0, this.textSize);
        textView.setTextColor(this.textColor);
        int i11 = this.padding;
        int i12 = this.paddingTop;
        textView.setPadding(i11, i12, i11, i12);
        textView.setSingleLine();
        textView.setText(str);
        if (this.keywordClickListener != null) {
            textView.setOnClickListener(this.listener);
        }
        return textView;
    }

    private void updateView() {
        setResid(!this.darkTheme ? R.drawable.keywords_bg_line : R.drawable.keywords_bg_colorful);
        setTextColor(!this.darkTheme ? -11184811 : Utils.getColor(-1, 0.8f));
    }

    public void setDarkTheme(boolean z6) {
        if (this.darkTheme == z6) {
            return;
        }
        this.darkTheme = z6;
        updateView();
    }

    public void setResid(int i10) {
        this.resid = i10;
        setKeywords(this.keywords);
    }

    public void setTextColor(int i10) {
        this.textColor = i10;
        setKeywords(this.keywords);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        int i14 = i13 - i11;
        if (this.mHeight != i14) {
            this.mHeight = i14;
            Callback<Integer> callback = this.heightChangeListener;
            if (callback != null) {
                callback.call(Integer.valueOf(i14));
            }
        }
        if (getWidth() > 0 && this.pending) {
            new Handler().post(new Runnable() { // from class: com.narvii.widget.KeywordsView.1
                @Override // java.lang.Runnable
                public void run() {
                    KeywordsView keywordsView = KeywordsView.this;
                    if (keywordsView.pending) {
                        keywordsView.setKeywords(keywordsView.keywords);
                        KeywordsView.this.pending = false;
                    }
                }
            });
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        OnSizeChangedListener onSizeChangedListener = this.onSizeChangedListener;
        if (onSizeChangedListener != null) {
            onSizeChangedListener.onSizeChanged(i10, i11);
        }
    }

    public void setKeywords(List<String> list) {
        removeAllViews();
        this.keywords = list;
        if (list == null || list.isEmpty()) {
            return;
        }
        if (getWidth() == 0) {
            this.pending = true;
            return;
        }
        int width = this.maxWidth;
        if (width == 0) {
            width = getWidth();
        }
        int paddingLeft = (width - getPaddingLeft()) - getPaddingRight();
        this.paint.setTextSize(this.textSize);
        LinearLayout linearLayoutCreateRow = null;
        float f = 0.0f;
        for (String str : list) {
            float fMeasureText = this.paint.measureText(str) + this.margin + (this.padding * 2);
            if (linearLayoutCreateRow == null || fMeasureText + f > paddingLeft) {
                linearLayoutCreateRow = createRow();
                addView(linearLayoutCreateRow);
                f = 0.0f;
            }
            linearLayoutCreateRow.addView(createText(str));
            f += fMeasureText;
        }
    }
}
