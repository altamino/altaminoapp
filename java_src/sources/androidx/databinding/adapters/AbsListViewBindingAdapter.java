package androidx.databinding.adapters;

import android.widget.AbsListView;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethods;

/* JADX INFO: loaded from: classes10.dex */
@BindingMethods
@RestrictTo
public class AbsListViewBindingAdapter {

    /* JADX INFO: renamed from: androidx.databinding.adapters.AbsListViewBindingAdapter$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes5.dex */
    class AnonymousClass1 implements AbsListView.OnScrollListener {
        final /* synthetic */ OnScroll val$scrollListener;
        final /* synthetic */ OnScrollStateChanged val$scrollStateListener;

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            OnScroll onScroll = this.val$scrollListener;
            if (onScroll != null) {
                onScroll.onScroll(absListView, i10, i11, i12);
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
            OnScrollStateChanged onScrollStateChanged = this.val$scrollStateListener;
            if (onScrollStateChanged != null) {
                onScrollStateChanged.onScrollStateChanged(absListView, i10);
            }
        }
    }

    public interface OnScroll {
        void onScroll(AbsListView absListView, int i10, int i11, int i12);
    }

    public interface OnScrollStateChanged {
        void onScrollStateChanged(AbsListView absListView, int i10);
    }
}
