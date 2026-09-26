package com.narvii.amino.speeddial;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.StateSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.narvii.amino.speeddial.mode.LiveCategory;
import com.narvii.amino.speeddial.mode.LiveItemSpec;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes9.dex */
public class LiveCategoryItemView extends FrameLayout {
    private TextView activeMemberCount;
    private View activeMemberLabelContainer;
    private NVImageView imgIndicator;
    private TextView tvTitle;

    public LiveCategoryItemView(@NonNull Context context) {
        this(context, null);
    }

    public LiveCategoryItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
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
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, gradientDrawable2);
        stateListDrawable.addState(StateSet.WILD_CARD, gradientDrawable);
        return stateListDrawable;
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

    private void initViews() {
        this.activeMemberLabelContainer = findViewById(com.narvii.amino.master.R.id.active_member_container);
        this.activeMemberCount = (TextView) findViewById(com.narvii.amino.master.R.id.member_count);
        this.imgIndicator = (NVImageView) findViewById(com.narvii.amino.master.R.id.live_indicator);
        this.tvTitle = (TextView) findViewById(com.narvii.amino.master.R.id.title);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        initViews();
    }
}
