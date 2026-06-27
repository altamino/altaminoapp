package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.SoftKeyboard;

/* loaded from: classes3.dex */
public class SearchBar extends RelativeLayout {
    private View clear;
    private OnClearClickListener clearClickListener;
    private final View.OnClickListener clearListener;
    private final TextView.OnEditorActionListener editListener;
    private View.OnFocusChangeListener focusChangeListener;
    private final View.OnFocusChangeListener focusListener;
    private View hint;
    private CharSequence hintText;
    private OnSearchListener listener;
    private EditText text;
    private final TextWatcher textWatcher;

    public interface OnClearClickListener {
        void onClearClicked();
    }

    public interface OnSearchEditTouchUpListener {
        void onEditTouchUp();
    }

    public interface OnSearchListener {
        void onSearch(SearchBar searchBar, String str);

        void onTextChanged(SearchBar searchBar, String str);
    }

    public SearchBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.style.SearchBar);
        this.editListener = new TextView.OnEditorActionListener() { // from class: com.narvii.widget.SearchBar.1
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if ((i != 6 && (keyEvent == null || keyEvent.getAction() != 0 || keyEvent.getKeyCode() != 66)) || textView.getText().toString().trim().length() <= 0 || SearchBar.this.listener == null) {
                    return false;
                }
                OnSearchListener onSearchListener = SearchBar.this.listener;
                SearchBar searchBar = SearchBar.this;
                onSearchListener.onSearch(searchBar, searchBar.getText());
                return true;
            }
        };
        this.textWatcher = new TextWatcher() { // from class: com.narvii.widget.SearchBar.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                SearchBar.this.update();
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (SearchBar.this.listener != null) {
                    SearchBar.this.listener.onTextChanged(SearchBar.this, editable.toString());
                }
            }
        };
        this.focusListener = new View.OnFocusChangeListener() { // from class: com.narvii.widget.SearchBar.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                SearchBar.this.update();
                if (SearchBar.this.focusChangeListener != null) {
                    SearchBar.this.focusChangeListener.onFocusChange(view, z);
                }
            }
        };
        this.clearListener = new View.OnClickListener() { // from class: com.narvii.widget.SearchBar.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SearchBar.this.text.setText((CharSequence) null);
                SearchBar.this.text.requestFocus();
                if (SearchBar.this.clearClickListener != null) {
                    SearchBar.this.clearClickListener.onClearClicked();
                }
            }
        };
        int[] iArr = R.styleable.SearchBar;
        int i = R.style.SearchBar;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i);
        this.hintText = typedArrayObtainStyledAttributes.getText(R.styleable.SearchBar_searchHint);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setWrapperFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.focusChangeListener = onFocusChangeListener;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.text = (EditText) findViewById(R.id.search_text);
        this.text.setOnEditorActionListener(this.editListener);
        this.text.addTextChangedListener(this.textWatcher);
        this.text.setOnFocusChangeListener(this.focusListener);
        this.clear = findViewById(R.id.search_clear);
        View view = this.clear;
        if (view != null) {
            view.setOnClickListener(this.clearListener);
        }
        this.hint = findViewById(R.id.search_hint);
        update();
    }

    public void setHintText(CharSequence charSequence) {
        this.hintText = charSequence;
        update();
    }

    public void showKeyboard() {
        SoftKeyboard.showSoftKeyboard(this.text);
    }

    public void setOnSearchListener(OnSearchListener onSearchListener) {
        this.listener = onSearchListener;
    }

    public void setClearClickListener(OnClearClickListener onClearClickListener) {
        this.clearClickListener = onClearClickListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        View view = this.hint;
        if (view != null) {
            view.setVisibility((this.text.length() != 0 || this.text.isFocused()) ? 4 : 0);
        }
        if (!TextUtils.isEmpty(this.hintText)) {
            View view2 = this.hint;
            if (view2 == null || !view2.isFocused()) {
                this.text.setHint(this.hintText);
            } else {
                this.text.setHint((CharSequence) null);
            }
        }
        View view3 = this.clear;
        if (view3 != null) {
            view3.setVisibility(this.text.length() == 0 ? 4 : 0);
        }
    }

    public void setText(CharSequence charSequence) {
        this.text.setText(charSequence);
        EditText editText = this.text;
        editText.setSelection(editText.length());
    }

    public String getText() {
        return this.text.getText().toString();
    }

    public EditText getEditText() {
        return this.text;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("super", super.onSaveInstanceState());
        bundle.putParcelable("searchText", this.text.onSaveInstanceState());
        return bundle;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            super.onRestoreInstanceState(bundle.getParcelable("super"));
            this.text.onRestoreInstanceState(bundle.getParcelable("searchText"));
        }
    }
}
