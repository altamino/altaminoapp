package androidx.compose.runtime.external.kotlinx.collections.immutable;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import java.util.List;
import kotlin.collections.c;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public interface ImmutableList<E> extends List<E>, ImmutableCollection<E>, f8.a {

    /* JADX INFO: Access modifiers changed from: private */
    static final class SubList<E> extends c<E> implements ImmutableList<E> {
        private int _size;
        private final int fromIndex;

        @NotNull
        private final ImmutableList<E> source;
        private final int toIndex;

        @Override // kotlin.collections.c, kotlin.collections.a
        public int getSize() {
            return this._size;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SubList(@NotNull ImmutableList<? extends E> source, int i10, int i11) {
            t.j(source, "source");
            this.source = source;
            this.fromIndex = i10;
            this.toIndex = i11;
            ListImplementation.c(i10, i11, source.size());
            this._size = i11 - i10;
        }

        @Override // kotlin.collections.c, java.util.List
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ImmutableList<E> subList(int i10, int i11) {
            ListImplementation.c(i10, i11, this._size);
            ImmutableList<E> immutableList = this.source;
            int i12 = this.fromIndex;
            return new SubList(immutableList, i10 + i12, i12 + i11);
        }

        @Override // kotlin.collections.c, java.util.List
        public E get(int i10) {
            ListImplementation.a(i10, this._size);
            return this.source.get(this.fromIndex + i10);
        }
    }
}
