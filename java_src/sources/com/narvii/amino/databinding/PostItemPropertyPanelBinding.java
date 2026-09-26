package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.DatePicker;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.item.property.ItemPropertyEditPanel;
import com.narvii.widget.FontAwesomeRatingBar;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes10.dex */
public final class PostItemPropertyPanelBinding implements ViewBinding {

    @NonNull
    public final ItemPropertyEditPanel postItemPropertyPanel;

    @NonNull
    public final DatePicker postItemPropertyPanelDate;

    @NonNull
    public final FrameLayout postItemPropertyPanelFrame;

    @NonNull
    public final FontAwesomeRatingBar postItemPropertyPanelRatingCost;

    @NonNull
    public final FontAwesomeRatingBar postItemPropertyPanelRatingHeart;

    @NonNull
    public final FontAwesomeRatingBar postItemPropertyPanelRatingStar;

    @NonNull
    public final FontAwesomeView postItemPropertySwitchCalendar;

    @NonNull
    public final FontAwesomeView postItemPropertySwitchKeyboard;

    @NonNull
    public final FontAwesomeView postItemPropertySwitchRatingCost;

    @NonNull
    public final FontAwesomeView postItemPropertySwitchRatingHeart;

    @NonNull
    public final FontAwesomeView postItemPropertySwitchRatingStar;

    @NonNull
    private final ItemPropertyEditPanel rootView;

    @NonNull
    public static PostItemPropertyPanelBinding bind(@NonNull View view) {
        ItemPropertyEditPanel itemPropertyEditPanel = (ItemPropertyEditPanel) view;
        int i10 = R.id.post_item_property_panel_date;
        DatePicker datePicker = (DatePicker) ViewBindings.a(view, R.id.post_item_property_panel_date);
        if (datePicker != null) {
            i10 = R.id.post_item_property_panel_frame;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.post_item_property_panel_frame);
            if (frameLayout != null) {
                i10 = R.id.post_item_property_panel_rating_cost;
                FontAwesomeRatingBar fontAwesomeRatingBar = (FontAwesomeRatingBar) ViewBindings.a(view, R.id.post_item_property_panel_rating_cost);
                if (fontAwesomeRatingBar != null) {
                    i10 = R.id.post_item_property_panel_rating_heart;
                    FontAwesomeRatingBar fontAwesomeRatingBar2 = (FontAwesomeRatingBar) ViewBindings.a(view, R.id.post_item_property_panel_rating_heart);
                    if (fontAwesomeRatingBar2 != null) {
                        i10 = R.id.post_item_property_panel_rating_star;
                        FontAwesomeRatingBar fontAwesomeRatingBar3 = (FontAwesomeRatingBar) ViewBindings.a(view, R.id.post_item_property_panel_rating_star);
                        if (fontAwesomeRatingBar3 != null) {
                            i10 = R.id.post_item_property_switch_calendar;
                            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.post_item_property_switch_calendar);
                            if (fontAwesomeView != null) {
                                i10 = R.id.post_item_property_switch_keyboard;
                                FontAwesomeView fontAwesomeView2 = (FontAwesomeView) ViewBindings.a(view, R.id.post_item_property_switch_keyboard);
                                if (fontAwesomeView2 != null) {
                                    i10 = R.id.post_item_property_switch_rating_cost;
                                    FontAwesomeView fontAwesomeView3 = (FontAwesomeView) ViewBindings.a(view, R.id.post_item_property_switch_rating_cost);
                                    if (fontAwesomeView3 != null) {
                                        i10 = R.id.post_item_property_switch_rating_heart;
                                        FontAwesomeView fontAwesomeView4 = (FontAwesomeView) ViewBindings.a(view, R.id.post_item_property_switch_rating_heart);
                                        if (fontAwesomeView4 != null) {
                                            i10 = R.id.post_item_property_switch_rating_star;
                                            FontAwesomeView fontAwesomeView5 = (FontAwesomeView) ViewBindings.a(view, R.id.post_item_property_switch_rating_star);
                                            if (fontAwesomeView5 != null) {
                                                return new PostItemPropertyPanelBinding(itemPropertyEditPanel, itemPropertyEditPanel, datePicker, frameLayout, fontAwesomeRatingBar, fontAwesomeRatingBar2, fontAwesomeRatingBar3, fontAwesomeView, fontAwesomeView2, fontAwesomeView3, fontAwesomeView4, fontAwesomeView5);
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
    public static PostItemPropertyPanelBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ItemPropertyEditPanel getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostItemPropertyPanelBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_item_property_panel, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostItemPropertyPanelBinding(@NonNull ItemPropertyEditPanel itemPropertyEditPanel, @NonNull ItemPropertyEditPanel itemPropertyEditPanel2, @NonNull DatePicker datePicker, @NonNull FrameLayout frameLayout, @NonNull FontAwesomeRatingBar fontAwesomeRatingBar, @NonNull FontAwesomeRatingBar fontAwesomeRatingBar2, @NonNull FontAwesomeRatingBar fontAwesomeRatingBar3, @NonNull FontAwesomeView fontAwesomeView, @NonNull FontAwesomeView fontAwesomeView2, @NonNull FontAwesomeView fontAwesomeView3, @NonNull FontAwesomeView fontAwesomeView4, @NonNull FontAwesomeView fontAwesomeView5) {
        this.rootView = itemPropertyEditPanel;
        this.postItemPropertyPanel = itemPropertyEditPanel2;
        this.postItemPropertyPanelDate = datePicker;
        this.postItemPropertyPanelFrame = frameLayout;
        this.postItemPropertyPanelRatingCost = fontAwesomeRatingBar;
        this.postItemPropertyPanelRatingHeart = fontAwesomeRatingBar2;
        this.postItemPropertyPanelRatingStar = fontAwesomeRatingBar3;
        this.postItemPropertySwitchCalendar = fontAwesomeView;
        this.postItemPropertySwitchKeyboard = fontAwesomeView2;
        this.postItemPropertySwitchRatingCost = fontAwesomeView3;
        this.postItemPropertySwitchRatingHeart = fontAwesomeView4;
        this.postItemPropertySwitchRatingStar = fontAwesomeView5;
    }
}
