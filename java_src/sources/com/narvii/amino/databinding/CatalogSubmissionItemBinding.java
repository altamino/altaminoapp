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
import com.narvii.amino.master.R;
import com.narvii.widget.CardView;
import com.narvii.widget.ExpandTextView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SecretImageView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class CatalogSubmissionItemBinding implements ViewBinding {

    @NonNull
    public final Button approve;

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final TextView datetime;

    @NonNull
    public final FrameLayout expand;

    @NonNull
    public final SecretImageView image;

    @NonNull
    public final CardView itemCard;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final Button reject;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final View stub1;

    @NonNull
    public final TextView submissionStatus;

    @NonNull
    public final ExpandTextView text;

    @NonNull
    public final TextView title;

    @NonNull
    public static CatalogSubmissionItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CatalogSubmissionItemBinding bind(@NonNull View view) {
        int i10 = R.id.approve;
        Button button = (Button) ViewBindings.a(view, R.id.approve);
        if (button != null) {
            i10 = R.id.avatar;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.avatar);
            if (thumbImageView != null) {
                i10 = R.id.datetime;
                TextView textView = (TextView) ViewBindings.a(view, R.id.datetime);
                if (textView != null) {
                    i10 = R.id.expand;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.expand);
                    if (frameLayout != null) {
                        i10 = R.id.image;
                        SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image);
                        if (secretImageView != null) {
                            i10 = R.id.item_card;
                            CardView cardView = (CardView) ViewBindings.a(view, R.id.item_card);
                            if (cardView != null) {
                                i10 = R.id.nickname;
                                NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                                if (nicknameView != null) {
                                    i10 = R.id.reject;
                                    Button button2 = (Button) ViewBindings.a(view, R.id.reject);
                                    if (button2 != null) {
                                        i10 = R.id.stub1;
                                        View viewA = ViewBindings.a(view, R.id.stub1);
                                        if (viewA != null) {
                                            i10 = R.id.submission_status;
                                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.submission_status);
                                            if (textView2 != null) {
                                                i10 = R.id.text;
                                                ExpandTextView expandTextView = (ExpandTextView) ViewBindings.a(view, R.id.text);
                                                if (expandTextView != null) {
                                                    i10 = R.id.title;
                                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.title);
                                                    if (textView3 != null) {
                                                        return new CatalogSubmissionItemBinding((LinearLayout) view, button, thumbImageView, textView, frameLayout, secretImageView, cardView, nicknameView, button2, viewA, textView2, expandTextView, textView3);
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
    public static CatalogSubmissionItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.catalog_submission_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CatalogSubmissionItemBinding(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull SecretImageView secretImageView, @NonNull CardView cardView, @NonNull NicknameView nicknameView, @NonNull Button button2, @NonNull View view, @NonNull TextView textView2, @NonNull ExpandTextView expandTextView, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.approve = button;
        this.avatar = thumbImageView;
        this.datetime = textView;
        this.expand = frameLayout;
        this.image = secretImageView;
        this.itemCard = cardView;
        this.nickname = nicknameView;
        this.reject = button2;
        this.stub1 = view;
        this.submissionStatus = textView2;
        this.text = expandTextView;
        this.title = textView3;
    }
}
