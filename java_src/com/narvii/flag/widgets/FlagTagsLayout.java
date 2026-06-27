package com.narvii.flag.widgets;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.support.v4.internal.view.SupportMenu;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.flag.FlagTag;
import com.narvii.util.Utils;
import java.util.List;

/* loaded from: classes2.dex */
public class FlagTagsLayout extends HorizontalScrollView {
    LinearLayout container;

    public FlagTagsLayout(Context context) {
        this(context, null);
    }

    public FlagTagsLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlagTagsLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.container = new LinearLayout(context);
        this.container.setOrientation(0);
        this.container.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.container.setClipChildren(false);
        setClipToPadding(false);
        addView(this.container);
    }

    public void setTagsClickListener(View.OnClickListener onClickListener) {
        LinearLayout linearLayout = this.container;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(onClickListener);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void addTag(List<FlagTag> list) {
        if (list == null) {
            return;
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        this.container.removeAllViews();
        for (FlagTag flagTag : list) {
            if (flagTag.isContainIcon()) {
                View viewInflate = layoutInflaterFrom.inflate(R.layout.flag_item_summary, (ViewGroup) null);
                ((TextView) viewInflate.findViewById(R.id.text)).setText(flagTag.getFlagTypeName(getContext()));
                GradientDrawable gradientDrawable = (GradientDrawable) getContext().getResources().getDrawable(R.drawable.tag_rounded_bg);
                gradientDrawable.setColor(SupportMenu.CATEGORY_MASK);
                viewInflate.setBackgroundDrawable(gradientDrawable);
                this.container.addView(viewInflate);
            } else if (!TextUtils.isEmpty(flagTag.getFlagTypeName(getContext()))) {
                TextView textView = (TextView) layoutInflaterFrom.inflate(R.layout.flag_item_tag, (ViewGroup) null);
                GradientDrawable gradientDrawable2 = (GradientDrawable) getContext().getResources().getDrawable(R.drawable.tag_rounded_bg);
                gradientDrawable2.setColor(-13619152);
                textView.setBackgroundDrawable(gradientDrawable2);
                textView.setText(flagTag.getFlagTypeName(getContext()));
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
                layoutParams.setMargins(0, 0, (int) Utils.dpToPx(getContext(), 6.0f), 0);
                this.container.addView(textView, layoutParams);
            }
        }
        View view = new View(getContext());
        view.setBackgroundDrawable(new ColorDrawable(-4342339));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams((int) Utils.dpToPx(getContext(), 1.0f), -1);
        layoutParams2.setMargins((int) Utils.dpToPx(getContext(), 6.0f), 0, (int) Utils.dpToPx(getContext(), 6.0f), 0);
        this.container.addView(view, 1, layoutParams2);
    }
}
