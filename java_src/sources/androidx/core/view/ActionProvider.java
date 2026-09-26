package androidx.core.view;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes8.dex */
public abstract class ActionProvider {
    private static final String TAG = "ActionProvider(support)";
    private final Context mContext;
    private SubUiVisibilityListener mSubUiVisibilityListener;
    private VisibilityListener mVisibilityListener;

    @RestrictTo
    public interface SubUiVisibilityListener {
        void i(boolean z6);
    }

    public interface VisibilityListener {
        void onActionProviderVisibilityChanged(boolean z6);
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return true;
    }

    @NonNull
    public abstract View c();

    public boolean e() {
        return false;
    }

    public void f(@NonNull SubMenu subMenu) {
    }

    public boolean g() {
        return false;
    }

    @RestrictTo
    public void h() {
        this.mVisibilityListener = null;
        this.mSubUiVisibilityListener = null;
    }

    @RestrictTo
    public void i(@Nullable SubUiVisibilityListener subUiVisibilityListener) {
        this.mSubUiVisibilityListener = subUiVisibilityListener;
    }

    public void j(@Nullable VisibilityListener visibilityListener) {
        if (this.mVisibilityListener != null && visibilityListener != null) {
            Log.w(TAG, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.mVisibilityListener = visibilityListener;
    }

    @RestrictTo
    public void k(boolean z6) {
        SubUiVisibilityListener subUiVisibilityListener = this.mSubUiVisibilityListener;
        if (subUiVisibilityListener != null) {
            subUiVisibilityListener.i(z6);
        }
    }

    public ActionProvider(@NonNull Context context) {
        this.mContext = context;
    }

    @NonNull
    public View d(@NonNull MenuItem menuItem) {
        return c();
    }
}
