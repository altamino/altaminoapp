package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes5.dex */
public final class DeliveryTimeLayoutBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView check1;

    @NonNull
    public final FontAwesomeView check2;

    @NonNull
    public final RelativeLayout immediatelyLayout;

    @NonNull
    private final ScrollView rootView;

    @NonNull
    public final RelativeLayout scheduleLayout;

    @NonNull
    public final TextView time;

    @NonNull
    public static DeliveryTimeLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ScrollView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DeliveryTimeLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.check1;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, i10);
        if (fontAwesomeView != null) {
            i10 = R.id.check2;
            FontAwesomeView fontAwesomeView2 = (FontAwesomeView) ViewBindings.a(view, i10);
            if (fontAwesomeView2 != null) {
                i10 = R.id.immediately_layout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, i10);
                if (relativeLayout != null) {
                    i10 = R.id.schedule_layout;
                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.a(view, i10);
                    if (relativeLayout2 != null) {
                        i10 = R.id.time;
                        TextView textView = (TextView) ViewBindings.a(view, i10);
                        if (textView != null) {
                            return new DeliveryTimeLayoutBinding((ScrollView) view, fontAwesomeView, fontAwesomeView2, relativeLayout, relativeLayout2, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DeliveryTimeLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.delivery_time_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DeliveryTimeLayoutBinding(@NonNull ScrollView scrollView, @NonNull FontAwesomeView fontAwesomeView, @NonNull FontAwesomeView fontAwesomeView2, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView) {
        this.rootView = scrollView;
        this.check1 = fontAwesomeView;
        this.check2 = fontAwesomeView2;
        this.immediatelyLayout = relativeLayout;
        this.scheduleLayout = relativeLayout2;
        this.time = textView;
    }
}
