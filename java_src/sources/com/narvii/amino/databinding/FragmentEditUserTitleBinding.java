package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.user.title.AddUserTitleFlowLayout;
import com.narvii.widget.BubbleBackground;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVStatusLayout;
import com.narvii.widget.ScrollDetectFrameLayout;
import com.narvii.widget.ScrollViewWithMaxHeight;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentEditUserTitleBinding implements ViewBinding {

    @NonNull
    public final View arrow;

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final NVImageView background;

    @NonNull
    public final BubbleBackground bubble;

    @NonNull
    public final TextView limitAlert;

    @NonNull
    public final TextView listTitle;

    @NonNull
    public final LinearLayout mainLayout;

    @NonNull
    public final LinearLayout mainLayout1;

    @NonNull
    public final RecyclerView recycler;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final ScrollDetectFrameLayout scrollDetect;

    @NonNull
    public final ScrollViewWithMaxHeight scrollMaxHeight;

    @NonNull
    public final TextView selectedCount;

    @NonNull
    public final NVStatusLayout statusLayout;

    @NonNull
    public final AddUserTitleFlowLayout userTileFlowLayout;

    @NonNull
    public static FragmentEditUserTitleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentEditUserTitleBinding bind(@NonNull View view) {
        LinearLayout linearLayout;
        int i10 = R.id.arrow;
        View viewA = ViewBindings.a(view, R.id.arrow);
        if (viewA != null) {
            i10 = R.id.avatar;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.avatar);
            if (thumbImageView != null) {
                i10 = R.id.background;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.background);
                if (nVImageView != null) {
                    i10 = R.id.bubble;
                    BubbleBackground bubbleBackground = (BubbleBackground) ViewBindings.a(view, R.id.bubble);
                    if (bubbleBackground != null) {
                        i10 = R.id.limit_alert;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.limit_alert);
                        if (textView != null) {
                            i10 = R.id.list_title;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.list_title);
                            if (textView2 != null) {
                                i10 = R.id.main_layout;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.main_layout);
                                if (linearLayout2 != null && (linearLayout = (LinearLayout) ViewBindings.a(view, R.id.main_layout)) != null) {
                                    i10 = R.id.recycler;
                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.a(view, R.id.recycler);
                                    if (recyclerView != null) {
                                        i10 = R.id.scroll_detect;
                                        ScrollDetectFrameLayout scrollDetectFrameLayout = (ScrollDetectFrameLayout) ViewBindings.a(view, R.id.scroll_detect);
                                        if (scrollDetectFrameLayout != null) {
                                            i10 = R.id.scroll_max_height;
                                            ScrollViewWithMaxHeight scrollViewWithMaxHeight = (ScrollViewWithMaxHeight) ViewBindings.a(view, R.id.scroll_max_height);
                                            if (scrollViewWithMaxHeight != null) {
                                                i10 = R.id.selected_count;
                                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.selected_count);
                                                if (textView3 != null) {
                                                    i10 = R.id.status_layout;
                                                    NVStatusLayout nVStatusLayout = (NVStatusLayout) ViewBindings.a(view, R.id.status_layout);
                                                    if (nVStatusLayout != null) {
                                                        i10 = R.id.user_tile_flow_layout;
                                                        AddUserTitleFlowLayout addUserTitleFlowLayout = (AddUserTitleFlowLayout) ViewBindings.a(view, R.id.user_tile_flow_layout);
                                                        if (addUserTitleFlowLayout != null) {
                                                            return new FragmentEditUserTitleBinding((FlexLayout) view, viewA, thumbImageView, nVImageView, bubbleBackground, textView, textView2, linearLayout2, linearLayout, recyclerView, scrollDetectFrameLayout, scrollViewWithMaxHeight, textView3, nVStatusLayout, addUserTitleFlowLayout);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentEditUserTitleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_edit_user_title, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentEditUserTitleBinding(@NonNull FlexLayout flexLayout, @NonNull View view, @NonNull ThumbImageView thumbImageView, @NonNull NVImageView nVImageView, @NonNull BubbleBackground bubbleBackground, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull RecyclerView recyclerView, @NonNull ScrollDetectFrameLayout scrollDetectFrameLayout, @NonNull ScrollViewWithMaxHeight scrollViewWithMaxHeight, @NonNull TextView textView3, @NonNull NVStatusLayout nVStatusLayout, @NonNull AddUserTitleFlowLayout addUserTitleFlowLayout) {
        this.rootView = flexLayout;
        this.arrow = view;
        this.avatar = thumbImageView;
        this.background = nVImageView;
        this.bubble = bubbleBackground;
        this.limitAlert = textView;
        this.listTitle = textView2;
        this.mainLayout = linearLayout;
        this.mainLayout1 = linearLayout2;
        this.recycler = recyclerView;
        this.scrollDetect = scrollDetectFrameLayout;
        this.scrollMaxHeight = scrollViewWithMaxHeight;
        this.selectedCount = textView3;
        this.statusLayout = nVStatusLayout;
        this.userTileFlowLayout = addUserTitleFlowLayout;
    }
}
