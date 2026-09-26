package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.core.widget.PopupWindowCompat;

/* JADX INFO: loaded from: classes9.dex */
class AppCompatPopupWindow extends PopupWindow {
    private static final boolean COMPAT_OVERLAP_ANCHOR = false;
    private boolean mOverlapAnchor;

    public AppCompatPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10) {
        super(context, attributeSet, i10);
        a(context, attributeSet, i10, 0);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i10, int i11) {
        if (COMPAT_OVERLAP_ANCHOR && this.mOverlapAnchor) {
            i11 -= view.getHeight();
        }
        super.showAsDropDown(view, i10, i11);
    }

    private void a(Context context, AttributeSet attributeSet, int i10, int i11) {
        TintTypedArray tintTypedArrayV = TintTypedArray.v(context, attributeSet, R.styleable.PopupWindow, i10, i11);
        int i12 = R.styleable.PopupWindow_overlapAnchor;
        if (tintTypedArrayV.s(i12)) {
            b(tintTypedArrayV.a(i12, false));
        }
        setBackgroundDrawable(tintTypedArrayV.g(R.styleable.PopupWindow_android_popupBackground));
        tintTypedArrayV.w();
    }

    private void b(boolean z6) {
        if (COMPAT_OVERLAP_ANCHOR) {
            this.mOverlapAnchor = z6;
        } else {
            PopupWindowCompat.a(this, z6);
        }
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i10, int i11, int i12, int i13) {
        if (COMPAT_OVERLAP_ANCHOR && this.mOverlapAnchor) {
            i11 -= view.getHeight();
        }
        super.update(view, i10, i11, i12, i13);
    }

    public AppCompatPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        super(context, attributeSet, i10, i11);
        a(context, attributeSet, i10, i11);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i10, int i11, int i12) {
        if (COMPAT_OVERLAP_ANCHOR && this.mOverlapAnchor) {
            i11 -= view.getHeight();
        }
        super.showAsDropDown(view, i10, i11, i12);
    }
}
