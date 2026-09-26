package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeFrameLayout;
import com.narvii.paging.state.PageStatusView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.recycleview.NVRecyclerView;

/* JADX INFO: loaded from: classes7.dex */
public final class FragmentLiveWatingListBinding implements ViewBinding {

    @NonNull
    public final NVImageView applyTalkImage;

    @NonNull
    public final LinearLayout applyTalkLayout;

    @NonNull
    public final TextView applyToTalk;

    @NonNull
    public final TextView clearBtn;

    @NonNull
    public final FrameLayout closeBtn;

    @NonNull
    public final NVThemeFrameLayout recycleFrame;

    @NonNull
    public final NVRecyclerView recycleLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final PageStatusView statusView;

    @NonNull
    public static FragmentLiveWatingListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentLiveWatingListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_live_wating_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentLiveWatingListBinding(@NonNull LinearLayout linearLayout, @NonNull NVImageView nVImageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull FrameLayout frameLayout, @NonNull NVThemeFrameLayout nVThemeFrameLayout, @NonNull NVRecyclerView nVRecyclerView, @NonNull PageStatusView pageStatusView) {
        this.rootView = linearLayout;
        this.applyTalkImage = nVImageView;
        this.applyTalkLayout = linearLayout2;
        this.applyToTalk = textView;
        this.clearBtn = textView2;
        this.closeBtn = frameLayout;
        this.recycleFrame = nVThemeFrameLayout;
        this.recycleLayout = nVRecyclerView;
        this.statusView = pageStatusView;
    }

    @NonNull
    public static FragmentLiveWatingListBinding bind(@NonNull View view) {
        int i10 = R.id.apply_talk_image;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.apply_talk_image);
        if (nVImageView != null) {
            i10 = R.id.apply_talk_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.apply_talk_layout);
            if (linearLayout != null) {
                i10 = R.id.apply_to_talk;
                TextView textView = (TextView) ViewBindings.a(view, R.id.apply_to_talk);
                if (textView != null) {
                    i10 = R.id.clear_btn;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.clear_btn);
                    if (textView2 != null) {
                        i10 = R.id.close_btn;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.close_btn);
                        if (frameLayout != null) {
                            i10 = R.id.recycle_frame;
                            NVThemeFrameLayout nVThemeFrameLayout = (NVThemeFrameLayout) ViewBindings.a(view, R.id.recycle_frame);
                            if (nVThemeFrameLayout != null) {
                                i10 = R.id.recycle_layout;
                                NVRecyclerView nVRecyclerView = (NVRecyclerView) ViewBindings.a(view, R.id.recycle_layout);
                                if (nVRecyclerView != null) {
                                    i10 = R.id.status_view;
                                    PageStatusView pageStatusView = (PageStatusView) ViewBindings.a(view, R.id.status_view);
                                    if (pageStatusView != null) {
                                        return new FragmentLiveWatingListBinding((LinearLayout) view, nVImageView, linearLayout, textView, textView2, frameLayout, nVThemeFrameLayout, nVRecyclerView, pageStatusView);
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
