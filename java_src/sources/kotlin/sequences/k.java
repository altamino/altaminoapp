package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes5.dex */
public class k {
    private static final int State_Done = 4;
    private static final int State_Failed = 5;
    private static final int State_ManyNotReady = 1;
    private static final int State_ManyReady = 2;
    private static final int State_NotReady = 0;
    private static final int State_Ready = 3;

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements g<T> {
        final /* synthetic */ e8.p $block$inlined;

        public a(e8.p pVar) {
            this.$block$inlined = pVar;
        }

        @Override // kotlin.sequences.g
        @NotNull
        public Iterator<T> iterator() {
            return k.a(this.$block$inlined);
        }
    }

    @NotNull
    public static final <T> Iterator<T> a(@NotNull e8.p<? super i<? super T>, ? super kotlin.coroutines.d<? super l0>, ? extends Object> block) {
        t.j(block, "block");
        h hVar = new h();
        hVar.h(kotlin.coroutines.intrinsics.c.a(block, hVar, hVar));
        return hVar;
    }

    @NotNull
    public static <T> g<T> b(@NotNull e8.p<? super i<? super T>, ? super kotlin.coroutines.d<? super l0>, ? extends Object> block) {
        t.j(block, "block");
        return new a(block);
    }
}
