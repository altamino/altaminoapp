package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemFanClubHeaderBinding implements ViewBinding {

    @NonNull
    public final TextView checkDetail;

    @NonNull
    public final TextView expiring;

    @NonNull
    public final ImageView fanClubIcon;

    @NonNull
    public final TextView fansSince;

    @NonNull
    public final TextView renew;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemFanClubHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemFanClubHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_fan_club_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemFanClubHeaderBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.rootView = linearLayout;
        this.checkDetail = textView;
        this.expiring = textView2;
        this.fanClubIcon = imageView;
        this.fansSince = textView3;
        this.renew = textView4;
        this.title = textView5;
    }

    @NonNull
    public static ItemFanClubHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.check_detail;
        TextView textView = (TextView) ViewBindings.a(view, R.id.check_detail);
        if (textView != null) {
            i10 = R.id.expiring;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.expiring);
            if (textView2 != null) {
                i10 = R.id.fan_club_icon;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.fan_club_icon);
                if (imageView != null) {
                    i10 = R.id.fans_since;
                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.fans_since);
                    if (textView3 != null) {
                        i10 = R.id.renew;
                        TextView textView4 = (TextView) ViewBindings.a(view, R.id.renew);
                        if (textView4 != null) {
                            i10 = R.id.title;
                            TextView textView5 = (TextView) ViewBindings.a(view, R.id.title);
                            if (textView5 != null) {
                                return new ItemFanClubHeaderBinding((LinearLayout) view, textView, textView2, imageView, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
