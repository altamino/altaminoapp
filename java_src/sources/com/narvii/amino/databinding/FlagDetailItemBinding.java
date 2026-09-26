package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class FlagDetailItemBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final TextView flagReason;

    @NonNull
    public final TextView flagTime;

    @NonNull
    public final TextView flagType;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FlagDetailItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FlagDetailItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.flag_detail_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FlagDetailItemBinding(@NonNull LinearLayout linearLayout, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull NicknameView nicknameView) {
        this.rootView = linearLayout;
        this.avatar = thumbImageView;
        this.flagReason = textView;
        this.flagTime = textView2;
        this.flagType = textView3;
        this.nickname = nicknameView;
    }

    @NonNull
    public static FlagDetailItemBinding bind(@NonNull View view) {
        int i10 = R.id.avatar;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.avatar);
        if (thumbImageView != null) {
            i10 = R.id.flag_reason;
            TextView textView = (TextView) ViewBindings.a(view, R.id.flag_reason);
            if (textView != null) {
                i10 = R.id.flag_time;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.flag_time);
                if (textView2 != null) {
                    i10 = R.id.flag_type;
                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.flag_type);
                    if (textView3 != null) {
                        i10 = R.id.nickname;
                        NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                        if (nicknameView != null) {
                            return new FlagDetailItemBinding((LinearLayout) view, thumbImageView, textView, textView2, textView3, nicknameView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
