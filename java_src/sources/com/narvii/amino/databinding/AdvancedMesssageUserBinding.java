package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes5.dex */
public final class AdvancedMesssageUserBinding implements ViewBinding {

    @NonNull
    public final Button btnDone;

    @NonNull
    public final Button btnMessageUser;

    @NonNull
    public final Button btnStrikeUser;

    @NonNull
    public final TextView content;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static AdvancedMesssageUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AdvancedMesssageUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.advanced_messsage_user, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AdvancedMesssageUserBinding(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull Button button3, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.btnDone = button;
        this.btnMessageUser = button2;
        this.btnStrikeUser = button3;
        this.content = textView;
    }

    @NonNull
    public static AdvancedMesssageUserBinding bind(@NonNull View view) {
        int i10 = R.id.btn_done;
        Button button = (Button) ViewBindings.a(view, R.id.btn_done);
        if (button != null) {
            i10 = R.id.btn_message_user;
            Button button2 = (Button) ViewBindings.a(view, R.id.btn_message_user);
            if (button2 != null) {
                i10 = R.id.btn_strike_user;
                Button button3 = (Button) ViewBindings.a(view, R.id.btn_strike_user);
                if (button3 != null) {
                    i10 = R.id.content;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.content);
                    if (textView != null) {
                        return new AdvancedMesssageUserBinding((LinearLayout) view, button, button2, button3, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
