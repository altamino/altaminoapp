package com.narvii.editor.cropping.dynamic;

import android.content.Context;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class Utils {

    @NotNull
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final float dptopx(@NotNull Context context, float f) {
            t.j(context, "context");
            return f * context.getResources().getDisplayMetrics().density;
        }

        public final int getScreenHeight(@NotNull Context context) {
            t.j(context, "context");
            return context.getResources().getDisplayMetrics().heightPixels;
        }

        public final int getScreenWidth(@NotNull Context context) {
            t.j(context, "context");
            return context.getResources().getDisplayMetrics().widthPixels;
        }

        public final float pxtodp(@NotNull Context context, float f) {
            t.j(context, "context");
            return f / context.getResources().getDisplayMetrics().density;
        }
    }
}
