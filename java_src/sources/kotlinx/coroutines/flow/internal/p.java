package kotlinx.coroutines.flow.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public interface p<T> extends kotlinx.coroutines.flow.g<T> {

    public static final class a {
        public static /* synthetic */ kotlinx.coroutines.flow.g a(p pVar, kotlin.coroutines.g gVar, int i10, kotlinx.coroutines.channels.a aVar, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fuse");
            }
            if ((i11 & 1) != 0) {
                gVar = kotlin.coroutines.h.INSTANCE;
            }
            if ((i11 & 2) != 0) {
                i10 = -3;
            }
            if ((i11 & 4) != 0) {
                aVar = kotlinx.coroutines.channels.a.SUSPEND;
            }
            return pVar.e(gVar, i10, aVar);
        }
    }

    @NotNull
    kotlinx.coroutines.flow.g<T> e(@NotNull kotlin.coroutines.g gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar);
}
