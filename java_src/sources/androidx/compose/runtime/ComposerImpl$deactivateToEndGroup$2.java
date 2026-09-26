package androidx.compose.runtime;

import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.i;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$deactivateToEndGroup$2 extends v implements p<Integer, Object, l0> {
    final /* synthetic */ int $group;
    final /* synthetic */ ComposerImpl this$0;

    /* JADX INFO: renamed from: androidx.compose.runtime.ComposerImpl$deactivateToEndGroup$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
        final /* synthetic */ Object $data;
        final /* synthetic */ int $group;
        final /* synthetic */ int $index;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Object obj, int i10, int i11) {
            super(3);
            this.$data = obj;
            this.$group = i10;
            this.$index = i11;
        }

        public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slots, @NotNull RememberManager rememberManager) {
            t.j(applier, "<anonymous parameter 0>");
            t.j(slots, "slots");
            t.j(rememberManager, "rememberManager");
            if (!t.e(this.$data, slots.P0(this.$group, this.$index))) {
                ComposerKt.x("Slot table is out of sync".toString());
                throw new i();
            }
            rememberManager.a((RememberObserver) this.$data);
            slots.K0(this.$index, Composer.Companion.a());
        }

        @Override // e8.q
        public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
            a(applier, slotWriter, rememberManager);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.ComposerImpl$deactivateToEndGroup$2$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
        final /* synthetic */ Object $data;
        final /* synthetic */ int $group;
        final /* synthetic */ int $index;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Object obj, int i10, int i11) {
            super(3);
            this.$data = obj;
            this.$group = i10;
            this.$index = i11;
        }

        public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slots, @NotNull RememberManager rememberManager) {
            t.j(applier, "<anonymous parameter 0>");
            t.j(slots, "slots");
            t.j(rememberManager, "<anonymous parameter 2>");
            if (t.e(this.$data, slots.P0(this.$group, this.$index))) {
                slots.K0(this.$index, Composer.Companion.a());
            } else {
                ComposerKt.x("Slot table is out of sync".toString());
                throw new i();
            }
        }

        @Override // e8.q
        public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
            a(applier, slotWriter, rememberManager);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposerImpl$deactivateToEndGroup$2(ComposerImpl composerImpl, int i10) {
        super(2);
        this.this$0 = composerImpl;
        this.$group = i10;
    }

    public final void a(int i10, @Nullable Object obj) {
        if (obj instanceof RememberObserver) {
            this.this$0.reader.N(this.$group);
            ComposerImpl.q1(this.this$0, false, new AnonymousClass1(obj, this.$group, i10), 1, null);
        } else if (obj instanceof RecomposeScopeImpl) {
            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj;
            CompositionImpl compositionImplL = recomposeScopeImpl.l();
            if (compositionImplL != null) {
                compositionImplL.H(true);
                recomposeScopeImpl.x();
            }
            this.this$0.reader.N(this.$group);
            ComposerImpl.q1(this.this$0, false, new AnonymousClass2(obj, this.$group, i10), 1, null);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Integer num, Object obj) {
        a(num.intValue(), obj);
        return l0.INSTANCE;
    }
}
