package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes10.dex */
final class NewInstanceSchemaLite implements NewInstanceSchema {
    @Override // androidx.datastore.preferences.protobuf.NewInstanceSchema
    public Object newInstance(Object obj) {
        return ((GeneratedMessageLite) obj).m(GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE);
    }

    NewInstanceSchemaLite() {
    }
}
