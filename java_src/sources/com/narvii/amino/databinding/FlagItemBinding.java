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
import com.narvii.flag.FlagTagLayout;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes.dex */
public final class FlagItemBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final LinearLayout flagCountLayout;

    @NonNull
    public final TextView flagTime;

    @NonNull
    public final TextView flagType;

    @NonNull
    public final TextView flaggedCount;

    @NonNull
    public final FontAwesomeView flaggedCountIcon;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final LinearLayout resolvedLayout;

    @NonNull
    public final TextView resolvedTime;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView strikeCount;

    @NonNull
    public final FlagTagLayout tagsLayout;

    @NonNull
    public static FlagItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FlagItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.flag_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FlagItemBinding(@NonNull LinearLayout linearLayout, @NonNull ThumbImageView thumbImageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull FontAwesomeView fontAwesomeView, @NonNull NicknameView nicknameView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull FlagTagLayout flagTagLayout) {
        this.rootView = linearLayout;
        this.avatar = thumbImageView;
        this.flagCountLayout = linearLayout2;
        this.flagTime = textView;
        this.flagType = textView2;
        this.flaggedCount = textView3;
        this.flaggedCountIcon = fontAwesomeView;
        this.nickname = nicknameView;
        this.resolvedLayout = linearLayout3;
        this.resolvedTime = textView4;
        this.strikeCount = textView5;
        this.tagsLayout = flagTagLayout;
    }

    @NonNull
    public static FlagItemBinding bind(@NonNull View view) {
        int i10 = R.id.avatar;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.avatar);
        if (thumbImageView != null) {
            i10 = R.id.flag_count_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.flag_count_layout);
            if (linearLayout != null) {
                i10 = R.id.flag_time;
                TextView textView = (TextView) ViewBindings.a(view, R.id.flag_time);
                if (textView != null) {
                    i10 = R.id.flag_type;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.flag_type);
                    if (textView2 != null) {
                        i10 = R.id.flagged_count;
                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.flagged_count);
                        if (textView3 != null) {
                            i10 = R.id.flagged_count_icon;
                            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.flagged_count_icon);
                            if (fontAwesomeView != null) {
                                i10 = R.id.nickname;
                                NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                                if (nicknameView != null) {
                                    i10 = R.id.resolved_layout;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.resolved_layout);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.resolved_time;
                                        TextView textView4 = (TextView) ViewBindings.a(view, R.id.resolved_time);
                                        if (textView4 != null) {
                                            i10 = R.id.strike_count;
                                            TextView textView5 = (TextView) ViewBindings.a(view, R.id.strike_count);
                                            if (textView5 != null) {
                                                i10 = R.id.tags_layout;
                                                FlagTagLayout flagTagLayout = (FlagTagLayout) ViewBindings.a(view, R.id.tags_layout);
                                                if (flagTagLayout != null) {
                                                    return new FlagItemBinding((LinearLayout) view, thumbImageView, linearLayout, textView, textView2, textView3, fontAwesomeView, nicknameView, linearLayout2, textView4, textView5, flagTagLayout);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
