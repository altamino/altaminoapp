package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.poll.PollDurationView;
import com.narvii.widget.AddressView;
import com.narvii.widget.BackgroundPickerView;
import com.narvii.widget.EditTextIMG;
import com.narvii.widget.KeywordsView;
import com.narvii.widget.NVScrollView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes.dex */
public final class PostTopicLayoutBinding implements ViewBinding {

    @NonNull
    public final AddressView address;

    @NonNull
    public final BackgroundPickerView backgroundPicker;

    @NonNull
    public final EditTextIMG content;

    @NonNull
    public final TextView hintPostEdit;

    @NonNull
    public final TextView hintPostEditLink;

    @NonNull
    public final ThumbImageView image1;

    @NonNull
    public final ThumbImageView image2;

    @NonNull
    public final ThumbImageView image3;

    @NonNull
    public final ThumbImageView image4;

    @NonNull
    public final ThumbImageView image5;

    @NonNull
    public final ThumbImageView image6;

    @NonNull
    public final ThumbImageView image7;

    @NonNull
    public final ThumbImageView image8;

    @NonNull
    public final LinearLayout postAddLink;

    @NonNull
    public final LinearLayout postAddLocation;

    @NonNull
    public final LinearLayout postAddPhoto;

    @NonNull
    public final KeywordsView postCategories;

    @NonNull
    public final TextView postCategoriesSelect;

    @NonNull
    public final LinearLayout postCategory;

    @NonNull
    public final LinearLayout postEditLink;

    @NonNull
    public final LinearLayout postEditLocation;

    @NonNull
    public final LinearLayout postEditPhoto;

    @NonNull
    public final LinearLayout postEditPollAllowJoin;

    @NonNull
    public final CheckBox postEditPollAllowJoinSwitch;

    @NonNull
    public final LinearLayout postEditPollDuration;

    @NonNull
    public final TextView postEditPollDurationDays;

    @NonNull
    public final TextView postEditPollDurationHint;

    @NonNull
    public final PostEmbedImageHintBinding postEmbedImageHint;

    @NonNull
    public final LinearLayout postFansOnly;

    @NonNull
    public final LinearLayout postLocating;

    @NonNull
    public final PollDurationView postPollEndtime;

    @NonNull
    public final TextView postPollHeader;

    @NonNull
    public final TextView postQuizHeader;

    @NonNull
    public final TextView postQuizHeaderSubtitle;

    @NonNull
    public final LinearLayout root;

    @NonNull
    private final ConstraintLayout rootView;

    @NonNull
    public final NVScrollView scroll;

    @NonNull
    public final EditText title;

    @NonNull
    public final View title8;

    @NonNull
    public final View titleView5;

    @NonNull
    public final View titleView6;

    @NonNull
    public final View titleView7;

    private PostTopicLayoutBinding(@NonNull ConstraintLayout constraintLayout, @NonNull AddressView addressView, @NonNull BackgroundPickerView backgroundPickerView, @NonNull EditTextIMG editTextIMG, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ThumbImageView thumbImageView, @NonNull ThumbImageView thumbImageView2, @NonNull ThumbImageView thumbImageView3, @NonNull ThumbImageView thumbImageView4, @NonNull ThumbImageView thumbImageView5, @NonNull ThumbImageView thumbImageView6, @NonNull ThumbImageView thumbImageView7, @NonNull ThumbImageView thumbImageView8, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull KeywordsView keywordsView, @NonNull TextView textView3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7, @NonNull LinearLayout linearLayout8, @NonNull CheckBox checkBox, @NonNull LinearLayout linearLayout9, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull PostEmbedImageHintBinding postEmbedImageHintBinding, @NonNull LinearLayout linearLayout10, @NonNull LinearLayout linearLayout11, @NonNull PollDurationView pollDurationView, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull LinearLayout linearLayout12, @NonNull NVScrollView nVScrollView, @NonNull EditText editText, @NonNull View view, @NonNull View view2, @NonNull View view3, @NonNull View view4) {
        this.rootView = constraintLayout;
        this.address = addressView;
        this.backgroundPicker = backgroundPickerView;
        this.content = editTextIMG;
        this.hintPostEdit = textView;
        this.hintPostEditLink = textView2;
        this.image1 = thumbImageView;
        this.image2 = thumbImageView2;
        this.image3 = thumbImageView3;
        this.image4 = thumbImageView4;
        this.image5 = thumbImageView5;
        this.image6 = thumbImageView6;
        this.image7 = thumbImageView7;
        this.image8 = thumbImageView8;
        this.postAddLink = linearLayout;
        this.postAddLocation = linearLayout2;
        this.postAddPhoto = linearLayout3;
        this.postCategories = keywordsView;
        this.postCategoriesSelect = textView3;
        this.postCategory = linearLayout4;
        this.postEditLink = linearLayout5;
        this.postEditLocation = linearLayout6;
        this.postEditPhoto = linearLayout7;
        this.postEditPollAllowJoin = linearLayout8;
        this.postEditPollAllowJoinSwitch = checkBox;
        this.postEditPollDuration = linearLayout9;
        this.postEditPollDurationDays = textView4;
        this.postEditPollDurationHint = textView5;
        this.postEmbedImageHint = postEmbedImageHintBinding;
        this.postFansOnly = linearLayout10;
        this.postLocating = linearLayout11;
        this.postPollEndtime = pollDurationView;
        this.postPollHeader = textView6;
        this.postQuizHeader = textView7;
        this.postQuizHeaderSubtitle = textView8;
        this.root = linearLayout12;
        this.scroll = nVScrollView;
        this.title = editText;
        this.title8 = view;
        this.titleView5 = view2;
        this.titleView6 = view3;
        this.titleView7 = view4;
    }

