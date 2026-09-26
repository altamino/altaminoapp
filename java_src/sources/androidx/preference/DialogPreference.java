package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;

/* JADX INFO: loaded from: classes10.dex */
public abstract class DialogPreference extends Preference {
    private Drawable mDialogIcon;
    private int mDialogLayoutResId;
    private CharSequence mDialogMessage;
    private CharSequence mDialogTitle;
    private CharSequence mNegativeButtonText;
    private CharSequence mPositiveButtonText;

    public interface TargetFragment {
        @Nullable
        <T extends Preference> T a(@NonNull CharSequence charSequence);
    }

    public DialogPreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DialogPreference, i10, i11);
        String strO = TypedArrayUtils.o(typedArrayObtainStyledAttributes, R.styleable.DialogPreference_dialogTitle, R.styleable.DialogPreference_android_dialogTitle);
        this.mDialogTitle = strO;
        if (strO == null) {
            this.mDialogTitle = B();
        }
        this.mDialogMessage = TypedArrayUtils.o(typedArrayObtainStyledAttributes, R.styleable.DialogPreference_dialogMessage, R.styleable.DialogPreference_android_dialogMessage);
        this.mDialogIcon = TypedArrayUtils.c(typedArrayObtainStyledAttributes, R.styleable.DialogPreference_dialogIcon, R.styleable.DialogPreference_android_dialogIcon);
        this.mPositiveButtonText = TypedArrayUtils.o(typedArrayObtainStyledAttributes, R.styleable.DialogPreference_positiveButtonText, R.styleable.DialogPreference_android_positiveButtonText);
        this.mNegativeButtonText = TypedArrayUtils.o(typedArrayObtainStyledAttributes, R.styleable.DialogPreference_negativeButtonText, R.styleable.DialogPreference_android_negativeButtonText);
        this.mDialogLayoutResId = TypedArrayUtils.n(typedArrayObtainStyledAttributes, R.styleable.DialogPreference_dialogLayout, R.styleable.DialogPreference_android_dialogLayout, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Nullable
    public CharSequence A0() {
        return this.mDialogMessage;
    }

    @Nullable
    public CharSequence B0() {
        return this.mDialogTitle;
    }

    @Nullable
    public CharSequence C0() {
        return this.mNegativeButtonText;
    }

    @Nullable
    public CharSequence D0() {
        return this.mPositiveButtonText;
    }

    @Nullable
    public Drawable y0() {
        return this.mDialogIcon;
    }

    public int z0() {
        return this.mDialogLayoutResId;
    }

    @Override // androidx.preference.Preference
    protected void O() {
        y().q(this);
    }

    public DialogPreference(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public DialogPreference(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, TypedArrayUtils.a(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle));
    }

    public DialogPreference(@NonNull Context context) {
        this(context, null);
    }
}
