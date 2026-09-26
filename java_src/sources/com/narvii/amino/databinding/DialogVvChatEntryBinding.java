package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.PopButton;

/* JADX INFO: loaded from: classes7.dex */
public final class DialogVvChatEntryBinding implements ViewBinding {

    @NonNull
    public final PopButton close;

    @NonNull
    public final FlexLayout dialogRoot;

    @NonNull
    public final LinearLayout entryContainers;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final LinearLayout videoContainer;

    @NonNull
    public final LinearLayout voiceContainer;

    @NonNull
    public static DialogVvChatEntryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogVvChatEntryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_vv_chat_entry, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogVvChatEntryBinding(@NonNull FlexLayout flexLayout, @NonNull PopButton popButton, @NonNull FlexLayout flexLayout2, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3) {
        this.rootView = flexLayout;
        this.close = popButton;
        this.dialogRoot = flexLayout2;
        this.entryContainers = linearLayout;
        this.videoContainer = linearLayout2;
        this.voiceContainer = linearLayout3;
    }

    @NonNull
    public static DialogVvChatEntryBinding bind(@NonNull View view) {
        int i10 = R.id.close;
        PopButton popButton = (PopButton) ViewBindings.a(view, R.id.close);
        if (popButton != null) {
            FlexLayout flexLayout = (FlexLayout) view;
            i10 = R.id.entry_containers;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.entry_containers);
            if (linearLayout != null) {
                i10 = R.id.video_container;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.video_container);
                if (linearLayout2 != null) {
                    i10 = R.id.voice_container;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.voice_container);
                    if (linearLayout3 != null) {
                        return new DialogVvChatEntryBinding(flexLayout, popButton, flexLayout, linearLayout, linearLayout2, linearLayout3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
