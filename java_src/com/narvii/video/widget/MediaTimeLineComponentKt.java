package com.narvii.video.widget;

import java.util.Arrays;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* compiled from: MediaTimeLineComponent.kt */
/* loaded from: classes3.dex */
public final class MediaTimeLineComponentKt {
    public static final String convertMillisToTime(int i) {
        int i2 = (i % 1000) / 100;
        int i3 = i / 1000;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.US;
        Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.US");
        Object[] objArr = {Integer.valueOf(i3 / 60), Integer.valueOf(i3 % 60), Integer.valueOf(i2)};
        String str = String.format(locale, "%01d:%02d.%1d", Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(locale, format, *args)");
        return str;
    }
}
