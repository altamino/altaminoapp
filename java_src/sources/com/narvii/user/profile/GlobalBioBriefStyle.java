package com.narvii.user.profile;

import android.graphics.Color;
import android.graphics.Typeface;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class GlobalBioBriefStyle implements BioBriefStyle {
    @Override // com.narvii.user.profile.BioBriefStyle
    public void setArrowBtnStyle(@NotNull TintButton view, boolean z6) {
        String str;
        t.j(view, "view");
        if (z6) {
            str = "#4DFFFFFF";
        } else {
            str = "#FF888888";
        }
        view.setTintColor(Color.parseColor(str));
    }

    @Override // com.narvii.user.profile.BioBriefStyle
    public void setBioTVStyle(@NotNull TextView view, boolean z6) {
        t.j(view, "view");
        view.setTextColor(-1);
        view.setLines(2);
    }

    @Override // com.narvii.user.profile.BioBriefStyle
    public void setEmptyTVStyle(@NotNull TextView view, boolean z6, boolean z10) {
        int i10;
        t.j(view, "view");
        view.setTextColor(Color.parseColor("#80FFFFFF"));
        view.setTypeface(Typeface.DEFAULT, 2);
        if (z6) {
            i10 = R.string.tap_to_add_bio;
        } else {
            i10 = R.string.no_bio_written;
        }
        view.setText(i10);
    }

    @Override // com.narvii.user.profile.BioBriefStyle
    public void setSnippetImageStyle(@NotNull NVImageView view, boolean z6) {
        int i10;
        t.j(view, "view");
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
        if (z6) {
            i10 = R.color.placeholder_darker;
        } else {
            i10 = R.color.placeholder;
        }
        view.defaultDrawableId = i10;
    }
}
