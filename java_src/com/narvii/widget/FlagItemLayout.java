package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.narvii.amino.R;

/* loaded from: classes3.dex */
public class FlagItemLayout extends CheckableLinearLayout {
    private FontAwesomeView checkView1;
    private CheckBox checkView2;
    private View divder;
    private String leftText;
    private int rightType;
    private boolean showDivider;
    private TextView tvFlag;
    private TextView tvHint;

    public FlagItemLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlagItemLayout(Context context) {
        this(context, null);
    }

    public FlagItemLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.FlagItemLayout, 0, 0);
        this.leftText = typedArrayObtainStyledAttributes.getString(0);
        this.rightType = typedArrayObtainStyledAttributes.getInt(1, 0);
        this.showDivider = typedArrayObtainStyledAttributes.getBoolean(2, true);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater.from(context).inflate(com.narvii.amino.mastes.R.layout.dialog_flag_item, this);
        this.tvFlag = (TextView) findViewById(com.narvii.amino.mastes.R.id.flag_name);
        this.tvHint = (TextView) findViewById(com.narvii.amino.mastes.R.id.flag_name_hint);
        this.checkView1 = (FontAwesomeView) findViewById(com.narvii.amino.mastes.R.id.flag_right_check_1);
        this.checkView2 = (CheckBox) findViewById(com.narvii.amino.mastes.R.id.flag_right_check_2);
        this.divder = findViewById(com.narvii.amino.mastes.R.id.flag_item_divider);
        TextView textView = this.tvFlag;
        if (textView != null) {
            textView.setText(this.leftText);
        }
        this.divder.setVisibility(this.showDivider ? 0 : 8);
    }

    public void hideDivider() {
        this.divder.setVisibility(8);
    }

    public void setLeftTextColor(int i) {
        this.tvFlag.setTextColor(i);
    }

    public void setLeftText(String str) {
        this.tvFlag.setText(str);
    }

    public void setHintText(CharSequence charSequence) {
        TextView textView;
        if (TextUtils.isEmpty(charSequence) || (textView = this.tvHint) == null) {
            return;
        }
        textView.setVisibility(0);
        this.tvHint.setText(charSequence);
    }

    public void hideRight() {
        this.checkView1.setVisibility(8);
        this.checkView2.setVisibility(8);
    }

    public String getLeftText() {
        return this.tvFlag.getText().toString();
    }
}
