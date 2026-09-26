package com.google.protobuf;

import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
abstract class r0<T, B> {
    abstract void addFixed32(B b7, int i10, int i11);

    abstract void addFixed64(B b7, int i10, long j6);

    abstract void addGroup(B b7, int i10, T t5);

    abstract void addLengthDelimited(B b7, int i10, ByteString byteString);

    abstract void addVarint(B b7, int i10, long j6);

    abstract B getBuilderFromMessage(Object obj);

    abstract T getFromMessage(Object obj);

    abstract int getSerializedSize(T t5);

    abstract int getSerializedSizeAsMessageSet(T t5);

    abstract void makeImmutable(Object obj);

    abstract T merge(T t5, T t10);

    abstract B newBuilder();

    abstract void setBuilderToMessage(Object obj, B b7);

    abstract void setToMessage(Object obj, T t5);

    abstract boolean shouldDiscardUnknownFields(k0 k0Var);

    abstract T toImmutable(B b7);

    abstract void writeAsMessageSetTo(T t5, Writer writer) throws IOException;

    abstract void writeTo(T t5, Writer writer) throws IOException;

    r0() {
    }

    final void mergeFrom(B b7, k0 k0Var) throws IOException {
        while (k0Var.getFieldNumber() != Integer.MAX_VALUE && mergeOneFieldFrom(b7, k0Var)) {
        }
    }

    final boolean mergeOneFieldFrom(B b7, k0 k0Var) throws IOException {
        int tag = k0Var.getTag();
        int tagFieldNumber = WireFormat.getTagFieldNumber(tag);
        int tagWireType = WireFormat.getTagWireType(tag);
        if (tagWireType != 0) {
            if (tagWireType != 1) {
                if (tagWireType != 2) {
                    if (tagWireType != 3) {
                        if (tagWireType != 4) {
                            if (tagWireType == 5) {
                                addFixed32(b7, tagFieldNumber, k0Var.readFixed32());
                                return true;
                            }
                            throw InvalidProtocolBufferException.invalidWireType();
                        }
                        return false;
                    }
                    B bNewBuilder = newBuilder();
                    int iMakeTag = WireFormat.makeTag(tagFieldNumber, 4);
                    mergeFrom(bNewBuilder, k0Var);
                    if (iMakeTag == k0Var.getTag()) {
                        addGroup(b7, tagFieldNumber, toImmutable(bNewBuilder));
                        return true;
                    }
                    throw InvalidProtocolBufferException.invalidEndTag();
                }
                addLengthDelimited(b7, tagFieldNumber, k0Var.readBytes());
                return true;
            }
            addFixed64(b7, tagFieldNumber, k0Var.readFixed64());
            return true;
        }
        addVarint(b7, tagFieldNumber, k0Var.readInt64());
        return true;
    }
}
