package com.narvii.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.widget.RadioButton;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.theme.SwitchButtonDrawable;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class SwitchButton extends RadioButton {
    boolean darkTheme;
    private SwitchButtonDrawable switchButtonDrawable;

    public void setDarkTheme(boolean z) {
        this.darkTheme = z;
        int color = -1;
        if (!z && !isChecked()) {
            color = getContext().getResources().getColor(R.color.tab_default_text);
        }
        setTextColor(color);
        setBackgroundDrawable(z ? ContextCompat.getDrawable(getContext(), R.drawable.switch_button_bg_dark) : this.switchButtonDrawable);
    }

    public SwitchButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        NVContext nVContext = Utils.getNVContext(context);
        if (nVContext != null) {
            this.switchButtonDrawable = new SwitchButtonDrawable(nVContext);
            setBackgroundDrawable(this.switchButtonDrawable);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) throws Resources.NotFoundException {
        super.setChecked(z);
        setTypeface(Typeface.defaultFromStyle(z ? 1 : 0));
        int color = -1;
        if (!this.darkTheme && !z) {
            color = getContext().getResources().getColor(R.color.tab_default_text);
        }
        setTextColor(color);
    }
}
