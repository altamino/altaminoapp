package com.narvii.paging;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.narvii.app.NVFragment;

/* loaded from: classes3.dex */
public class PageViewUtils {
    public static void onBindViewHolder(NVFragment nVFragment, RecyclerView.ViewHolder viewHolder, int i) {
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
}
