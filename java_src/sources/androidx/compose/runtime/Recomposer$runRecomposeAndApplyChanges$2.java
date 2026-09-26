package androidx.compose.runtime;

import androidx.compose.runtime.collection.IdentityArraySet;
import androidx.compose.runtime.snapshots.Snapshot;
import e8.q;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.a0;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2", f = "Recomposer.kt", l = {436, 454}, m = "invokeSuspend")
final class Recomposer$runRecomposeAndApplyChanges$2 extends l implements q<o0, MonotonicFrameClock, d<? super l0>, Object> {
    /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    final /* synthetic */ Recomposer this$0;

    /* JADX INFO: renamed from: androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements e8.l<Long, o<? super l0>> {
        final /* synthetic */ List<ControlledComposition> $toApply;
        final /* synthetic */ Set<ControlledComposition> $toComplete;
        final /* synthetic */ List<MovableContentStateReference> $toInsert;
        final /* synthetic */ Set<ControlledComposition> $toLateApply;
        final /* synthetic */ List<ControlledComposition> $toRecompose;
        final /* synthetic */ Recomposer this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Recomposer recomposer, List<ControlledComposition> list, List<MovableContentStateReference> list2, Set<ControlledComposition> set, List<ControlledComposition> list3, Set<ControlledComposition> set2) {
            super(1);
            this.this$0 = recomposer;
            this.$toRecompose = list;
            this.$toInsert = list2;
            this.$toLateApply = set;
            this.$toApply = list3;
            this.$toComplete = set2;
        }

        @Nullable
        public final o<l0> a(long j6) {
            o<l0> oVarB0;
            if (this.this$0.broadcastFrameClock.t()) {
                Recomposer recomposer = this.this$0;
                Trace trace = Trace.INSTANCE;
                Object objA = trace.a("Recomposer:animation");
                try {
                    recomposer.broadcastFrameClock.u(j6);
                    Snapshot.Companion.g();
                    l0 l0Var = l0.INSTANCE;
                    trace.b(objA);
                } catch (Throwable th) {
                    Trace.INSTANCE.b(objA);
                    throw th;
                }
            }
            Recomposer recomposer2 = this.this$0;
            List<ControlledComposition> list = this.$toRecompose;
            List<MovableContentStateReference> list2 = this.$toInsert;
            Set<ControlledComposition> set = this.$toLateApply;
            List<ControlledComposition> list3 = this.$toApply;
            Set<ControlledComposition> set2 = this.$toComplete;
            Object objA2 = Trace.INSTANCE.a("Recomposer:recompose");
            try {
                synchronized (recomposer2.stateLock) {
                    try {
                        recomposer2.q0();
                        List list4 = recomposer2.compositionInvalidations;
                        int size = list4.size();
                        for (int i10 = 0; i10 < size; i10++) {
                            list.add((ControlledComposition) list4.get(i10));
                        }
                        recomposer2.compositionInvalidations.clear();
                        l0 l0Var2 = l0.INSTANCE;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                IdentityArraySet identityArraySet = new IdentityArraySet();
                IdentityArraySet identityArraySet2 = new IdentityArraySet();
                while (true) {
                    if (!(!list.isEmpty()) && !(!list2.isEmpty())) {
                        break;
                    }
                    try {
                        int size2 = list.size();
                        for (int i11 = 0; i11 < size2; i11++) {
                            ControlledComposition controlledComposition = list.get(i11);
                            identityArraySet2.add(controlledComposition);
                            ControlledComposition controlledCompositionN0 = recomposer2.n0(controlledComposition, identityArraySet);
                            if (controlledCompositionN0 != null) {
                                list3.add(controlledCompositionN0);
                            }
                        }
                        list.clear();
                        if (identityArraySet.f()) {
                            synchronized (recomposer2.stateLock) {
                                try {
                                    List list5 = recomposer2.knownCompositions;
                                    int size3 = list5.size();
                                    for (int i12 = 0; i12 < size3; i12++) {
                                        ControlledComposition controlledComposition2 = (ControlledComposition) list5.get(i12);
                                        if (!identityArraySet2.contains(controlledComposition2) && controlledComposition2.d(identityArraySet)) {
                                            list.add(controlledComposition2);
                                        }
                                    }
                                    l0 l0Var3 = l0.INSTANCE;
                                } catch (Throwable th3) {
                                    throw th3;
                                }
                            }
                        }
                        if (list.isEmpty()) {
                            Recomposer$runRecomposeAndApplyChanges$2.h(list2, recomposer2);
                            while (!list2.isEmpty()) {
                                a0.D(set, recomposer2.m0(list2, identityArraySet));
                                Recomposer$runRecomposeAndApplyChanges$2.h(list2, recomposer2);
                            }
                        }
                    } catch (Throwable th4) {
                        list.clear();
                        throw th4;
                    }
                    Trace.INSTANCE.b(objA2);
                    throw th;
                }
                if (!list3.isEmpty()) {
                    recomposer2.changeCount = recomposer2.d0() + 1;
                    try {
                        a0.D(set2, list3);
                        int size4 = list3.size();
                        for (int i13 = 0; i13 < size4; i13++) {
                            list3.get(i13).l();
                        }
                        list3.clear();
                    } catch (Throwable th5) {
                        list3.clear();
                        throw th5;
                    }
                }
                if (!set.isEmpty()) {
                    try {
                        a0.D(set2, set);
                        Iterator<T> it = set.iterator();
                        while (it.hasNext()) {
                            ((ControlledComposition) it.next()).f();
                        }
                        set.clear();
                    } catch (Throwable th6) {
                        set.clear();
                        throw th6;
                    }
                }
                if (!set2.isEmpty()) {
                    try {
                        Iterator<T> it2 = set2.iterator();
                        while (it2.hasNext()) {
                            ((ControlledComposition) it2.next()).e();
                        }
                        set2.clear();
                    } catch (Throwable th7) {
                        set2.clear();
                        throw th7;
                    }
                }
                recomposer2.c0();
                synchronized (recomposer2.stateLock) {
                    oVarB0 = recomposer2.b0();
                }
                Trace.INSTANCE.b(objA2);
                return oVarB0;
            } catch (Throwable th8) {
                Trace.INSTANCE.b(objA2);
                throw th8;
            }
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ o<? super l0> invoke(Long l) {
            return a(l.longValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Recomposer$runRecomposeAndApplyChanges$2(Recomposer recomposer, d<? super Recomposer$runRecomposeAndApplyChanges$2> dVar) {
        super(3, dVar);
        this.this$0 = recomposer;
    }

    @Override // e8.q
    @Nullable
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull o0 o0Var, @NotNull MonotonicFrameClock monotonicFrameClock, @Nullable d<? super l0> dVar) {
        Recomposer$runRecomposeAndApplyChanges$2 recomposer$runRecomposeAndApplyChanges$2 = new Recomposer$runRecomposeAndApplyChanges$2(this.this$0, dVar);
        recomposer$runRecomposeAndApplyChanges$2.L$0 = monotonicFrameClock;
        return recomposer$runRecomposeAndApplyChanges$2.invokeSuspend(l0.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x008e  */
    /* JADX WARN: Code duplicated, block: B:15:0x00a4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:16:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:21:0x00bb A[Catch: all -> 0x00c6, TRY_LEAVE, TryCatch #0 {, blocks: (B:19:0x00b4, B:21:0x00bb), top: B:38:0x00b4 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:28:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:29:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:31:0x00fb A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00cb -> B:11:0x0086). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00fc -> B:33:0x0100). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.a
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(List<MovableContentStateReference> list, Recomposer recomposer) {
        list.clear();
        synchronized (recomposer.stateLock) {
            try {
                List list2 = recomposer.compositionValuesAwaitingInsert;
                int size = list2.size();
                for (int i10 = 0; i10 < size; i10++) {
                    list.add((MovableContentStateReference) list2.get(i10));
                }
                recomposer.compositionValuesAwaitingInsert.clear();
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
