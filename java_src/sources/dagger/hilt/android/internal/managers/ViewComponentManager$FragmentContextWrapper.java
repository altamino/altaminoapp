package dagger.hilt.android.internal.managers;

import android.content.ContextWrapper;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;

/* JADX INFO: loaded from: classes8.dex */
public final class ViewComponentManager$FragmentContextWrapper extends ContextWrapper {
    private LayoutInflater baseInflater;
    private Fragment fragment;
    private final LifecycleEventObserver fragmentLifecycleObserver;
    private LayoutInflater inflater;

    /* JADX INFO: renamed from: dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper$1, reason: invalid class name */
    class AnonymousClass1 implements LifecycleEventObserver {
        final /* synthetic */ ViewComponentManager$FragmentContextWrapper this$0;

        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
            if (event == Lifecycle.Event.ON_DESTROY) {
                this.this$0.fragment = null;
                this.this$0.baseInflater = null;
                this.this$0.inflater = null;
            }
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String name) {
        if (!"layout_inflater".equals(name)) {
            return getBaseContext().getSystemService(name);
        }
        if (this.inflater == null) {
            if (this.baseInflater == null) {
                this.baseInflater = (LayoutInflater) getBaseContext().getSystemService("layout_inflater");
            }
            this.inflater = this.baseInflater.cloneInContext(this);
        }
        return this.inflater;
    }
}