    @NonNull
    public static PostTopicLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostTopicLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.address;
        AddressView addressView = (AddressView) ViewBindings.a(view, R.id.address);
        if (addressView != null) {
            i10 = R.id.background_picker;
            BackgroundPickerView backgroundPickerView = (BackgroundPickerView) ViewBindings.a(view, R.id.background_picker);
            if (backgroundPickerView != null) {
                i10 = R.id.content;
                EditTextIMG editTextIMG = (EditTextIMG) ViewBindings.a(view, R.id.content);
                if (editTextIMG != null) {
                    i10 = R.id.hint_post_edit;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.hint_post_edit);
                    if (textView != null) {
                        i10 = R.id.hint_post_edit_link;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.hint_post_edit_link);
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
                                            i10 = R.id.image_5;
                                            ThumbImageView thumbImageView5 = (ThumbImageView) ViewBindings.a(view, R.id.image_5);
                                            if (thumbImageView5 != null) {
                                                i10 = R.id.image_6;
                                                ThumbImageView thumbImageView6 = (ThumbImageView) ViewBindings.a(view, R.id.image_6);
                                                if (thumbImageView6 != null) {
                                                    i10 = R.id.image_7;
                                                    ThumbImageView thumbImageView7 = (ThumbImageView) ViewBindings.a(view, R.id.image_7);
                                                    if (thumbImageView7 != null) {
                                                        i10 = R.id.image_8;
                                                        ThumbImageView thumbImageView8 = (ThumbImageView) ViewBindings.a(view, R.id.image_8);
                                                        if (thumbImageView8 != null) {
                                                            i10 = R.id.post_add_link;
                                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.post_add_link);
                                                            if (linearLayout != null) {
                                                                i10 = R.id.post_add_location;
                                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.post_add_location);
                                                                if (linearLayout2 != null) {
                                                                    i10 = R.id.post_add_photo;
                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.post_add_photo);
                                                                    if (linearLayout3 != null) {
                                                                        i10 = R.id.post_categories;
                                                                        KeywordsView keywordsView = (KeywordsView) ViewBindings.a(view, R.id.post_categories);
                                                                        if (keywordsView != null) {
                                                                            i10 = R.id.post_categories_select;
                                                                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.post_categories_select);
                                                                            if (textView3 != null) {
                                                                                i10 = R.id.post_category;
                                                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.post_category);
                                                                                if (linearLayout4 != null) {
                                                                                    i10 = R.id.post_edit_link;
                                                                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.a(view, R.id.post_edit_link);
                                                                                    if (linearLayout5 != null) {
                                                                                        i10 = R.id.post_edit_location;
                                                                                        LinearLayout linearLayout6 = (LinearLayout) ViewBindings.a(view, R.id.post_edit_location);
                                                                                        if (linearLayout6 != null) {
                                                                                            i10 = R.id.post_edit_photo;
                                                                                            LinearLayout linearLayout7 = (LinearLayout) ViewBindings.a(view, R.id.post_edit_photo);
                                                                                            if (linearLayout7 != null) {
                                                                                                i10 = R.id.post_edit_poll_allow_join;
                                                                                                LinearLayout linearLayout8 = (LinearLayout) ViewBindings.a(view, R.id.post_edit_poll_allow_join);
                                                                                                if (linearLayout8 != null) {
                                                                                                    i10 = R.id.post_edit_poll_allow_join_switch;
                                                                                                    CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.post_edit_poll_allow_join_switch);
                                                                                                    if (checkBox != null) {
                                                                                                        i10 = R.id.post_edit_poll_duration;
                                                                                                        LinearLayout linearLayout9 = (LinearLayout) ViewBindings.a(view, R.id.post_edit_poll_duration);
                                                                                                        if (linearLayout9 != null) {
                                                                                                            i10 = R.id.post_edit_poll_duration_days;
                                                                                                            TextView textView4 = (TextView) ViewBindings.a(view, R.id.post_edit_poll_duration_days);
                                                                                                            if (textView4 != null) {
                                                                                                                i10 = R.id.post_edit_poll_duration_hint;
                                                                                                                TextView textView5 = (TextView) ViewBindings.a(view, R.id.post_edit_poll_duration_hint);
                                                                                                                if (textView5 != null) {
                                                                                                                    i10 = R.id.post_embed_image_hint;
                                                                                                                    View viewA = ViewBindings.a(view, R.id.post_embed_image_hint);
                                                                                                                    if (viewA != null) {
                                                                                                                        PostEmbedImageHintBinding postEmbedImageHintBindingBind = PostEmbedImageHintBinding.bind(viewA);
                                                                                                                        i10 = R.id.post_fans_only;
                                                                                                                        LinearLayout linearLayout10 = (LinearLayout) ViewBindings.a(view, R.id.post_fans_only);
                                                                                                                        if (linearLayout10 != null) {
                                                                                                                            i10 = R.id.post_locating;
                                                                                                                            LinearLayout linearLayout11 = (LinearLayout) ViewBindings.a(view, R.id.post_locating);
                                                                                                                            if (linearLayout11 != null) {
                                                                                                                                i10 = R.id.post_poll_endtime;
                                                                                                                                PollDurationView pollDurationView = (PollDurationView) ViewBindings.a(view, R.id.post_poll_endtime);
                                                                                                                                if (pollDurationView != null) {
                                                                                                                                    i10 = R.id.post_poll_header;
                                                                                                                                    TextView textView6 = (TextView) ViewBindings.a(view, R.id.post_poll_header);
                                                                                                                                    if (textView6 != null) {
                                                                                                                                        i10 = R.id.post_quiz_header;
                                                                                                                                        TextView textView7 = (TextView) ViewBindings.a(view, R.id.post_quiz_header);
                                                                                                                                        if (textView7 != null) {
                                                                                                                                            i10 = R.id.post_quiz_header_subtitle;
                                                                                                                                            TextView textView8 = (TextView) ViewBindings.a(view, R.id.post_quiz_header_subtitle);
                                                                                                                                            if (textView8 != null) {
                                                                                                                                                i10 = R.id.root;
                                                                                                                                                LinearLayout linearLayout12 = (LinearLayout) ViewBindings.a(view, R.id.root);
                                                                                                                                                if (linearLayout12 != null) {
                                                                                                                                                    i10 = R.id.scroll;
                                                                                                                                                    NVScrollView nVScrollView = (NVScrollView) ViewBindings.a(view, R.id.scroll);
                                                                                                                                                    if (nVScrollView != null) {
                                                                                                                                                        i10 = R.id.title;
                                                                                                                                                        EditText editText = (EditText) ViewBindings.a(view, R.id.title);
                                                                                                                                                        if (editText != null) {
                                                                                                                                                            i10 = R.id.title_8;
                                                                                                                                                            View viewA2 = ViewBindings.a(view, R.id.title_8);
                                                                                                                                                            if (viewA2 != null) {
                                                                                                                                                                i10 = R.id.title_view_5;
                                                                                                                                                                View viewA3 = ViewBindings.a(view, R.id.title_view_5);
                                                                                                                                                                if (viewA3 != null) {
                                                                                                                                                                    i10 = R.id.title_view_6;
                                                                                                                                                                    View viewA4 = ViewBindings.a(view, R.id.title_view_6);
                                                                                                                                                                    if (viewA4 != null) {
                                                                                                                                                                        i10 = R.id.title_view_7;
                                                                                                                                                                        View viewA5 = ViewBindings.a(view, R.id.title_view_7);
                                                                                                                                                                        if (viewA5 != null) {
                                                                                                                                                                            return new PostTopicLayoutBinding((ConstraintLayout) view, addressView, backgroundPickerView, editTextIMG, textView, textView2, thumbImageView, thumbImageView2, thumbImageView3, thumbImageView4, thumbImageView5, thumbImageView6, thumbImageView7, thumbImageView8, linearLayout, linearLayout2, linearLayout3, keywordsView, textView3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, linearLayout8, checkBox, linearLayout9, textView4, textView5, postEmbedImageHintBindingBind, linearLayout10, linearLayout11, pollDurationView, textView6, textView7, textView8, linearLayout12, nVScrollView, editText, viewA2, viewA3, viewA4, viewA5);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static PostTopicLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_topic_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
