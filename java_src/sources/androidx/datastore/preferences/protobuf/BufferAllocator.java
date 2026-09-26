package androidx.datastore.preferences.protobuf;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes7.dex */
abstract class BufferAllocator {
    private static final BufferAllocator UNPOOLED = new BufferAllocator() { // from class: androidx.datastore.preferences.protobuf.BufferAllocator.1
        @Override // androidx.datastore.preferences.protobuf.BufferAllocator
        public AllocatedBuffer b(int i10) {
            return AllocatedBuffer.j(new byte[i10]);
        }

        @Override // androidx.datastore.preferences.protobuf.BufferAllocator
        public AllocatedBuffer a(int i10) {
            return AllocatedBuffer.i(ByteBuffer.allocateDirect(i10));
        }
    };

    public abstract AllocatedBuffer a(int i10);

    public abstract AllocatedBuffer b(int i10);

    BufferAllocator() {
    }
}
