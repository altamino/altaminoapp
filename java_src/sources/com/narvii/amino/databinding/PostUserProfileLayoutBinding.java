package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AddressView;
import com.narvii.widget.BackgroundPickerView;
import com.narvii.widget.EditTextIMG;
import com.narvii.widget.MoodView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class PostUserProfileLayoutBinding implements ViewBinding {

    @NonNull
    public final AddressView address;

    @NonNull
    public final ImageView avatarFrameError;

    @NonNull
    public final SpinningView avatarFrameLoading;

    @NonNull
    public final FrameLayout avatarPickerContainer;

    @NonNull
    public final BackgroundPickerView backgroundPicker;

    @NonNull
    public final EditTextIMG content;

    @NonNull
    public final TextView hint;

    @NonNull
    public final ThumbImageView image1;

    @NonNull
    public final ThumbImageView image2;

    @NonNull
    public final ThumbImageView image3;

    @NonNull
    public final ThumbImageView image4;

    @NonNull
    public final ImageView manageTitleIcon;

    @NonNull
    public final MoodView mood;

    @NonNull
    public final EditText nickname;

    @NonNull
    public final TextView postAddAvatarFrame;

    @NonNull
    public final LinearLayout postAddLocation;

    @NonNull
    public final LinearLayout postAddPhoto;

    @NonNull
    public final LinearLayout postEditLocation;

    @NonNull
    public final LinearLayout postEditPhoto;

    @NonNull
    public final PostEmbedImageHintBinding postEmbedImageHint;

    @NonNull
    public final LinearLayout postLocating;

    @NonNull
    public final LinearLayout postOptions;

    @NonNull
    public final LinearLayout root;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView titlesCount;

    @NonNull
    public final LinearLayout userTitleLayout;

    private PostUserProfileLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull AddressView addressView, @NonNull ImageView imageView, @NonNull SpinningView spinningView, @NonNull FrameLayout frameLayout2, @NonNull BackgroundPickerView backgroundPickerView, @NonNull EditTextIMG editTextIMG, @NonNull TextView textView, @NonNull ThumbImageView thumbImageView, @NonNull ThumbImageView thumbImageView2, @NonNull ThumbImageView thumbImageView3, @NonNull ThumbImageView thumbImageView4, @NonNull ImageView imageView2, @NonNull MoodView moodView, @NonNull EditText editText, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull PostEmbedImageHintBinding postEmbedImageHintBinding, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7, @NonNull TextView textView3, @NonNull LinearLayout linearLayout8) {
        this.rootView = frameLayout;
        this.address = addressView;
        this.avatarFrameError = imageView;
        this.avatarFrameLoading = spinningView;
        this.avatarPickerContainer = frameLayout2;
        this.backgroundPicker = backgroundPickerView;
        this.content = editTextIMG;
        this.hint = textView;
        this.image1 = thumbImageView;
        this.image2 = thumbImageView2;
        this.image3 = thumbImageView3;
        this.image4 = thumbImageView4;
        this.manageTitleIcon = imageView2;
        this.mood = moodView;
        this.nickname = editText;
        this.postAddAvatarFrame = textView2;
        this.postAddLocation = linearLayout;
        this.postAddPhoto = linearLayout2;
        this.postEditLocation = linearLayout3;
        this.postEditPhoto = linearLayout4;
        this.postEmbedImageHint = postEmbedImageHintBinding;
        this.postLocating = linearLayout5;
        this.postOptions = linearLayout6;
        this.root = linearLayout7;
        this.titlesCount = textView3;
        this.userTitleLayout = linearLayout8;
    }

    @NonNull
    public static PostUserProfileLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostUserProfileLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.address;
        AddressView addressView = (AddressView) ViewBindings.a(view, R.id.address);
        if (addressView != null) {
            i10 = R.id.avatar_frame_error;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.avatar_frame_error);
            if (imageView != null) {
                i10 = R.id.avatar_frame_loading;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.avatar_frame_loading);
                if (spinningView != null) {
                    i10 = R.id.avatar_picker_container;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.avatar_picker_container);
                    if (frameLayout != null) {
                        i10 = R.id.background_picker;
                        BackgroundPickerView backgroundPickerView = (BackgroundPickerView) ViewBindings.a(view, R.id.background_picker);
                        if (backgroundPickerView != null) {
                            i10 = R.id.content;
                            EditTextIMG editTextIMG = (EditTextIMG) ViewBindings.a(view, R.id.content);
                            if (editTextIMG != null) {
                                i10 = R.id.hint;
                                TextView textView = (TextView) ViewBindings.a(view, R.id.hint);
                                if (textView != null) {
                                    i10 = R.id.image_1;
                                    ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image_1);
                                    if (thumbImageView != null) {
                                        i10 = R.id.image_2;
                                        ThumbImageView thumbImageView2 = (ThumbImageView) ViewBindings.a(view, R.id.image_2);
                                        if (thumbImageView2 != null) {
                                            i10 = R.id.image_3;
                                            ThumbImageView thumbImageView3 = (ThumbImageView) ViewBindings.a(view, R.id.image_3);
                                            if (thumbImageView3 != null) {
                                                i10 = R.id.image_4;
                                                ThumbImageView thumbImageView4 = (ThumbImageView) ViewBindings.a(view, R.id.image_4);
                                                if (thumbImageView4 != null) {
                                                    i10 = R.id.manage_title_icon;
                                                    ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.manage_title_icon);
                                                    if (imageView2 != null) {
                                                        i10 = R.id.mood;
                                                        MoodView moodView = (MoodView) ViewBindings.a(view, R.id.mood);
                                                        if (moodView != null) {
                                                            i10 = R.id.nickname;
                                                            EditText editText = (EditText) ViewBindings.a(view, R.id.nickname);
                                                            if (editText != null) {
                                                                i10 = R.id.post_add_avatar_frame;
                                                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.post_add_avatar_frame);
                                                                if (textView2 != null) {
                                                                    i10 = R.id.post_add_location;
                                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.post_add_location);
                                                                    if (linearLayout != null) {
                                                                        i10 = R.id.post_add_photo;
                                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.post_add_photo);
                                                                        if (linearLayout2 != null) {
                                                                            i10 = R.id.post_edit_location;
                                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.post_edit_location);
                                                                            if (linearLayout3 != null) {
                                                                                i10 = R.id.post_edit_photo;
                                                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.post_edit_photo);
                                                                                if (linearLayout4 != null) {
                                                                                    i10 = R.id.post_embed_image_hint;
                                                                                    View viewA = ViewBindings.a(view, R.id.post_embed_image_hint);
                                                                                    if (viewA != null) {
                                                                                        PostEmbedImageHintBinding postEmbedImageHintBindingBind = PostEmbedImageHintBinding.bind(viewA);
                                                                                        i10 = R.id.post_locating;
                                                                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.a(view, R.id.post_locating);
                                                                                        if (linearLayout5 != null) {
                                                                                            i10 = R.id.post_options;
                                                                                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.a(view, R.id.post_options);
                                                                                            if (linearLayout6 != null) {
                                                                                                i10 = R.id.root;
                                                                                                LinearLayout linearLayout7 = (LinearLayout) ViewBindings.a(view, R.id.root);
                                                                                                if (linearLayout7 != null) {
                                                                                                    i10 = R.id.titles_count;
                                                                                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.titles_count);
                                                                                                    if (textView3 != null) {
                                                                                                        i10 = R.id.user_title_layout;
                                                                                                        LinearLayout linearLayout8 = (LinearLayout) ViewBindings.a(view, R.id.user_title_layout);
                                                                                                        if (linearLayout8 != null) {
                                                                                                            return new PostUserProfileLayoutBinding((FrameLayout) view, addressView, imageView, spinningView, frameLayout, backgroundPickerView, editTextIMG, textView, thumbImageView, thumbImageView2, thumbImageView3, thumbImageView4, imageView2, moodView, editText, textView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, postEmbedImageHintBindingBind, linearLayout5, linearLayout6, linearLayout7, textView3, linearLayout8);
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
    public static PostUserProfileLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_user_profile_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
