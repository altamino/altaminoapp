package androidx.databinding.adapters;

import android.widget.AutoCompleteTextView;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethods;

/* JADX INFO: loaded from: classes9.dex */
@BindingMethods
@RestrictTo
public class AutoCompleteTextViewBindingAdapter {

    /* JADX INFO: renamed from: androidx.databinding.adapters.AutoCompleteTextViewBindingAdapter$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes10.dex */
    class AnonymousClass1 implements AutoCompleteTextView.Validator {
        final /* synthetic */ FixText val$fixText;
        final /* synthetic */ IsValid val$isValid;

        @Override // android.widget.AutoCompleteTextView.Validator
        public CharSequence fixText(CharSequence charSequence) {
            FixText fixText = this.val$fixText;
            return fixText != null ? fixText.fixText(charSequence) : charSequence;
        }

        @Override // android.widget.AutoCompleteTextView.Validator
        public boolean isValid(CharSequence charSequence) {
            IsValid isValid = this.val$isValid;
            if (isValid != null) {
                return isValid.isValid(charSequence);
            }
            return true;
        }
    }

    public interface FixText {
        CharSequence fixText(CharSequence charSequence);
    }

    public interface IsValid {
        boolean isValid(CharSequence charSequence);
    }
}
