package androidx.datastore.preferences.protobuf;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public interface MessageLite extends MessageLiteOrBuilder {

    public interface Builder extends MessageLiteOrBuilder, Cloneable {
        Builder a(MessageLite messageLite);

        MessageLite build();

        MessageLite buildPartial();

        Builder mergeFrom(byte[] bArr) throws InvalidProtocolBufferException;
    }

    void b(CodedOutputStream codedOutputStream) throws IOException;

    Parser<? extends MessageLite> getParserForType();

    int getSerializedSize();

    Builder newBuilderForType();

    Builder toBuilder();

    ByteString toByteString();
}
