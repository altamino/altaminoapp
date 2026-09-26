package androidx.datastore.preferences.protobuf;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
class UnknownFieldSetLiteSchema extends UnknownFieldSchema<UnknownFieldSetLite, UnknownFieldSetLite> {
    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    boolean q(Reader reader) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public void a(UnknownFieldSetLite unknownFieldSetLite, int i10, int i11) {
        unknownFieldSetLite.n(WireFormat.c(i10, 5), Integer.valueOf(i11));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public void b(UnknownFieldSetLite unknownFieldSetLite, int i10, long j6) {
        unknownFieldSetLite.n(WireFormat.c(i10, 1), Long.valueOf(j6));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public void c(UnknownFieldSetLite unknownFieldSetLite, int i10, UnknownFieldSetLite unknownFieldSetLite2) {
        unknownFieldSetLite.n(WireFormat.c(i10, 3), unknownFieldSetLite2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void d(UnknownFieldSetLite unknownFieldSetLite, int i10, ByteString byteString) {
        unknownFieldSetLite.n(WireFormat.c(i10, 2), byteString);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void e(UnknownFieldSetLite unknownFieldSetLite, int i10, long j6) {
        unknownFieldSetLite.n(WireFormat.c(i10, 0), Long.valueOf(j6));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public UnknownFieldSetLite g(Object obj) {
        return ((GeneratedMessageLite) obj).unknownFields;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public void p(Object obj, UnknownFieldSetLite unknownFieldSetLite) {
        ((GeneratedMessageLite) obj).unknownFields = unknownFieldSetLite;
    }

    UnknownFieldSetLiteSchema() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public int h(UnknownFieldSetLite unknownFieldSetLite) {
        return unknownFieldSetLite.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public int i(UnknownFieldSetLite unknownFieldSetLite) {
        return unknownFieldSetLite.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public UnknownFieldSetLite k(UnknownFieldSetLite unknownFieldSetLite, UnknownFieldSetLite unknownFieldSetLite2) {
        if (!unknownFieldSetLite2.equals(UnknownFieldSetLite.e())) {
            return UnknownFieldSetLite.k(unknownFieldSetLite, unknownFieldSetLite2);
        }
        return unknownFieldSetLite;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public UnknownFieldSetLite n() {
        return UnknownFieldSetLite.l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public void o(Object obj, UnknownFieldSetLite unknownFieldSetLite) {
        p(obj, unknownFieldSetLite);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public UnknownFieldSetLite r(UnknownFieldSetLite unknownFieldSetLite) {
        unknownFieldSetLite.j();
        return unknownFieldSetLite;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void s(UnknownFieldSetLite unknownFieldSetLite, Writer writer) throws IOException {
        unknownFieldSetLite.o(writer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public void t(UnknownFieldSetLite unknownFieldSetLite, Writer writer) throws IOException {
        unknownFieldSetLite.q(writer);
    }

    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    void j(Object obj) {
        g(obj).j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.UnknownFieldSchema
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public UnknownFieldSetLite f(Object obj) {
        UnknownFieldSetLite unknownFieldSetLiteG = g(obj);
        if (unknownFieldSetLiteG == UnknownFieldSetLite.e()) {
            UnknownFieldSetLite unknownFieldSetLiteL = UnknownFieldSetLite.l();
            p(obj, unknownFieldSetLiteL);
            return unknownFieldSetLiteL;
        }
        return unknownFieldSetLiteG;
    }
}
