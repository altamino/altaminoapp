package com.narvii.user.profile;

import android.graphics.Color;
import android.graphics.Typeface;
import android.support.v4.content.ContextCompat;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BioBriefView.kt */
/* loaded from: classes3.dex */
public final class CommunityBioBriefStyle implements BioBriefStyle {
    @Override // com.narvii.user.profile.BioBriefStyle
    public void setEmptyTVStyle(TextView view, boolean z, boolean z2) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        if (z) {
            view.setTextColor(ContextCompat.getColorStateList(view.getContext(), z2 ? R.color.text_clickable_white : R.color.tap_add_bio_blue));
            view.setTypeface(Typeface.DEFAULT, 1);
            view.setText(R.string.tap_to_add_bio);
        } else {
            view.setTextColor(Color.parseColor(z2 ? "#AAFFFFFF" : "#FFC6C6CF"));
            view.setTypeface(Typeface.DEFAULT, 0);
            view.setText(R.string.no_bio_written);
        }
    }

    @Override // com.narvii.user.profile.BioBriefStyle
    public void setBioTVStyle(TextView view, boolean z) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        view.setTextColor(z ? -1 : Color.parseColor("#FF4A4A4A"));
    }

    @Override // com.narvii.user.profile.BioBriefStyle
    public void setSnippetImageStyle(NVImageView view, boolean z) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        int iDpToPx = (int) Utils.dpToPx(view.getContext(), 50.0f);
        int iDpToPx2 = (int) Utils.dpToPx(view.getContext(), 4.0f);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(iDpToPx, iDpToPx);
        if (Utils.isRtl()) {
            marginLayoutParams.leftMargin = iDpToPx2;
        } else {
            marginLayoutParams.rightMargin = iDpToPx2;
        }
        view.setLayoutParams(marginLayoutParams);
        view.setScaleType(ImageView.ScaleType.CENTER_CROP);
        view.defaultDrawableId = z ? R.color.placeholder_darker : R.color.placeholder;
    }

    @Override // com.narvii.user.profile.BioBriefStyle
    public void setArrowBtnStyle(TintButton view, boolean z) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        view.setTintColor(z ? -1 : Color.parseColor("#FF888888"));
    }
}
