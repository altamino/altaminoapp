package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.item.post.DragSortParentLayout;
import com.narvii.item.property.ItemPropertyEditList;
import com.narvii.widget.AddressView;
import com.narvii.widget.BackgroundPickerView;
import com.narvii.widget.CardView;
import com.narvii.widget.EditTextIMG;
import com.narvii.widget.TagEditText;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class PostItemLayoutBinding implements ViewBinding {

    @NonNull
    public final AddressView address;

    @NonNull
    public final BackgroundPickerView backgroundPicker;

    @NonNull
    public final EditTextIMG content;

    @NonNull
    public final LinearLayout frame;

    @NonNull
    public final TextView hint1;

    @NonNull
    public final TextView hint2;

    @NonNull
    public final ThumbImageView image1;

    @NonNull
    public final ThumbImageView image2;

    @NonNull
    public final ThumbImageView image3;

    @NonNull
    public final ThumbImageView image4;

    @NonNull
    public final ThumbImageView imageLink;

    @NonNull
    public final ThumbImageView imageLink2;

    @NonNull
    public final ThumbImageView imageLink3;

    @NonNull
    public final ThumbImageView imageLink4;

    @NonNull
    public final ThumbImageView itemCardImage;

    @NonNull
    public final CardView itemCardPreview;

    @NonNull
    public final androidx.cardview.widget.CardView itemCardPreviewEmpty;

    @NonNull
    public final TextView itemCardTitle;

    @NonNull
    public final EditText label;

    @NonNull
    public final LinearLayout postAddLink;

    @NonNull
    public final LinearLayout postAddLocation;

    @NonNull
    public final LinearLayout postAddPhoto;

    @NonNull
    public final LinearLayout postCategories;

    @NonNull
    public final TextView postCategoriesHeader;

    @NonNull
    public final TextView postCategoriesOp;

    @NonNull
    public final LinearLayout postEditLink;

    @NonNull
    public final LinearLayout postEditLocation;

    @NonNull
    public final LinearLayout postEditPhoto;

    @NonNull
    public final PostEmbedImageHintBinding postEmbedImageHint;

    @NonNull
    public final LinearLayout postFansOnly;

    @NonNull
    public final LinearLayout postItemHeader;

    @NonNull
    public final TagEditText postItemKeywords;

    @NonNull
    public final ImageView postItemPropertyAdd;

    @NonNull
    public final ItemPropertyEditList postItemPropertyList;

    @NonNull
    public final LinearLayout postLocating;

    @NonNull
    public final LinearLayout postOptions;

    @NonNull
    public final DragSortParentLayout root;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final View titleLink;

    @NonNull
    public final View titleLink2;

    @NonNull
    public final View titleLink3;

    @NonNull
    public final View titleLink4;

    private PostItemLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull AddressView addressView, @NonNull BackgroundPickerView backgroundPickerView, @NonNull EditTextIMG editTextIMG, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ThumbImageView thumbImageView, @NonNull ThumbImageView thumbImageView2, @NonNull ThumbImageView thumbImageView3, @NonNull ThumbImageView thumbImageView4, @NonNull ThumbImageView thumbImageView5, @NonNull ThumbImageView thumbImageView6, @NonNull ThumbImageView thumbImageView7, @NonNull ThumbImageView thumbImageView8, @NonNull ThumbImageView thumbImageView9, @NonNull CardView cardView, @NonNull androidx.cardview.widget.CardView cardView2, @NonNull TextView textView3, @NonNull EditText editText, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull LinearLayout linearLayout7, @NonNull LinearLayout linearLayout8, @NonNull LinearLayout linearLayout9, @NonNull PostEmbedImageHintBinding postEmbedImageHintBinding, @NonNull LinearLayout linearLayout10, @NonNull LinearLayout linearLayout11, @NonNull TagEditText tagEditText, @NonNull ImageView imageView, @NonNull ItemPropertyEditList itemPropertyEditList, @NonNull LinearLayout linearLayout12, @NonNull LinearLayout linearLayout13, @NonNull DragSortParentLayout dragSortParentLayout, @NonNull View view, @NonNull View view2, @NonNull View view3, @NonNull View view4) {
        this.rootView = linearLayout;
        this.address = addressView;
        this.backgroundPicker = backgroundPickerView;
        this.content = editTextIMG;
        this.frame = linearLayout2;
        this.hint1 = textView;
        this.hint2 = textView2;
        this.image1 = thumbImageView;
        this.image2 = thumbImageView2;
        this.image3 = thumbImageView3;
        this.image4 = thumbImageView4;
        this.imageLink = thumbImageView5;
        this.imageLink2 = thumbImageView6;
        this.imageLink3 = thumbImageView7;
        this.imageLink4 = thumbImageView8;
        this.itemCardImage = thumbImageView9;
        this.itemCardPreview = cardView;
        this.itemCardPreviewEmpty = cardView2;
        this.itemCardTitle = textView3;
        this.label = editText;
        this.postAddLink = linearLayout3;
        this.postAddLocation = linearLayout4;
        this.postAddPhoto = linearLayout5;
        this.postCategories = linearLayout6;
        this.postCategoriesHeader = textView4;
        this.postCategoriesOp = textView5;
        this.postEditLink = linearLayout7;
        this.postEditLocation = linearLayout8;
        this.postEditPhoto = linearLayout9;
        this.postEmbedImageHint = postEmbedImageHintBinding;
        this.postFansOnly = linearLayout10;
        this.postItemHeader = linearLayout11;
        this.postItemKeywords = tagEditText;
        this.postItemPropertyAdd = imageView;
        this.postItemPropertyList = itemPropertyEditList;
        this.postLocating = linearLayout12;
        this.postOptions = linearLayout13;
        this.root = dragSortParentLayout;
        this.titleLink = view;
        this.titleLink2 = view2;
        this.titleLink3 = view3;
        this.titleLink4 = view4;
    }

    @NonNull
    public static PostItemLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostItemLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.address;
        AddressView addressView = (AddressView) ViewBindings.a(view, R.id.address);
        if (addressView != null) {
            i10 = R.id.background_picker;
            BackgroundPickerView backgroundPickerView = (BackgroundPickerView) ViewBindings.a(view, R.id.background_picker);
            if (backgroundPickerView != null) {
                i10 = R.id.content;
                EditTextIMG editTextIMG = (EditTextIMG) ViewBindings.a(view, R.id.content);
                if (editTextIMG != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i10 = R.id.hint_1;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.hint_1);
                    if (textView != null) {
                        i10 = R.id.hint_2;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.hint_2);
                        if (textView2 != null) {
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
                                            i10 = R.id.image_link;
                                            ThumbImageView thumbImageView5 = (ThumbImageView) ViewBindings.a(view, R.id.image_link);
                                            if (thumbImageView5 != null) {
                                                i10 = R.id.image_link_2;
                                                ThumbImageView thumbImageView6 = (ThumbImageView) ViewBindings.a(view, R.id.image_link_2);
                                                if (thumbImageView6 != null) {
                                                    i10 = R.id.image_link_3;
                                                    ThumbImageView thumbImageView7 = (ThumbImageView) ViewBindings.a(view, R.id.image_link_3);
                                                    if (thumbImageView7 != null) {
                                                        i10 = R.id.image_link_4;
                                                        ThumbImageView thumbImageView8 = (ThumbImageView) ViewBindings.a(view, R.id.image_link_4);
                                                        if (thumbImageView8 != null) {
                                                            i10 = R.id.item_card_image;
                                                            ThumbImageView thumbImageView9 = (ThumbImageView) ViewBindings.a(view, R.id.item_card_image);
                                                            if (thumbImageView9 != null) {
                                                                i10 = R.id.item_card_preview;
                                                                CardView cardView = (CardView) ViewBindings.a(view, R.id.item_card_preview);
                                                                if (cardView != null) {
                                                                    i10 = R.id.item_card_preview_empty;
                                                                    androidx.cardview.widget.CardView cardView2 = (androidx.cardview.widget.CardView) ViewBindings.a(view, R.id.item_card_preview_empty);
                                                                    if (cardView2 != null) {
                                                                        i10 = R.id.item_card_title;
                                                                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.item_card_title);
                                                                        if (textView3 != null) {
                                                                            i10 = R.id.label;
                                                                            EditText editText = (EditText) ViewBindings.a(view, R.id.label);
                                                                            if (editText != null) {
                                                                                i10 = R.id.post_add_link;
                                                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.post_add_link);
                                                                                if (linearLayout2 != null) {
                                                                                    i10 = R.id.post_add_location;
                                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.post_add_location);
                                                                                    if (linearLayout3 != null) {
                                                                                        i10 = R.id.post_add_photo;
                                                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.post_add_photo);
                                                                                        if (linearLayout4 != null) {
                                                                                            i10 = R.id.post_categories;
                                                                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.a(view, R.id.post_categories);
                                                                                            if (linearLayout5 != null) {
                                                                                                i10 = R.id.post_categories_header;
                                                                                                TextView textView4 = (TextView) ViewBindings.a(view, R.id.post_categories_header);
                                                                                                if (textView4 != null) {
                                                                                                    i10 = R.id.post_categories_op;
                                                                                                    TextView textView5 = (TextView) ViewBindings.a(view, R.id.post_categories_op);
                                                                                                    if (textView5 != null) {
                                                                                                        i10 = R.id.post_edit_link;
                                                                                                        LinearLayout linearLayout6 = (LinearLayout) ViewBindings.a(view, R.id.post_edit_link);
                                                                                                        if (linearLayout6 != null) {
                                                                                                            i10 = R.id.post_edit_location;
                                                                                                            LinearLayout linearLayout7 = (LinearLayout) ViewBindings.a(view, R.id.post_edit_location);
                                                                                                            if (linearLayout7 != null) {
                                                                                                                i10 = R.id.post_edit_photo;
                                                                                                                LinearLayout linearLayout8 = (LinearLayout) ViewBindings.a(view, R.id.post_edit_photo);
                                                                                                                if (linearLayout8 != null) {
                                                                                                                    i10 = R.id.post_embed_image_hint;
                                                                                                                    View viewA = ViewBindings.a(view, R.id.post_embed_image_hint);
                                                                                                                    if (viewA != null) {
                                                                                                                        PostEmbedImageHintBinding postEmbedImageHintBindingBind = PostEmbedImageHintBinding.bind(viewA);
                                                                                                                        i10 = R.id.post_fans_only;
                                                                                                                        LinearLayout linearLayout9 = (LinearLayout) ViewBindings.a(view, R.id.post_fans_only);
                                                                                                                        if (linearLayout9 != null) {
                                                                                                                            i10 = R.id.post_item_header;
                                                                                                                            LinearLayout linearLayout10 = (LinearLayout) ViewBindings.a(view, R.id.post_item_header);
                                                                                                                            if (linearLayout10 != null) {
                                                                                                                                i10 = R.id.post_item_keywords;
                                                                                                                                TagEditText tagEditText = (TagEditText) ViewBindings.a(view, R.id.post_item_keywords);
                                                                                                                                if (tagEditText != null) {
                                                                                                                                    i10 = R.id.post_item_property_add;
                                                                                                                                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.post_item_property_add);
                                                                                                                                    if (imageView != null) {
                                                                                                                                        i10 = R.id.post_item_property_list;
                                                                                                                                        ItemPropertyEditList itemPropertyEditList = (ItemPropertyEditList) ViewBindings.a(view, R.id.post_item_property_list);
                                                                                                                                        if (itemPropertyEditList != null) {
                                                                                                                                            i10 = R.id.post_locating;
                                                                                                                                            LinearLayout linearLayout11 = (LinearLayout) ViewBindings.a(view, R.id.post_locating);
                                                                                                                                            if (linearLayout11 != null) {
                                                                                                                                                i10 = R.id.post_options;
                                                                                                                                                LinearLayout linearLayout12 = (LinearLayout) ViewBindings.a(view, R.id.post_options);
                                                                                                                                                if (linearLayout12 != null) {
                                                                                                                                                    i10 = R.id.root;
                                                                                                                                                    DragSortParentLayout dragSortParentLayout = (DragSortParentLayout) ViewBindings.a(view, R.id.root);
                                                                                                                                                    if (dragSortParentLayout != null) {
                                                                                                                                                        i10 = R.id.title_link;
                                                                                                                                                        View viewA2 = ViewBindings.a(view, R.id.title_link);
                                                                                                                                                        if (viewA2 != null) {
                                                                                                                                                            i10 = R.id.title_link_2;
                                                                                                                                                            View viewA3 = ViewBindings.a(view, R.id.title_link_2);
                                                                                                                                                            if (viewA3 != null) {
                                                                                                                                                                i10 = R.id.title_link_3;
                                                                                                                                                                View viewA4 = ViewBindings.a(view, R.id.title_link_3);
                                                                                                                                                                if (viewA4 != null) {
                                                                                                                                                                    i10 = R.id.title_link_4;
                                                                                                                                                                    View viewA5 = ViewBindings.a(view, R.id.title_link_4);
                                                                                                                                                                    if (viewA5 != null) {
                                                                                                                                                                        return new PostItemLayoutBinding(linearLayout, addressView, backgroundPickerView, editTextIMG, linearLayout, textView, textView2, thumbImageView, thumbImageView2, thumbImageView3, thumbImageView4, thumbImageView5, thumbImageView6, thumbImageView7, thumbImageView8, thumbImageView9, cardView, cardView2, textView3, editText, linearLayout2, linearLayout3, linearLayout4, linearLayout5, textView4, textView5, linearLayout6, linearLayout7, linearLayout8, postEmbedImageHintBindingBind, linearLayout9, linearLayout10, tagEditText, imageView, itemPropertyEditList, linearLayout11, linearLayout12, dragSortParentLayout, viewA2, viewA3, viewA4, viewA5);
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
    public static PostItemLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_item_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
