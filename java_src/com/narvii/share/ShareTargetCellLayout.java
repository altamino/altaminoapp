package com.narvii.share;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.StateSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.lib.R;
import com.narvii.share.elements.BaseElement;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class ShareTargetCellLayout extends FlexLayout {
    Drawable iconDrawable;
    ImageView imgIcon;
    String label;
    View realView;
    TextView tvTitle;

    public ShareTargetCellLayout(Context context) {
        this(context, null);
    }

    public ShareTargetCellLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ShareTargetCellLayout);
        this.iconDrawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ShareTargetCellLayout_share_target_icon);
        this.label = typedArrayObtainStyledAttributes.getString(R.styleable.ShareTargetCellLayout_share_target_label);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.imgIcon = (ImageView) findViewById(R.id.icon);
        this.tvTitle = (TextView) findViewById(R.id.target_label);
        this.realView = findViewById(R.id.real_container);
    }

    public void setShareTarget(BaseElement baseElement) {
        if (baseElement == null) {
            return;
        }
        ImageView imageView = this.imgIcon;
        if (imageView != null) {
            imageView.setImageDrawable(baseElement.icon());
        }
        TextView textView = this.tvTitle;
        if (textView != null) {
            textView.setText(baseElement.label());
            this.tvTitle.setTextColor(baseElement.textColor());
        }
        View view = this.realView;
        if (view != null) {
            view.setBackgroundDrawable(getBackgroundDrawable(baseElement));
        }
    }

    public Drawable getBackgroundDrawable(BaseElement baseElement) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(Utils.dpToPx(getContext(), 4.0f));
        gradientDrawable.setColor(baseElement.color());
        float[] fArr = {0.0f, 0.0f, (float) (d * 0.8d)};
        Color.colorToHSV(baseElement.color(), fArr);
        double d = fArr[2];
        Double.isNaN(d);
        int iHSVToColor = Color.HSVToColor(fArr);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setCornerRadius(Utils.dpToPx(getContext(), 4.0f));
        gradientDrawable2.setColor(iHSVToColor);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, gradientDrawable2);
        stateListDrawable.addState(StateSet.WILD_CARD, gradientDrawable);
        return stateListDrawable;
    }
}
