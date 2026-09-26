package androidx.databinding.adapters;

import android.widget.TabHost;
import androidx.annotation.RestrictTo;
import androidx.databinding.InverseBindingListener;

/* JADX INFO: loaded from: classes11.dex */
@RestrictTo
public class TabHostBindingAdapter {

    /* JADX INFO: renamed from: androidx.databinding.adapters.TabHostBindingAdapter$1, reason: invalid class name */
    class AnonymousClass1 implements TabHost.OnTabChangeListener {
        final /* synthetic */ InverseBindingListener val$attrChange;
        final /* synthetic */ TabHost.OnTabChangeListener val$listener;

        @Override // android.widget.TabHost.OnTabChangeListener
        public void onTabChanged(String str) {
            TabHost.OnTabChangeListener onTabChangeListener = this.val$listener;
            if (onTabChangeListener != null) {
                onTabChangeListener.onTabChanged(str);
            }
            this.val$attrChange.a();
        }
    }
}
