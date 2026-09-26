package androidx.lifecycle;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;

/* JADX INFO: loaded from: classes5.dex */
public final class ViewModelLazy<VM extends ViewModel> implements m<VM> {

    @Nullable
    private VM cached;

    @NotNull
    private final e8.a<CreationExtras> extrasProducer;

    @NotNull
    private final e8.a<ViewModelProvider.Factory> factoryProducer;

    @NotNull
    private final e8.a<ViewModelStore> storeProducer;

    @NotNull
    private final KClass<VM> viewModelClass;

    /* JADX INFO: renamed from: androidx.lifecycle.ViewModelLazy$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.a<CreationExtras.Empty> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CreationExtras.Empty invoke() {
            return CreationExtras.Empty.INSTANCE;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelLazy(@NotNull KClass<VM> viewModelClass, @NotNull e8.a<? extends ViewModelStore> storeProducer, @NotNull e8.a<? extends ViewModelProvider.Factory> factoryProducer) {
        this(viewModelClass, storeProducer, factoryProducer, null, 8, null);
        t.j(viewModelClass, "viewModelClass");
        t.j(storeProducer, "storeProducer");
        t.j(factoryProducer, "factoryProducer");
    }

    @Override // w7.m
    public boolean isInitialized() {
        return this.cached != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ViewModelLazy(@NotNull KClass<VM> viewModelClass, @NotNull e8.a<? extends ViewModelStore> storeProducer, @NotNull e8.a<? extends ViewModelProvider.Factory> factoryProducer, @NotNull e8.a<? extends CreationExtras> extrasProducer) {
        t.j(viewModelClass, "viewModelClass");
        t.j(storeProducer, "storeProducer");
        t.j(factoryProducer, "factoryProducer");
        t.j(extrasProducer, "extrasProducer");
        this.viewModelClass = viewModelClass;
        this.storeProducer = storeProducer;
        this.factoryProducer = factoryProducer;
        this.extrasProducer = extrasProducer;
    }

    @Override // w7.m
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public VM getValue() {
        VM vm = this.cached;
        if (vm != null) {
            return vm;
        }
        VM vm2 = (VM) new ViewModelProvider(this.storeProducer.invoke(), this.factoryProducer.invoke(), this.extrasProducer.invoke()).a(d8.a.a(this.viewModelClass));
        this.cached = vm2;
        return vm2;
    }

    public /* synthetic */ ViewModelLazy(KClass kClass, e8.a aVar, e8.a aVar2, e8.a aVar3, int i10, k kVar) {
        this(kClass, aVar, aVar2, (i10 & 8) != 0 ? AnonymousClass1.INSTANCE : aVar3);
    }
}
