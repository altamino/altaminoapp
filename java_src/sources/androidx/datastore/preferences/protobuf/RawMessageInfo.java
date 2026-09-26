package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes8.dex */
final class RawMessageInfo implements MessageInfo {
    private final MessageLite defaultInstance;
    private final int flags;
    private final String info;
    private final Object[] objects;

    Object[] a() {
        return this.objects;
    }

    String b() {
        return this.info;
    }

    @Override // androidx.datastore.preferences.protobuf.MessageInfo
    public MessageLite getDefaultInstance() {
        return this.defaultInstance;
    }

    @Override // androidx.datastore.preferences.protobuf.MessageInfo
    public boolean isMessageSetWireFormat() {
        return (this.flags & 2) == 2;
    }

    @Override // androidx.datastore.preferences.protobuf.MessageInfo
    public ProtoSyntax getSyntax() {
        return (this.flags & 1) == 1 ? ProtoSyntax.PROTO2 : ProtoSyntax.PROTO3;
    }

    RawMessageInfo(MessageLite messageLite, String str, Object[] objArr) {
        this.defaultInstance = messageLite;
        this.info = str;
        this.objects = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.flags = cCharAt;
            return;
        }
        int i10 = cCharAt & 8191;
        int i11 = 13;
        int i12 = 1;
        while (true) {
            int i13 = i12 + 1;
            char cCharAt2 = str.charAt(i12);
            if (cCharAt2 >= 55296) {
                i10 |= (cCharAt2 & 8191) << i11;
                i11 += 13;
                i12 = i13;
            } else {
                this.flags = i10 | (cCharAt2 << i11);
                return;
            }
        }
    }
}
