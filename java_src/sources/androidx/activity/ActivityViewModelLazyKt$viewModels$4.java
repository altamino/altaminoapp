package androidx.activity;

import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class ActivityViewModelLazyKt$viewModels$4 extends v implements e8.a<CreationExtras> {
    final /* synthetic */ e8.a<CreationExtras> $extrasProducer;
    final /* synthetic */ ComponentActivity $this_viewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ActivityViewModelLazyKt$viewModels$4(e8.a<? extends CreationExtras> aVar, ComponentActivity componentActivity) {
        super(0);
        this.$extrasProducer = aVar;
        this.$this_viewModels = componentActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final CreationExtras invoke() {
        CreationExtras creationExtrasInvoke;
        e8.a<CreationExtras> aVar = this.$extrasProducer;
        if (aVar != null && (creationExtrasInvoke = aVar.invoke()) != null) {
            return creationExtrasInvoke;
        }
        CreationExtras defaultViewModelCreationExtras = this.$this_viewModels.getDefaultViewModelCreationExtras();
        t.i(defaultViewModelCreationExtras, "this.defaultViewModelCreationExtras");
        return defaultViewModelCreationExtras;
    }
}
