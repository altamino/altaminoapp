package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class PreferenceScreen extends PreferenceGroup {
    private boolean mShouldUseGeneratedIds;

    @Override // androidx.preference.PreferenceGroup
    protected boolean D0() {
        return false;
    }

    public boolean I0() {
        return this.mShouldUseGeneratedIds;
    }

    @RestrictTo
    public PreferenceScreen(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, TypedArrayUtils.a(context, R.attr.preferenceScreenStyle, android.R.attr.preferenceScreenStyle));
        this.mShouldUseGeneratedIds = true;
    }

    @Override // androidx.preference.Preference
    protected void O() {
        PreferenceManager.OnNavigateToScreenListener onNavigateToScreenListenerF;
        if (p() == null && l() == null && C0() != 0 && (onNavigateToScreenListenerF = y().f()) != null) {
            onNavigateToScreenListenerF.e(this);
        }
    }
}
