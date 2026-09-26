package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.CardView;
import com.narvii.widget.SecretImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class CatalogSubmissionDetailBinding implements ViewBinding {

    @NonNull
    public final Button addAsNew;

    @NonNull
    public final SecretImageView image1;

    @NonNull
    public final SecretImageView image2;

    @NonNull
    public final CardView itemCard1;

    @NonNull
    public final CardView itemCard2;

    @NonNull
    public final Button replace;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final Button showDiff;

    @NonNull
    public final View stub1;

    @NonNull
    public final TextView stub2;

    @NonNull
    public final TextView title1;

    @NonNull
    public final TextView title2;

    @NonNull
    public static CatalogSubmissionDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CatalogSubmissionDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.catalog_submission_detail, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CatalogSubmissionDetailBinding(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull SecretImageView secretImageView, @NonNull SecretImageView secretImageView2, @NonNull CardView cardView, @NonNull CardView cardView2, @NonNull Button button2, @NonNull Button button3, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = relativeLayout;
        this.addAsNew = button;
        this.image1 = secretImageView;
        this.image2 = secretImageView2;
        this.itemCard1 = cardView;
        this.itemCard2 = cardView2;
        this.replace = button2;
        this.showDiff = button3;
        this.stub1 = view;
        this.stub2 = textView;
        this.title1 = textView2;
        this.title2 = textView3;
    }

    @NonNull
    public static CatalogSubmissionDetailBinding bind(@NonNull View view) {
        int i10 = R.id.add_as_new;
        Button button = (Button) ViewBindings.a(view, R.id.add_as_new);
        if (button != null) {
            i10 = R.id.image_1;
            SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image_1);
            if (secretImageView != null) {
                i10 = R.id.image_2;
                SecretImageView secretImageView2 = (SecretImageView) ViewBindings.a(view, R.id.image_2);
                if (secretImageView2 != null) {
                    i10 = R.id.item_card1;
                    CardView cardView = (CardView) ViewBindings.a(view, R.id.item_card1);
                    if (cardView != null) {
                        i10 = R.id.item_card2;
                        CardView cardView2 = (CardView) ViewBindings.a(view, R.id.item_card2);
                        if (cardView2 != null) {
                            i10 = R.id.replace;
                            Button button2 = (Button) ViewBindings.a(view, R.id.replace);
                            if (button2 != null) {
                                i10 = R.id.show_diff;
                                Button button3 = (Button) ViewBindings.a(view, R.id.show_diff);
                                if (button3 != null) {
                                    i10 = R.id.stub1;
                                    View viewA = ViewBindings.a(view, R.id.stub1);
                                    if (viewA != null) {
                                        i10 = R.id.stub2;
                                        TextView textView = (TextView) ViewBindings.a(view, R.id.stub2);
                                        if (textView != null) {
                                            i10 = R.id.title_1;
                                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.title_1);
                                            if (textView2 != null) {
                                                i10 = R.id.title_2;
                                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.title_2);
                                                if (textView3 != null) {
                                                    return new CatalogSubmissionDetailBinding((RelativeLayout) view, button, secretImageView, secretImageView2, cardView, cardView2, button2, button3, viewA, textView, textView2, textView3);
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
