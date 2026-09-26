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
import com.narvii.chat.video.view.JoinChannelBanner;
import com.narvii.chat.video.view.LiveChannelEntryView;

/* JADX INFO: loaded from: classes4.dex */
public final class VvchatChildEntryBinding implements ViewBinding {

    @NonNull
    public final LinearLayout goLiveEntry;

    @NonNull
    public final LinearLayout launchContainers;

    @NonNull
    private final LiveChannelEntryView rootView;

    @NonNull
    public final JoinChannelBanner rtcPreviewBanner;

    @NonNull
    public final LiveChannelEntryView vvEntry;

    @NonNull
    public static VvchatChildEntryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LiveChannelEntryView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static VvchatChildEntryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.vvchat_child_entry, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private VvchatChildEntryBinding(@NonNull LiveChannelEntryView liveChannelEntryView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull JoinChannelBanner joinChannelBanner, @NonNull LiveChannelEntryView liveChannelEntryView2) {
        this.rootView = liveChannelEntryView;
        this.goLiveEntry = linearLayout;
        this.launchContainers = linearLayout2;
        this.rtcPreviewBanner = joinChannelBanner;
        this.vvEntry = liveChannelEntryView2;
    }

    @NonNull
    public static VvchatChildEntryBinding bind(@NonNull View view) {
        int i10 = R.id.go_live_entry;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.go_live_entry);
        if (linearLayout != null) {
            i10 = R.id.launch_containers;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.launch_containers);
            if (linearLayout2 != null) {
                i10 = R.id.rtc_preview_banner;
                JoinChannelBanner joinChannelBanner = (JoinChannelBanner) ViewBindings.a(view, R.id.rtc_preview_banner);
                if (joinChannelBanner != null) {
                    LiveChannelEntryView liveChannelEntryView = (LiveChannelEntryView) view;
                    return new VvchatChildEntryBinding(liveChannelEntryView, linearLayout, linearLayout2, joinChannelBanner, liveChannelEntryView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
