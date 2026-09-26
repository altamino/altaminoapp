package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes11.dex */
public interface Parser<MessageType> {
    MessageType a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException;

    MessageType b(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException;
}
