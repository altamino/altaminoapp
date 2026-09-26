package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;

/* JADX INFO: loaded from: classes8.dex */
public final class ItemLeaderBoardColumnLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout child1;

    @NonNull
    public final LinearLayout child2;

    @NonNull
    public final LinearLayout child3;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final AutoSizingTextView subTitleChild1;

    @NonNull
    public final AutoSizingTextView subTitleChild2;

    @NonNull
    public final AutoSizingTextView subTitleChild3;

    @NonNull
    public final AutoSizingTextView titleChild1;

    @NonNull
    public final AutoSizingTextView titleChild2;

    @NonNull
    public final AutoSizingTextView titleChild3;

    @NonNull
    public static ItemLeaderBoardColumnLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemLeaderBoardColumnLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_leader_board_column_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemLeaderBoardColumnLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull AutoSizingTextView autoSizingTextView, @NonNull AutoSizingTextView autoSizingTextView2, @NonNull AutoSizingTextView autoSizingTextView3, @NonNull AutoSizingTextView autoSizingTextView4, @NonNull AutoSizingTextView autoSizingTextView5, @NonNull AutoSizingTextView autoSizingTextView6) {
        this.rootView = linearLayout;
        this.child1 = linearLayout2;
        this.child2 = linearLayout3;
        this.child3 = linearLayout4;
        this.subTitleChild1 = autoSizingTextView;
        this.subTitleChild2 = autoSizingTextView2;
        this.subTitleChild3 = autoSizingTextView3;
        this.titleChild1 = autoSizingTextView4;
        this.titleChild2 = autoSizingTextView5;
        this.titleChild3 = autoSizingTextView6;
    }

    @NonNull
    public static ItemLeaderBoardColumnLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.child1;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.child1);
        if (linearLayout != null) {
            i10 = R.id.child2;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.child2);
            if (linearLayout2 != null) {
                i10 = R.id.child3;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.child3);
                if (linearLayout3 != null) {
                    i10 = R.id.subTitle_child_1;
                    AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.subTitle_child_1);
                    if (autoSizingTextView != null) {
                        i10 = R.id.subTitle_child_2;
                        AutoSizingTextView autoSizingTextView2 = (AutoSizingTextView) ViewBindings.a(view, R.id.subTitle_child_2);
                        if (autoSizingTextView2 != null) {
                            i10 = R.id.subTitle_child_3;
                            AutoSizingTextView autoSizingTextView3 = (AutoSizingTextView) ViewBindings.a(view, R.id.subTitle_child_3);
                            if (autoSizingTextView3 != null) {
                                i10 = R.id.title_child_1;
                                AutoSizingTextView autoSizingTextView4 = (AutoSizingTextView) ViewBindings.a(view, R.id.title_child_1);
                                if (autoSizingTextView4 != null) {
                                    i10 = R.id.title_child_2;
                                    AutoSizingTextView autoSizingTextView5 = (AutoSizingTextView) ViewBindings.a(view, R.id.title_child_2);
                                    if (autoSizingTextView5 != null) {
                                        i10 = R.id.title_child_3;
                                        AutoSizingTextView autoSizingTextView6 = (AutoSizingTextView) ViewBindings.a(view, R.id.title_child_3);
                                        if (autoSizingTextView6 != null) {
                                            return new ItemLeaderBoardColumnLayoutBinding((LinearLayout) view, linearLayout, linearLayout2, linearLayout3, autoSizingTextView, autoSizingTextView2, autoSizingTextView3, autoSizingTextView4, autoSizingTextView5, autoSizingTextView6);
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
