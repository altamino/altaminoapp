package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.mobeta.android.dslv.DragSortListView;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SwipeableLayout;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentScreenroomPlaylistBinding implements ViewBinding {

    @NonNull
    public final TextView btnStart;

    @NonNull
    public final Button clearAllButton;

    @NonNull
    public final View clickRemoveMask;

    @NonNull
    public final LinearLayout empty;

    @NonNull
    public final FontAwesomeView emptyRetry;

    @NonNull
    public final SwipeableLayout frame;

    @NonNull
    public final DragSortListView list;

    @NonNull
    public final FrameLayout listFrame;

    @NonNull
    public final TextView listTitle;

    @NonNull
    public final TintButton minimize;

    @NonNull
    public final FrameLayout minimizeArea;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final FrameLayout screenRoomAddVideo;

    @NonNull
    public final TextView screenroomPlaylistVideoCounter;

    @NonNull
    public final LinearLayout screenroomPlaylistVideoStaticsLayout;

    @NonNull
    public final TextView screenroomPlaylistVideoTimeTotal;

    @NonNull
    public final FrameLayout selectFrame;

    @NonNull
    public final FrameLayout startFrame;

    @NonNull
    public final FrameLayout titleLayout;

    private FragmentScreenroomPlaylistBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull Button button, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull SwipeableLayout swipeableLayout, @NonNull DragSortListView dragSortListView, @NonNull FrameLayout frameLayout2, @NonNull TextView textView2, @NonNull TintButton tintButton, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull TextView textView4, @NonNull FrameLayout frameLayout5, @NonNull FrameLayout frameLayout6, @NonNull FrameLayout frameLayout7) {
        this.rootView = frameLayout;
        this.btnStart = textView;
        this.clearAllButton = button;
        this.clickRemoveMask = view;
        this.empty = linearLayout;
        this.emptyRetry = fontAwesomeView;
        this.frame = swipeableLayout;
        this.list = dragSortListView;
        this.listFrame = frameLayout2;
        this.listTitle = textView2;
        this.minimize = tintButton;
        this.minimizeArea = frameLayout3;
        this.screenRoomAddVideo = frameLayout4;
        this.screenroomPlaylistVideoCounter = textView3;
        this.screenroomPlaylistVideoStaticsLayout = linearLayout2;
        this.screenroomPlaylistVideoTimeTotal = textView4;
        this.selectFrame = frameLayout5;
        this.startFrame = frameLayout6;
        this.titleLayout = frameLayout7;
    }

    @NonNull
    public static FragmentScreenroomPlaylistBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentScreenroomPlaylistBinding bind(@NonNull View view) {
        int i10 = R.id.btn_start;
        TextView textView = (TextView) ViewBindings.a(view, R.id.btn_start);
        if (textView != null) {
            i10 = R.id.clear_all_button;
            Button button = (Button) ViewBindings.a(view, R.id.clear_all_button);
            if (button != null) {
                i10 = R.id.click_remove_mask;
                View viewA = ViewBindings.a(view, R.id.click_remove_mask);
                if (viewA != null) {
                    i10 = android.R.id.empty;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, android.R.id.empty);
                    if (linearLayout != null) {
                        i10 = R.id.empty_retry;
                        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.empty_retry);
                        if (fontAwesomeView != null) {
                            i10 = R.id.frame;
                            SwipeableLayout swipeableLayout = (SwipeableLayout) ViewBindings.a(view, R.id.frame);
                            if (swipeableLayout != null) {
                                i10 = android.R.id.list;
                                DragSortListView dragSortListView = (DragSortListView) ViewBindings.a(view, android.R.id.list);
                                if (dragSortListView != null) {
                                    i10 = R.id.list_frame;
                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.list_frame);
                                    if (frameLayout != null) {
                                        i10 = R.id.list_title;
                                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.list_title);
                                        if (textView2 != null) {
                                            i10 = R.id.minimize;
                                            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.minimize);
                                            if (tintButton != null) {
                                                i10 = R.id.minimize_area;
                                                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.minimize_area);
                                                if (frameLayout2 != null) {
                                                    i10 = R.id.screen_room_add_video;
                                                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.screen_room_add_video);
                                                    if (frameLayout3 != null) {
                                                        i10 = R.id.screenroom_playlist_video_counter;
                                                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.screenroom_playlist_video_counter);
                                                        if (textView3 != null) {
                                                            i10 = R.id.screenroom_playlist_video_statics_layout;
                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.screenroom_playlist_video_statics_layout);
                                                            if (linearLayout2 != null) {
                                                                i10 = R.id.screenroom_playlist_video_time_total;
                                                                TextView textView4 = (TextView) ViewBindings.a(view, R.id.screenroom_playlist_video_time_total);
                                                                if (textView4 != null) {
                                                                    i10 = R.id.select_frame;
                                                                    FrameLayout frameLayout4 = (FrameLayout) ViewBindings.a(view, R.id.select_frame);
                                                                    if (frameLayout4 != null) {
                                                                        i10 = R.id.start_frame;
                                                                        FrameLayout frameLayout5 = (FrameLayout) ViewBindings.a(view, R.id.start_frame);
                                                                        if (frameLayout5 != null) {
                                                                            i10 = R.id.title_layout;
                                                                            FrameLayout frameLayout6 = (FrameLayout) ViewBindings.a(view, R.id.title_layout);
                                                                            if (frameLayout6 != null) {
                                                                                return new FragmentScreenroomPlaylistBinding((FrameLayout) view, textView, button, viewA, linearLayout, fontAwesomeView, swipeableLayout, dragSortListView, frameLayout, textView2, tintButton, frameLayout2, frameLayout3, textView3, linearLayout2, textView4, frameLayout4, frameLayout5, frameLayout6);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentScreenroomPlaylistBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_screenroom_playlist, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
