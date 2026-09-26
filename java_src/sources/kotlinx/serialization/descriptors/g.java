package kotlinx.serialization.descriptors;

import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class g {

    public static final class a implements Iterator<SerialDescriptor>, f8.a {
        final /* synthetic */ SerialDescriptor $this_elementDescriptors;
        private int elementsLeft;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.elementsLeft > 0;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        a(SerialDescriptor serialDescriptor) {
            this.$this_elementDescriptors = serialDescriptor;
            this.elementsLeft = serialDescriptor.e();
        }

        @Override // java.util.Iterator
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SerialDescriptor next() {
            SerialDescriptor serialDescriptor = this.$this_elementDescriptors;
            int iE = serialDescriptor.e();
            int i10 = this.elementsLeft;
            this.elementsLeft = i10 - 1;
            return serialDescriptor.d(iE - i10);
        }
    }

    public static final class b implements Iterator<String>, f8.a {
        final /* synthetic */ SerialDescriptor $this_elementNames;
        private int elementsLeft;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.elementsLeft > 0;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        b(SerialDescriptor serialDescriptor) {
            this.$this_elementNames = serialDescriptor;
            this.elementsLeft = serialDescriptor.e();
        }

        @Override // java.util.Iterator
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String next() {
            SerialDescriptor serialDescriptor = this.$this_elementNames;
            int iE = serialDescriptor.e();
            int i10 = this.elementsLeft;
            this.elementsLeft = i10 - 1;
            return serialDescriptor.f(iE - i10);
        }
    }

    public static final class c implements Iterable<SerialDescriptor>, f8.a {
        final /* synthetic */ SerialDescriptor $this_elementDescriptors$inlined;

        public c(SerialDescriptor serialDescriptor) {
            this.$this_elementDescriptors$inlined = serialDescriptor;
        }

        @Override // java.lang.Iterable
        @NotNull
        public Iterator<SerialDescriptor> iterator() {
            return new a(this.$this_elementDescriptors$inlined);
        }
    }

    public static final class d implements Iterable<String>, f8.a {
        final /* synthetic */ SerialDescriptor $this_elementNames$inlined;

        public d(SerialDescriptor serialDescriptor) {
            this.$this_elementNames$inlined = serialDescriptor;
        }

        @Override // java.lang.Iterable
        @NotNull
        public Iterator<String> iterator() {
            return new b(this.$this_elementNames$inlined);
        }
    }

    @NotNull
    public static final Iterable<SerialDescriptor> a(@NotNull SerialDescriptor serialDescriptor) {
        t.j(serialDescriptor, "<this>");
        return new c(serialDescriptor);
    }

    @NotNull
    public static final Iterable<String> b(@NotNull SerialDescriptor serialDescriptor) {
        t.j(serialDescriptor, "<this>");
        return new d(serialDescriptor);
    }
}
