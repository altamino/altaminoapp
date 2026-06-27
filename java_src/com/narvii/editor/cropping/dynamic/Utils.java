package com.narvii.editor.cropping.dynamic;

import android.content.Context;
import android.content.res.Resources;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Utils.kt */
/* loaded from: classes2.dex */
public final class Utils {
    public static final Companion Companion = new Companion(null);

    /* compiled from: Utils.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getScreenWidth(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Resources resources = context.getResources();
            Intrinsics.checkExpressionValueIsNotNull(resources, "context.resources");
            return resources.getDisplayMetrics().widthPixels;
        }

        public final int getScreenHeight(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Resources resources = context.getResources();
            Intrinsics.checkExpressionValueIsNotNull(resources, "context.resources");
            return resources.getDisplayMetrics().heightPixels;
        }

        public final float pxtodp(Context context, float f) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Resources resources = context.getResources();
            Intrinsics.checkExpressionValueIsNotNull(resources, "context.resources");
            return f / resources.getDisplayMetrics().density;
        }

        public final float dptopx(Context context, float f) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Resources resources = context.getResources();
            Intrinsics.checkExpressionValueIsNotNull(resources, "context.resources");
            return f * resources.getDisplayMetrics().density;
        }
    }
}
