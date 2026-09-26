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
import com.narvii.widget.RadiusLayout;
import com.narvii.widget.recycleview.NVRecyclerView;

/* JADX INFO: loaded from: classes9.dex */
public final class ChatGoLivePickerDialogLayoutBinding implements ViewBinding {

    @NonNull
    public final ImageView agreeIv;

    @NonNull
    public final LinearLayout agreeOthersSpeakLl;

    @NonNull
    public final RadiusLayout pickerContent;

    @NonNull
    public final NVRecyclerView recyclerView;

    @NonNull
    private final RadiusLayout rootView;

    @NonNull
    public final TextView selectTv;

    @NonNull
    public static ChatGoLivePickerDialogLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RadiusLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatGoLivePickerDialogLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_go_live_picker_dialog_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatGoLivePickerDialogLayoutBinding(@NonNull RadiusLayout radiusLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull RadiusLayout radiusLayout2, @NonNull NVRecyclerView nVRecyclerView, @NonNull TextView textView) {
        this.rootView = radiusLayout;
        this.agreeIv = imageView;
        this.agreeOthersSpeakLl = linearLayout;
        this.pickerContent = radiusLayout2;
        this.recyclerView = nVRecyclerView;
        this.selectTv = textView;
    }

    @NonNull
    public static ChatGoLivePickerDialogLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.agree_iv;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.agree_iv);
        if (imageView != null) {
            i10 = R.id.agree_others_speak_ll;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.agree_others_speak_ll);
            if (linearLayout != null) {
                RadiusLayout radiusLayout = (RadiusLayout) view;
                i10 = R.id.recycler_view;
                NVRecyclerView nVRecyclerView = (NVRecyclerView) ViewBindings.a(view, R.id.recycler_view);
                if (nVRecyclerView != null) {
                    i10 = R.id.select_tv;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.select_tv);
                    if (textView != null) {
                        return new ChatGoLivePickerDialogLayoutBinding(radiusLayout, imageView, linearLayout, radiusLayout, nVRecyclerView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
