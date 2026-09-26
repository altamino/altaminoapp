package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.flag.widgets.FlagTagsLayout;

/* JADX INFO: loaded from: classes7.dex */
public final class FlagResolveBarBinding implements ViewBinding {

    @NonNull
    public final LinearLayout flagActionLayout;

    @NonNull
    public final RelativeLayout flagAlreadyResolvedLayout;

    @NonNull
    public final RelativeLayout flagResolveActionHide;

    @NonNull
    public final RelativeLayout flagResolveActionKeep;

    @NonNull
    public final LinearLayout flagResolveLayout;

    @NonNull
    public final FlagTagsLayout flagTagsLayout;

    @NonNull
    public final TextView hideText;

    @NonNull
    public final ImageView iconHide;

    @NonNull
    public final ImageView iconKeep;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FlagResolveBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FlagResolveBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.flag_resolve_bar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FlagResolveBarBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull LinearLayout linearLayout3, @NonNull FlagTagsLayout flagTagsLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.rootView = linearLayout;
        this.flagActionLayout = linearLayout2;
        this.flagAlreadyResolvedLayout = relativeLayout;
        this.flagResolveActionHide = relativeLayout2;
        this.flagResolveActionKeep = relativeLayout3;
        this.flagResolveLayout = linearLayout3;
        this.flagTagsLayout = flagTagsLayout;
        this.hideText = textView;
        this.iconHide = imageView;
        this.iconKeep = imageView2;
    }

    @NonNull
    public static FlagResolveBarBinding bind(@NonNull View view) {
        int i10 = R.id.flag_action_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.flag_action_layout);
        if (linearLayout != null) {
            i10 = R.id.flag_already_resolved_layout;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.flag_already_resolved_layout);
            if (relativeLayout != null) {
                i10 = R.id.flag_resolve_action_hide;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.a(view, R.id.flag_resolve_action_hide);
                if (relativeLayout2 != null) {
                    i10 = R.id.flag_resolve_action_keep;
                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.a(view, R.id.flag_resolve_action_keep);
                    if (relativeLayout3 != null) {
                        LinearLayout linearLayout2 = (LinearLayout) view;
                        i10 = R.id.flag_tags_layout;
                        FlagTagsLayout flagTagsLayout = (FlagTagsLayout) ViewBindings.a(view, R.id.flag_tags_layout);
                        if (flagTagsLayout != null) {
                            i10 = R.id.hide_text;
                            TextView textView = (TextView) ViewBindings.a(view, R.id.hide_text);
                            if (textView != null) {
                                i10 = R.id.icon_hide;
                                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon_hide);
                                if (imageView != null) {
                                    i10 = R.id.icon_keep;
                                    ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.icon_keep);
                                    if (imageView2 != null) {
                                        return new FlagResolveBarBinding(linearLayout2, linearLayout, relativeLayout, relativeLayout2, relativeLayout3, linearLayout2, flagTagsLayout, textView, imageView, imageView2);
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
