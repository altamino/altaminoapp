package com.narvii.user.profile;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class CommunityBioBriefStyle implements BioBriefStyle {
    @Override // com.narvii.user.profile.BioBriefStyle
    public void setArrowBtnStyle(@NotNull TintButton view, boolean z6) {
        int color;
        t.j(view, "view");
        if (z6) {
            color = -1;
        } else {
            color = Color.parseColor("#FF888888");
        }
        view.setTintColor(color);
    }

    @Override // com.narvii.user.profile.BioBriefStyle
    public void setBioTVStyle(@NotNull TextView view, boolean z6) {
        int color;
        t.j(view, "view");
        if (z6) {
            color = -1;
        } else {
            color = Color.parseColor("#FF4A4A4A");
        }
        view.setTextColor(color);
    }

    @Override // com.narvii.user.profile.BioBriefStyle
    public void setEmptyTVStyle(@NotNull TextView view, boolean z6, boolean z10) {
        String str;
        int i10;
        t.j(view, "view");
        if (z6) {
            Context context = view.getContext();
            if (z10) {
                i10 = R.color.text_clickable_white;
            } else {
                i10 = R.color.tap_add_bio_blue;
            }
            view.setTextColor(ContextCompat.getColorStateList(context, i10));
            view.setTypeface(Typeface.DEFAULT, 1);
            view.setText(R.string.tap_to_add_bio);
            return;
        }
        if (z10) {
            str = "#AAFFFFFF";
        } else {
            str = "#FFC6C6CF";
        }
        view.setTextColor(Color.parseColor(str));
        view.setTypeface(Typeface.DEFAULT, 0);
        view.setText(R.string.no_bio_written);
    }

    @Override // com.narvii.user.profile.BioBriefStyle
    public void setSnippetImageStyle(@NotNull NVImageView view, boolean z6) {
        int i10;
        t.j(view, "view");
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
        if (z6) {
            i10 = R.color.placeholder_darker;
        } else {
            i10 = R.color.placeholder;
        }
        view.defaultDrawableId = i10;
    }
}
