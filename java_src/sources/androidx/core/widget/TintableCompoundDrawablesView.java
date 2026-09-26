package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public interface TintableCompoundDrawablesView {
    void setSupportCompoundDrawablesTintList(@Nullable ColorStateList colorStateList);

    void setSupportCompoundDrawablesTintMode(@Nullable PorterDuff.Mode mode);
}
