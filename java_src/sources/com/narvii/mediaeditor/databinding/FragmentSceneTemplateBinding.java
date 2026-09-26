package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.mediaeditor.R;
import com.narvii.paging.state.PageStatusView;
import com.narvii.widget.recycleview.NVRecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentSceneTemplateBinding implements ViewBinding {

    @NonNull
    public final TextView cancel;

    @NonNull
    public final Button choose;

    @NonNull
    public final LinearLayout headerLayout;

    @NonNull
    public final TextView promoteDesc;

    @NonNull
    public final TextView promoteTitle;

    @NonNull
    public final FrameLayout recycleFrame;

    @NonNull
    public final NVRecyclerView recycleLayout;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final PageStatusView statusView;

    @NonNull
    public final SwipeRefreshLayout swipeRefresh;

    @NonNull
    public static FragmentSceneTemplateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSceneTemplateBinding bind(@NonNull View view) {
        int i10 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.choose;
            Button button = (Button) ViewBindings.a(view, i10);
            if (button != null) {
                i10 = R.id.header_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                if (linearLayout != null) {
                    i10 = R.id.promote_desc;
                    TextView textView2 = (TextView) ViewBindings.a(view, i10);
                    if (textView2 != null) {
                        i10 = R.id.promote_title;
                        TextView textView3 = (TextView) ViewBindings.a(view, i10);
                        if (textView3 != null) {
                            i10 = R.id.recycle_frame;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                            if (frameLayout != null) {
                                i10 = R.id.recycle_layout;
                                NVRecyclerView nVRecyclerView = (NVRecyclerView) ViewBindings.a(view, i10);
                                if (nVRecyclerView != null) {
                                    i10 = R.id.status_view;
                                    PageStatusView pageStatusView = (PageStatusView) ViewBindings.a(view, i10);
                                    if (pageStatusView != null) {
                                        i10 = R.id.swipe_refresh;
                                        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.a(view, i10);
                                        if (swipeRefreshLayout != null) {
                                            return new FragmentSceneTemplateBinding((FlexLayout) view, textView, button, linearLayout, textView2, textView3, frameLayout, nVRecyclerView, pageStatusView, swipeRefreshLayout);
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
    public static FragmentSceneTemplateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_scene_template, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentSceneTemplateBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull Button button, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull FrameLayout frameLayout, @NonNull NVRecyclerView nVRecyclerView, @NonNull PageStatusView pageStatusView, @NonNull SwipeRefreshLayout swipeRefreshLayout) {
        this.rootView = flexLayout;
        this.cancel = textView;
        this.choose = button;
        this.headerLayout = linearLayout;
        this.promoteDesc = textView2;
        this.promoteTitle = textView3;
        this.recycleFrame = frameLayout;
        this.recycleLayout = nVRecyclerView;
        this.statusView = pageStatusView;
        this.swipeRefresh = swipeRefreshLayout;
    }
}
