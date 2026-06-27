package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.content.ContextCompat;
import android.support.v4.internal.view.SupportMenu;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.account.mobile.MyPhoneCountryCodePicker;
import com.narvii.amino.R;

/* loaded from: classes3.dex */
public class TextInputLayout extends LinearLayout implements TextWatcher, View.OnClickListener {
    public static final int PASS_LIMIT = 6;
    private EditText editText;
    private TextView errorHintView;
    private ImageView imgPasswordVisiableToggleView;
    private View inputStatusIndicator;
    private int passCountLimit;
    private View passwordHintView;
    private boolean showPasswordVisiableToggle;

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TextInputLayout);
        this.passCountLimit = typedArrayObtainStyledAttributes.getInteger(16, 6);
        this.showPasswordVisiableToggle = typedArrayObtainStyledAttributes.getBoolean(17, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.inputStatusIndicator = findViewById(com.narvii.amino.mastes.R.id.edit_status_line);
        this.editText = (EditText) findViewById(com.narvii.amino.mastes.R.id.edit);
        this.errorHintView = (TextView) findViewById(com.narvii.amino.mastes.R.id.input_error_hint);
        this.imgPasswordVisiableToggleView = (NVImageView) findViewById(com.narvii.amino.mastes.R.id.pass_toggle);
        this.passwordHintView = findViewById(com.narvii.amino.mastes.R.id.pass_limit_info);
        EditText editText = this.editText;
        if (editText != null) {
            editText.addTextChangedListener(this);
            MyPhoneCountryCodePicker myPhoneCountryCodePicker = (MyPhoneCountryCodePicker) findViewById(com.narvii.amino.mastes.R.id.country_picker);
            if (myPhoneCountryCodePicker != null) {
                myPhoneCountryCodePicker.bindPhoneNumberEdit(this.editText);
            }
        }
        ImageView imageView = this.imgPasswordVisiableToggleView;
        if (imageView != null) {
            imageView.setOnClickListener(this);
        }
    }

    public void addTextChangedListener(TextWatcher textWatcher) {
        EditText editText = this.editText;
        if (editText != null) {
            editText.addTextChangedListener(textWatcher);
        }
    }

    public EditText getEditText() {
        return this.editText;
    }

    public String getEditContent() {
        EditText editText = this.editText;
        if (editText == null) {
            return null;
        }
        return editText.getText().toString();
    }

    public void setError(String str) {
        this.errorHintView.setText(str);
        updateStatus(!TextUtils.isEmpty(str));
    }

    public void setError(int i) {
        setError(getResources().getString(i));
    }

    public void updateStatus(boolean z) {
        TextView textView = this.errorHintView;
        if (textView != null) {
            textView.setVisibility(z ? 0 : 8);
        }
        View view = this.inputStatusIndicator;
        if (view != null) {
            view.setBackgroundColor(z ? SupportMenu.CATEGORY_MASK : -1);
        }
        if (z) {
            this.errorHintView.startAnimation(AnimationUtils.loadAnimation(getContext(), com.narvii.amino.mastes.R.anim.text_input_erroe_shake));
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        View view = this.passwordHintView;
        int i = 4;
        if (view != null) {
            view.setVisibility(editable.toString().length() < this.passCountLimit ? 0 : 4);
        }
        ImageView imageView = this.imgPasswordVisiableToggleView;
        if (imageView != null) {
            if (editable.toString().length() > 0 && this.showPasswordVisiableToggle) {
                i = 0;
            }
            imageView.setVisibility(i);
        }
        updateStatus(false);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != com.narvii.amino.mastes.R.id.pass_toggle) {
            return;
        }
        boolean z = !(this.editText.getTransformationMethod() instanceof PasswordTransformationMethod);
        this.editText.setTransformationMethod(z ? PasswordTransformationMethod.getInstance() : null);
        this.imgPasswordVisiableToggleView.setImageDrawable(ContextCompat.getDrawable(getContext(), z ? com.narvii.amino.mastes.R.drawable.ic_hide_password : com.narvii.amino.mastes.R.drawable.ic_show_password));
        EditText editText = this.editText;
        editText.setSelection(editText.getText().length());
    }

    public void setInputText(String str) {
        EditText editText = this.editText;
        if (editText != null) {
            editText.setText(str);
            this.editText.setSelection(str != null ? str.length() : 0);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.childrenStates = new SparseArray();
        for (int i = 0; i < getChildCount(); i++) {
            getChildAt(i).saveHierarchyState(savedState.childrenStates);
        }
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        for (int i = 0; i < getChildCount(); i++) {
            getChildAt(i).restoreHierarchyState(savedState.childrenStates);
        }
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.ClassLoaderCreator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.narvii.widget.TextInputLayout.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return createFromParcel((Parcel) null);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        SparseArray childrenStates;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel);
            this.childrenStates = parcel.readSparseArray(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeSparseArray(this.childrenStates);
        }
    }
}
