package androidx.datastore.preferences;

import androidx.datastore.preferences.core.Preferences;
import e8.p;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.b;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes8.dex */
@f(c = "androidx.datastore.preferences.SharedPreferencesMigrationKt$getShouldRunMigration$1", f = "SharedPreferencesMigration.kt", l = {}, m = "invokeSuspend")
final class SharedPreferencesMigrationKt$getShouldRunMigration$1 extends l implements p<Preferences, d<? super Boolean>, Object> {
    final /* synthetic */ Set<String> $keysToMigrate;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SharedPreferencesMigrationKt$getShouldRunMigration$1(Set<String> set, d<? super SharedPreferencesMigrationKt$getShouldRunMigration$1> dVar) {
        super(2, dVar);
        this.$keysToMigrate = set;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        SharedPreferencesMigrationKt$getShouldRunMigration$1 sharedPreferencesMigrationKt$getShouldRunMigration$1 = new SharedPreferencesMigrationKt$getShouldRunMigration$1(this.$keysToMigrate, dVar);
        sharedPreferencesMigrationKt$getShouldRunMigration$1.L$0 = obj;
        return sharedPreferencesMigrationKt$getShouldRunMigration$1;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull Preferences preferences, @Nullable d<? super Boolean> dVar) {
        return ((SharedPreferencesMigrationKt$getShouldRunMigration$1) create(preferences, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w.b(obj);
            Set<Preferences.Key<?>> setKeySet = ((Preferences) this.L$0).a().keySet();
            ArrayList arrayList = new ArrayList(kotlin.collections.w.x(setKeySet, 10));
            Iterator<T> it = setKeySet.iterator();
            while (it.hasNext()) {
                arrayList.add(((Preferences.Key) it.next()).a());
            }
            boolean z6 = true;
            if (this.$keysToMigrate != SharedPreferencesMigrationKt.a()) {
                Set<String> set = this.$keysToMigrate;
                if ((set instanceof Collection) && set.isEmpty()) {
                    z6 = false;
                } else {
                    Iterator<T> it2 = set.iterator();
                    while (it2.hasNext()) {
                        if (b.a(!arrayList.contains((String) it2.next())).booleanValue()) {
                        }
                    }
                    z6 = false;
                }
            }
            return b.a(z6);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
