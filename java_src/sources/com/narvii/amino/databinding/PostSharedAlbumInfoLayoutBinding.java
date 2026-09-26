package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVScrollView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class PostSharedAlbumInfoLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView albumCoverImage;

    @NonNull
    public final TextView albumDelete;

    @NonNull
    public final RelativeLayout albumLockerItemLayout;

    @NonNull
    public final EditText content;

    @NonNull
    public final ThumbImageView cover;

    @NonNull
    public final TextView descriptionCounter;

    @NonNull
    public final ImageView locked;

    @NonNull
    public final LinearLayout root;

    @NonNull
    private final NVScrollView rootView;

    @NonNull
    public final EditText title;

    @NonNull
    public final TextView titleCounter;

    @NonNull
    public final CheckBox toggle;

    @NonNull
    public static PostSharedAlbumInfoLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVScrollView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostSharedAlbumInfoLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_shared_album_info_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostSharedAlbumInfoLayoutBinding(@NonNull NVScrollView nVScrollView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout, @NonNull EditText editText, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView3, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull EditText editText2, @NonNull TextView textView4, @NonNull CheckBox checkBox) {
        this.rootView = nVScrollView;
        this.albumCoverImage = textView;
        this.albumDelete = textView2;
        this.albumLockerItemLayout = relativeLayout;
        this.content = editText;
        this.cover = thumbImageView;
        this.descriptionCounter = textView3;
        this.locked = imageView;
        this.root = linearLayout;
        this.title = editText2;
        this.titleCounter = textView4;
        this.toggle = checkBox;
    }

    @NonNull
    public static PostSharedAlbumInfoLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.album_cover_image;
        TextView textView = (TextView) ViewBindings.a(view, R.id.album_cover_image);
        if (textView != null) {
            i10 = R.id.album_delete;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.album_delete);
            if (textView2 != null) {
                i10 = R.id.album_locker_item_layout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.album_locker_item_layout);
                if (relativeLayout != null) {
                    i10 = R.id.content;
                    EditText editText = (EditText) ViewBindings.a(view, R.id.content);
                    if (editText != null) {
                        i10 = R.id.cover;
                        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.cover);
                        if (thumbImageView != null) {
                            i10 = R.id.description_counter;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.description_counter);
                            if (textView3 != null) {
                                i10 = R.id.locked;
                                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.locked);
                                if (imageView != null) {
                                    i10 = R.id.root;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.root);
                                    if (linearLayout != null) {
                                        i10 = R.id.title;
                                        EditText editText2 = (EditText) ViewBindings.a(view, R.id.title);
                                        if (editText2 != null) {
                                            i10 = R.id.title_counter;
                                            TextView textView4 = (TextView) ViewBindings.a(view, R.id.title_counter);
                                            if (textView4 != null) {
                                                i10 = R.id.toggle;
                                                CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.toggle);
                                                if (checkBox != null) {
                                                    return new PostSharedAlbumInfoLayoutBinding((NVScrollView) view, textView, textView2, relativeLayout, editText, thumbImageView, textView3, imageView, linearLayout, editText2, textView4, checkBox);
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
}
