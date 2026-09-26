package androidx.compose.ui.text.android;

import android.os.Build;
import android.text.StaticLayout;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
final class StaticLayoutFactory23 implements StaticLayoutFactoryImpl {
    @Override // androidx.compose.ui.text.android.StaticLayoutFactoryImpl
    @DoNotInline
    @NotNull
    public StaticLayout a(@NotNull StaticLayoutParams params) {
        t.j(params, "params");
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(params.p(), params.o(), params.e(), params.m(), params.s());
        builderObtain.setTextDirection(params.q());
        builderObtain.setAlignment(params.a());
        builderObtain.setMaxLines(params.l());
        builderObtain.setEllipsize(params.c());
        builderObtain.setEllipsizedWidth(params.d());
        builderObtain.setLineSpacing(params.j(), params.k());
        builderObtain.setIncludePad(params.g());
        builderObtain.setBreakStrategy(params.b());
        builderObtain.setHyphenationFrequency(params.f());
        builderObtain.setIndents(params.i(), params.n());
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            StaticLayoutFactory26 staticLayoutFactory26 = StaticLayoutFactory26.INSTANCE;
            t.i(builderObtain, "this");
            staticLayoutFactory26.a(builderObtain, params.h());
        }
        if (i10 >= 28) {
            StaticLayoutFactory28 staticLayoutFactory28 = StaticLayoutFactory28.INSTANCE;
            t.i(builderObtain, "this");
            staticLayoutFactory28.a(builderObtain, params.r());
        }
        StaticLayout staticLayoutBuild = builderObtain.build();
        t.i(staticLayoutBuild, "obtain(params.text, para…  }\n            }.build()");
        return staticLayoutBuild;
    }
}
