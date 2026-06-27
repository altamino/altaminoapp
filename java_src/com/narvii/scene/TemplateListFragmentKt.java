package com.narvii.scene;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: TemplateListFragment.kt */
/* loaded from: classes3.dex */
public final class TemplateListFragmentKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void animation(View view, float f, Function2<? super View, ? super Float, Unit> function2) {
        function2.invoke(view, Float.valueOf(f));
    }
}
