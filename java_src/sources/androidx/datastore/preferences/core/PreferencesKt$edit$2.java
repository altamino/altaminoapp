package androidx.datastore.preferences.core;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes6.dex */
@f(c = "androidx.datastore.preferences.core.PreferencesKt$edit$2", f = "Preferences.kt", l = {329}, m = "invokeSuspend")
final class PreferencesKt$edit$2 extends l implements p<Preferences, d<? super Preferences>, Object> {
    final /* synthetic */ p<MutablePreferences, d<? super l0>, Object> $transform;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PreferencesKt$edit$2(p<? super MutablePreferences, ? super d<? super l0>, ? extends Object> pVar, d<? super PreferencesKt$edit$2> dVar) {
        super(2, dVar);
        this.$transform = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        PreferencesKt$edit$2 preferencesKt$edit$2 = new PreferencesKt$edit$2(this.$transform, dVar);
        preferencesKt$edit$2.L$0 = obj;
        return preferencesKt$edit$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull Preferences preferences, @Nullable d<? super Preferences> dVar) {
        return ((PreferencesKt$edit$2) create(preferences, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                MutablePreferences mutablePreferences = (MutablePreferences) this.L$0;
                w.b(obj);
                return mutablePreferences;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        w.b(obj);
        MutablePreferences mutablePreferencesC = ((Preferences) this.L$0).c();
        p<MutablePreferences, d<? super l0>, Object> pVar = this.$transform;
        this.L$0 = mutablePreferencesC;
        this.label = 1;
        if (pVar.invoke(mutablePreferencesC, this) == objE) {
            return objE;
        }
        return mutablePreferencesC;
    }
}
