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
import com.narvii.user.profile.BioBriefView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes9.dex */
public final class BioSnippetBinding implements ViewBinding {

    @NonNull
    public final TextView address;

    @NonNull
    public final BioBriefView bioBrief;

    @NonNull
    public final LinearLayout bioMain;

    @NonNull
    public final TextView bioTitle;

    @NonNull
    public final LinearLayout location;

    @NonNull
    public final TintButton locationIcon;

    @NonNull
    public final TextView memberSince;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final View topDivider;

    @NonNull
    public static BioSnippetBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static BioSnippetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.bio_snippet, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private BioSnippetBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull BioBriefView bioBriefView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3, @NonNull TintButton tintButton, @NonNull TextView textView3, @NonNull View view) {
        this.rootView = linearLayout;
        this.address = textView;
        this.bioBrief = bioBriefView;
        this.bioMain = linearLayout2;
        this.bioTitle = textView2;
        this.location = linearLayout3;
        this.locationIcon = tintButton;
        this.memberSince = textView3;
        this.topDivider = view;
    }

    @NonNull
    public static BioSnippetBinding bind(@NonNull View view) {
        int i10 = R.id.address;
        TextView textView = (TextView) ViewBindings.a(view, R.id.address);
        if (textView != null) {
            i10 = R.id.bio_brief;
            BioBriefView bioBriefView = (BioBriefView) ViewBindings.a(view, R.id.bio_brief);
            if (bioBriefView != null) {
                i10 = R.id.bio_main;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.bio_main);
                if (linearLayout != null) {
                    i10 = R.id.bio_title;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.bio_title);
                    if (textView2 != null) {
                        i10 = R.id.location;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.location);
                        if (linearLayout2 != null) {
                            i10 = R.id.location_icon;
                            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.location_icon);
                            if (tintButton != null) {
                                i10 = R.id.member_since;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.member_since);
                                if (textView3 != null) {
                                    i10 = R.id.top_divider;
                                    View viewA = ViewBindings.a(view, R.id.top_divider);
                                    if (viewA != null) {
                                        return new BioSnippetBinding((LinearLayout) view, textView, bioBriefView, linearLayout, textView2, linearLayout2, tintButton, textView3, viewA);
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
