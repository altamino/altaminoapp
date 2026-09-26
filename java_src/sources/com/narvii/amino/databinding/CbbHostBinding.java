package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.community.CBBHost;
import com.narvii.livelayer.CBBLiveLayerOnlineBar;

/* JADX INFO: loaded from: classes8.dex */
public final class CbbHostBinding implements ViewBinding {

    @NonNull
    public final View badgeChat;

    @NonNull
    public final View badgeMe;

    @NonNull
    public final View badgeMenu;

    @NonNull
    public final LinearLayout cbbChat;

    @NonNull
    public final View cbbChatDivider;

    @NonNull
    public final ImageView cbbChatIcon;

    @NonNull
    public final TextView cbbChatText;

    @NonNull
    public final LinearLayout cbbMe;

    @NonNull
    public final TextView cbbMeText;

    @NonNull
    public final LinearLayout cbbMenu;

    @NonNull
    public final LinearLayout cbbOnline;

    @NonNull
    public final ImageView cbbOnlineIcon;

    @NonNull
    public final FrameLayout cbbPostEntry;

    @NonNull
    public final FrameLayout mainLayout;

    @NonNull
    public final TextView memberCount;

    @NonNull
    public final CBBLiveLayerOnlineBar onlineBar;

    @NonNull
    public final FlexLayout onlineBarContainer;

    @NonNull
    private final CBBHost rootView;

    private CbbHostBinding(@NonNull CBBHost cBBHost, @NonNull View view, @NonNull View view2, @NonNull View view3, @NonNull LinearLayout linearLayout, @NonNull View view4, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView3, @NonNull CBBLiveLayerOnlineBar cBBLiveLayerOnlineBar, @NonNull FlexLayout flexLayout) {
        this.rootView = cBBHost;
        this.badgeChat = view;
        this.badgeMe = view2;
        this.badgeMenu = view3;
        this.cbbChat = linearLayout;
        this.cbbChatDivider = view4;
        this.cbbChatIcon = imageView;
        this.cbbChatText = textView;
        this.cbbMe = linearLayout2;
        this.cbbMeText = textView2;
        this.cbbMenu = linearLayout3;
        this.cbbOnline = linearLayout4;
        this.cbbOnlineIcon = imageView2;
        this.cbbPostEntry = frameLayout;
        this.mainLayout = frameLayout2;
        this.memberCount = textView3;
        this.onlineBar = cBBLiveLayerOnlineBar;
        this.onlineBarContainer = flexLayout;
    }

    @NonNull
    public static CbbHostBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public CBBHost getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CbbHostBinding bind(@NonNull View view) {
        int i10 = R.id.badge_chat;
        View viewA = ViewBindings.a(view, R.id.badge_chat);
        if (viewA != null) {
            i10 = R.id.badge_me;
            View viewA2 = ViewBindings.a(view, R.id.badge_me);
            if (viewA2 != null) {
                i10 = R.id.badge_menu;
                View viewA3 = ViewBindings.a(view, R.id.badge_menu);
                if (viewA3 != null) {
                    i10 = R.id.cbb_chat;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.cbb_chat);
                    if (linearLayout != null) {
                        i10 = R.id.cbb_chat_divider;
                        View viewA4 = ViewBindings.a(view, R.id.cbb_chat_divider);
                        if (viewA4 != null) {
                            i10 = R.id.cbb_chat_icon;
                            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.cbb_chat_icon);
                            if (imageView != null) {
                                i10 = R.id.cbb_chat_text;
                                TextView textView = (TextView) ViewBindings.a(view, R.id.cbb_chat_text);
                                if (textView != null) {
                                    i10 = R.id.cbb_me;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.cbb_me);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.cbb_me_text;
                                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.cbb_me_text);
                                        if (textView2 != null) {
                                            i10 = R.id.cbb_menu;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.cbb_menu);
                                            if (linearLayout3 != null) {
                                                i10 = R.id.cbb_online;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.cbb_online);
                                                if (linearLayout4 != null) {
                                                    i10 = R.id.cbb_online_icon;
                                                    ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.cbb_online_icon);
                                                    if (imageView2 != null) {
                                                        i10 = R.id.cbb_post_entry;
                                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.cbb_post_entry);
                                                        if (frameLayout != null) {
                                                            i10 = R.id.main_layout;
                                                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.main_layout);
                                                            if (frameLayout2 != null) {
                                                                i10 = R.id.member_count;
                                                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.member_count);
                                                                if (textView3 != null) {
                                                                    i10 = R.id.online_bar;
                                                                    CBBLiveLayerOnlineBar cBBLiveLayerOnlineBar = (CBBLiveLayerOnlineBar) ViewBindings.a(view, R.id.online_bar);
                                                                    if (cBBLiveLayerOnlineBar != null) {
                                                                        i10 = R.id.online_bar_container;
                                                                        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.online_bar_container);
                                                                        if (flexLayout != null) {
                                                                            return new CbbHostBinding((CBBHost) view, viewA, viewA2, viewA3, linearLayout, viewA4, imageView, textView, linearLayout2, textView2, linearLayout3, linearLayout4, imageView2, frameLayout, frameLayout2, textView3, cBBLiveLayerOnlineBar, flexLayout);
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
    public static CbbHostBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.cbb_host, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
