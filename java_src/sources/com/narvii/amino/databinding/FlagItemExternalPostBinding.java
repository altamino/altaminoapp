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
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class FlagItemExternalPostBinding implements ViewBinding {

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
    public final TextView nickname;

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
    public final LinearLayout userInfoContainer;

    @NonNull
    public static FlagItemExternalPostBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FlagItemExternalPostBinding bind(@NonNull View view) {
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
                                TextView textView4 = (TextView) ViewBindings.a(view, R.id.nickname);
                                if (textView4 != null) {
                                    i10 = R.id.resolved_layout;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.resolved_layout);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.resolved_time;
                                        TextView textView5 = (TextView) ViewBindings.a(view, R.id.resolved_time);
                                        if (textView5 != null) {
                                            i10 = R.id.strike_count;
                                            TextView textView6 = (TextView) ViewBindings.a(view, R.id.strike_count);
                                            if (textView6 != null) {
                                                i10 = R.id.tags_layout;
                                                FlagTagLayout flagTagLayout = (FlagTagLayout) ViewBindings.a(view, R.id.tags_layout);
                                                if (flagTagLayout != null) {
                                                    i10 = R.id.user_info_container;
                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.user_info_container);
                                                    if (linearLayout3 != null) {
                                                        return new FlagItemExternalPostBinding((LinearLayout) view, thumbImageView, linearLayout, textView, textView2, textView3, fontAwesomeView, textView4, linearLayout2, textView5, textView6, flagTagLayout, linearLayout3);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FlagItemExternalPostBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.flag_item_external_post, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FlagItemExternalPostBinding(@NonNull LinearLayout linearLayout, @NonNull ThumbImageView thumbImageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView4, @NonNull LinearLayout linearLayout3, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull FlagTagLayout flagTagLayout, @NonNull LinearLayout linearLayout4) {
        this.rootView = linearLayout;
        this.avatar = thumbImageView;
        this.flagCountLayout = linearLayout2;
        this.flagTime = textView;
        this.flagType = textView2;
        this.flaggedCount = textView3;
        this.flaggedCountIcon = fontAwesomeView;
        this.nickname = textView4;
        this.resolvedLayout = linearLayout3;
        this.resolvedTime = textView5;
        this.strikeCount = textView6;
        this.tagsLayout = flagTagLayout;
        this.userInfoContainer = linearLayout4;
    }
}
