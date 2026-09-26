package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.MarqueeTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class VvchatChildAnnouncementBinding implements ViewBinding {

    @NonNull
    public final LinearLayout announcementContainer;

    @NonNull
    public final MarqueeTextView announcementText;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static VvchatChildAnnouncementBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        MarqueeTextView marqueeTextView = (MarqueeTextView) ViewBindings.a(view, R.id.announcement_text);
        if (marqueeTextView != null) {
            return new VvchatChildAnnouncementBinding(linearLayout, linearLayout, marqueeTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.announcement_text)));
    }

    @NonNull
    public static VvchatChildAnnouncementBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static VvchatChildAnnouncementBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.vvchat_child_announcement, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private VvchatChildAnnouncementBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull MarqueeTextView marqueeTextView) {
        this.rootView = linearLayout;
        this.announcementContainer = linearLayout2;
        this.announcementText = marqueeTextView;
    }
}
