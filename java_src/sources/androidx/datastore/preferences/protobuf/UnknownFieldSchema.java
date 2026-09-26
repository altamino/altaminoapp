package androidx.datastore.preferences.protobuf;

import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
abstract class UnknownFieldSchema<T, B> {
    abstract void a(B b7, int i10, int i11);

    abstract void b(B b7, int i10, long j6);

    abstract void c(B b7, int i10, T t5);

    abstract void d(B b7, int i10, ByteString byteString);

    abstract void e(B b7, int i10, long j6);

    abstract B f(Object obj);

    abstract T g(Object obj);

    abstract int h(T t5);

    abstract int i(T t5);

    abstract void j(Object obj);

    abstract T k(T t5, T t10);

    abstract B n();

    abstract void o(Object obj, B b7);

    abstract void p(Object obj, T t5);

    abstract boolean q(Reader reader);

    abstract T r(B b7);

    abstract void s(T t5, Writer writer) throws IOException;

    abstract void t(T t5, Writer writer) throws IOException;

    UnknownFieldSchema() {
    }

    final void l(B b7, Reader reader) throws IOException {
        while (reader.getFieldNumber() != Integer.MAX_VALUE && m(b7, reader)) {
        }
    }

    final boolean m(B b7, Reader reader) throws IOException {
        int tag = reader.getTag();
        int iA = WireFormat.a(tag);
        int iB = WireFormat.b(tag);
        if (iB != 0) {
            if (iB != 1) {
                if (iB != 2) {
                    if (iB != 3) {
                        if (iB != 4) {
                            if (iB == 5) {
                                a(b7, iA, reader.readFixed32());
                                return true;
                            }
                            throw InvalidProtocolBufferException.d();
                        }
                        return false;
                    }
                    B bN = n();
                    int iC = WireFormat.c(iA, 4);
                    l(bN, reader);
                    if (iC == reader.getTag()) {
                        c(b7, iA, r(bN));
                        return true;
                    }
                    throw InvalidProtocolBufferException.a();
                }
                d(b7, iA, reader.readBytes());
                return true;
            }
            b(b7, iA, reader.readFixed64());
            return true;
        }
        e(b7, iA, reader.readInt64());
        return true;
    }
}
