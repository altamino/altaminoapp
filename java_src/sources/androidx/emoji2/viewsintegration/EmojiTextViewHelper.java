package androidx.emoji2.viewsintegration;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;

/* JADX INFO: loaded from: classes10.dex */
public final class EmojiTextViewHelper {
    private final HelperInternal mHelper;

    @RequiresApi
    private static class HelperInternal19 extends HelperInternal {
        private final EmojiInputFilter mEmojiInputFilter;
        private boolean mEnabled = true;
        private final TextView mTextView;

        @NonNull
        private InputFilter[] f(@NonNull InputFilter[] inputFilterArr) {
            int length = inputFilterArr.length;
            for (InputFilter inputFilter : inputFilterArr) {
                if (inputFilter == this.mEmojiInputFilter) {
                    return inputFilterArr;
                }
            }
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length + 1];
            System.arraycopy(inputFilterArr, 0, inputFilterArr2, 0, length);
            inputFilterArr2[length] = this.mEmojiInputFilter;
            return inputFilterArr2;
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public boolean b() {
            return this.mEnabled;
        }

        @RestrictTo
        void i(boolean z6) {
            this.mEnabled = z6;
        }

        private SparseArray<InputFilter> g(@NonNull InputFilter[] inputFilterArr) {
            SparseArray<InputFilter> sparseArray = new SparseArray<>(1);
            for (int i10 = 0; i10 < inputFilterArr.length; i10++) {
                InputFilter inputFilter = inputFilterArr[i10];
                if (inputFilter instanceof EmojiInputFilter) {
                    sparseArray.put(i10, inputFilter);
                }
            }
            return sparseArray;
        }

        @Nullable
        private TransformationMethod j(@Nullable TransformationMethod transformationMethod) {
            return transformationMethod instanceof EmojiTransformationMethod ? ((EmojiTransformationMethod) transformationMethod).a() : transformationMethod;
        }

        private void k() {
            this.mTextView.setFilters(a(this.mTextView.getFilters()));
        }

        @NonNull
        private TransformationMethod m(@Nullable TransformationMethod transformationMethod) {
            return ((transformationMethod instanceof EmojiTransformationMethod) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new EmojiTransformationMethod(transformationMethod);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        @NonNull
        InputFilter[] a(@NonNull InputFilter[] inputFilterArr) {
            return !this.mEnabled ? h(inputFilterArr) : f(inputFilterArr);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        void c(boolean z6) {
            if (z6) {
                l();
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        void d(boolean z6) {
            this.mEnabled = z6;
            l();
            k();
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        @Nullable
        TransformationMethod e(@Nullable TransformationMethod transformationMethod) {
            return this.mEnabled ? m(transformationMethod) : j(transformationMethod);
        }

        void l() {
            this.mTextView.setTransformationMethod(e(this.mTextView.getTransformationMethod()));
        }

        HelperInternal19(TextView textView) {
            this.mTextView = textView;
            this.mEmojiInputFilter = new EmojiInputFilter(textView);
        }

        @NonNull
        private InputFilter[] h(@NonNull InputFilter[] inputFilterArr) {
            SparseArray<InputFilter> sparseArrayG = g(inputFilterArr);
            if (sparseArrayG.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArrayG.size()];
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                if (sparseArrayG.indexOfKey(i11) < 0) {
                    inputFilterArr2[i10] = inputFilterArr[i11];
                    i10++;
                }
            }
            return inputFilterArr2;
        }
    }

    @RequiresApi
    private static class SkippingHelper19 extends HelperInternal {
        private final HelperInternal19 mHelperDelegate;

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public boolean b() {
            return this.mHelperDelegate.b();
        }

        SkippingHelper19(TextView textView) {
            this.mHelperDelegate = new HelperInternal19(textView);
        }

        private boolean f() {
            return !EmojiCompat.h();
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        @NonNull
        InputFilter[] a(@NonNull InputFilter[] inputFilterArr) {
            if (f()) {
                return inputFilterArr;
            }
            return this.mHelperDelegate.a(inputFilterArr);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        void c(boolean z6) {
            if (f()) {
                return;
            }
            this.mHelperDelegate.c(z6);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        void d(boolean z6) {
            if (f()) {
                this.mHelperDelegate.i(z6);
            } else {
                this.mHelperDelegate.d(z6);
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        @Nullable
        TransformationMethod e(@Nullable TransformationMethod transformationMethod) {
            if (f()) {
                return transformationMethod;
            }
            return this.mHelperDelegate.e(transformationMethod);
        }
    }

    public EmojiTextViewHelper(@NonNull TextView textView) {
        this(textView, true);
    }

    static class HelperInternal {
        @NonNull
        InputFilter[] a(@NonNull InputFilter[] inputFilterArr) {
            return inputFilterArr;
        }

        public boolean b() {
            return false;
        }

        void c(boolean z6) {
        }

        void d(boolean z6) {
        }

        @Nullable
        TransformationMethod e(@Nullable TransformationMethod transformationMethod) {
            return transformationMethod;
        }

        HelperInternal() {
        }
    }

    public EmojiTextViewHelper(@NonNull TextView textView, boolean z6) {
        Preconditions.j(textView, "textView cannot be null");
        if (z6) {
            this.mHelper = new HelperInternal19(textView);
        } else {
            this.mHelper = new SkippingHelper19(textView);
        }
    }

    @NonNull
    public InputFilter[] a(@NonNull InputFilter[] inputFilterArr) {
        return this.mHelper.a(inputFilterArr);
    }

    public boolean b() {
        return this.mHelper.b();
    }

    public void c(boolean z6) {
        this.mHelper.c(z6);
    }

    public void d(boolean z6) {
        this.mHelper.d(z6);
    }

    @Nullable
    public TransformationMethod e(@Nullable TransformationMethod transformationMethod) {
        return this.mHelper.e(transformationMethod);
    }
}
