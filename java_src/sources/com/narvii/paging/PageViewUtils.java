package com.narvii.paging;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.app.NVFragment;

/* JADX INFO: loaded from: classes8.dex */
public class PageViewUtils {
    public static PageView getPageViewParent(View view) {
        if (view == null) {
            return null;
        }
        while (view != null) {
            if (view instanceof PageView) {
                return (PageView) view;
            }
            view = view.getParent() instanceof View ? (View) view.getParent() : null;
        }
        return null;
    }

    public static void onBindViewHolder(NVFragment nVFragment, RecyclerView.ViewHolder viewHolder, int i10) {
        if (viewHolder == null || nVFragment == null) {
            return;
        }
        View view = viewHolder.itemView;
        if (view instanceof PageView) {
            PageView pageView = (PageView) view;
            if (nVFragment.isResumed()) {
                pageView.onResume();
            } else {
                pageView.onPause();
            }
        }
    }
}
