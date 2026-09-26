package androidx.emoji2.viewsintegration;

import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.EmojiCompat;

/* JADX INFO: loaded from: classes4.dex */
@RequiresApi
@RestrictTo
class EmojiTransformationMethod implements TransformationMethod {

    @Nullable
    private final TransformationMethod mTransformationMethod;

    public TransformationMethod a() {
        return this.mTransformationMethod;
    }

    @Override // android.text.method.TransformationMethod
    public void onFocusChanged(View view, CharSequence charSequence, boolean z6, int i10, Rect rect) {
        TransformationMethod transformationMethod = this.mTransformationMethod;
        if (transformationMethod != null) {
            transformationMethod.onFocusChanged(view, charSequence, z6, i10, rect);
        }
    }

    EmojiTransformationMethod(@Nullable TransformationMethod transformationMethod) {
        this.mTransformationMethod = transformationMethod;
    }

    @Override // android.text.method.TransformationMethod
    public CharSequence getTransformation(@Nullable CharSequence charSequence, @NonNull View view) {
        if (view.isInEditMode()) {
            return charSequence;
        }
        TransformationMethod transformationMethod = this.mTransformationMethod;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, view);
        }
        if (charSequence != null && EmojiCompat.b().d() == 1) {
            return EmojiCompat.b().o(charSequence);
        }
        return charSequence;
    }
}
