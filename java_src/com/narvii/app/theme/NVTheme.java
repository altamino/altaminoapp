package com.narvii.app.theme;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.narvii.lib.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: NVTheme.kt */
/* loaded from: classes2.dex */
public final class NVTheme {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NVTheme.class), "themeObserverList", "getThemeObserverList()Ljava/util/List;"))};
    public static final Companion Companion = new Companion(null);
    public static final int THEME_DARK = 2;
    public static final int THEME_LIGHT = 1;
    public static final int THEME_NOT_SET = 0;
    private final Lazy themeObserverList$delegate = LazyKt__LazyJVMKt.lazy(new Function0<List<NVThemeObserver>>() { // from class: com.narvii.app.theme.NVTheme$themeObserverList$2
        @Override // kotlin.jvm.functions.Function0
        public final List<NVThemeObserver> invoke() {
            return new ArrayList();
        }
    });
    private int themeValue;

    private final List<NVThemeObserver> getThemeObserverList() {
        Lazy lazy = this.themeObserverList$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (List) lazy.getValue();
    }

    private static /* synthetic */ void themeValue$annotations() {
    }

    /* compiled from: NVTheme.kt */
    public static final class Companion {

        /* compiled from: NVTheme.kt */
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes.dex */
        public @interface NvThemeValue {
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void bindNVThemeView(NVTheme theme, View view) {
            Intrinsics.checkParameterIsNotNull(theme, "theme");
            Intrinsics.checkParameterIsNotNull(view, "view");
            if (view instanceof NVThemeObserver) {
                theme.addObserver((NVThemeObserver) view);
            }
            if ((view instanceof ListView) || !(view instanceof ViewGroup)) {
                return;
            }
            int i = 0;
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount() - 1;
            if (childCount < 0) {
                return;
            }
            while (true) {
                View childAt = viewGroup.getChildAt(i);
                Intrinsics.checkExpressionValueIsNotNull(childAt, "view.getChildAt(i)");
                bindNVThemeView(theme, childAt);
                if (i == childCount) {
                    return;
                } else {
                    i++;
                }
            }
        }
    }

    public final int getThemeValue() {
        return this.themeValue;
    }

    public final void setThemeValue(int i) {
        if (this.themeValue == i) {
            return;
        }
        this.themeValue = i;
        notifyThemeChanged();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void addObserver(NVThemeObserver observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (getThemeObserverList().contains(observer)) {
            return;
        }
        getThemeObserverList().add(observer);
        if (observer instanceof View) {
            View view = (View) observer;
            Object tag = view.getTag(R.id._theme_tag);
            if (!(tag instanceof NVTheme)) {
                tag = null;
            }
            NVTheme nVTheme = (NVTheme) tag;
            if (nVTheme != null) {
                if (Intrinsics.areEqual(nVTheme, this)) {
                    return;
                } else {
                    nVTheme.removeObserver(observer);
                }
            }
            view.setTag(R.id._theme_tag, Integer.valueOf(this.themeValue));
        }
        int i = this.themeValue;
        if (i != 0) {
            observer.onThemeChange(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void removeObserver(NVThemeObserver observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        getThemeObserverList().remove(observer);
        if (observer instanceof View) {
            View view = (View) observer;
            Object tag = view.getTag(R.id._theme_tag);
            if (!(tag instanceof NVTheme)) {
                tag = null;
            }
            NVTheme nVTheme = (NVTheme) tag;
            if (nVTheme == null || !Intrinsics.areEqual(nVTheme, this)) {
                return;
            }
            view.setTag(R.id._theme_tag, null);
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

    public final void notifyThemeChanged() {
        Iterator<T> it = getThemeObserverList().iterator();
        while (it.hasNext()) {
            ((NVThemeObserver) it.next()).onThemeChange(this.themeValue);
        }
    }
}
