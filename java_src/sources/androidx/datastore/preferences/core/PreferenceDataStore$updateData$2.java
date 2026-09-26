package androidx.datastore.preferences.core;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes11.dex */
@f(c = "androidx.datastore.preferences.core.PreferenceDataStore$updateData$2", f = "PreferenceDataStoreFactory.kt", l = {85}, m = "invokeSuspend")
final class PreferenceDataStore$updateData$2 extends l implements p<Preferences, d<? super Preferences>, Object> {
    final /* synthetic */ p<Preferences, d<? super Preferences>, Object> $transform;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PreferenceDataStore$updateData$2(p<? super Preferences, ? super d<? super Preferences>, ? extends Object> pVar, d<? super PreferenceDataStore$updateData$2> dVar) {
        super(2, dVar);
        this.$transform = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        PreferenceDataStore$updateData$2 preferenceDataStore$updateData$2 = new PreferenceDataStore$updateData$2(this.$transform, dVar);
        preferenceDataStore$updateData$2.L$0 = obj;
        return preferenceDataStore$updateData$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull Preferences preferences, @Nullable d<? super Preferences> dVar) {
        return ((PreferenceDataStore$updateData$2) create(preferences, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w.b(obj);
            Preferences preferences = (Preferences) this.L$0;
            p<Preferences, d<? super Preferences>, Object> pVar = this.$transform;
            this.label = 1;
            obj = pVar.invoke(preferences, this);
            if (obj == objE) {
                return objE;
            }
        }
        Preferences preferences2 = (Preferences) obj;
        ((MutablePreferences) preferences2).f();
        return preferences2;
    }
}
