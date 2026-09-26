package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.sharedfolder.HeaderLayout;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class SharedAlbumDetailHeaderBinding implements ViewBinding {

    @NonNull
    public final LinearLayout authorLayout;

    @NonNull
    public final RealtimeBlurView blur;

    @NonNull
    public final TextView content;

    @NonNull
    public final LinearLayout countLayout;

    @NonNull
    public final ThumbImageView cover;

    @NonNull
    public final NVImageView coverGradient;

    @NonNull
    public final HeaderLayout detailHeader;

    @NonNull
    public final ImageView locked;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final TextView photoCount;

    @NonNull
    private final HeaderLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public final TextView title2;

    @NonNull
    public final TextView voteCount;

    @NonNull
    public static SharedAlbumDetailHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public HeaderLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SharedAlbumDetailHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.author_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.author_layout);
        if (linearLayout != null) {
            i10 = R.id.blur;
            RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.blur);
            if (realtimeBlurView != null) {
                i10 = R.id.content;
                TextView textView = (TextView) ViewBindings.a(view, R.id.content);
                if (textView != null) {
                    i10 = R.id.count_layout;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.count_layout);
                    if (linearLayout2 != null) {
                        i10 = R.id.cover;
                        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.cover);
                        if (thumbImageView != null) {
                            i10 = R.id.cover_gradient;
                            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.cover_gradient);
                            if (nVImageView != null) {
                                HeaderLayout headerLayout = (HeaderLayout) view;
                                i10 = R.id.locked;
                                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.locked);
                                if (imageView != null) {
                                    i10 = R.id.nickname;
                                    NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                                    if (nicknameView != null) {
                                        i10 = R.id.photo_count;
                                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.photo_count);
                                        if (textView2 != null) {
                                            i10 = R.id.title;
                                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.title);
                                            if (textView3 != null) {
                                                i10 = R.id.title2;
                                                TextView textView4 = (TextView) ViewBindings.a(view, R.id.title2);
                                                if (textView4 != null) {
                                                    i10 = R.id.vote_count;
                                                    TextView textView5 = (TextView) ViewBindings.a(view, R.id.vote_count);
                                                    if (textView5 != null) {
                                                        return new SharedAlbumDetailHeaderBinding(headerLayout, linearLayout, realtimeBlurView, textView, linearLayout2, thumbImageView, nVImageView, headerLayout, imageView, nicknameView, textView2, textView3, textView4, textView5);
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
    public static SharedAlbumDetailHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.shared_album_detail_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SharedAlbumDetailHeaderBinding(@NonNull HeaderLayout headerLayout, @NonNull LinearLayout linearLayout, @NonNull RealtimeBlurView realtimeBlurView, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull ThumbImageView thumbImageView, @NonNull NVImageView nVImageView, @NonNull HeaderLayout headerLayout2, @NonNull ImageView imageView, @NonNull NicknameView nicknameView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.rootView = headerLayout;
        this.authorLayout = linearLayout;
        this.blur = realtimeBlurView;
        this.content = textView;
        this.countLayout = linearLayout2;
        this.cover = thumbImageView;
        this.coverGradient = nVImageView;
        this.detailHeader = headerLayout2;
        this.locked = imageView;
        this.nickname = nicknameView;
        this.photoCount = textView2;
        this.title = textView3;
        this.title2 = textView4;
        this.voteCount = textView5;
    }
}
