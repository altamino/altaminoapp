package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.CardView;
import com.narvii.widget.SecretImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class CatalogCategoryItemBinding implements ViewBinding {

    @NonNull
    public final SecretImageView image1;

    @NonNull
    public final SecretImageView image2;

    @NonNull
    public final SecretImageView image3;

    @NonNull
    public final CardView itemCard1;

    @NonNull
    public final CardView itemCard2;

    @NonNull
    public final CardView itemCard3;

    @NonNull
    public final TextView label;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public final TextView title1;

    @NonNull
    public final TextView title2;

    @NonNull
    public final TextView title3;

    @NonNull
    public static CatalogCategoryItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CatalogCategoryItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.catalog_category_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CatalogCategoryItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull SecretImageView secretImageView, @NonNull SecretImageView secretImageView2, @NonNull SecretImageView secretImageView3, @NonNull CardView cardView, @NonNull CardView cardView2, @NonNull CardView cardView3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.rootView = relativeLayout;
        this.image1 = secretImageView;
        this.image2 = secretImageView2;
        this.image3 = secretImageView3;
        this.itemCard1 = cardView;
        this.itemCard2 = cardView2;
        this.itemCard3 = cardView3;
        this.label = textView;
        this.text = textView2;
        this.title1 = textView3;
        this.title2 = textView4;
        this.title3 = textView5;
    }

    @NonNull
    public static CatalogCategoryItemBinding bind(@NonNull View view) {
        int i10 = R.id.image_1;
        SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image_1);
        if (secretImageView != null) {
            i10 = R.id.image_2;
            SecretImageView secretImageView2 = (SecretImageView) ViewBindings.a(view, R.id.image_2);
            if (secretImageView2 != null) {
                i10 = R.id.image_3;
                SecretImageView secretImageView3 = (SecretImageView) ViewBindings.a(view, R.id.image_3);
                if (secretImageView3 != null) {
                    i10 = R.id.item_card1;
                    CardView cardView = (CardView) ViewBindings.a(view, R.id.item_card1);
                    if (cardView != null) {
                        i10 = R.id.item_card2;
                        CardView cardView2 = (CardView) ViewBindings.a(view, R.id.item_card2);
                        if (cardView2 != null) {
                            i10 = R.id.item_card3;
                            CardView cardView3 = (CardView) ViewBindings.a(view, R.id.item_card3);
                            if (cardView3 != null) {
                                i10 = R.id.label;
                                TextView textView = (TextView) ViewBindings.a(view, R.id.label);
                                if (textView != null) {
                                    i10 = R.id.text;
                                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.text);
                                    if (textView2 != null) {
                                        i10 = R.id.title_1;
                                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.title_1);
                                        if (textView3 != null) {
                                            i10 = R.id.title_2;
                                            TextView textView4 = (TextView) ViewBindings.a(view, R.id.title_2);
                                            if (textView4 != null) {
                                                i10 = R.id.title_3;
                                                TextView textView5 = (TextView) ViewBindings.a(view, R.id.title_3);
                                                if (textView5 != null) {
                                                    return new CatalogCategoryItemBinding((RelativeLayout) view, secretImageView, secretImageView2, secretImageView3, cardView, cardView2, cardView3, textView, textView2, textView3, textView4, textView5);
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
