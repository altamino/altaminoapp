package com.narvii.amino.speeddial;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.StateSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.amino.speeddial.mode.LiveCategory;
import com.narvii.amino.speeddial.mode.LiveItemSpec;
import com.narvii.widget.NVImageView;

/* loaded from: classes2.dex */
public class LiveCategoryItemView extends FrameLayout {
    private TextView activeMemberCount;
    private View activeMemberLabelContainer;
    private NVImageView imgIndicator;
    private TextView tvTitle;

    public LiveCategoryItemView(Context context) {
        this(context, null);
    }

    public LiveCategoryItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        initViews();
    }

    private void initViews() {
        this.activeMemberLabelContainer = findViewById(R.id.active_member_container);
        this.activeMemberCount = (TextView) findViewById(R.id.member_count);
        this.imgIndicator = (NVImageView) findViewById(R.id.live_indicator);
        this.tvTitle = (TextView) findViewById(R.id.title);
    }

    private boolean isValidTopic(String str) {
        String[] strArrSplit = str.split(":");
        return strArrSplit != null && strArrSplit.length >= 3 && LiveCategory.itemKeys.contains(strArrSplit[2]);
    }

    public LiveItemSpec getMappedLiveItem(String str) {
        String[] strArrSplit = str.split(":");
        if (isValidTopic(str)) {
            return LiveCategory.liveItems.get(strArrSplit[2]);
        }
        return null;
    }

    public void updateLiveCategory(LiveCategory liveCategory) {
        if (liveCategory == null || TextUtils.isEmpty(liveCategory.topic)) {
            setVisibility(8);
            return;
        }
        LiveItemSpec mappedLiveItem = getMappedLiveItem(liveCategory.topic);
        if (mappedLiveItem == null) {
            setVisibility(8);
            return;
        }
        this.imgIndicator.setShowPressedMask(false);
        this.imgIndicator.setImageDrawable(ContextCompat.getDrawable(getContext(), mappedLiveItem.iconId));
        this.activeMemberCount.setText("" + liveCategory.userProfileCount);
        this.tvTitle.setText(getContext().getString(mappedLiveItem.titleId));
        this.activeMemberLabelContainer.setVisibility(liveCategory.userProfileCount <= 0 ? 4 : 0);
    }

    private Drawable getBackgroundDrawable(LiveItemSpec liveItemSpec) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(liveItemSpec.backgroundColor);
        float[] fArr = new float[3];
        Color.colorToHSV(liveItemSpec.backgroundColor, fArr);
        fArr[2] = fArr[2] * 0.8f;
        int iHSVToColor = Color.HSVToColor(fArr);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(1);
        gradientDrawable2.setColor(iHSVToColor);
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, gradientDrawable2);
        stateListDrawable.addState(StateSet.WILD_CARD, gradientDrawable);
        return stateListDrawable;
    }
}
