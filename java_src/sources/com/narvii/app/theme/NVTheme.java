package com.narvii.app.theme;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.narvii.lib.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes3.dex */
public final class NVTheme {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int THEME_DARK = 2;
    public static final int THEME_LIGHT = 1;
    public static final int THEME_NOT_SET = 0;

    @NotNull
    private final m themeObserverList$delegate = o.a(NVTheme$themeObserverList$2.INSTANCE);
    private int themeValue;

    public static final class Companion {

        @Retention(RetentionPolicy.SOURCE)
        public @interface NvThemeValue {
        }

        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void bindNVThemeView(@NotNull NVTheme theme, @NotNull View view) {
            t.j(theme, "theme");
            t.j(view, "view");
            if (view instanceof NVThemeObserver) {
                theme.addObserver((NVThemeObserver) view);
            }
            if ((view instanceof ListView) || !(view instanceof ViewGroup)) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount() - 1;
            if (childCount < 0) {
                return;
            }
            int i10 = 0;
            while (true) {
                View childAt = viewGroup.getChildAt(i10);
                t.i(childAt, "getChildAt(...)");
                bindNVThemeView(theme, childAt);
                if (i10 == childCount) {
                    return;
                } else {
                    i10++;
                }
            }
        }
    }

    private static /* synthetic */ void getThemeValue$annotations() {
    }

    public final int getThemeValue() {
        return this.themeValue;
    }

    private final List<NVThemeObserver> getThemeObserverList() {
        return (List) this.themeObserverList$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void addObserver(@NotNull NVThemeObserver observer) {
        t.j(observer, "observer");
        if (getThemeObserverList().contains(observer)) {
            return;
        }
        getThemeObserverList().add(observer);
        if (observer instanceof View) {
            View view = (View) observer;
            int i10 = R.id._theme_tag;
            Object tag = view.getTag(i10);
            NVTheme nVTheme = tag instanceof NVTheme ? (NVTheme) tag : null;
            if (nVTheme != null) {
                if (t.e(nVTheme, this)) {
                    return;
                } else {
                    nVTheme.removeObserver(observer);
                }
            }
            view.setTag(i10, Integer.valueOf(this.themeValue));
        }
        int i11 = this.themeValue;
        if (i11 != 0) {
            observer.onThemeChange(i11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void removeObserver(@NotNull NVThemeObserver observer) {
        t.j(observer, "observer");
        getThemeObserverList().remove(observer);
        if (observer instanceof View) {
            View view = (View) observer;
            int i10 = R.id._theme_tag;
            Object tag = view.getTag(i10);
            NVTheme nVTheme = tag instanceof NVTheme ? (NVTheme) tag : null;
            if (nVTheme == null || !t.e(nVTheme, this)) {
                return;
            }
            view.setTag(i10, null);
        }
    }

    public final void setThemeValue(int i10) {
        if (this.themeValue == i10) {
            return;
        }
        this.themeValue = i10;
        notifyThemeChanged();
    }

    public final void notifyThemeChanged() {
        Iterator<T> it = getThemeObserverList().iterator();
        while (it.hasNext()) {
            ((NVThemeObserver) it.next()).onThemeChange(this.themeValue);
        }
    }

    public final void removeAllObserver() {
        for (Object obj : getThemeObserverList()) {
            if (obj instanceof View) {
                ((View) obj).setTag(R.id._theme_tag, null);
            }
        }
        getThemeObserverList().clear();
    }
}
