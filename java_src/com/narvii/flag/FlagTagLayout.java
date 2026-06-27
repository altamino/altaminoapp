package com.narvii.flag;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.support.v4.internal.view.SupportMenu;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.util.Utils;
import com.narvii.util.layouts.NVFlowLayout;
import java.util.List;

/* loaded from: classes2.dex */
public class FlagTagLayout extends NVFlowLayout {
    private static final float mTextSize = 15.0f;

    public FlagTagLayout(Context context) {
        super(context);
    }

    public FlagTagLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.narvii.util.layouts.NVFlowLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void addTag(List<FlagTag> list) {
        if (list == null) {
            return;
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        removeAllViews();
        for (FlagTag flagTag : list) {
            if (flagTag.isContainIcon()) {
                View viewInflate = layoutInflaterFrom.inflate(R.layout.flag_item_summary, (ViewGroup) null);
                ((TextView) viewInflate.findViewById(R.id.text)).setText(flagTag.getFlagTypeName(getContext()));
                GradientDrawable gradientDrawable = (GradientDrawable) getContext().getResources().getDrawable(R.drawable.tag_rounded_bg);
                gradientDrawable.setColor(SupportMenu.CATEGORY_MASK);
                viewInflate.setBackgroundDrawable(gradientDrawable);
                addView(viewInflate);
            } else if (!TextUtils.isEmpty(flagTag.getFlagTypeName(getContext()))) {
                TextView textView = (TextView) layoutInflaterFrom.inflate(R.layout.flag_item_tag, (ViewGroup) null);
                GradientDrawable gradientDrawable2 = (GradientDrawable) getContext().getResources().getDrawable(R.drawable.tag_rounded_bg);
                gradientDrawable2.setColor(-13619152);
                textView.setBackgroundDrawable(gradientDrawable2);
                textView.setText(flagTag.getFlagTypeName(getContext()));
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
                layoutParams.setMargins(0, 0, (int) Utils.dpToPx(getContext(), 6.0f), 0);
                addView(textView, layoutParams);
            }
        }
    }
}
