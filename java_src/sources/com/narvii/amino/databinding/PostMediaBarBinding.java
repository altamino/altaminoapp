package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.BackgroundPickerView;
import com.narvii.widget.CardView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class PostMediaBarBinding implements ViewBinding {

    @NonNull
    public final BackgroundPickerView backgroundPicker;

    @NonNull
    public final LinearLayout fansOnlyLayout;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    public final CardView itemCardPreview;

    @NonNull
    public final TextView itemCount;

    @NonNull
    public final FrameLayout itemPreviewContainer;

    @NonNull
    public final TextView mediaCount;

    @NonNull
    public final ThumbImageView mediaPreview;

    @NonNull
    public final ImageView pickItem;

    @NonNull
    public final SpinningView pickLocatingProgress;

    @NonNull
    public final ImageView pickLocation;

    @NonNull
    public final ImageView pickMedia;

    @NonNull
    public final Button postCategories;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final View title;

    @NonNull
    public static PostMediaBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostMediaBarBinding bind(@NonNull View view) {
        int i10 = R.id.background_picker;
        BackgroundPickerView backgroundPickerView = (BackgroundPickerView) ViewBindings.a(view, R.id.background_picker);
        if (backgroundPickerView != null) {
            i10 = R.id.fans_only_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.fans_only_layout);
            if (linearLayout != null) {
                i10 = R.id.image;
                ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
                if (thumbImageView != null) {
                    i10 = R.id.item_card_preview;
                    CardView cardView = (CardView) ViewBindings.a(view, R.id.item_card_preview);
                    if (cardView != null) {
                        i10 = R.id.item_count;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.item_count);
                        if (textView != null) {
                            i10 = R.id.item_preview_container;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.item_preview_container);
                            if (frameLayout != null) {
                                i10 = R.id.media_count;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.media_count);
                                if (textView2 != null) {
                                    i10 = R.id.media_preview;
                                    ThumbImageView thumbImageView2 = (ThumbImageView) ViewBindings.a(view, R.id.media_preview);
                                    if (thumbImageView2 != null) {
                                        i10 = R.id.pick_item;
                                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.pick_item);
                                        if (imageView != null) {
                                            i10 = R.id.pick_locating_progress;
                                            SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.pick_locating_progress);
                                            if (spinningView != null) {
                                                i10 = R.id.pick_location;
                                                ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.pick_location);
                                                if (imageView2 != null) {
                                                    i10 = R.id.pick_media;
                                                    ImageView imageView3 = (ImageView) ViewBindings.a(view, R.id.pick_media);
                                                    if (imageView3 != null) {
                                                        i10 = R.id.post_categories;
                                                        Button button = (Button) ViewBindings.a(view, R.id.post_categories);
                                                        if (button != null) {
                                                            i10 = R.id.title;
                                                            View viewA = ViewBindings.a(view, R.id.title);
                                                            if (viewA != null) {
                                                                return new PostMediaBarBinding((LinearLayout) view, backgroundPickerView, linearLayout, thumbImageView, cardView, textView, frameLayout, textView2, thumbImageView2, imageView, spinningView, imageView2, imageView3, button, viewA);
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
    public static PostMediaBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_media_bar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostMediaBarBinding(@NonNull LinearLayout linearLayout, @NonNull BackgroundPickerView backgroundPickerView, @NonNull LinearLayout linearLayout2, @NonNull ThumbImageView thumbImageView, @NonNull CardView cardView, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull TextView textView2, @NonNull ThumbImageView thumbImageView2, @NonNull ImageView imageView, @NonNull SpinningView spinningView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull Button button, @NonNull View view) {
        this.rootView = linearLayout;
        this.backgroundPicker = backgroundPickerView;
        this.fansOnlyLayout = linearLayout2;
        this.image = thumbImageView;
        this.itemCardPreview = cardView;
        this.itemCount = textView;
        this.itemPreviewContainer = frameLayout;
        this.mediaCount = textView2;
        this.mediaPreview = thumbImageView2;
        this.pickItem = imageView;
        this.pickLocatingProgress = spinningView;
        this.pickLocation = imageView2;
        this.pickMedia = imageView3;
        this.postCategories = button;
        this.title = view;
    }
}
