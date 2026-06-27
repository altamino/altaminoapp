package com.narvii.app.theme;

import android.R;
import android.arch.lifecycle.Lifecycle;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.Window;
import com.narvii.app.theme.NVTheme;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NVThemeActivity.kt */
/* loaded from: classes.dex */
public abstract class NVThemeActivity extends FragmentActivity implements NVThemeOwner {
    private HashMap _$_findViewCache;
    private final NVTheme nvTheme = new NVTheme();
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
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public int initNVTheme() {
        return 1;
    }

    public void onThemeChange(int i) {
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setNVThemeValue(this.nvTheme.getThemeValue() == 0 ? initNVTheme() : this.nvTheme.getThemeValue());
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        if (this.waitNotifyThemeChange) {
            this.waitNotifyThemeChange = false;
            onThemeChange(this.nvTheme.getThemeValue());
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.nvTheme.removeAllObserver();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        super.setContentView(i);
        NVTheme.Companion companion = NVTheme.Companion;
        NVTheme nVTheme = getNVTheme();
        Window window = getWindow();
        Intrinsics.checkExpressionValueIsNotNull(window, "window");
        View viewFindViewById = window.getDecorView().findViewById(R.id.content);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "window.decorView.findVie…ew>(android.R.id.content)");
        companion.bindNVThemeView(nVTheme, viewFindViewById);
    }

    @Override // com.narvii.app.theme.NVThemeOwner
    public NVTheme getNVTheme() {
        return this.nvTheme;
    }

    @Override // com.narvii.app.theme.NVThemeOwner
    public void setNVThemeValue(int i) {
        this.nvTheme.setThemeValue(i);
        Lifecycle lifecycle = getLifecycle();
        Intrinsics.checkExpressionValueIsNotNull(lifecycle, "lifecycle");
        if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            onThemeChange(i);
        } else {
            this.waitNotifyThemeChange = true;
        }
    }

    public final void setDarkNVTheme(boolean z) {
        setNVThemeValue(z ? 2 : 1);
    }

    @Override // com.narvii.app.theme.NVThemeOwner
    public boolean isDarkNVTheme() {
        return this.nvTheme.getThemeValue() == 2;
    }
}
