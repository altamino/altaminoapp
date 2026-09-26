package androidx.datastore.migrations;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.datastore.core.DataMigration;
import e8.a;
import e8.p;
import e8.q;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.b;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.m;
import w7.o;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
public final class SharedPreferencesMigration<T> implements DataMigration<T> {

    @Nullable
    private final Context context;

    @Nullable
    private final Set<String> keySet;

    @NotNull
    private final q<SharedPreferencesView, T, d<? super T>, Object> migrate;

    @Nullable
    private final String name;

    @NotNull
    private final m sharedPrefs$delegate;

    @NotNull
    private final p<T, d<? super Boolean>, Object> shouldRunMigration;

    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$4, reason: invalid class name */
    static final class AnonymousClass4 extends v implements a<SharedPreferences> {
        final /* synthetic */ Context $context;
        final /* synthetic */ String $sharedPreferencesName;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(Context context, String str) {
            super(0);
            this.$context = context;
            this.$sharedPreferencesName = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // e8.a
        @NotNull
        public final SharedPreferences invoke() {
            SharedPreferences sharedPreferences = this.$context.getSharedPreferences(this.$sharedPreferencesName, 0);
            t.i(sharedPreferences, "context.getSharedPreferences(sharedPreferencesName, Context.MODE_PRIVATE)");
            return sharedPreferences;
        }
    }

    @RequiresApi
    private static final class Api24Impl {

        @NotNull
        public static final Api24Impl INSTANCE = new Api24Impl();

        @DoNotInline
        public static final boolean a(@NotNull Context context, @NotNull String name) {
            t.j(context, "context");
            t.j(name, "name");
            return context.deleteSharedPreferences(name);
        }

