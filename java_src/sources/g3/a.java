package g3;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CompoundButtonCompat;
import com.google.android.material.internal.s;
import com.google.android.material.internal.u;
import com.google.android.material.resources.c;
import d3.b;
import d3.k;
import d3.l;

/* JADX INFO: loaded from: classes9.dex */
public class a extends AppCompatCheckBox {
    private static final int DEF_STYLE_RES = k.Widget_MaterialComponents_CompoundButton_CheckBox;
    private static final int[][] ENABLED_CHECKED_STATES = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
    private boolean centerIfNoTextEnabled;

    @Nullable
    private ColorStateList materialThemeColorsTintList;
    private boolean useMaterialThemeColors;

    public a(Context context) {
        this(context, null);
    }

    public void setCenterIfNoTextEnabled(boolean z6) {
        this.centerIfNoTextEnabled = z6;
    }

    public a(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, b.checkboxStyle);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.materialThemeColorsTintList == null) {
            int[][] iArr = ENABLED_CHECKED_STATES;
            int[] iArr2 = new int[iArr.length];
            int iD = i3.a.d(this, b.colorControlActivated);
            int iD2 = i3.a.d(this, b.colorSurface);
            int iD3 = i3.a.d(this, b.colorOnSurface);
            iArr2[0] = i3.a.h(iD2, iD, 1.0f);
            iArr2[1] = i3.a.h(iD2, iD3, 0.54f);
            iArr2[2] = i3.a.h(iD2, iD3, 0.38f);
            iArr2[3] = i3.a.h(iD2, iD3, 0.38f);
            this.materialThemeColorsTintList = new ColorStateList(iArr, iArr2);
        }
        return this.materialThemeColorsTintList;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawableA;
        if (!this.centerIfNoTextEnabled || !TextUtils.isEmpty(getText()) || (drawableA = CompoundButtonCompat.a(this)) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - drawableA.getIntrinsicWidth()) / 2) * (u.g(this) ? -1 : 1);
        int iSave = canvas.save();
        canvas.translate(width, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
        if (getBackground() != null) {
            Rect bounds = drawableA.getBounds();
            DrawableCompat.l(getBackground(), bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    public void setUseMaterialThemeColors(boolean z6) {
        this.useMaterialThemeColors = z6;
        if (z6) {
            CompoundButtonCompat.c(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.c(this, null);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public a(Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = DEF_STYLE_RES;
        super(r3.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        Context context2 = getContext();
        TypedArray typedArrayH = s.h(context2, attributeSet, l.MaterialCheckBox, i10, i11, new int[0]);
        int i12 = l.MaterialCheckBox_buttonTint;
        if (typedArrayH.hasValue(i12)) {
            CompoundButtonCompat.c(this, c.a(context2, typedArrayH, i12));
        }
        this.useMaterialThemeColors = typedArrayH.getBoolean(l.MaterialCheckBox_useMaterialThemeColors, false);
        this.centerIfNoTextEnabled = typedArrayH.getBoolean(l.MaterialCheckBox_centerIfNoTextEnabled, true);
        typedArrayH.recycle();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.useMaterialThemeColors && CompoundButtonCompat.b(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }
}
