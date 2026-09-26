package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.item.property.ItemPropertyEditor;
import com.narvii.widget.FontAwesomeRatingBar;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemPropertyEditorBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView dragHandle;

    @NonNull
    public final TextView itemPropertyDate;

    @NonNull
    public final FrameLayout itemPropertyRating;

    @NonNull
    public final FontAwesomeRatingBar itemPropertyRatingCost;

    @NonNull
    public final FontAwesomeRatingBar itemPropertyRatingHeart;

    @NonNull
    public final FontAwesomeRatingBar itemPropertyRatingStar;

    @NonNull
    public final EditText itemPropertyText;

    @NonNull
    public final EditText itemPropertyTitle;

    @NonNull
    private final ItemPropertyEditor rootView;

    @NonNull
    public static ItemPropertyEditorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ItemPropertyEditor getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemPropertyEditorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_property_editor, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemPropertyEditorBinding(@NonNull ItemPropertyEditor itemPropertyEditor, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull FontAwesomeRatingBar fontAwesomeRatingBar, @NonNull FontAwesomeRatingBar fontAwesomeRatingBar2, @NonNull FontAwesomeRatingBar fontAwesomeRatingBar3, @NonNull EditText editText, @NonNull EditText editText2) {
        this.rootView = itemPropertyEditor;
        this.dragHandle = fontAwesomeView;
        this.itemPropertyDate = textView;
        this.itemPropertyRating = frameLayout;
        this.itemPropertyRatingCost = fontAwesomeRatingBar;
        this.itemPropertyRatingHeart = fontAwesomeRatingBar2;
        this.itemPropertyRatingStar = fontAwesomeRatingBar3;
        this.itemPropertyText = editText;
        this.itemPropertyTitle = editText2;
    }

    @NonNull
    public static ItemPropertyEditorBinding bind(@NonNull View view) {
        int i10 = R.id.drag_handle;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.drag_handle);
        if (fontAwesomeView != null) {
            i10 = R.id.item_property_date;
            TextView textView = (TextView) ViewBindings.a(view, R.id.item_property_date);
            if (textView != null) {
                i10 = R.id.item_property_rating;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.item_property_rating);
                if (frameLayout != null) {
                    i10 = R.id.item_property_rating_cost;
                    FontAwesomeRatingBar fontAwesomeRatingBar = (FontAwesomeRatingBar) ViewBindings.a(view, R.id.item_property_rating_cost);
                    if (fontAwesomeRatingBar != null) {
                        i10 = R.id.item_property_rating_heart;
                        FontAwesomeRatingBar fontAwesomeRatingBar2 = (FontAwesomeRatingBar) ViewBindings.a(view, R.id.item_property_rating_heart);
                        if (fontAwesomeRatingBar2 != null) {
                            i10 = R.id.item_property_rating_star;
                            FontAwesomeRatingBar fontAwesomeRatingBar3 = (FontAwesomeRatingBar) ViewBindings.a(view, R.id.item_property_rating_star);
                            if (fontAwesomeRatingBar3 != null) {
                                i10 = R.id.item_property_text;
                                EditText editText = (EditText) ViewBindings.a(view, R.id.item_property_text);
                                if (editText != null) {
                                    i10 = R.id.item_property_title;
                                    EditText editText2 = (EditText) ViewBindings.a(view, R.id.item_property_title);
                                    if (editText2 != null) {
                                        return new ItemPropertyEditorBinding((ItemPropertyEditor) view, fontAwesomeView, textView, frameLayout, fontAwesomeRatingBar, fontAwesomeRatingBar2, fontAwesomeRatingBar3, editText, editText2);
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
