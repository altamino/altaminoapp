package com.narvii.app.theme;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.core.view.KeyEventDispatcher;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Lifecycle;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public abstract class NVThemeFragment extends Fragment implements NVThemeOwner {

    @NotNull
    private final NVTheme nvTheme = new NVTheme();

    @Nullable
    private NVThemeObserver nvThemeObserver;
    private boolean waitNotifyThemeChange;

    @Override // com.narvii.app.theme.NVThemeOwner
    @NotNull
    public NVTheme getNVTheme() {
        return this.nvTheme;
    }

    public int initNVTheme() {
        return 1;
    }

    public void onThemeChange(int i10) {
    }

    public final void setDarkNVTheme(boolean z6) {
        setDarkNVTheme$default(this, z6, false, 2, null);
    }

    @Override // com.narvii.app.theme.NVThemeOwner
    public void setNVThemeValue(int i10) {
        setNVThemeValue(i10, false);
    }

    public boolean useParentNVTheme() {
        return false;
    }

    public static /* synthetic */ void setDarkNVTheme$default(NVThemeFragment nVThemeFragment, boolean z6, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setDarkNVTheme");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        nVThemeFragment.setDarkNVTheme(z6, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setNVThemeDirect(int i10) {
        this.nvTheme.setThemeValue(i10);
        if (getLifecycle().b().b(Lifecycle.State.STARTED)) {
            onThemeChange(i10);
        } else {
            this.waitNotifyThemeChange = true;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(@NotNull Context context) {
        t.j(context, "context");
        super.onAttach(context);
        if (!useParentNVTheme() || !(getActivity() instanceof NVThemeOwner)) {
            setNVThemeDirect(this.nvTheme.getThemeValue() == 0 ? initNVTheme() : this.nvTheme.getThemeValue());
            return;
        }
        KeyEventDispatcher.Component activity = getActivity();
        t.h(activity, "null cannot be cast to non-null type com.narvii.app.theme.NVThemeOwner");
        NVThemeOwner nVThemeOwner = (NVThemeOwner) activity;
        if (this.nvThemeObserver == null) {
            this.nvThemeObserver = new NVThemeObserver() { // from class: com.narvii.app.theme.NVThemeFragment.onAttach.1
                @Override // com.narvii.app.theme.NVThemeObserver
                public void onThemeChange(int i10) {
                    NVThemeFragment.this.setNVThemeDirect(i10);
                }
            };
        }
        NVTheme nVTheme = nVThemeOwner.getNVTheme();
        NVThemeObserver nVThemeObserver = this.nvThemeObserver;
        t.g(nVThemeObserver);
        nVTheme.addObserver(nVThemeObserver);
        setNVThemeDirect(nVThemeOwner.getNVTheme().getThemeValue());
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.nvTheme.removeAllObserver();
        this.nvTheme.setThemeValue(0);
        if (useParentNVTheme() && (getActivity() instanceof NVThemeOwner) && this.nvThemeObserver != null) {
            KeyEventDispatcher.Component activity = getActivity();
            t.h(activity, "null cannot be cast to non-null type com.narvii.app.theme.NVThemeOwner");
            NVTheme nVTheme = ((NVThemeOwner) activity).getNVTheme();
            NVThemeObserver nVThemeObserver = this.nvThemeObserver;
            t.g(nVThemeObserver);
            nVTheme.removeObserver(nVThemeObserver);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        NVTheme.Companion.bindNVThemeView(getNVTheme(), view);
    }

    public final void setDarkNVTheme(boolean z6, boolean z10) {
        setNVThemeValue(z6 ? 2 : 1, z10);
    }

    public final void setNVThemeValue(int i10, boolean z6) {
        if (useParentNVTheme() && (getActivity() instanceof NVThemeOwner)) {
            return;
        }
        if (z6 && (getActivity() instanceof NVThemeOwner)) {
            KeyEventDispatcher.Component activity = getActivity();
            t.h(activity, "null cannot be cast to non-null type com.narvii.app.theme.NVThemeOwner");
            ((NVThemeOwner) activity).setNVThemeValue(i10);
        }
        setNVThemeDirect(i10);
    }

    protected void hideBottomAdsView() {
        FragmentActivity activity = getActivity();
        t.h(activity, "null cannot be cast to non-null type com.narvii.app.theme.NVThemeActivity");
        ((NVThemeActivity) activity).hideBottomAdsView();
    }

    @Override // com.narvii.app.theme.NVThemeOwner
    public boolean isDarkNVTheme() {
        if (getNVTheme().getThemeValue() == 2) {
            return true;
        }
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (this.waitNotifyThemeChange) {
            this.waitNotifyThemeChange = false;
            onThemeChange(this.nvTheme.getThemeValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void showBottomAdsViewIfOptinAds() {
        FragmentActivity activity = getActivity();
        t.h(activity, "null cannot be cast to non-null type com.narvii.app.theme.NVThemeActivity");
        ((NVThemeActivity) activity).showBottomAdsViewIfOptinAds();
    }
}
