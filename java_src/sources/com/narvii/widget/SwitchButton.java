package com.narvii.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.RadioButton;
import androidx.core.content.ContextCompat;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.theme.SwitchButtonDrawable;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes9.dex */
public class SwitchButton extends RadioButton {
    boolean darkTheme;
    private SwitchButtonDrawable switchButtonDrawable;

    public void setDarkTheme(boolean z6) {
        this.darkTheme = z6;
        int color = -1;
        if (!z6 && !isChecked()) {
            color = getContext().getResources().getColor(R.color.tab_default_text);
        }
        setTextColor(color);
        setBackgroundDrawable(z6 ? ContextCompat.getDrawable(getContext(), R.drawable.switch_button_bg_dark) : this.switchButtonDrawable);
    }

    public SwitchButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        NVContext nVContext = Utils.getNVContext(context);
        if (nVContext != null) {
            SwitchButtonDrawable switchButtonDrawable = new SwitchButtonDrawable(nVContext);
            this.switchButtonDrawable = switchButtonDrawable;
            setBackgroundDrawable(switchButtonDrawable);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z6) {
        super.setChecked(z6);
        setTypeface(Typeface.defaultFromStyle(z6 ? 1 : 0));
        int color = -1;
        if (!this.darkTheme && !z6) {
            color = getContext().getResources().getColor(R.color.tab_default_text);
        }
        setTextColor(color);
    }
}
