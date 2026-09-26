package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.GridLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class MoodTaskItemBinding implements ViewBinding {

    @NonNull
    public final View bg;

    @NonNull
    public final GridLayout grid;

    @NonNull
    public final NVImageView icon;

    @NonNull
    public final FlexLayout lockLayout;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public final Button unlock;

    @NonNull
    public static MoodTaskItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MoodTaskItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.mood_task_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MoodTaskItemBinding(@NonNull FlexLayout flexLayout, @NonNull View view, @NonNull GridLayout gridLayout, @NonNull NVImageView nVImageView, @NonNull FlexLayout flexLayout2, @NonNull TextView textView, @NonNull Button button) {
        this.rootView = flexLayout;
        this.bg = view;
        this.grid = gridLayout;
        this.icon = nVImageView;
        this.lockLayout = flexLayout2;
        this.text = textView;
        this.unlock = button;
    }

    @NonNull
    public static MoodTaskItemBinding bind(@NonNull View view) {
        int i10 = R.id.bg;
        View viewA = ViewBindings.a(view, R.id.bg);
        if (viewA != null) {
            i10 = R.id.grid;
            GridLayout gridLayout = (GridLayout) ViewBindings.a(view, R.id.grid);
            if (gridLayout != null) {
                i10 = R.id.icon;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.icon);
                if (nVImageView != null) {
                    i10 = R.id.lock_layout;
                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.lock_layout);
                    if (flexLayout != null) {
                        i10 = R.id.text;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.text);
                        if (textView != null) {
                            i10 = R.id.unlock;
                            Button button = (Button) ViewBindings.a(view, R.id.unlock);
                            if (button != null) {
                                return new MoodTaskItemBinding((FlexLayout) view, viewA, gridLayout, nVImageView, flexLayout, textView, button);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
