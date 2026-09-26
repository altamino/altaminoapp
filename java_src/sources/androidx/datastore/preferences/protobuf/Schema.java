package androidx.datastore.preferences.protobuf;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
interface Schema<T> {
    void a(T t5, Writer writer) throws IOException;

    void b(T t5, Reader reader, ExtensionRegistryLite extensionRegistryLite) throws IOException;

    void c(T t5, byte[] bArr, int i10, int i11, ArrayDecoders.Registers registers) throws IOException;

    boolean equals(T t5, T t10);

    int getSerializedSize(T t5);

    int hashCode(T t5);

    boolean isInitialized(T t5);

    void makeImmutable(T t5);

    void mergeFrom(T t5, T t10);

    T newInstance();
}
