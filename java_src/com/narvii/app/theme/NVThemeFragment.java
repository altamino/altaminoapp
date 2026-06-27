package com.narvii.app.theme;

import android.arch.lifecycle.Lifecycle;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.KeyEvent;
import android.view.View;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NVThemeFragment.kt */
/* loaded from: classes.dex */
public abstract class NVThemeFragment extends Fragment implements NVThemeOwner {
    private HashMap _$_findViewCache;
    private final NVTheme nvTheme = new NVTheme();
    private NVThemeObserver nvThemeObserver;
    private boolean waitNotifyThemeChange;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public int initNVTheme() {
        return 1;
    }

    public void onThemeChange(int i) {
    }

    public final void setDarkNVTheme(boolean z) {
        setDarkNVTheme$default(this, z, false, 2, null);
    }

    public boolean useParentNVTheme() {
        return false;
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (useParentNVTheme() && (getActivity() instanceof NVThemeOwner)) {
            KeyEvent.Callback activity = getActivity();
            if (activity == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.theme.NVThemeOwner");
            }
            NVThemeOwner nVThemeOwner = (NVThemeOwner) activity;
            if (this.nvThemeObserver == null) {
                this.nvThemeObserver = new NVThemeObserver() { // from class: com.narvii.app.theme.NVThemeFragment.onAttach.1
                    @Override // com.narvii.app.theme.NVThemeObserver
                    public void onThemeChange(int i) {
                        NVThemeFragment.this.setNVThemeDirect(i);
                    }
                };
            }
            NVTheme nVTheme = nVThemeOwner.getNVTheme();
            NVThemeObserver nVThemeObserver = this.nvThemeObserver;
            if (nVThemeObserver == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            nVTheme.addObserver(nVThemeObserver);
            setNVThemeDirect(nVThemeOwner.getNVTheme().getThemeValue());
            return;
        }
        setNVThemeDirect(this.nvTheme.getThemeValue() == 0 ? initNVTheme() : this.nvTheme.getThemeValue());
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        NVTheme.Companion.bindNVThemeView(getNVTheme(), view);
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (this.waitNotifyThemeChange) {
            this.waitNotifyThemeChange = false;
            onThemeChange(this.nvTheme.getThemeValue());
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        this.nvTheme.removeAllObserver();
        this.nvTheme.setThemeValue(0);
        if (useParentNVTheme() && (getActivity() instanceof NVThemeOwner) && this.nvThemeObserver != null) {
            KeyEvent.Callback activity = getActivity();
            if (activity == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.theme.NVThemeOwner");
            }
            NVTheme nVTheme = ((NVThemeOwner) activity).getNVTheme();
            NVThemeObserver nVThemeObserver = this.nvThemeObserver;
            if (nVThemeObserver == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            nVTheme.removeObserver(nVThemeObserver);
        }
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.app.theme.NVThemeOwner
    public NVTheme getNVTheme() {
        return this.nvTheme;
    }

    @Override // com.narvii.app.theme.NVThemeOwner
    public void setNVThemeValue(int i) {
        setNVThemeValue(i, false);
    }

    public final void setNVThemeValue(int i, boolean z) {
        if (useParentNVTheme() && (getActivity() instanceof NVThemeOwner)) {
            return;
        }
        if (z && (getActivity() instanceof NVThemeOwner)) {
            KeyEvent.Callback activity = getActivity();
            if (activity == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.theme.NVThemeOwner");
            }
            ((NVThemeOwner) activity).setNVThemeValue(i);
        }
        setNVThemeDirect(i);
    }

    public static /* synthetic */ void setDarkNVTheme$default(NVThemeFragment nVThemeFragment, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setDarkNVTheme");
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        nVThemeFragment.setDarkNVTheme(z, z2);
    }

    public final void setDarkNVTheme(boolean z, boolean z2) {
        setNVThemeValue(z ? 2 : 1, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setNVThemeDirect(int i) {
        this.nvTheme.setThemeValue(i);
        Lifecycle lifecycle = getLifecycle();
        Intrinsics.checkExpressionValueIsNotNull(lifecycle, "lifecycle");
        if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            onThemeChange(i);
        } else {
            this.waitNotifyThemeChange = true;
        }
    }

    @Override // com.narvii.app.theme.NVThemeOwner
    public boolean isDarkNVTheme() {
        return getNVTheme().getThemeValue() == 2;
    }
}
