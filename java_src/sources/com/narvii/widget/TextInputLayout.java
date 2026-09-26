package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import com.narvii.account.mobile.MyPhoneCountryCodePicker;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public class TextInputLayout extends LinearLayout implements TextWatcher, View.OnClickListener {
    public static final int PASS_LIMIT = 6;
    private EditText editText;
    private TextView errorHintView;
    private ImageView imgPasswordVisiableToggleView;
    private View inputStatusIndicator;
    private final boolean lightTheme;
    private final int passCountLimit;
    private View passwordHintView;
    private final boolean showPasswordVisibleToggle;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.ClassLoaderCreator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.narvii.widget.TextInputLayout.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return createFromParcel((Parcel) null);
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
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeSparseArray(this.childrenStates);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    public EditText getEditText() {
        return this.editText;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    public void setError(String str) {
        this.errorHintView.setText(str);
        updateStatus(!TextUtils.isEmpty(str));
    }

    public void addTextChangedListener(TextWatcher textWatcher) {
        EditText editText = this.editText;
        if (editText != null) {
            editText.addTextChangedListener(textWatcher);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        View view = this.passwordHintView;
        int i10 = 4;
        if (view != null) {
            view.setVisibility(editable.toString().length() < this.passCountLimit ? 0 : 4);
        }
        ImageView imageView = this.imgPasswordVisiableToggleView;
        if (imageView != null) {
            if (editable.toString().length() > 0 && this.showPasswordVisibleToggle) {
                i10 = 0;
            }
            imageView.setVisibility(i10);
        }
        updateStatus(false);
    }

    public String getEditContent() {
        EditText editText = this.editText;
        if (editText == null) {
            return null;
        }
        return editText.getText().toString();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            getChildAt(i10).restoreHierarchyState(savedState.childrenStates);
        }
    }

    public void setInputText(String str) {
        EditText editText = this.editText;
        if (editText != null) {
            editText.setText(str);
            this.editText.setSelection(str != null ? str.length() : 0);
        }
    }

    public void updateStatus(boolean z6) {
        int color;
        TextView textView = this.errorHintView;
        if (textView != null) {
            textView.setVisibility(z6 ? 0 : 8);
        }
        View view = this.inputStatusIndicator;
        if (view != null) {
            if (z6) {
                color = SupportMenu.CATEGORY_MASK;
            } else {
                color = this.lightTheme ? getResources().getColor(R.color.white_50a) : -1;
            }
            view.setBackgroundColor(color);
        }
        if (z6) {
            this.errorHintView.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.text_input_erroe_shake));
        }
    }

    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.TextInputLayout);
        this.passCountLimit = typedArrayObtainStyledAttributes.getInteger(52, 6);
        this.showPasswordVisibleToggle = typedArrayObtainStyledAttributes.getBoolean(61, false);
        this.lightTheme = typedArrayObtainStyledAttributes.getBoolean(46, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        PasswordTransformationMethod passwordTransformationMethod;
        int i10;
        if (view.getId() == R.id.pass_toggle) {
            boolean z6 = !(this.editText.getTransformationMethod() instanceof PasswordTransformationMethod);
            EditText editText = this.editText;
            if (z6) {
                passwordTransformationMethod = PasswordTransformationMethod.getInstance();
            } else {
                passwordTransformationMethod = null;
            }
            editText.setTransformationMethod(passwordTransformationMethod);
            ImageView imageView = this.imgPasswordVisiableToggleView;
            Context context = getContext();
            if (z6) {
                i10 = R.drawable.ic_hide_password;
            } else {
                i10 = R.drawable.ic_show_password;
            }
            imageView.setImageDrawable(ContextCompat.getDrawable(context, i10));
            EditText editText2 = this.editText;
            editText2.setSelection(editText2.getText().length());
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.inputStatusIndicator = findViewById(R.id.edit_status_line);
        this.editText = (EditText) findViewById(R.id.edit);
        this.errorHintView = (TextView) findViewById(R.id.input_error_hint);
        this.imgPasswordVisiableToggleView = (ImageView) findViewById(R.id.pass_toggle);
        this.passwordHintView = findViewById(R.id.pass_limit_info);
        EditText editText = this.editText;
        if (editText != null) {
            editText.addTextChangedListener(this);
            MyPhoneCountryCodePicker myPhoneCountryCodePicker = (MyPhoneCountryCodePicker) findViewById(R.id.country_picker);
            if (myPhoneCountryCodePicker != null) {
                myPhoneCountryCodePicker.bindPhoneNumberEdit(this.editText);
            }
        }
        ImageView imageView = this.imgPasswordVisiableToggleView;
        if (imageView != null) {
            imageView.setOnClickListener(this);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.childrenStates = new SparseArray();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            getChildAt(i10).saveHierarchyState(savedState.childrenStates);
        }
        return savedState;
    }

    public void setError(int i10) {
        setError(getResources().getString(i10));
    }
}