        private Api24Impl() {
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$shouldMigrate$1, reason: invalid class name and case insensitive filesystem */
    @f(c = "androidx.datastore.migrations.SharedPreferencesMigration", f = "SharedPreferencesMigration.kt", l = {147}, m = "shouldMigrate")
    static final class C05121 extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ SharedPreferencesMigration<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05121(SharedPreferencesMigration<T> sharedPreferencesMigration, d<? super C05121> dVar) {
            super(dVar);
            this.this$0 = sharedPreferencesMigration;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.shouldMigrate(null, this);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(@NotNull Context context, @NotNull String sharedPreferencesName, @NotNull q<? super SharedPreferencesView, ? super T, ? super d<? super T>, ? extends Object> migrate) {
        this(context, sharedPreferencesName, null, null, migrate, 12, null);
        t.j(context, "context");
        t.j(sharedPreferencesName, "sharedPreferencesName");
        t.j(migrate, "migrate");
    }

    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes10.dex */
    @f(c = "androidx.datastore.migrations.SharedPreferencesMigration$1", f = "SharedPreferencesMigration.kt", l = {}, m = "invokeSuspend")
    final class AnonymousClass1 extends l implements p<Object, d<? super Boolean>, Object> {
        int label;

        AnonymousClass1(d<? super AnonymousClass1> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass1(dVar);
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(Object obj, @Nullable d<? super Boolean> dVar) {
            return ((AnonymousClass1) create(obj, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.d.e();
            if (this.label == 0) {
                w.b(obj);
                return b.a(true);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$2, reason: invalid class name */
    @f(c = "androidx.datastore.migrations.SharedPreferencesMigration$2", f = "SharedPreferencesMigration.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends l implements p<T, d<? super Boolean>, Object> {
        int label;

        AnonymousClass2(d<? super AnonymousClass2> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass2(dVar);
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(T t5, @Nullable d<? super Boolean> dVar) {
            return ((AnonymousClass2) create(t5, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.d.e();
            if (this.label == 0) {
                w.b(obj);
                return b.a(true);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$3, reason: invalid class name */
    @f(c = "androidx.datastore.migrations.SharedPreferencesMigration$3", f = "SharedPreferencesMigration.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass3 extends l implements p<T, d<? super Boolean>, Object> {
        int label;

        AnonymousClass3(d<? super AnonymousClass3> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass3(dVar);
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(T t5, @Nullable d<? super Boolean> dVar) {
            return ((AnonymousClass3) create(t5, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.d.e();
            if (this.label == 0) {
                w.b(obj);
                return b.a(true);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(@NotNull Context context, @NotNull String sharedPreferencesName, @NotNull Set<String> keysToMigrate, @NotNull q<? super SharedPreferencesView, ? super T, ? super d<? super T>, ? extends Object> migrate) {
        this(context, sharedPreferencesName, keysToMigrate, null, migrate, 8, null);
        t.j(context, "context");
        t.j(sharedPreferencesName, "sharedPreferencesName");
        t.j(keysToMigrate, "keysToMigrate");
        t.j(migrate, "migrate");
    }

    private final void a(Context context, String str) throws IOException {
        if (Build.VERSION.SDK_INT >= 24) {
            if (!Api24Impl.a(context, str)) {
                throw new IOException(t.s("Unable to delete SharedPreferences: ", str));
            }
        } else {
            File fileD = d(context, str);
            File fileC = c(fileD);
            fileD.delete();
            fileC.delete();
        }
    }

    private final SharedPreferences b() {
        return (SharedPreferences) this.sharedPrefs$delegate.getValue();
    }

    private final File c(File file) {
        return new File(t.s(file.getPath(), ".bak"));
    }

    private final File d(Context context, String str) {
        return new File(new File(context.getApplicationInfo().dataDir, "shared_prefs"), t.s(str, ".xml"));
    }

    @Override // androidx.datastore.core.DataMigration
    @Nullable
    public Object migrate(T t5, @NotNull d<? super T> dVar) {
        return this.migrate.invoke(new SharedPreferencesView(b(), this.keySet), t5, dVar);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x006c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.datastore.core.DataMigration
    @Nullable
    public Object shouldMigrate(T t5, @NotNull d<? super Boolean> dVar) {
        C05121 c05121;
        SharedPreferencesMigration<T> sharedPreferencesMigration;
        if (dVar instanceof C05121) {
            c05121 = (C05121) dVar;
            int i10 = c05121.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c05121.label = i10 - Integer.MIN_VALUE;
            } else {
                c05121 = new C05121(this, dVar);
            }
        } else {
            c05121 = new C05121(this, dVar);
        }
        Object objInvoke = c05121.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = c05121.label;
        boolean z6 = true;
        if (i11 == 0) {
            w.b(objInvoke);
            p<T, d<? super Boolean>, Object> pVar = this.shouldRunMigration;
            c05121.L$0 = this;
            c05121.label = 1;
            objInvoke = pVar.invoke(t5, c05121);
            if (objInvoke == objE) {
                return objE;
            }
            sharedPreferencesMigration = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            sharedPreferencesMigration = (SharedPreferencesMigration) c05121.L$0;
            w.b(objInvoke);
        }
        if (!((Boolean) objInvoke).booleanValue()) {
            return b.a(false);
        }
        Set<String> set = sharedPreferencesMigration.keySet;
        if (set == null) {
            Map<String, ?> all = sharedPreferencesMigration.b().getAll();
            t.i(all, "sharedPrefs.all");
            if (all.isEmpty()) {
                z6 = false;
            }
        } else {
            SharedPreferences sharedPreferencesB = sharedPreferencesMigration.b();
            if ((set instanceof Collection) && set.isEmpty()) {
                z6 = false;
            } else {
                Iterator<T> it = set.iterator();
                while (it.hasNext()) {
                    if (b.a(sharedPreferencesB.contains((String) it.next())).booleanValue()) {
                    }
                }
                z6 = false;
            }
        }
        return b.a(z6);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(@NotNull a<? extends SharedPreferences> produceSharedPreferences, @NotNull q<? super SharedPreferencesView, ? super T, ? super d<? super T>, ? extends Object> migrate) {
        this(produceSharedPreferences, (Set) null, (p) null, migrate, 6, (k) null);
        t.j(produceSharedPreferences, "produceSharedPreferences");
        t.j(migrate, "migrate");
    }

    @Override // androidx.datastore.core.DataMigration
    @Nullable
    public Object cleanUp(@NotNull d<? super l0> dVar) throws IOException {
        l0 l0Var;
        Context context;
        String str;
        SharedPreferences.Editor editorEdit = b().edit();
        Set<String> set = this.keySet;
        if (set == null) {
            editorEdit.clear();
        } else {
            Iterator<T> it = set.iterator();
            while (it.hasNext()) {
                editorEdit.remove((String) it.next());
            }
        }
        if (editorEdit.commit()) {
            if (b().getAll().isEmpty() && (context = this.context) != null && (str = this.name) != null) {
                a(context, str);
            }
            Set<String> set2 = this.keySet;
            if (set2 == null) {
                l0Var = null;
            } else {
                set2.clear();
                l0Var = l0.INSTANCE;
            }
            if (l0Var == kotlin.coroutines.intrinsics.d.e()) {
                return l0Var;
            }
            return l0.INSTANCE;
        }
        throw new IOException("Unable to delete migrated keys from SharedPreferences.");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(@NotNull a<? extends SharedPreferences> produceSharedPreferences, @NotNull Set<String> keysToMigrate, @NotNull q<? super SharedPreferencesView, ? super T, ? super d<? super T>, ? extends Object> migrate) {
        this(produceSharedPreferences, keysToMigrate, (p) null, migrate, 4, (k) null);
        t.j(produceSharedPreferences, "produceSharedPreferences");
        t.j(keysToMigrate, "keysToMigrate");
        t.j(migrate, "migrate");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SharedPreferencesMigration(a<? extends SharedPreferences> aVar, Set<String> set, p<? super T, ? super d<? super Boolean>, ? extends Object> pVar, q<? super SharedPreferencesView, ? super T, ? super d<? super T>, ? extends Object> qVar, Context context, String str) {
        this.shouldRunMigration = pVar;
        this.migrate = qVar;
        this.context = context;
        this.name = str;
        this.sharedPrefs$delegate = o.a(aVar);
        this.keySet = set == SharedPreferencesMigrationKt.a() ? null : d0.X0(set);
    }

    public /* synthetic */ SharedPreferencesMigration(a aVar, Set set, p pVar, q qVar, int i10, k kVar) {
        this((a<? extends SharedPreferences>) aVar, (Set<String>) ((i10 & 2) != 0 ? SharedPreferencesMigrationKt.a() : set), (i10 & 4) != 0 ? new AnonymousClass2(null) : pVar, qVar);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(@NotNull a<? extends SharedPreferences> produceSharedPreferences, @NotNull Set<String> keysToMigrate, @NotNull p<? super T, ? super d<? super Boolean>, ? extends Object> shouldRunMigration, @NotNull q<? super SharedPreferencesView, ? super T, ? super d<? super T>, ? extends Object> migrate) {
        this(produceSharedPreferences, keysToMigrate, shouldRunMigration, migrate, (Context) null, (String) null);
        t.j(produceSharedPreferences, "produceSharedPreferences");
        t.j(keysToMigrate, "keysToMigrate");
        t.j(shouldRunMigration, "shouldRunMigration");
        t.j(migrate, "migrate");
    }

    public /* synthetic */ SharedPreferencesMigration(Context context, String str, Set set, p pVar, q qVar, int i10, k kVar) {
        this(context, str, (i10 & 4) != 0 ? SharedPreferencesMigrationKt.a() : set, (i10 & 8) != 0 ? new AnonymousClass3(null) : pVar, qVar);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(@NotNull Context context, @NotNull String sharedPreferencesName, @NotNull Set<String> keysToMigrate, @NotNull p<? super T, ? super d<? super Boolean>, ? extends Object> shouldRunMigration, @NotNull q<? super SharedPreferencesView, ? super T, ? super d<? super T>, ? extends Object> migrate) {
        this(new AnonymousClass4(context, sharedPreferencesName), keysToMigrate, shouldRunMigration, migrate, context, sharedPreferencesName);
        t.j(context, "context");
        t.j(sharedPreferencesName, "sharedPreferencesName");
        t.j(keysToMigrate, "keysToMigrate");
        t.j(shouldRunMigration, "shouldRunMigration");
        t.j(migrate, "migrate");
    }
}
