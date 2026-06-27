package com.narvii.util.dialog;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.share.elements.BaseElement;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class ShareTutorialDialog extends AlertDialog {
    BaseElement element;
    ImageView imgTargetIcon;
    LayoutInflater layoutInflater;
    View targetLayout;
    LinearLayout tutorialItemLayout;
    TextView tvTargetName;

    public ShareTutorialDialog(Context context) {
        super(context);
        this.tutorialItemLayout = (LinearLayout) findViewById(R.id.tutorial_items);
        this.layoutInflater = LayoutInflater.from(getContext());
        this.imgTargetIcon = (ImageView) findViewById(R.id.share_target_icon);
        this.tvTargetName = (TextView) findViewById(R.id.share_target_name);
        this.targetLayout = findViewById(R.id.share_target_layout);
    }

    @Override // com.narvii.util.dialog.AlertDialog
    protected int baseLayoutId() {
        return R.layout.dialog_share_turtorial_layout;
    }

    public void setElement(BaseElement baseElement) {
        this.element = baseElement;
        ImageView imageView = this.imgTargetIcon;
        if (imageView != null) {
            imageView.setImageDrawable(baseElement.icon());
        }
        TextView textView = this.tvTargetName;
        if (textView != null) {
            textView.setText(baseElement.label());
            this.tvTargetName.setTextColor(baseElement.textColor());
        }
        View view = this.targetLayout;
        if (view != null) {
            view.setBackgroundDrawable(getBackgroundDrawable(baseElement));
        }
    }

    public void addTutorialItem(String str) {
        View viewInflate = this.layoutInflater.inflate(R.layout.item_share_tutorial_layout, (ViewGroup) this.tutorialItemLayout, false);
        ((TextView) viewInflate.findViewById(R.id.hint)).setText(str);
        this.tutorialItemLayout.addView(viewInflate);
    }

    public Drawable getBackgroundDrawable(BaseElement baseElement) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(Utils.dpToPx(getContext(), 4.0f));
        gradientDrawable.setColor(baseElement.color());
        return gradientDrawable;
    }
}
