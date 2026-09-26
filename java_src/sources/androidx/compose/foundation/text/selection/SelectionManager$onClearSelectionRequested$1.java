package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.foundation.text.selection.SelectionManager$onClearSelectionRequested$1", f = "SelectionManager.kt", l = {630}, m = "invokeSuspend")
final class SelectionManager$onClearSelectionRequested$1 extends l implements p<PointerInputScope, d<? super l0>, Object> {
    final /* synthetic */ e8.a<l0> $block;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SelectionManager this$0;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionManager$onClearSelectionRequested$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.l<Offset, l0> {
        final /* synthetic */ e8.a<l0> $block;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(e8.a<l0> aVar) {
            super(1);
            this.$block = aVar;
        }

        public final void a(long j6) {
            this.$block.invoke();
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Offset offset) {
            a(offset.u());
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SelectionManager$onClearSelectionRequested$1(SelectionManager selectionManager, e8.a<l0> aVar, d<? super SelectionManager$onClearSelectionRequested$1> dVar) {
        super(2, dVar);
        this.this$0 = selectionManager;
        this.$block = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        SelectionManager$onClearSelectionRequested$1 selectionManager$onClearSelectionRequested$1 = new SelectionManager$onClearSelectionRequested$1(this.this$0, this.$block, dVar);
        selectionManager$onClearSelectionRequested$1.L$0 = obj;
        return selectionManager$onClearSelectionRequested$1;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
        return ((SelectionManager$onClearSelectionRequested$1) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
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
            PointerInputScope pointerInputScope = (PointerInputScope) this.L$0;
            SelectionManager selectionManager = this.this$0;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$block);
            this.label = 1;
            if (selectionManager.o(pointerInputScope, anonymousClass1, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
