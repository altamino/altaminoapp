package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.MessageLite;

/* JADX INFO: loaded from: classes11.dex */
public abstract class AbstractParser<MessageType extends MessageLite> implements Parser<MessageType> {
    private static final ExtensionRegistryLite EMPTY_REGISTRY = ExtensionRegistryLite.b();

    private MessageType c(MessageType messagetype) throws InvalidProtocolBufferException {
        if (messagetype == null || messagetype.isInitialized()) {
            return messagetype;
        }
        throw d(messagetype).a().i(messagetype);
    }

    private UninitializedMessageException d(MessageType messagetype) {
        return messagetype instanceof AbstractMessageLite ? ((AbstractMessageLite) messagetype).g() : new UninitializedMessageException(messagetype);
    }

    @Override // androidx.datastore.preferences.protobuf.Parser
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public MessageType b(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (MessageType) c(f(byteString, extensionRegistryLite));
    }

    public MessageType f(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        CodedInputStream codedInputStreamY = byteString.y();
        MessageType messagetypeA = a(codedInputStreamY, extensionRegistryLite);
        try {
            codedInputStreamY.a(0);
            return messagetypeA;
        } catch (InvalidProtocolBufferException e) {
            throw e.i(messagetypeA);
        }
    }
}
