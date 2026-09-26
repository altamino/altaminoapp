package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.amino.page.PageTopLevelLayout;
import com.narvii.drawer.DrawerSearchButton;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.NVScrollView;

/* JADX INFO: loaded from: classes5.dex */
public final class DrawerHostContentBinding implements ViewBinding {

    @NonNull
    public final LinearLayout contentDrawerQuit;

    @NonNull
    public final ImageView contentDrawerQuitIcon;

    @NonNull
    public final AutoSizingTextView contentDrawerQuitText;

    @NonNull
    public final FrameLayout drawerActionbarBg;

    @NonNull
    public final LinearLayout drawerBlowCategoryContainer;

    @NonNull
    public final LinearLayout drawerCategoryFrame;

    @NonNull
    public final ImageView drawerImage;

    @NonNull
    public final TextView drawerKindred;

    @NonNull
    public final GridLayout drawerKindredCommunity;

    @NonNull
    public final NVScrollView drawerScroll;

    @NonNull
    public final DrawerSearchButton drawerSearch;

    @NonNull
    public final FrameLayout drawerSectionKindredLayout;

    @NonNull
    public final LinearLayout drawerShortcut;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final SwipeRefreshLayout swipeRefresh;

    @NonNull
    public final FrameLayout tooltipContainer;

    @NonNull
    public final PageTopLevelLayout topEntriesContainer;

    private DrawerHostContentBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull AutoSizingTextView autoSizingTextView, @NonNull FrameLayout frameLayout2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull GridLayout gridLayout, @NonNull NVScrollView nVScrollView, @NonNull DrawerSearchButton drawerSearchButton, @NonNull FrameLayout frameLayout3, @NonNull LinearLayout linearLayout4, @NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull FrameLayout frameLayout4, @NonNull PageTopLevelLayout pageTopLevelLayout) {
        this.rootView = frameLayout;
        this.contentDrawerQuit = linearLayout;
        this.contentDrawerQuitIcon = imageView;
        this.contentDrawerQuitText = autoSizingTextView;
        this.drawerActionbarBg = frameLayout2;
        this.drawerBlowCategoryContainer = linearLayout2;
        this.drawerCategoryFrame = linearLayout3;
        this.drawerImage = imageView2;
        this.drawerKindred = textView;
        this.drawerKindredCommunity = gridLayout;
        this.drawerScroll = nVScrollView;
        this.drawerSearch = drawerSearchButton;
        this.drawerSectionKindredLayout = frameLayout3;
        this.drawerShortcut = linearLayout4;
        this.swipeRefresh = swipeRefreshLayout;
        this.tooltipContainer = frameLayout4;
        this.topEntriesContainer = pageTopLevelLayout;
    }

    @NonNull
    public static DrawerHostContentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerHostContentBinding bind(@NonNull View view) {
        int i10 = R.id.content_drawer_quit;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.content_drawer_quit);
        if (linearLayout != null) {
            i10 = R.id.content_drawer_quit_icon;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.content_drawer_quit_icon);
            if (imageView != null) {
                i10 = R.id.content_drawer_quit_text;
                AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.content_drawer_quit_text);
                if (autoSizingTextView != null) {
                    i10 = R.id.drawer_actionbar_bg;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.drawer_actionbar_bg);
                    if (frameLayout != null) {
                        i10 = R.id.drawer_blow_category_container;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.drawer_blow_category_container);
                        if (linearLayout2 != null) {
                            i10 = R.id.drawer_category_frame;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.drawer_category_frame);
                            if (linearLayout3 != null) {
                                i10 = R.id.drawer_image;
                                ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.drawer_image);
                                if (imageView2 != null) {
                                    i10 = R.id.drawer_kindred;
                                    TextView textView = (TextView) ViewBindings.a(view, R.id.drawer_kindred);
                                    if (textView != null) {
                                        i10 = R.id.drawer_kindred_community;
                                        GridLayout gridLayout = (GridLayout) ViewBindings.a(view, R.id.drawer_kindred_community);
                                        if (gridLayout != null) {
                                            i10 = R.id.drawer_scroll;
                                            NVScrollView nVScrollView = (NVScrollView) ViewBindings.a(view, R.id.drawer_scroll);
                                            if (nVScrollView != null) {
                                                i10 = R.id.drawer_search;
                                                DrawerSearchButton drawerSearchButton = (DrawerSearchButton) ViewBindings.a(view, R.id.drawer_search);
                                                if (drawerSearchButton != null) {
                                                    i10 = R.id.drawer_section_kindred_layout;
                                                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.drawer_section_kindred_layout);
                                                    if (frameLayout2 != null) {
                                                        i10 = R.id.drawer_shortcut;
                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.drawer_shortcut);
                                                        if (linearLayout4 != null) {
                                                            i10 = R.id.swipe_refresh;
                                                            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.a(view, R.id.swipe_refresh);
                                                            if (swipeRefreshLayout != null) {
                                                                i10 = R.id.tooltip_container;
                                                                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.tooltip_container);
                                                                if (frameLayout3 != null) {
                                                                    i10 = R.id.top_entries_container;
                                                                    PageTopLevelLayout pageTopLevelLayout = (PageTopLevelLayout) ViewBindings.a(view, R.id.top_entries_container);
                                                                    if (pageTopLevelLayout != null) {
                                                                        return new DrawerHostContentBinding((FrameLayout) view, linearLayout, imageView, autoSizingTextView, frameLayout, linearLayout2, linearLayout3, imageView2, textView, gridLayout, nVScrollView, drawerSearchButton, frameLayout2, linearLayout4, swipeRefreshLayout, frameLayout3, pageTopLevelLayout);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DrawerHostContentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drawer_host_content, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
