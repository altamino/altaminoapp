package com.narvii.user.profile;

import android.graphics.Color;
import android.graphics.Typeface;
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
public final class GlobalBioBriefStyle implements BioBriefStyle {
    @Override // com.narvii.user.profile.BioBriefStyle
    public void setEmptyTVStyle(TextView view, boolean z, boolean z2) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        view.setTextColor(Color.parseColor("#80FFFFFF"));
        view.setTypeface(Typeface.DEFAULT, 2);
        view.setText(z ? R.string.tap_to_add_bio : R.string.no_bio_written);
    }

    @Override // com.narvii.user.profile.BioBriefStyle
    public void setBioTVStyle(TextView view, boolean z) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        view.setTextColor(-1);
        view.setLines(2);
    }

    @Override // com.narvii.user.profile.BioBriefStyle
    public void setSnippetImageStyle(NVImageView view, boolean z) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        int iDpToPx = (int) Utils.dpToPx(view.getContext(), 35.0f);
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
        view.setTintColor(Color.parseColor(z ? "#4DFFFFFF" : "#FF888888"));
    }
}
