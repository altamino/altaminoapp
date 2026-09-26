package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.chat.detail.HeaderLayout;
import com.narvii.widget.FullsizeImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class ThreadDetailHeaderBinding implements ViewBinding {

    @NonNull
    public final RealtimeBlurView blur;

    @NonNull
    public final TextView chatAuthorAbsent;

    @NonNull
    public final FullsizeImageView image;

    @NonNull
    private final HeaderLayout rootView;

    @NonNull
    public final HeaderLayout threadHeader;

    @NonNull
    public final TextView title;

    @NonNull
    public static ThreadDetailHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public HeaderLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ThreadDetailHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.thread_detail_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ThreadDetailHeaderBinding(@NonNull HeaderLayout headerLayout, @NonNull RealtimeBlurView realtimeBlurView, @NonNull TextView textView, @NonNull FullsizeImageView fullsizeImageView, @NonNull HeaderLayout headerLayout2, @NonNull TextView textView2) {
        this.rootView = headerLayout;
        this.blur = realtimeBlurView;
        this.chatAuthorAbsent = textView;
        this.image = fullsizeImageView;
        this.threadHeader = headerLayout2;
        this.title = textView2;
    }

    @NonNull
    public static ThreadDetailHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.blur;
        RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.blur);
        if (realtimeBlurView != null) {
            i10 = R.id.chat_author_absent;
            TextView textView = (TextView) ViewBindings.a(view, R.id.chat_author_absent);
            if (textView != null) {
                i10 = R.id.image;
                FullsizeImageView fullsizeImageView = (FullsizeImageView) ViewBindings.a(view, R.id.image);
                if (fullsizeImageView != null) {
                    HeaderLayout headerLayout = (HeaderLayout) view;
                    i10 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                    if (textView2 != null) {
                        return new ThreadDetailHeaderBinding(headerLayout, realtimeBlurView, textView, fullsizeImageView, headerLayout, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
