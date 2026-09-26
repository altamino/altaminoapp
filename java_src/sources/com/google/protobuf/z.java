package com.google.protobuf;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes10.dex */
final class z<T> implements m0<T> {
    private static final int ENFORCE_UTF8_MASK = 536870912;
    private static final int FIELD_TYPE_MASK = 267386880;
    private static final int INTS_PER_FIELD = 3;
    private static final int NO_PRESENCE_SENTINEL = 1048575;
    private static final int OFFSET_BITS = 20;
    private static final int OFFSET_MASK = 1048575;
    static final int ONEOF_TYPE_OFFSET = 51;
    private static final int REQUIRED_MASK = 268435456;
    private final int[] buffer;
    private final int checkInitializedCount;
    private final MessageLite defaultInstance;
    private final j<?> extensionSchema;
    private final boolean hasExtensions;
    private final int[] intArray;
    private final q listFieldSchema;
    private final boolean lite;
    private final t mapFieldSchema;
    private final int maxFieldNumber;
    private final int minFieldNumber;
    private final b0 newInstanceSchema;
    private final Object[] objects;
    private final boolean proto3;
    private final int repeatedFieldOffsetStart;
    private final r0<?, ?> unknownFieldSchema;
    private final boolean useCachedSizeField;
    private static final int[] EMPTY_INT_ARRAY = new int[0];
    private static final Unsafe UNSAFE = t0.getUnsafe();

    private z(int[] iArr, Object[] objArr, int i10, int i11, MessageLite messageLite, boolean z6, boolean z10, int[] iArr2, int i12, int i13, b0 b0Var, q qVar, r0<?, ?> r0Var, j<?> jVar, t tVar) {
        this.buffer = iArr;
        this.objects = objArr;
        this.minFieldNumber = i10;
        this.maxFieldNumber = i11;
        this.lite = messageLite instanceof GeneratedMessageLite;
        this.proto3 = z6;
        this.hasExtensions = jVar != null && jVar.hasExtensions(messageLite);
        this.useCachedSizeField = z10;
        this.intArray = iArr2;
        this.checkInitializedCount = i12;
        this.repeatedFieldOffsetStart = i13;
        this.newInstanceSchema = b0Var;
        this.listFieldSchema = qVar;
        this.unknownFieldSchema = r0Var;
        this.extensionSchema = jVar;
        this.defaultInstance = messageLite;
        this.mapFieldSchema = tVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <K, V> int decodeMapEntry(byte[] bArr, int i10, int i11, MapEntryLite.b<K, V> bVar, Map<K, V> map, c.b bVar2) throws IOException {
        int iDecodeVarint32;
        int iDecodeVarint33 = c.decodeVarint32(bArr, i10, bVar2);
        int i12 = bVar2.int1;
        if (i12 < 0 || i12 > i11 - iDecodeVarint33) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i13 = iDecodeVarint33 + i12;
        Object obj = bVar.defaultKey;
        Object obj2 = bVar.defaultValue;
        while (iDecodeVarint33 < i13) {
            int i14 = iDecodeVarint33 + 1;
            int i15 = bArr[iDecodeVarint33];
            if (i15 < 0) {
                iDecodeVarint32 = c.decodeVarint32(i15, bArr, i14, bVar2);
                i15 = bVar2.int1;
            } else {
                iDecodeVarint32 = i14;
            }
            int i16 = i15 >>> 3;
            int i17 = i15 & 7;
            if (i16 != 1) {
                if (i16 == 2 && i17 == bVar.valueType.getWireType()) {
                    iDecodeVarint33 = decodeMapEntryValue(bArr, iDecodeVarint32, i11, bVar.valueType, bVar.defaultValue.getClass(), bVar2);
                    obj2 = bVar2.object1;
                } else {
                    iDecodeVarint33 = c.skipField(i15, bArr, iDecodeVarint32, i11, bVar2);
                }
            } else if (i17 == bVar.keyType.getWireType()) {
                iDecodeVarint33 = decodeMapEntryValue(bArr, iDecodeVarint32, i11, bVar.keyType, null, bVar2);
                obj = bVar2.object1;
            } else {
                iDecodeVarint33 = c.skipField(i15, bArr, iDecodeVarint32, i11, bVar2);
            }
        }
        if (iDecodeVarint33 != i13) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        map.put(obj, obj2);
        return i13;
    }

    private int getSerializedSizeProto3(T t5) {
        int iComputeDoubleSize;
        int iComputeSizeFixed64ListNoTag;
        int iComputeTagSize;
        int iComputeUInt32SizeNoTag;
        Unsafe unsafe = UNSAFE;
        int i10 = 0;
        for (int i11 = 0; i11 < this.buffer.length; i11 += 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i11);
            int iType = type(iTypeAndOffsetAt);
            int iNumberAt = numberAt(i11);
            long jOffset = offset(iTypeAndOffsetAt);
            int i12 = (iType < FieldType.DOUBLE_LIST_PACKED.id() || iType > FieldType.SINT64_LIST_PACKED.id()) ? 0 : this.buffer[i11 + 2] & 1048575;
            switch (iType) {
                case 0:
                    if (isFieldPresent(t5, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeDoubleSize(iNumberAt, com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 1:
                    if (isFieldPresent(t5, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 2:
                    if (isFieldPresent(t5, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt64Size(iNumberAt, t0.getLong(t5, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 3:
                    if (isFieldPresent(t5, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt64Size(iNumberAt, t0.getLong(t5, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 4:
                    if (isFieldPresent(t5, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt32Size(iNumberAt, t0.getInt(t5, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 5:
                    if (isFieldPresent(t5, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 6:
                    if (isFieldPresent(t5, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 7:
                    if (isFieldPresent(t5, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 8:
                    if (isFieldPresent(t5, i11)) {
                        Object object = t0.getObject(t5, jOffset);
                        iComputeDoubleSize = object instanceof ByteString ? CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object) : CodedOutputStream.computeStringSize(iNumberAt, (String) object);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 9:
                    if (isFieldPresent(t5, i11)) {
                        iComputeDoubleSize = o0.computeSizeMessage(iNumberAt, t0.getObject(t5, jOffset), getMessageFieldSchema(i11));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 10:
                    if (isFieldPresent(t5, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) t0.getObject(t5, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 11:
                    if (isFieldPresent(t5, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt32Size(iNumberAt, t0.getInt(t5, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 12:
                    if (isFieldPresent(t5, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeEnumSize(iNumberAt, t0.getInt(t5, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 13:
                    if (isFieldPresent(t5, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 14:
                    if (isFieldPresent(t5, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 15:
                    if (isFieldPresent(t5, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt32Size(iNumberAt, t0.getInt(t5, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 16:
                    if (isFieldPresent(t5, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt64Size(iNumberAt, t0.getLong(t5, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 17:
                    if (isFieldPresent(t5, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeGroupSize(iNumberAt, (MessageLite) t0.getObject(t5, jOffset), getMessageFieldSchema(i11));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 18:
                    iComputeDoubleSize = o0.computeSizeFixed64List(iNumberAt, listAt(t5, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 19:
                    iComputeDoubleSize = o0.computeSizeFixed32List(iNumberAt, listAt(t5, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 20:
                    iComputeDoubleSize = o0.computeSizeInt64List(iNumberAt, listAt(t5, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 21:
                    iComputeDoubleSize = o0.computeSizeUInt64List(iNumberAt, listAt(t5, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 22:
                    iComputeDoubleSize = o0.computeSizeInt32List(iNumberAt, listAt(t5, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 23:
                    iComputeDoubleSize = o0.computeSizeFixed64List(iNumberAt, listAt(t5, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 24:
                    iComputeDoubleSize = o0.computeSizeFixed32List(iNumberAt, listAt(t5, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 25:
                    iComputeDoubleSize = o0.computeSizeBoolList(iNumberAt, listAt(t5, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 26:
                    iComputeDoubleSize = o0.computeSizeStringList(iNumberAt, listAt(t5, jOffset));
                    i10 += iComputeDoubleSize;
                    break;
                case 27:
                    iComputeDoubleSize = o0.computeSizeMessageList(iNumberAt, listAt(t5, jOffset), getMessageFieldSchema(i11));
                    i10 += iComputeDoubleSize;
                    break;
                case 28:
                    iComputeDoubleSize = o0.computeSizeByteStringList(iNumberAt, listAt(t5, jOffset));
                    i10 += iComputeDoubleSize;
                    break;
                case 29:
                    iComputeDoubleSize = o0.computeSizeUInt32List(iNumberAt, listAt(t5, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 30:
                    iComputeDoubleSize = o0.computeSizeEnumList(iNumberAt, listAt(t5, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 31:
                    iComputeDoubleSize = o0.computeSizeFixed32List(iNumberAt, listAt(t5, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 32:
                    iComputeDoubleSize = o0.computeSizeFixed64List(iNumberAt, listAt(t5, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 33:
                    iComputeDoubleSize = o0.computeSizeSInt32List(iNumberAt, listAt(t5, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 34:
                    iComputeDoubleSize = o0.computeSizeSInt64List(iNumberAt, listAt(t5, jOffset), false);
                    i10 += iComputeDoubleSize;
                    break;
                case 35:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeFixed64ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 36:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeFixed32ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 37:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeInt64ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 38:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeUInt64ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 39:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeInt32ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 40:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeFixed64ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 41:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeFixed32ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 42:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeBoolListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 43:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeUInt32ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 44:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeEnumListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 45:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeFixed32ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 46:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeFixed64ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 47:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeSInt32ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 48:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeSInt64ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i12, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeDoubleSize = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 49:
                    iComputeDoubleSize = o0.computeSizeGroupList(iNumberAt, listAt(t5, jOffset), getMessageFieldSchema(i11));
                    i10 += iComputeDoubleSize;
                    break;
                case 50:
                    iComputeDoubleSize = this.mapFieldSchema.getSerializedSize(iNumberAt, t0.getObject(t5, jOffset), getMapFieldDefaultEntry(i11));
                    i10 += iComputeDoubleSize;
                    break;
                case 51:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeDoubleSize(iNumberAt, com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 52:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 53:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt64Size(iNumberAt, oneofLongAt(t5, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 54:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt64Size(iNumberAt, oneofLongAt(t5, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 55:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt32Size(iNumberAt, oneofIntAt(t5, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 56:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 57:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 58:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 59:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        Object object2 = t0.getObject(t5, jOffset);
                        iComputeDoubleSize = object2 instanceof ByteString ? CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object2) : CodedOutputStream.computeStringSize(iNumberAt, (String) object2);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 60:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        iComputeDoubleSize = o0.computeSizeMessage(iNumberAt, t0.getObject(t5, jOffset), getMessageFieldSchema(i11));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 61:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) t0.getObject(t5, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 62:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt32Size(iNumberAt, oneofIntAt(t5, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 63:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeEnumSize(iNumberAt, oneofIntAt(t5, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 64:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 65:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 66:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt32Size(iNumberAt, oneofIntAt(t5, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 67:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeSInt64Size(iNumberAt, oneofLongAt(t5, jOffset));
                        i10 += iComputeDoubleSize;
                    }
                    break;
                case 68:
                    if (isOneofPresent(t5, iNumberAt, i11)) {
                        iComputeDoubleSize = CodedOutputStream.computeGroupSize(iNumberAt, (MessageLite) t0.getObject(t5, jOffset), getMessageFieldSchema(i11));
                        i10 += iComputeDoubleSize;
                    }
                    break;
            }
        }
        return i10 + getUnknownFieldsSerializedSize(this.unknownFieldSchema, t5);
    }

    private static boolean isEnforceUtf8(int i10) {
        return (i10 & 536870912) != 0;
    }

    private boolean isFieldPresent(T t5, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return isFieldPresent(t5, i10);
        }
        return (i12 & i13) != 0;
    }

    private static boolean isRequired(int i10) {
        return (i10 & 268435456) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:172:0x064f A[Catch: all -> 0x0675, TRY_LEAVE, TryCatch #6 {all -> 0x0675, blocks: (B:170:0x0649, B:172:0x064f, B:184:0x0679, B:185:0x067e), top: B:213:0x0649 }] */
    /* JADX WARN: Code duplicated, block: B:177:0x065c A[LOOP:2: B:175:0x0658->B:177:0x065c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:179:0x0671  */
    /* JADX WARN: Code duplicated, block: B:183:0x0677 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:184:0x0679 A[Catch: all -> 0x0675, TRY_ENTER, TryCatch #6 {all -> 0x0675, blocks: (B:170:0x0649, B:172:0x064f, B:184:0x0679, B:185:0x067e), top: B:213:0x0649 }] */
    /* JADX WARN: Code duplicated, block: B:190:0x068b A[LOOP:3: B:188:0x0687->B:190:0x068b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:192:0x06a0  */
    /* JADX WARN: Code duplicated, block: B:200:0x06b5 A[LOOP:4: B:198:0x06b1->B:200:0x06b5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:202:0x06ca  */
    /* JADX WARN: Code duplicated, block: B:231:0x0655 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:232:0x0684 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:245:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:246:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    private <UT, UB, ET extends FieldSet.FieldDescriptorLite<ET>> void mergeFromHelper(r0<UT, UB> r0Var, j<ET> jVar, T t5, k0 k0Var, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
        r0 r0Var2;
        T t10;
        int i10;
        Object objFilterMapUnknownEnumValues;
        T t11;
        Object mutableExtensions;
        ExtensionRegistryLite extensionRegistryLite2;
        int i11;
        Object objFilterMapUnknownEnumValues2;
        int i12;
        Object objFilterMapUnknownEnumValues3;
        Object obj;
        r0 r0Var3 = r0Var;
        T t12 = t5;
        ExtensionRegistryLite extensionRegistryLite3 = extensionRegistryLite;
        Object builderFromMessage = null;
        Object obj2 = null;
        while (true) {
            try {
                int fieldNumber = k0Var.getFieldNumber();
                int iPositionForFieldNumber = positionForFieldNumber(fieldNumber);
                if (iPositionForFieldNumber >= 0) {
                    t10 = t12;
                    try {
                        int iTypeAndOffsetAt = typeAndOffsetAt(iPositionForFieldNumber);
                        try {
                            switch (type(iTypeAndOffsetAt)) {
                                case 0:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    t0.putDouble(t10, offset(iTypeAndOffsetAt), k0Var.readDouble());
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 1:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    t0.putFloat(t10, offset(iTypeAndOffsetAt), k0Var.readFloat());
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 2:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    t0.putLong(t10, offset(iTypeAndOffsetAt), k0Var.readInt64());
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 3:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    t0.putLong(t10, offset(iTypeAndOffsetAt), k0Var.readUInt64());
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 4:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    t0.putInt(t10, offset(iTypeAndOffsetAt), k0Var.readInt32());
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 5:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    t0.putLong(t10, offset(iTypeAndOffsetAt), k0Var.readFixed64());
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 6:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    t0.putInt(t10, offset(iTypeAndOffsetAt), k0Var.readFixed32());
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 7:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    t0.putBoolean(t10, offset(iTypeAndOffsetAt), k0Var.readBool());
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 8:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    readString(t10, iTypeAndOffsetAt, k0Var);
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 9:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    MessageLite messageLite = (MessageLite) mutableMessageFieldForMerge(t10, iPositionForFieldNumber);
                                    k0Var.mergeMessageField(messageLite, getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite2);
                                    storeMessageField(t10, iPositionForFieldNumber, messageLite);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 10:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    t0.putObject(t10, offset(iTypeAndOffsetAt), k0Var.readBytes());
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 11:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    t0.putInt(t10, offset(iTypeAndOffsetAt), k0Var.readUInt32());
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 12:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    int i13 = k0Var.readEnum();
                                    Internal.EnumVerifier enumFieldVerifier = getEnumFieldVerifier(iPositionForFieldNumber);
                                    if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i13)) {
                                        t0.putInt(t10, offset(iTypeAndOffsetAt), i13);
                                        setFieldPresent(t10, iPositionForFieldNumber);
                                        builderFromMessage = obj;
                                    } else {
                                        builderFromMessage = o0.storeUnknownEnum(t10, fieldNumber, i13, obj, r0Var2);
                                    }
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 13:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    t0.putInt(t10, offset(iTypeAndOffsetAt), k0Var.readSFixed32());
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 14:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    t0.putLong(t10, offset(iTypeAndOffsetAt), k0Var.readSFixed64());
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 15:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    t0.putInt(t10, offset(iTypeAndOffsetAt), k0Var.readSInt32());
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 16:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    t0.putLong(t10, offset(iTypeAndOffsetAt), k0Var.readSInt64());
                                    setFieldPresent(t10, iPositionForFieldNumber);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 17:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    MessageLite messageLite2 = (MessageLite) mutableMessageFieldForMerge(t10, iPositionForFieldNumber);
                                    k0Var.mergeGroupField(messageLite2, getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite2);
                                    storeMessageField(t10, iPositionForFieldNumber, messageLite2);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 18:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readDoubleList(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 19:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readFloatList(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 20:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readInt64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 21:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readUInt64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 22:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readInt32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 23:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readFixed64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 24:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readFixed32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 25:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readBoolList(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 26:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    readStringList(t10, iTypeAndOffsetAt, k0Var);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 27:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    readMessageList(t5, iTypeAndOffsetAt, k0Var, getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite);
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 28:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readBytesList(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 29:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readUInt32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 30:
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    List<Integer> listMutableListAt = this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt));
                                    k0Var.readEnumList(listMutableListAt);
                                    builderFromMessage = o0.filterUnknownEnumList(t5, fieldNumber, listMutableListAt, getEnumFieldVerifier(iPositionForFieldNumber), builderFromMessage, r0Var);
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 31:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readSFixed32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 32:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readSFixed64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 33:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readSInt32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 34:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readSInt64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 35:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readDoubleList(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 36:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readFloatList(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 37:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readInt64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 38:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readUInt64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 39:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readInt32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 40:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readFixed64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 41:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readFixed32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 42:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readBoolList(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 43:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readUInt32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 44:
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    List<Integer> listMutableListAt2 = this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt));
                                    k0Var.readEnumList(listMutableListAt2);
                                    builderFromMessage = o0.filterUnknownEnumList(t5, fieldNumber, listMutableListAt2, getEnumFieldVerifier(iPositionForFieldNumber), builderFromMessage, r0Var);
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 45:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readSFixed32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 46:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readSFixed64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 47:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readSInt32List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 48:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    k0Var.readSInt64List(this.listFieldSchema.mutableListAt(t10, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 49:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    try {
                                        readGroupList(t5, offset(iTypeAndOffsetAt), k0Var, getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite);
                                        builderFromMessage = obj;
                                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                                        builderFromMessage = obj;
                                        try {
                                            if (!r0Var2.shouldDiscardUnknownFields(k0Var)) {
                                                if (builderFromMessage == null) {
                                                    builderFromMessage = r0Var2.getBuilderFromMessage(t10);
                                                }
                                                if (!r0Var2.mergeOneFieldFrom(builderFromMessage, k0Var)) {
                                                    objFilterMapUnknownEnumValues2 = builderFromMessage;
                                                    for (i11 = this.checkInitializedCount; i11 < this.repeatedFieldOffsetStart; i11++) {
                                                        objFilterMapUnknownEnumValues2 = filterMapUnknownEnumValues(t5, this.intArray[i11], objFilterMapUnknownEnumValues2, r0Var, t5);
                                                    }
                                                    if (objFilterMapUnknownEnumValues2 != null) {
                                                        r0Var2.setBuilderToMessage(t10, objFilterMapUnknownEnumValues2);
                                                        return;
                                                    }
                                                    return;
                                                }
                                            } else if (!k0Var.skipField()) {
                                                objFilterMapUnknownEnumValues3 = builderFromMessage;
                                                for (i12 = this.checkInitializedCount; i12 < this.repeatedFieldOffsetStart; i12++) {
                                                    objFilterMapUnknownEnumValues3 = filterMapUnknownEnumValues(t5, this.intArray[i12], objFilterMapUnknownEnumValues3, r0Var, t5);
                                                }
                                                if (objFilterMapUnknownEnumValues3 != null) {
                                                    r0Var2.setBuilderToMessage(t10, objFilterMapUnknownEnumValues3);
                                                    return;
                                                }
                                                return;
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        builderFromMessage = obj;
                                        objFilterMapUnknownEnumValues = builderFromMessage;
                                        for (i10 = this.checkInitializedCount; i10 < this.repeatedFieldOffsetStart; i10++) {
                                            objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t5, this.intArray[i10], objFilterMapUnknownEnumValues, r0Var, t5);
                                        }
                                        if (objFilterMapUnknownEnumValues != null) {
                                            r0Var2.setBuilderToMessage(t10, objFilterMapUnknownEnumValues);
                                        }
                                        throw th;
                                    }
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 50:
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    try {
                                        mergeMap(t5, iPositionForFieldNumber, getMapFieldDefaultEntry(iPositionForFieldNumber), extensionRegistryLite, k0Var);
                                        r0Var2 = r0Var3;
                                        builderFromMessage = obj;
                                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused2) {
                                        r0Var2 = r0Var3;
                                        builderFromMessage = obj;
                                        if (!r0Var2.shouldDiscardUnknownFields(k0Var)) {
                                            if (builderFromMessage == null) {
                                                builderFromMessage = r0Var2.getBuilderFromMessage(t10);
                                            }
                                            if (!r0Var2.mergeOneFieldFrom(builderFromMessage, k0Var)) {
                                                objFilterMapUnknownEnumValues2 = builderFromMessage;
                                                while (i11 < this.repeatedFieldOffsetStart) {
                                                    objFilterMapUnknownEnumValues2 = filterMapUnknownEnumValues(t5, this.intArray[i11], objFilterMapUnknownEnumValues2, r0Var, t5);
                                                }
                                                if (objFilterMapUnknownEnumValues2 != null) {
                                                    r0Var2.setBuilderToMessage(t10, objFilterMapUnknownEnumValues2);
                                                    return;
                                                }
                                                return;
                                            }
                                        } else if (!k0Var.skipField()) {
                                            objFilterMapUnknownEnumValues3 = builderFromMessage;
                                            while (i12 < this.repeatedFieldOffsetStart) {
                                                objFilterMapUnknownEnumValues3 = filterMapUnknownEnumValues(t5, this.intArray[i12], objFilterMapUnknownEnumValues3, r0Var, t5);
                                            }
                                            if (objFilterMapUnknownEnumValues3 != null) {
                                                r0Var2.setBuilderToMessage(t10, objFilterMapUnknownEnumValues3);
                                                return;
                                            }
                                            return;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        r0Var2 = r0Var3;
                                        builderFromMessage = obj;
                                        objFilterMapUnknownEnumValues = builderFromMessage;
                                        while (i10 < this.repeatedFieldOffsetStart) {
                                            objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t5, this.intArray[i10], objFilterMapUnknownEnumValues, r0Var, t5);
                                        }
                                        if (objFilterMapUnknownEnumValues != null) {
                                            r0Var2.setBuilderToMessage(t10, objFilterMapUnknownEnumValues);
                                        }
                                        throw th;
                                    }
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 51:
                                    t0.putObject(t10, offset(iTypeAndOffsetAt), Double.valueOf(k0Var.readDouble()));
                                    setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 52:
                                    t0.putObject(t10, offset(iTypeAndOffsetAt), Float.valueOf(k0Var.readFloat()));
                                    setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 53:
                                    t0.putObject(t10, offset(iTypeAndOffsetAt), Long.valueOf(k0Var.readInt64()));
                                    setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 54:
                                    t0.putObject(t10, offset(iTypeAndOffsetAt), Long.valueOf(k0Var.readUInt64()));
                                    setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 55:
                                    t0.putObject(t10, offset(iTypeAndOffsetAt), Integer.valueOf(k0Var.readInt32()));
                                    setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 56:
                                    t0.putObject(t10, offset(iTypeAndOffsetAt), Long.valueOf(k0Var.readFixed64()));
                                    setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 57:
                                    t0.putObject(t10, offset(iTypeAndOffsetAt), Integer.valueOf(k0Var.readFixed32()));
                                    setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 58:
                                    t0.putObject(t10, offset(iTypeAndOffsetAt), Boolean.valueOf(k0Var.readBool()));
                                    setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 59:
                                    readString(t10, iTypeAndOffsetAt, k0Var);
                                    setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 60:
                                    MessageLite messageLite3 = (MessageLite) mutableOneofMessageFieldForMerge(t10, fieldNumber, iPositionForFieldNumber);
                                    k0Var.mergeMessageField(messageLite3, getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite3);
                                    storeOneofMessageField(t10, fieldNumber, iPositionForFieldNumber, messageLite3);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 61:
                                    t0.putObject(t10, offset(iTypeAndOffsetAt), k0Var.readBytes());
                                    setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 62:
                                    t0.putObject(t10, offset(iTypeAndOffsetAt), Integer.valueOf(k0Var.readUInt32()));
                                    setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 63:
                                    int i14 = k0Var.readEnum();
                                    Internal.EnumVerifier enumFieldVerifier2 = getEnumFieldVerifier(iPositionForFieldNumber);
                                    if (enumFieldVerifier2 != null && !enumFieldVerifier2.isInRange(i14)) {
                                        builderFromMessage = o0.storeUnknownEnum(t10, fieldNumber, i14, builderFromMessage, r0Var3);
                                        extensionRegistryLite2 = extensionRegistryLite3;
                                        r0Var2 = r0Var3;
                                        t12 = t10;
                                        extensionRegistryLite3 = extensionRegistryLite2;
                                        r0Var3 = r0Var2;
                                    }
                                    t0.putObject(t10, offset(iTypeAndOffsetAt), Integer.valueOf(i14));
                                    setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 64:
                                    t0.putObject(t10, offset(iTypeAndOffsetAt), Integer.valueOf(k0Var.readSFixed32()));
                                    setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 65:
                                    t0.putObject(t10, offset(iTypeAndOffsetAt), Long.valueOf(k0Var.readSFixed64()));
                                    setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 66:
                                    t0.putObject(t10, offset(iTypeAndOffsetAt), Integer.valueOf(k0Var.readSInt32()));
                                    setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 67:
                                    t0.putObject(t10, offset(iTypeAndOffsetAt), Long.valueOf(k0Var.readSInt64()));
                                    setOneofPresent(t10, fieldNumber, iPositionForFieldNumber);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                case 68:
                                    MessageLite messageLite4 = (MessageLite) mutableOneofMessageFieldForMerge(t10, fieldNumber, iPositionForFieldNumber);
                                    k0Var.mergeGroupField(messageLite4, getMessageFieldSchema(iPositionForFieldNumber), extensionRegistryLite3);
                                    storeOneofMessageField(t10, fieldNumber, iPositionForFieldNumber, messageLite4);
                                    obj = builderFromMessage;
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    builderFromMessage = obj;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                                default:
                                    if (builderFromMessage == null) {
                                        try {
                                            builderFromMessage = r0Var3.getBuilderFromMessage(t10);
                                            break;
                                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused3) {
                                            extensionRegistryLite2 = extensionRegistryLite3;
                                            r0Var2 = r0Var3;
                                            if (!r0Var2.shouldDiscardUnknownFields(k0Var)) {
                                                if (builderFromMessage == null) {
                                                    builderFromMessage = r0Var2.getBuilderFromMessage(t10);
                                                }
                                                if (!r0Var2.mergeOneFieldFrom(builderFromMessage, k0Var)) {
                                                    objFilterMapUnknownEnumValues2 = builderFromMessage;
                                                    while (i11 < this.repeatedFieldOffsetStart) {
                                                        objFilterMapUnknownEnumValues2 = filterMapUnknownEnumValues(t5, this.intArray[i11], objFilterMapUnknownEnumValues2, r0Var, t5);
                                                    }
                                                    if (objFilterMapUnknownEnumValues2 != null) {
                                                        r0Var2.setBuilderToMessage(t10, objFilterMapUnknownEnumValues2);
                                                        return;
                                                    }
                                                    return;
                                                }
                                            } else if (!k0Var.skipField()) {
                                                objFilterMapUnknownEnumValues3 = builderFromMessage;
                                                while (i12 < this.repeatedFieldOffsetStart) {
                                                    objFilterMapUnknownEnumValues3 = filterMapUnknownEnumValues(t5, this.intArray[i12], objFilterMapUnknownEnumValues3, r0Var, t5);
                                                }
                                                if (objFilterMapUnknownEnumValues3 != null) {
                                                    r0Var2.setBuilderToMessage(t10, objFilterMapUnknownEnumValues3);
                                                    return;
                                                }
                                                return;
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                            r0Var2 = r0Var3;
                                            objFilterMapUnknownEnumValues = builderFromMessage;
                                            while (i10 < this.repeatedFieldOffsetStart) {
                                                objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t5, this.intArray[i10], objFilterMapUnknownEnumValues, r0Var, t5);
                                            }
                                            if (objFilterMapUnknownEnumValues != null) {
                                                r0Var2.setBuilderToMessage(t10, objFilterMapUnknownEnumValues);
                                            }
                                            throw th;
                                        }
                                    }
                                    if (!r0Var3.mergeOneFieldFrom(builderFromMessage, k0Var)) {
                                        Object objFilterMapUnknownEnumValues4 = builderFromMessage;
                                        for (int i15 = this.checkInitializedCount; i15 < this.repeatedFieldOffsetStart; i15++) {
                                            objFilterMapUnknownEnumValues4 = filterMapUnknownEnumValues(t5, this.intArray[i15], objFilterMapUnknownEnumValues4, r0Var, t5);
                                        }
                                        if (objFilterMapUnknownEnumValues4 != null) {
                                            r0Var3.setBuilderToMessage(t10, objFilterMapUnknownEnumValues4);
                                            return;
                                        }
                                        return;
                                    }
                                    extensionRegistryLite2 = extensionRegistryLite3;
                                    r0Var2 = r0Var3;
                                    t12 = t10;
                                    extensionRegistryLite3 = extensionRegistryLite2;
                                    r0Var3 = r0Var2;
                                    break;
                            }
                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused4) {
                        }
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } else {
                    if (fieldNumber == Integer.MAX_VALUE) {
                        Object objFilterMapUnknownEnumValues5 = builderFromMessage;
                        for (int i16 = this.checkInitializedCount; i16 < this.repeatedFieldOffsetStart; i16++) {
                            objFilterMapUnknownEnumValues5 = filterMapUnknownEnumValues(t5, this.intArray[i16], objFilterMapUnknownEnumValues5, r0Var, t5);
                        }
                        if (objFilterMapUnknownEnumValues5 != null) {
                            r0Var3.setBuilderToMessage(t12, objFilterMapUnknownEnumValues5);
                            return;
                        }
                        return;
                    }
                    try {
                        Object objFindExtensionByNumber = !this.hasExtensions ? null : jVar.findExtensionByNumber(extensionRegistryLite3, this.defaultInstance, fieldNumber);
                        if (objFindExtensionByNumber != null) {
                            if (obj2 == null) {
                                try {
                                    mutableExtensions = jVar.getMutableExtensions(t5);
                                } catch (Throwable th6) {
                                    th = th6;
                                    r0Var2 = r0Var3;
                                    t10 = t12;
                                    objFilterMapUnknownEnumValues = builderFromMessage;
                                    while (i10 < this.repeatedFieldOffsetStart) {
                                        objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t5, this.intArray[i10], objFilterMapUnknownEnumValues, r0Var, t5);
                                    }
                                    if (objFilterMapUnknownEnumValues != null) {
                                        r0Var2.setBuilderToMessage(t10, objFilterMapUnknownEnumValues);
                                    }
                                    throw th;
                                }
                            } else {
                                mutableExtensions = obj2;
                            }
                            t11 = t12;
                            try {
                                builderFromMessage = jVar.parseExtension(t5, k0Var, objFindExtensionByNumber, extensionRegistryLite, mutableExtensions, builderFromMessage, r0Var);
                                obj2 = mutableExtensions;
                            } catch (Throwable th7) {
                                th = th7;
                                t10 = t11;
                                r0Var2 = r0Var3;
                                objFilterMapUnknownEnumValues = builderFromMessage;
                                while (i10 < this.repeatedFieldOffsetStart) {
                                    objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t5, this.intArray[i10], objFilterMapUnknownEnumValues, r0Var, t5);
                                }
                                if (objFilterMapUnknownEnumValues != null) {
                                    r0Var2.setBuilderToMessage(t10, objFilterMapUnknownEnumValues);
                                }
                                throw th;
                            }
                        } else {
                            t11 = t12;
                            if (!r0Var3.shouldDiscardUnknownFields(k0Var)) {
                                if (builderFromMessage == null) {
                                    builderFromMessage = r0Var3.getBuilderFromMessage(t11);
                                }
                                if (!r0Var3.mergeOneFieldFrom(builderFromMessage, k0Var)) {
                                }
                            } else if (!k0Var.skipField()) {
                            }
                        }
                        t12 = t11;
                    } catch (Throwable th8) {
                        th = th8;
                        t10 = t12;
                    }
                }
            } catch (Throwable th9) {
                th = th9;
            }
            objFilterMapUnknownEnumValues = builderFromMessage;
            while (i10 < this.repeatedFieldOffsetStart) {
                objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(t5, this.intArray[i10], objFilterMapUnknownEnumValues, r0Var, t5);
            }
            if (objFilterMapUnknownEnumValues != null) {
                r0Var2.setBuilderToMessage(t10, objFilterMapUnknownEnumValues);
            }
            throw th;
        }
        int i17 = this.checkInitializedCount;
        Object objFilterMapUnknownEnumValues6 = builderFromMessage;
        while (i17 < this.repeatedFieldOffsetStart) {
            objFilterMapUnknownEnumValues6 = filterMapUnknownEnumValues(t5, this.intArray[i17], objFilterMapUnknownEnumValues6, r0Var, t5);
            i17++;
            t11 = t11;
        }
        T t13 = t11;
        if (objFilterMapUnknownEnumValues6 != null) {
            r0Var3.setBuilderToMessage(t13, objFilterMapUnknownEnumValues6);
        }
    }

    private static long offset(int i10) {
        return i10 & 1048575;
    }

    private <K, V> int parseMapField(T t5, byte[] bArr, int i10, int i11, int i12, long j6, c.b bVar) throws IOException {
        Unsafe unsafe = UNSAFE;
        Object mapFieldDefaultEntry = getMapFieldDefaultEntry(i12);
        Object object = unsafe.getObject(t5, j6);
        if (this.mapFieldSchema.isImmutable(object)) {
            Object objNewMapField = this.mapFieldSchema.newMapField(mapFieldDefaultEntry);
            this.mapFieldSchema.mergeFrom(objNewMapField, object);
            unsafe.putObject(t5, j6, objNewMapField);
            object = objNewMapField;
        }
        return decodeMapEntry(bArr, i10, i11, this.mapFieldSchema.forMapMetadata(mapFieldDefaultEntry), this.mapFieldSchema.forMutableMapData(object), bVar);
    }

    private int parseOneofField(T t5, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j6, int i17, c.b bVar) throws IOException {
        Unsafe unsafe = UNSAFE;
        long j10 = this.buffer[i17 + 2] & 1048575;
        switch (i16) {
            case 51:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(t5, j6, Double.valueOf(c.decodeDouble(bArr, i10)));
                int i18 = i10 + 8;
                unsafe.putInt(t5, j10, i13);
                return i18;
            case 52:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(t5, j6, Float.valueOf(c.decodeFloat(bArr, i10)));
                int i19 = i10 + 4;
                unsafe.putInt(t5, j10, i13);
                return i19;
            case 53:
            case 54:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint64 = c.decodeVarint64(bArr, i10, bVar);
                unsafe.putObject(t5, j6, Long.valueOf(bVar.long1));
                unsafe.putInt(t5, j10, i13);
                return iDecodeVarint64;
            case 55:
            case 62:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint32 = c.decodeVarint32(bArr, i10, bVar);
                unsafe.putObject(t5, j6, Integer.valueOf(bVar.int1));
                unsafe.putInt(t5, j10, i13);
                return iDecodeVarint32;
            case 56:
            case 65:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(t5, j6, Long.valueOf(c.decodeFixed64(bArr, i10)));
                int i20 = i10 + 8;
                unsafe.putInt(t5, j10, i13);
                return i20;
            case 57:
            case 64:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(t5, j6, Integer.valueOf(c.decodeFixed32(bArr, i10)));
                int i21 = i10 + 4;
                unsafe.putInt(t5, j10, i13);
                return i21;
            case 58:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint65 = c.decodeVarint64(bArr, i10, bVar);
                unsafe.putObject(t5, j6, Boolean.valueOf(bVar.long1 != 0));
                unsafe.putInt(t5, j10, i13);
                return iDecodeVarint65;
            case 59:
                if (i14 != 2) {
                    return i10;
                }
                int iDecodeVarint33 = c.decodeVarint32(bArr, i10, bVar);
                int i22 = bVar.int1;
                if (i22 == 0) {
                    unsafe.putObject(t5, j6, "");
                } else {
                    if ((i15 & 536870912) != 0 && !u0.isValidUtf8(bArr, iDecodeVarint33, iDecodeVarint33 + i22)) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    unsafe.putObject(t5, j6, new String(bArr, iDecodeVarint33, i22, Internal.UTF_8));
                    iDecodeVarint33 += i22;
                }
                unsafe.putInt(t5, j10, i13);
                return iDecodeVarint33;
            case 60:
                if (i14 != 2) {
                    return i10;
                }
                Object objMutableOneofMessageFieldForMerge = mutableOneofMessageFieldForMerge(t5, i13, i17);
                int iMergeMessageField = c.mergeMessageField(objMutableOneofMessageFieldForMerge, getMessageFieldSchema(i17), bArr, i10, i11, bVar);
                storeOneofMessageField(t5, i13, i17, objMutableOneofMessageFieldForMerge);
                return iMergeMessageField;
            case 61:
                if (i14 != 2) {
                    return i10;
                }
                int iDecodeBytes = c.decodeBytes(bArr, i10, bVar);
                unsafe.putObject(t5, j6, bVar.object1);
                unsafe.putInt(t5, j10, i13);
                return iDecodeBytes;
            case 63:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint34 = c.decodeVarint32(bArr, i10, bVar);
                int i23 = bVar.int1;
                Internal.EnumVerifier enumFieldVerifier = getEnumFieldVerifier(i17);
                if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i23)) {
                    unsafe.putObject(t5, j6, Integer.valueOf(i23));
                    unsafe.putInt(t5, j10, i13);
                } else {
                    getMutableUnknownFields(t5).storeField(i12, Long.valueOf(i23));
                }
                return iDecodeVarint34;
            case 66:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint35 = c.decodeVarint32(bArr, i10, bVar);
                unsafe.putObject(t5, j6, Integer.valueOf(CodedInputStream.decodeZigZag32(bVar.int1)));
                unsafe.putInt(t5, j10, i13);
                return iDecodeVarint35;
            case 67:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint66 = c.decodeVarint64(bArr, i10, bVar);
                unsafe.putObject(t5, j6, Long.valueOf(CodedInputStream.decodeZigZag64(bVar.long1)));
                unsafe.putInt(t5, j10, i13);
                return iDecodeVarint66;
            case 68:
                if (i14 != 3) {
                    return i10;
                }
                Object objMutableOneofMessageFieldForMerge2 = mutableOneofMessageFieldForMerge(t5, i13, i17);
                int iMergeGroupField = c.mergeGroupField(objMutableOneofMessageFieldForMerge2, getMessageFieldSchema(i17), bArr, i10, i11, (i12 & (-8)) | 4, bVar);
                storeOneofMessageField(t5, i13, i17, objMutableOneofMessageFieldForMerge2);
                return iMergeGroupField;
            default:
                return i10;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02b2 A[PHI: r0 r19 r22 r26 r27 r28
      0x02b2: PHI (r0v18 int) = (r0v14 int), (r0v17 int), (r0v21 int) binds: [B:112:0x0307, B:108:0x02e8, B:98:0x0298] A[DONT_GENERATE, DONT_INLINE]
      0x02b2: PHI (r19v3 int) = (r19v2 int), (r19v2 int), (r19v5 int) binds: [B:112:0x0307, B:108:0x02e8, B:98:0x0298] A[DONT_GENERATE, DONT_INLINE]
      0x02b2: PHI (r22v1 int) = (r22v0 int), (r22v0 int), (r22v3 int) binds: [B:112:0x0307, B:108:0x02e8, B:98:0x0298] A[DONT_GENERATE, DONT_INLINE]
      0x02b2: PHI (r26v2 int) = (r26v1 int), (r26v1 int), (r26v4 int) binds: [B:112:0x0307, B:108:0x02e8, B:98:0x0298] A[DONT_GENERATE, DONT_INLINE]
      0x02b2: PHI (r27v4 int) = (r27v3 int), (r27v3 int), (r27v6 int) binds: [B:112:0x0307, B:108:0x02e8, B:98:0x0298] A[DONT_GENERATE, DONT_INLINE]
      0x02b2: PHI (r28v5 sun.misc.Unsafe) = (r28v4 sun.misc.Unsafe), (r28v4 sun.misc.Unsafe), (r28v7 sun.misc.Unsafe) binds: [B:112:0x0307, B:108:0x02e8, B:98:0x0298] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:99:0x029a A[PHI: r0 r19 r22 r26 r27 r28
      0x029a: PHI (r0v19 int) = (r0v14 int), (r0v17 int), (r0v21 int) binds: [B:112:0x0307, B:108:0x02e8, B:98:0x0298] A[DONT_GENERATE, DONT_INLINE]
      0x029a: PHI (r19v4 int) = (r19v2 int), (r19v2 int), (r19v5 int) binds: [B:112:0x0307, B:108:0x02e8, B:98:0x0298] A[DONT_GENERATE, DONT_INLINE]
      0x029a: PHI (r22v2 int) = (r22v0 int), (r22v0 int), (r22v3 int) binds: [B:112:0x0307, B:108:0x02e8, B:98:0x0298] A[DONT_GENERATE, DONT_INLINE]
      0x029a: PHI (r26v3 int) = (r26v1 int), (r26v1 int), (r26v4 int) binds: [B:112:0x0307, B:108:0x02e8, B:98:0x0298] A[DONT_GENERATE, DONT_INLINE]
      0x029a: PHI (r27v5 int) = (r27v3 int), (r27v3 int), (r27v6 int) binds: [B:112:0x0307, B:108:0x02e8, B:98:0x0298] A[DONT_GENERATE, DONT_INLINE]
      0x029a: PHI (r28v6 sun.misc.Unsafe) = (r28v4 sun.misc.Unsafe), (r28v4 sun.misc.Unsafe), (r28v7 sun.misc.Unsafe) binds: [B:112:0x0307, B:108:0x02e8, B:98:0x0298] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0089. Please report as an issue. */
    private int parseProto3Message(T t5, byte[] bArr, int i10, int i11, c.b bVar) throws IOException {
        int i12;
        int iDecodeVarint32;
        int i13;
        int i14;
        int i15;
        Unsafe unsafe;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int iDecodeBytes;
        this = this;
        t5 = t5;
        bArr = bArr;
        i11 = i11;
        bVar = bVar;
        checkMutable(t5);
        Unsafe unsafe2 = UNSAFE;
        int i23 = -1;
        int iDecodeUnknownField = i10;
        int i24 = -1;
        int i25 = 0;
        int i26 = 0;
        int i27 = 1048575;
        while (iDecodeUnknownField < i11) {
            int i28 = iDecodeUnknownField + 1;
            byte b7 = bArr[iDecodeUnknownField];
            if (b7 < 0) {
                iDecodeVarint32 = c.decodeVarint32(b7, bArr, i28, bVar);
                i12 = bVar.int1;
            } else {
                i12 = b7;
                iDecodeVarint32 = i28;
            }
            int i29 = i12 >>> 3;
            int i30 = i12 & 7;
            int iPositionForFieldNumber = i29 > i24 ? this.positionForFieldNumber(i29, i25 / 3) : this.positionForFieldNumber(i29);
            if (iPositionForFieldNumber == i23) {
                i13 = iDecodeVarint32;
                i14 = i29;
                i15 = i23;
                unsafe = unsafe2;
                i16 = 0;
            } else {
                int i31 = this.buffer[iPositionForFieldNumber + 1];
                int iType = type(i31);
                long jOffset = offset(i31);
                if (iType <= 17) {
                    int i32 = this.buffer[iPositionForFieldNumber + 2];
                    int i33 = 1 << (i32 >>> 20);
                    int i34 = 1048575;
                    int i35 = i32 & 1048575;
                    if (i35 != i27) {
                        if (i27 != 1048575) {
                            unsafe2.putInt(t5, i27, i26);
                            i34 = 1048575;
                        }
                        if (i35 != i34) {
                            i26 = unsafe2.getInt(t5, i35);
                        }
                        i27 = i35;
                    }
                    switch (iType) {
                        case 0:
                            i14 = i29;
                            i20 = iPositionForFieldNumber;
                            i21 = iDecodeVarint32;
                            i22 = i26;
                            if (i30 != 1) {
                                i26 = i22;
                                i16 = i20;
                                unsafe = unsafe2;
                                i13 = i21;
                                i15 = -1;
                            } else {
                                t0.putDouble(t5, jOffset, c.decodeDouble(bArr, i21));
                                iDecodeUnknownField = i21 + 8;
                                i26 = i22 | i33;
                                i25 = i20;
                                i24 = i14;
                                i23 = -1;
                            }
                            break;
                        case 1:
                            i14 = i29;
                            bVar = bVar;
                            i21 = iDecodeVarint32;
                            i22 = i26;
                            i20 = iPositionForFieldNumber;
                            if (i30 != 5) {
                                i26 = i22;
                                i16 = i20;
                                unsafe = unsafe2;
                                i13 = i21;
                                i15 = -1;
                            } else {
                                t0.putFloat(t5, jOffset, c.decodeFloat(bArr, i21));
                                iDecodeUnknownField = i21 + 4;
                                i26 = i22 | i33;
                                i25 = i20;
                                i24 = i14;
                                i23 = -1;
                            }
                            break;
                        case 2:
                        case 3:
                            i14 = i29;
                            bVar = bVar;
                            i20 = iPositionForFieldNumber;
                            i21 = iDecodeVarint32;
                            i22 = i26;
                            if (i30 != 0) {
                                i26 = i22;
                                i16 = i20;
                                unsafe = unsafe2;
                                i13 = i21;
                                i15 = -1;
                            } else {
                                int iDecodeVarint64 = c.decodeVarint64(bArr, i21, bVar);
                                unsafe2.putLong(t5, jOffset, bVar.long1);
                                i26 = i22 | i33;
                                i25 = i20;
                                iDecodeUnknownField = iDecodeVarint64;
                                i24 = i14;
                                i23 = -1;
                            }
                            break;
                        case 4:
                        case 11:
                            i14 = i29;
                            bVar = bVar;
                            i20 = iPositionForFieldNumber;
                            i21 = iDecodeVarint32;
                            i22 = i26;
                            if (i30 != 0) {
                                i26 = i22;
                                i16 = i20;
                                unsafe = unsafe2;
                                i13 = i21;
                                i15 = -1;
                            } else {
                                iDecodeUnknownField = c.decodeVarint32(bArr, i21, bVar);
                                unsafe2.putInt(t5, jOffset, bVar.int1);
                                i26 = i22 | i33;
                                i25 = i20;
                                i24 = i14;
                                i23 = -1;
                            }
                            break;
                        case 5:
                        case 14:
                            i14 = i29;
                            i20 = iPositionForFieldNumber;
                            i22 = i26;
                            if (i30 != 1) {
                                i21 = iDecodeVarint32;
                                i26 = i22;
                                i16 = i20;
                                unsafe = unsafe2;
                                i13 = i21;
                                i15 = -1;
                            } else {
                                i21 = iDecodeVarint32;
                                unsafe2.putLong(t5, jOffset, c.decodeFixed64(bArr, iDecodeVarint32));
                                iDecodeUnknownField = i21 + 8;
                                i26 = i22 | i33;
                                i25 = i20;
                                i24 = i14;
                                i23 = -1;
                            }
                            break;
                        case 6:
                        case 13:
                            i14 = i29;
                            bVar = bVar;
                            i22 = i26;
                            i20 = iPositionForFieldNumber;
                            if (i30 != 5) {
                                i21 = iDecodeVarint32;
                                i26 = i22;
                                i16 = i20;
                                unsafe = unsafe2;
                                i13 = i21;
                                i15 = -1;
                            } else {
                                unsafe2.putInt(t5, jOffset, c.decodeFixed32(bArr, iDecodeVarint32));
                                iDecodeUnknownField = iDecodeVarint32 + 4;
                                i26 = i22 | i33;
                                i25 = i20;
                                i24 = i14;
                                i23 = -1;
                            }
                            break;
                        case 7:
                            i14 = i29;
                            bVar = bVar;
                            i20 = iPositionForFieldNumber;
                            i22 = i26;
                            if (i30 != 0) {
                                i21 = iDecodeVarint32;
                                i26 = i22;
                                i16 = i20;
                                unsafe = unsafe2;
                                i13 = i21;
                                i15 = -1;
                            } else {
                                int iDecodeVarint65 = c.decodeVarint64(bArr, iDecodeVarint32, bVar);
                                t0.putBoolean(t5, jOffset, bVar.long1 != 0);
                                i26 = i22 | i33;
                                iDecodeUnknownField = iDecodeVarint65;
                                i25 = i20;
                                i24 = i14;
                                i23 = -1;
                            }
                            break;
                        case 8:
                            i14 = i29;
                            bVar = bVar;
                            i20 = iPositionForFieldNumber;
                            i22 = i26;
                            if (i30 != 2) {
                                i21 = iDecodeVarint32;
                                i26 = i22;
                                i16 = i20;
                                unsafe = unsafe2;
                                i13 = i21;
                                i15 = -1;
                            } else {
                                iDecodeUnknownField = (536870912 & i31) == 0 ? c.decodeString(bArr, iDecodeVarint32, bVar) : c.decodeStringRequireUtf8(bArr, iDecodeVarint32, bVar);
                                unsafe2.putObject(t5, jOffset, bVar.object1);
                                i26 = i22 | i33;
                                i25 = i20;
                                i24 = i14;
                                i23 = -1;
                            }
                            break;
                        case 9:
                            i14 = i29;
                            bVar = bVar;
                            i20 = iPositionForFieldNumber;
                            if (i30 != 2) {
                                i21 = iDecodeVarint32;
                                i22 = i26;
                                i26 = i22;
                                i16 = i20;
                                unsafe = unsafe2;
                                i13 = i21;
                                i15 = -1;
                            } else {
                                Object objMutableMessageFieldForMerge = this.mutableMessageFieldForMerge(t5, i20);
                                iDecodeUnknownField = c.mergeMessageField(objMutableMessageFieldForMerge, this.getMessageFieldSchema(i20), bArr, iDecodeVarint32, i11, bVar);
                                this.storeMessageField(t5, i20, objMutableMessageFieldForMerge);
                                i26 |= i33;
                                i25 = i20;
                                i24 = i14;
                                i23 = -1;
                            }
                            break;
                        case 10:
                            i14 = i29;
                            bVar = bVar;
                            i20 = iPositionForFieldNumber;
                            if (i30 != 2) {
                                i21 = iDecodeVarint32;
                                i22 = i26;
                                i26 = i22;
                                i16 = i20;
                                unsafe = unsafe2;
                                i13 = i21;
                                i15 = -1;
                            } else {
                                iDecodeBytes = c.decodeBytes(bArr, iDecodeVarint32, bVar);
                                unsafe2.putObject(t5, jOffset, bVar.object1);
                                i26 |= i33;
                                iDecodeUnknownField = iDecodeBytes;
                                i25 = i20;
                                i24 = i14;
                                i23 = -1;
                            }
                            break;
                        case 12:
                            i14 = i29;
                            bVar = bVar;
                            i20 = iPositionForFieldNumber;
                            if (i30 != 0) {
                                i21 = iDecodeVarint32;
                                i22 = i26;
                                i26 = i22;
                                i16 = i20;
                                unsafe = unsafe2;
                                i13 = i21;
                                i15 = -1;
                            } else {
                                iDecodeBytes = c.decodeVarint32(bArr, iDecodeVarint32, bVar);
                                unsafe2.putInt(t5, jOffset, bVar.int1);
                                i26 |= i33;
                                iDecodeUnknownField = iDecodeBytes;
                                i25 = i20;
                                i24 = i14;
                                i23 = -1;
                            }
                            break;
                        case 15:
                            i14 = i29;
                            bVar = bVar;
                            i20 = iPositionForFieldNumber;
                            if (i30 != 0) {
                                i21 = iDecodeVarint32;
                                i22 = i26;
                                i26 = i22;
                                i16 = i20;
                                unsafe = unsafe2;
                                i13 = i21;
                                i15 = -1;
                            } else {
                                iDecodeUnknownField = c.decodeVarint32(bArr, iDecodeVarint32, bVar);
                                unsafe2.putInt(t5, jOffset, CodedInputStream.decodeZigZag32(bVar.int1));
                                i26 |= i33;
                                i25 = i20;
                                i24 = i14;
                                i23 = -1;
                            }
                            break;
                        case 16:
                            if (i30 != 0) {
                                i14 = i29;
                                i20 = iPositionForFieldNumber;
                                i21 = iDecodeVarint32;
                                i22 = i26;
                                i26 = i22;
                                i16 = i20;
                                unsafe = unsafe2;
                                i13 = i21;
                                i15 = -1;
                            } else {
                                bVar = bVar;
                                int iDecodeVarint66 = c.decodeVarint64(bArr, iDecodeVarint32, bVar);
                                i14 = i29;
                                unsafe2.putLong(t5, jOffset, CodedInputStream.decodeZigZag64(bVar.long1));
                                i26 |= i33;
                                i25 = iPositionForFieldNumber;
                                iDecodeUnknownField = iDecodeVarint66;
                                i24 = i14;
                                i23 = -1;
                            }
                            break;
                        default:
                            i14 = i29;
                            i20 = iPositionForFieldNumber;
                            i21 = iDecodeVarint32;
                            i22 = i26;
                            i26 = i22;
                            i16 = i20;
                            unsafe = unsafe2;
                            i13 = i21;
                            i15 = -1;
                            break;
                    }
                } else {
                    i14 = i29;
                    int i36 = i26;
                    bVar = bVar;
                    int i37 = iDecodeVarint32;
                    if (iType != 27) {
                        if (iType <= 49) {
                            i17 = i36;
                            i16 = iPositionForFieldNumber;
                            i15 = -1;
                            unsafe = unsafe2;
                            i18 = i27;
                            iDecodeUnknownField = parseRepeatedField(t5, bArr, i37, i11, i12, i14, i30, iPositionForFieldNumber, i31, iType, jOffset, bVar);
                            if (iDecodeUnknownField != i37) {
                                i24 = i14;
                                i23 = i15;
                                i27 = i18;
                                i26 = i17;
                            } else {
                                i13 = iDecodeUnknownField;
                                i27 = i18;
                                i26 = i17;
                            }
                        } else {
                            i17 = i36;
                            i18 = i27;
                            i16 = iPositionForFieldNumber;
                            unsafe = unsafe2;
                            i19 = i37;
                            i15 = -1;
                            if (iType == 50) {
                                if (i30 == 2) {
                                    iDecodeUnknownField = parseMapField(t5, bArr, i19, i11, i16, jOffset, bVar);
                                    if (iDecodeUnknownField != i19) {
                                        i24 = i14;
                                        i23 = i15;
                                        i27 = i18;
                                        i26 = i17;
                                    } else {
                                        i13 = iDecodeUnknownField;
                                    }
                                }
                                i27 = i18;
                                i26 = i17;
                            } else {
                                iDecodeUnknownField = parseOneofField(t5, bArr, i19, i11, i12, i14, i30, i31, iType, jOffset, i16, bVar);
                                if (iDecodeUnknownField != i19) {
                                    i24 = i14;
                                    i23 = i15;
                                    i27 = i18;
                                    i26 = i17;
                                } else {
                                    i13 = iDecodeUnknownField;
                                    i27 = i18;
                                    i26 = i17;
                                }
                            }
                        }
                        i25 = i16;
                        unsafe2 = unsafe;
                    } else if (i30 == 2) {
                        Internal.ProtobufList protobufListMutableCopyWithCapacity2 = (Internal.ProtobufList) unsafe2.getObject(t5, jOffset);
                        if (!protobufListMutableCopyWithCapacity2.isModifiable()) {
                            int size = protobufListMutableCopyWithCapacity2.size();
                            protobufListMutableCopyWithCapacity2 = protobufListMutableCopyWithCapacity2.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
                            unsafe2.putObject(t5, jOffset, protobufListMutableCopyWithCapacity2);
                        }
                        iDecodeUnknownField = c.decodeMessageList(this.getMessageFieldSchema(iPositionForFieldNumber), i12, bArr, i37, i11, protobufListMutableCopyWithCapacity2, bVar);
                        i25 = iPositionForFieldNumber;
                        i26 = i36;
                        i24 = i14;
                        i23 = -1;
                    } else {
                        i18 = i27;
                        i16 = iPositionForFieldNumber;
                        unsafe = unsafe2;
                        i19 = i37;
                        i17 = i36;
                        i15 = -1;
                    }
                    i13 = i19;
                    i27 = i18;
                    i26 = i17;
                }
            }
            iDecodeUnknownField = c.decodeUnknownField(i12, bArr, i13, i11, getMutableUnknownFields(t5), bVar);
            i24 = i14;
            i23 = i15;
            i25 = i16;
            unsafe2 = unsafe;
        }
        int i38 = i26;
        Unsafe unsafe3 = unsafe2;
        if (i27 != 1048575) {
            unsafe3.putInt(t5, i27, i38);
        }
        if (iDecodeUnknownField == i11) {
            return iDecodeUnknownField;
        }
        throw InvalidProtocolBufferException.parseFailure();
    }

    private int parseRepeatedField(T t5, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, long j6, int i16, long j10, c.b bVar) throws IOException {
        int iDecodeVarint32List;
        Unsafe unsafe = UNSAFE;
        Internal.ProtobufList protobufListMutableCopyWithCapacity2 = (Internal.ProtobufList) unsafe.getObject(t5, j10);
        if (!protobufListMutableCopyWithCapacity2.isModifiable()) {
            int size = protobufListMutableCopyWithCapacity2.size();
            protobufListMutableCopyWithCapacity2 = protobufListMutableCopyWithCapacity2.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
            unsafe.putObject(t5, j10, protobufListMutableCopyWithCapacity2);
        }
        switch (i16) {
            case 18:
            case 35:
                if (i14 == 2) {
                    return c.decodePackedDoubleList(bArr, i10, protobufListMutableCopyWithCapacity2, bVar);
                }
                return i14 == 1 ? c.decodeDoubleList(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, bVar) : i10;
            case 19:
            case 36:
                if (i14 == 2) {
                    return c.decodePackedFloatList(bArr, i10, protobufListMutableCopyWithCapacity2, bVar);
                }
                return i14 == 5 ? c.decodeFloatList(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, bVar) : i10;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i14 == 2) {
                    return c.decodePackedVarint64List(bArr, i10, protobufListMutableCopyWithCapacity2, bVar);
                }
                return i14 == 0 ? c.decodeVarint64List(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, bVar) : i10;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i14 == 2) {
                    return c.decodePackedVarint32List(bArr, i10, protobufListMutableCopyWithCapacity2, bVar);
                }
                return i14 == 0 ? c.decodeVarint32List(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, bVar) : i10;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i14 == 2) {
                    return c.decodePackedFixed64List(bArr, i10, protobufListMutableCopyWithCapacity2, bVar);
                }
                return i14 == 1 ? c.decodeFixed64List(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, bVar) : i10;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i14 == 2) {
                    return c.decodePackedFixed32List(bArr, i10, protobufListMutableCopyWithCapacity2, bVar);
                }
                return i14 == 5 ? c.decodeFixed32List(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, bVar) : i10;
            case 25:
            case 42:
                if (i14 == 2) {
                    return c.decodePackedBoolList(bArr, i10, protobufListMutableCopyWithCapacity2, bVar);
                }
                return i14 == 0 ? c.decodeBoolList(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, bVar) : i10;
            case 26:
                if (i14 == 2) {
                    return (j6 & 536870912) == 0 ? c.decodeStringList(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, bVar) : c.decodeStringListRequireUtf8(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, bVar);
                }
                return i10;
            case 27:
                return i14 == 2 ? c.decodeMessageList(getMessageFieldSchema(i15), i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, bVar) : i10;
            case 28:
                return i14 == 2 ? c.decodeBytesList(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, bVar) : i10;
            case 30:
            case 44:
                if (i14 == 2) {
                    iDecodeVarint32List = c.decodePackedVarint32List(bArr, i10, protobufListMutableCopyWithCapacity2, bVar);
                } else {
                    if (i14 != 0) {
                        return i10;
                    }
                    iDecodeVarint32List = c.decodeVarint32List(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, bVar);
                }
                o0.filterUnknownEnumList((Object) t5, i13, (List<Integer>) protobufListMutableCopyWithCapacity2, getEnumFieldVerifier(i15), (Object) null, (r0<UT, Object>) this.unknownFieldSchema);
                return iDecodeVarint32List;
            case 33:
            case 47:
                if (i14 == 2) {
                    return c.decodePackedSInt32List(bArr, i10, protobufListMutableCopyWithCapacity2, bVar);
                }
                return i14 == 0 ? c.decodeSInt32List(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, bVar) : i10;
            case 34:
            case 48:
                if (i14 == 2) {
                    return c.decodePackedSInt64List(bArr, i10, protobufListMutableCopyWithCapacity2, bVar);
                }
                return i14 == 0 ? c.decodeSInt64List(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, bVar) : i10;
            case 49:
                return i14 == 3 ? c.decodeGroupList(getMessageFieldSchema(i15), i12, bArr, i10, i11, protobufListMutableCopyWithCapacity2, bVar) : i10;
            default:
                return i10;
        }
    }

    private int positionForFieldNumber(int i10) {
        if (i10 < this.minFieldNumber || i10 > this.maxFieldNumber) {
            return -1;
        }
        return slowPositionForFieldNumber(i10, 0);
    }

    private static int type(int i10) {
        return (i10 & FIELD_TYPE_MASK) >>> 20;
    }

    @Override // com.google.protobuf.m0
    public boolean equals(T t5, T t10) {
        int length = this.buffer.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            if (!equals(t5, t10, i10)) {
                return false;
            }
        }
        if (!this.unknownFieldSchema.getFromMessage(t5).equals(this.unknownFieldSchema.getFromMessage(t10))) {
            return false;
        }
        if (this.hasExtensions) {
            return this.extensionSchema.getExtensions(t5).equals(this.extensionSchema.getExtensions(t10));
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0089  */
    /* JADX WARN: Code duplicated, block: B:58:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00aa A[SYNTHETIC] */
    @Override // com.google.protobuf.m0
    public final boolean isInitialized(T t5) {
        int i10;
        int i11;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        while (i14 < this.checkInitializedCount) {
            int i15 = this.intArray[i14];
            int iNumberAt = numberAt(i15);
            int iTypeAndOffsetAt = typeAndOffsetAt(i15);
            int i16 = this.buffer[i15 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i12) {
                if (i17 != 1048575) {
                    i13 = UNSAFE.getInt(t5, i17);
                }
                i11 = i13;
                i10 = i17;
            } else {
                i10 = i12;
                i11 = i13;
            }
            if (isRequired(iTypeAndOffsetAt) && !isFieldPresent(t5, i15, i10, i11, i18)) {
                return false;
            }
            int iType = type(iTypeAndOffsetAt);
            if (iType == 9 || iType == 17) {
                if (isFieldPresent(t5, i15, i10, i11, i18) && !isInitialized(t5, iTypeAndOffsetAt, getMessageFieldSchema(i15))) {
                    return false;
                }
            } else if (iType == 27) {
                if (!isListInitialized(t5, iTypeAndOffsetAt, i15)) {
                    return false;
                }
            } else if (iType == 60 || iType == 68) {
                if (isOneofPresent(t5, iNumberAt, i15) && !isInitialized(t5, iTypeAndOffsetAt, getMessageFieldSchema(i15))) {
                    return false;
                }
            } else if (iType != 49) {
                if (iType == 50 && !isMapInitialized(t5, iTypeAndOffsetAt, i15)) {
                    return false;
                }
            } else if (!isListInitialized(t5, iTypeAndOffsetAt, i15)) {
                return false;
            }
            i14++;
            i12 = i10;
            i13 = i11;
        }
        return !this.hasExtensions || this.extensionSchema.getExtensions(t5).isInitialized();
    }

    @Override // com.google.protobuf.m0
    public void mergeFrom(T t5, T t10) {
        checkMutable(t5);
        t10.getClass();
        for (int i10 = 0; i10 < this.buffer.length; i10 += 3) {
            mergeSingleField(t5, t10, i10);
        }
        o0.mergeUnknownFields(this.unknownFieldSchema, t5, t10);
        if (this.hasExtensions) {
            o0.mergeExtensions(this.extensionSchema, t5, t10);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x0090. Please report as an issue. */
    int parseProto2Message(T t5, byte[] bArr, int i10, int i11, int i12, c.b bVar) throws IOException {
        Unsafe unsafe;
        z<T> zVar;
        int i13;
        int i14;
        int i15;
        int i16;
        T t10;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        byte[] bArr2;
        int iDecodeVarint64;
        int i28;
        int i29;
        z<T> zVar2 = this;
        T t11 = t5;
        byte[] bArr3 = bArr;
        int i30 = i11;
        i12 = i12;
        c.b bVar2 = bVar;
        checkMutable(t5);
        Unsafe unsafe2 = UNSAFE;
        int iDecodeUnknownField = i10;
        int i31 = 0;
        int i32 = 0;
        int i33 = 0;
        int i34 = -1;
        int i35 = 1048575;
        while (true) {
            if (iDecodeUnknownField < i30) {
                int i36 = iDecodeUnknownField + 1;
                byte b7 = bArr3[iDecodeUnknownField];
                if (b7 < 0) {
                    int iDecodeVarint32 = c.decodeVarint32(b7, bArr3, i36, bVar2);
                    i17 = bVar2.int1;
                    i36 = iDecodeVarint32;
                } else {
                    i17 = b7;
                }
                int i37 = i17 >>> 3;
                int i38 = i17 & 7;
                int iPositionForFieldNumber = i37 > i34 ? zVar2.positionForFieldNumber(i37, i31 / 3) : zVar2.positionForFieldNumber(i37);
                if (iPositionForFieldNumber == -1) {
                    i18 = i37;
                    i19 = i36;
                    i14 = i17;
                    i20 = i33;
                    i21 = i35;
                    unsafe = unsafe2;
                    i12 = i12;
                    i22 = 0;
                } else {
                    int i39 = zVar2.buffer[iPositionForFieldNumber + 1];
                    int iType = type(i39);
                    long jOffset = offset(i39);
                    int i40 = i17;
                    if (iType <= 17) {
                        int i41 = zVar2.buffer[iPositionForFieldNumber + 2];
                        int i42 = 1 << (i41 >>> 20);
                        int i43 = i41 & 1048575;
                        if (i43 != i35) {
                            if (i35 != 1048575) {
                                unsafe2.putInt(t11, i35, i33);
                            }
                            i24 = i43;
                            i23 = unsafe2.getInt(t11, i43);
                        } else {
                            i23 = i33;
                            i24 = i35;
                        }
                        switch (iType) {
                            case 0:
                                bArr2 = bArr;
                                i18 = i37;
                                i27 = iPositionForFieldNumber;
                                i25 = i24;
                                i26 = i40;
                                if (i38 == 1) {
                                    t0.putDouble(t11, jOffset, c.decodeDouble(bArr2, i36));
                                    iDecodeUnknownField = i36 + 8;
                                    i33 = i23 | i42;
                                    i31 = i27;
                                    i32 = i26;
                                    i34 = i18;
                                    i35 = i25;
                                    bArr3 = bArr2;
                                } else {
                                    i21 = i25;
                                    i12 = i12;
                                    i19 = i36;
                                    i22 = i27;
                                    unsafe = unsafe2;
                                    i20 = i23;
                                    i14 = i26;
                                }
                                break;
                            case 1:
                                bArr2 = bArr;
                                i18 = i37;
                                i27 = iPositionForFieldNumber;
                                i25 = i24;
                                i26 = i40;
                                if (i38 == 5) {
                                    t0.putFloat(t11, jOffset, c.decodeFloat(bArr2, i36));
                                    iDecodeUnknownField = i36 + 4;
                                    i33 = i23 | i42;
                                    i31 = i27;
                                    i32 = i26;
                                    i34 = i18;
                                    i35 = i25;
                                    bArr3 = bArr2;
                                } else {
                                    i21 = i25;
                                    i12 = i12;
                                    i19 = i36;
                                    i22 = i27;
                                    unsafe = unsafe2;
                                    i20 = i23;
                                    i14 = i26;
                                }
                                break;
                            case 2:
                            case 3:
                                bArr2 = bArr;
                                i18 = i37;
                                i27 = iPositionForFieldNumber;
                                i25 = i24;
                                i26 = i40;
                                if (i38 == 0) {
                                    iDecodeVarint64 = c.decodeVarint64(bArr2, i36, bVar2);
                                    unsafe2.putLong(t5, jOffset, bVar2.long1);
                                    i33 = i23 | i42;
                                    i31 = i27;
                                    iDecodeUnknownField = iDecodeVarint64;
                                    i32 = i26;
                                    i34 = i18;
                                    i35 = i25;
                                    bArr3 = bArr2;
                                } else {
                                    i21 = i25;
                                    i12 = i12;
                                    i19 = i36;
                                    i22 = i27;
                                    unsafe = unsafe2;
                                    i20 = i23;
                                    i14 = i26;
                                }
                                break;
                            case 4:
                            case 11:
                                bArr2 = bArr;
                                i18 = i37;
                                i27 = iPositionForFieldNumber;
                                i25 = i24;
                                i26 = i40;
                                if (i38 == 0) {
                                    iDecodeUnknownField = c.decodeVarint32(bArr2, i36, bVar2);
                                    unsafe2.putInt(t11, jOffset, bVar2.int1);
                                    i33 = i23 | i42;
                                    i31 = i27;
                                    i32 = i26;
                                    i34 = i18;
                                    i35 = i25;
                                    bArr3 = bArr2;
                                } else {
                                    i21 = i25;
                                    i12 = i12;
                                    i19 = i36;
                                    i22 = i27;
                                    unsafe = unsafe2;
                                    i20 = i23;
                                    i14 = i26;
                                }
                                break;
                            case 5:
                            case 14:
                                bArr2 = bArr;
                                i18 = i37;
                                i27 = iPositionForFieldNumber;
                                i25 = i24;
                                i26 = i40;
                                if (i38 == 1) {
                                    unsafe2.putLong(t5, jOffset, c.decodeFixed64(bArr2, i36));
                                    iDecodeUnknownField = i36 + 8;
                                    i33 = i23 | i42;
                                    i31 = i27;
                                    i32 = i26;
                                    i34 = i18;
                                    i35 = i25;
                                    bArr3 = bArr2;
                                } else {
                                    i21 = i25;
                                    i12 = i12;
                                    i19 = i36;
                                    i22 = i27;
                                    unsafe = unsafe2;
                                    i20 = i23;
                                    i14 = i26;
                                }
                                break;
                            case 6:
                            case 13:
                                bArr2 = bArr;
                                i18 = i37;
                                i27 = iPositionForFieldNumber;
                                i25 = i24;
                                i26 = i40;
                                if (i38 == 5) {
                                    unsafe2.putInt(t11, jOffset, c.decodeFixed32(bArr2, i36));
                                    iDecodeUnknownField = i36 + 4;
                                    i33 = i23 | i42;
                                    i31 = i27;
                                    i32 = i26;
                                    i34 = i18;
                                    i35 = i25;
                                    bArr3 = bArr2;
                                } else {
                                    i21 = i25;
                                    i12 = i12;
                                    i19 = i36;
                                    i22 = i27;
                                    unsafe = unsafe2;
                                    i20 = i23;
                                    i14 = i26;
                                }
                                break;
                            case 7:
                                bArr2 = bArr;
                                i18 = i37;
                                i27 = iPositionForFieldNumber;
                                i25 = i24;
                                i26 = i40;
                                if (i38 == 0) {
                                    iDecodeUnknownField = c.decodeVarint64(bArr2, i36, bVar2);
                                    t0.putBoolean(t11, jOffset, bVar2.long1 != 0);
                                    i33 = i23 | i42;
                                    i31 = i27;
                                    i32 = i26;
                                    i34 = i18;
                                    i35 = i25;
                                    bArr3 = bArr2;
                                } else {
                                    i21 = i25;
                                    i12 = i12;
                                    i19 = i36;
                                    i22 = i27;
                                    unsafe = unsafe2;
                                    i20 = i23;
                                    i14 = i26;
                                }
                                break;
                            case 8:
                                bArr2 = bArr;
                                i18 = i37;
                                i27 = iPositionForFieldNumber;
                                i25 = i24;
                                i26 = i40;
                                if (i38 == 2) {
                                    iDecodeUnknownField = (536870912 & i39) == 0 ? c.decodeString(bArr2, i36, bVar2) : c.decodeStringRequireUtf8(bArr2, i36, bVar2);
                                    unsafe2.putObject(t11, jOffset, bVar2.object1);
                                    i33 = i23 | i42;
                                    i31 = i27;
                                    i32 = i26;
                                    i34 = i18;
                                    i35 = i25;
                                    bArr3 = bArr2;
                                } else {
                                    i21 = i25;
                                    i12 = i12;
                                    i19 = i36;
                                    i22 = i27;
                                    unsafe = unsafe2;
                                    i20 = i23;
                                    i14 = i26;
                                }
                                break;
                            case 9:
                                bArr2 = bArr;
                                i18 = i37;
                                i27 = iPositionForFieldNumber;
                                i25 = i24;
                                i26 = i40;
                                if (i38 == 2) {
                                    Object objMutableMessageFieldForMerge = zVar2.mutableMessageFieldForMerge(t11, i27);
                                    iDecodeUnknownField = c.mergeMessageField(objMutableMessageFieldForMerge, zVar2.getMessageFieldSchema(i27), bArr, i36, i11, bVar);
                                    zVar2.storeMessageField(t11, i27, objMutableMessageFieldForMerge);
                                    i33 = i23 | i42;
                                    i31 = i27;
                                    i32 = i26;
                                    i34 = i18;
                                    i35 = i25;
                                    bArr3 = bArr2;
                                } else {
                                    i21 = i25;
                                    i12 = i12;
                                    i19 = i36;
                                    i22 = i27;
                                    unsafe = unsafe2;
                                    i20 = i23;
                                    i14 = i26;
                                }
                                break;
                            case 10:
                                bArr2 = bArr;
                                i18 = i37;
                                i27 = iPositionForFieldNumber;
                                i25 = i24;
                                i26 = i40;
                                if (i38 == 2) {
                                    iDecodeUnknownField = c.decodeBytes(bArr2, i36, bVar2);
                                    unsafe2.putObject(t11, jOffset, bVar2.object1);
                                    i33 = i23 | i42;
                                    i31 = i27;
                                    i32 = i26;
                                    i34 = i18;
                                    i35 = i25;
                                    bArr3 = bArr2;
                                } else {
                                    i21 = i25;
                                    i12 = i12;
                                    i19 = i36;
                                    i22 = i27;
                                    unsafe = unsafe2;
                                    i20 = i23;
                                    i14 = i26;
                                }
                                break;
                            case 12:
                                bArr2 = bArr;
                                i18 = i37;
                                i27 = iPositionForFieldNumber;
                                i25 = i24;
                                i26 = i40;
                                if (i38 == 0) {
                                    iDecodeUnknownField = c.decodeVarint32(bArr2, i36, bVar2);
                                    int i44 = bVar2.int1;
                                    Internal.EnumVerifier enumFieldVerifier = zVar2.getEnumFieldVerifier(i27);
                                    if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i44)) {
                                        unsafe2.putInt(t11, jOffset, i44);
                                        i33 = i23 | i42;
                                        i31 = i27;
                                        i32 = i26;
                                        i34 = i18;
                                        i35 = i25;
                                    } else {
                                        getMutableUnknownFields(t5).storeField(i26, Long.valueOf(i44));
                                        i31 = i27;
                                        i33 = i23;
                                        i32 = i26;
                                        i34 = i18;
                                        i35 = i25;
                                        i12 = i12;
                                    }
                                    bArr3 = bArr2;
                                } else {
                                    i21 = i25;
                                    i12 = i12;
                                    i19 = i36;
                                    i22 = i27;
                                    unsafe = unsafe2;
                                    i20 = i23;
                                    i14 = i26;
                                }
                                break;
                            case 15:
                                bArr2 = bArr;
                                i18 = i37;
                                i27 = iPositionForFieldNumber;
                                i25 = i24;
                                i26 = i40;
                                if (i38 == 0) {
                                    iDecodeUnknownField = c.decodeVarint32(bArr2, i36, bVar2);
                                    unsafe2.putInt(t11, jOffset, CodedInputStream.decodeZigZag32(bVar2.int1));
                                    i33 = i23 | i42;
                                    i31 = i27;
                                    i32 = i26;
                                    i34 = i18;
                                    i35 = i25;
                                    bArr3 = bArr2;
                                } else {
                                    i21 = i25;
                                    i12 = i12;
                                    i19 = i36;
                                    i22 = i27;
                                    unsafe = unsafe2;
                                    i20 = i23;
                                    i14 = i26;
                                }
                                break;
                            case 16:
                                i18 = i37;
                                i27 = iPositionForFieldNumber;
                                i25 = i24;
                                i26 = i40;
                                bArr2 = bArr;
                                if (i38 == 0) {
                                    iDecodeVarint64 = c.decodeVarint64(bArr2, i36, bVar2);
                                    unsafe2.putLong(t5, jOffset, CodedInputStream.decodeZigZag64(bVar2.long1));
                                    i33 = i23 | i42;
                                    i31 = i27;
                                    iDecodeUnknownField = iDecodeVarint64;
                                    i32 = i26;
                                    i34 = i18;
                                    i35 = i25;
                                    bArr3 = bArr2;
                                } else {
                                    i21 = i25;
                                    i12 = i12;
                                    i19 = i36;
                                    i22 = i27;
                                    unsafe = unsafe2;
                                    i20 = i23;
                                    i14 = i26;
                                }
                                break;
                            case 17:
                                if (i38 == 3) {
                                    Object objMutableMessageFieldForMerge2 = zVar2.mutableMessageFieldForMerge(t11, iPositionForFieldNumber);
                                    iDecodeUnknownField = c.mergeGroupField(objMutableMessageFieldForMerge2, zVar2.getMessageFieldSchema(iPositionForFieldNumber), bArr, i36, i11, (i37 << 3) | 4, bVar);
                                    zVar2.storeMessageField(t11, iPositionForFieldNumber, objMutableMessageFieldForMerge2);
                                    i33 = i23 | i42;
                                    i35 = i24;
                                    i12 = i12;
                                    i31 = iPositionForFieldNumber;
                                    i32 = i40;
                                    i34 = i37;
                                    bArr3 = bArr;
                                } else {
                                    i18 = i37;
                                    i25 = i24;
                                    i26 = i40;
                                    i27 = iPositionForFieldNumber;
                                    i21 = i25;
                                    i12 = i12;
                                    i19 = i36;
                                    i22 = i27;
                                    unsafe = unsafe2;
                                    i20 = i23;
                                    i14 = i26;
                                }
                                break;
                            default:
                                i18 = i37;
                                i27 = iPositionForFieldNumber;
                                i25 = i24;
                                i26 = i40;
                                i21 = i25;
                                i12 = i12;
                                i19 = i36;
                                i22 = i27;
                                unsafe = unsafe2;
                                i20 = i23;
                                i14 = i26;
                                break;
                        }
                    } else {
                        i18 = i37;
                        i21 = i35;
                        i20 = i33;
                        if (iType == 27) {
                            if (i38 == 2) {
                                Internal.ProtobufList protobufListMutableCopyWithCapacity2 = (Internal.ProtobufList) unsafe2.getObject(t11, jOffset);
                                if (!protobufListMutableCopyWithCapacity2.isModifiable()) {
                                    int size = protobufListMutableCopyWithCapacity2.size();
                                    protobufListMutableCopyWithCapacity2 = protobufListMutableCopyWithCapacity2.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
                                    unsafe2.putObject(t11, jOffset, protobufListMutableCopyWithCapacity2);
                                }
                                iDecodeUnknownField = c.decodeMessageList(zVar2.getMessageFieldSchema(iPositionForFieldNumber), i40, bArr, i36, i11, protobufListMutableCopyWithCapacity2, bVar);
                                i31 = iPositionForFieldNumber;
                                i32 = i40;
                                i35 = i21;
                                i33 = i20;
                                i34 = i18;
                                bArr3 = bArr;
                                i12 = i12;
                            } else {
                                i28 = i36;
                                unsafe = unsafe2;
                                i22 = iPositionForFieldNumber;
                                i29 = i40;
                                i19 = i28;
                                i14 = i29;
                            }
                        } else if (iType <= 49) {
                            int i45 = i36;
                            unsafe = unsafe2;
                            i22 = iPositionForFieldNumber;
                            i29 = i40;
                            iDecodeUnknownField = parseRepeatedField(t5, bArr, i36, i11, i40, i18, i38, iPositionForFieldNumber, i39, iType, jOffset, bVar);
                            if (iDecodeUnknownField != i45) {
                                zVar2 = this;
                                t11 = t5;
                                bArr3 = bArr;
                                i30 = i11;
                                i12 = i12;
                                bVar2 = bVar;
                                i35 = i21;
                                i33 = i20;
                                i31 = i22;
                                i32 = i29;
                                i34 = i18;
                                unsafe2 = unsafe;
                            } else {
                                i19 = iDecodeUnknownField;
                                i14 = i29;
                            }
                        } else {
                            i28 = i36;
                            unsafe = unsafe2;
                            i22 = iPositionForFieldNumber;
                            i29 = i40;
                            if (iType != 50) {
                                iDecodeUnknownField = parseOneofField(t5, bArr, i28, i11, i29, i18, i38, i39, iType, jOffset, i22, bVar);
                                if (iDecodeUnknownField != i28) {
                                    zVar2 = this;
                                    t11 = t5;
                                    bArr3 = bArr;
                                    i30 = i11;
                                    i12 = i12;
                                    bVar2 = bVar;
                                    i35 = i21;
                                    i33 = i20;
                                    i31 = i22;
                                    i32 = i29;
                                    i34 = i18;
                                    unsafe2 = unsafe;
                                } else {
                                    i19 = iDecodeUnknownField;
                                    i14 = i29;
                                }
                            } else if (i38 == 2) {
                                iDecodeUnknownField = parseMapField(t5, bArr, i28, i11, i22, jOffset, bVar);
                                if (iDecodeUnknownField != i28) {
                                    zVar2 = this;
                                    t11 = t5;
                                    bArr3 = bArr;
                                    i30 = i11;
                                    i12 = i12;
                                    bVar2 = bVar;
                                    i35 = i21;
                                    i33 = i20;
                                    i31 = i22;
                                    i32 = i29;
                                    i34 = i18;
                                    unsafe2 = unsafe;
                                } else {
                                    i19 = iDecodeUnknownField;
                                    i14 = i29;
                                }
                            } else {
                                i19 = i28;
                                i14 = i29;
                            }
                        }
                    }
                }
                if (i14 != i12 || i12 == 0) {
                    iDecodeUnknownField = (!this.hasExtensions || bVar.extensionRegistry == ExtensionRegistryLite.getEmptyRegistry()) ? c.decodeUnknownField(i14, bArr, i19, i11, getMutableUnknownFields(t5), bVar) : c.decodeExtensionOrUnknownField(i14, bArr, i19, i11, t5, this.defaultInstance, this.unknownFieldSchema, bVar);
                    t11 = t5;
                    bArr3 = bArr;
                    i30 = i11;
                    i32 = i14;
                    zVar2 = this;
                    bVar2 = bVar;
                    i35 = i21;
                    i33 = i20;
                    i31 = i22;
                    i34 = i18;
                    unsafe2 = unsafe;
                    i12 = i12;
                } else {
                    i16 = 1048575;
                    zVar = this;
                    i13 = i19;
                    i15 = i21;
                    i33 = i20;
                }
            } else {
                int i46 = i35;
                unsafe = unsafe2;
                i12 = i12;
                zVar = zVar2;
                i13 = iDecodeUnknownField;
                i14 = i32;
                i15 = i46;
                i16 = 1048575;
            }
        }
        if (i15 != i16) {
            t10 = t5;
            unsafe.putInt(t10, i15, i33);
        } else {
            t10 = t5;
        }
        UnknownFieldSetLite unknownFieldSetLite = null;
        for (int i47 = zVar.checkInitializedCount; i47 < zVar.repeatedFieldOffsetStart; i47++) {
            unknownFieldSetLite = (UnknownFieldSetLite) filterMapUnknownEnumValues(t5, zVar.intArray[i47], unknownFieldSetLite, zVar.unknownFieldSchema, t5);
        }
        if (unknownFieldSetLite != null) {
            zVar.unknownFieldSchema.setBuilderToMessage(t10, unknownFieldSetLite);
        }
        if (i12 == 0) {
            if (i13 != i11) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        } else if (i13 > i11 || i14 != i12) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return i13;
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private int decodeMapEntryValue(byte[] bArr, int i10, int i11, WireFormat.FieldType fieldType, Class<?> cls, c.b bVar) throws IOException {
        switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                int iDecodeVarint64 = c.decodeVarint64(bArr, i10, bVar);
                bVar.object1 = Boolean.valueOf(bVar.long1 != 0);
                return iDecodeVarint64;
            case 2:
                return c.decodeBytes(bArr, i10, bVar);
            case 3:
                bVar.object1 = Double.valueOf(c.decodeDouble(bArr, i10));
                return i10 + 8;
            case 4:
            case 5:
                bVar.object1 = Integer.valueOf(c.decodeFixed32(bArr, i10));
                return i10 + 4;
            case 6:
            case 7:
                bVar.object1 = Long.valueOf(c.decodeFixed64(bArr, i10));
                return i10 + 8;
            case 8:
                bVar.object1 = Float.valueOf(c.decodeFloat(bArr, i10));
                return i10 + 4;
            case 9:
            case 10:
            case 11:
                int iDecodeVarint32 = c.decodeVarint32(bArr, i10, bVar);
                bVar.object1 = Integer.valueOf(bVar.int1);
                return iDecodeVarint32;
            case 12:
            case 13:
                int iDecodeVarint65 = c.decodeVarint64(bArr, i10, bVar);
                bVar.object1 = Long.valueOf(bVar.long1);
                return iDecodeVarint65;
            case 14:
                return c.decodeMessageField(h0.getInstance().schemaFor((Class) cls), bArr, i10, i11, bVar);
            case 15:
                int iDecodeVarint33 = c.decodeVarint32(bArr, i10, bVar);
                bVar.object1 = Integer.valueOf(CodedInputStream.decodeZigZag32(bVar.int1));
                return iDecodeVarint33;
            case 16:
                int iDecodeVarint66 = c.decodeVarint64(bArr, i10, bVar);
                bVar.object1 = Long.valueOf(CodedInputStream.decodeZigZag64(bVar.long1));
                return iDecodeVarint66;
            case 17:
                return c.decodeStringRequireUtf8(bArr, i10, bVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private <K, V, UT, UB> UB filterUnknownEnumMap(int i10, int i11, Map<K, V> map, Internal.EnumVerifier enumVerifier, UB ub, r0<UT, UB> r0Var, Object obj) {
        MapEntryLite.b<?, ?> bVarForMapMetadata = this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i10));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!enumVerifier.isInRange(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = r0Var.getBuilderFromMessage(obj);
                }
                ByteString.g gVarNewCodedBuilder = ByteString.newCodedBuilder(MapEntryLite.computeSerializedSize(bVarForMapMetadata, next.getKey(), next.getValue()));
                try {
                    MapEntryLite.writeTo(gVarNewCodedBuilder.getCodedOutput(), bVarForMapMetadata, next.getKey(), next.getValue());
                    r0Var.addLengthDelimited(ub, i11, gVarNewCodedBuilder.build());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    private Internal.EnumVerifier getEnumFieldVerifier(int i10) {
        return (Internal.EnumVerifier) this.objects[((i10 / 3) * 2) + 1];
    }

    private Object getMapFieldDefaultEntry(int i10) {
        return this.objects[(i10 / 3) * 2];
    }

    private m0 getMessageFieldSchema(int i10) {
        int i11 = (i10 / 3) * 2;
        m0 m0Var = (m0) this.objects[i11];
        if (m0Var != null) {
            return m0Var;
        }
        m0<T> m0VarSchemaFor = h0.getInstance().schemaFor((Class) this.objects[i11 + 1]);
        this.objects[i11] = m0VarSchemaFor;
        return m0VarSchemaFor;
    }

    static UnknownFieldSetLite getMutableUnknownFields(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        if (unknownFieldSetLite != UnknownFieldSetLite.getDefaultInstance()) {
            return unknownFieldSetLite;
        }
        UnknownFieldSetLite unknownFieldSetLiteNewInstance = UnknownFieldSetLite.newInstance();
        generatedMessageLite.unknownFields = unknownFieldSetLiteNewInstance;
        return unknownFieldSetLiteNewInstance;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:26:0x0077 A[PHI: r6
      0x0077: PHI (r6v4 int) = 
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v8 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v9 int)
      (r6v1 int)
     binds: [B:20:0x005e, B:224:0x04c8, B:221:0x04bd, B:215:0x04a1, B:212:0x048f, B:209:0x047f, B:206:0x0471, B:203:0x0463, B:200:0x0458, B:197:0x044e, B:194:0x0440, B:191:0x0432, B:188:0x041e, B:164:0x032d, B:158:0x030f, B:152:0x02f1, B:146:0x02d3, B:140:0x02b5, B:134:0x0297, B:128:0x0279, B:122:0x025b, B:116:0x023d, B:110:0x0220, B:104:0x0203, B:98:0x01e6, B:92:0x01c9, B:85:0x01a9, B:80:0x0175, B:77:0x0169, B:74:0x0159, B:71:0x0149, B:68:0x0139, B:65:0x012d, B:62:0x0121, B:59:0x0114, B:53:0x00f6, B:50:0x00e3, B:47:0x00d2, B:44:0x00c3, B:41:0x00b4, B:39:0x00ae, B:37:0x00a7, B:34:0x009c, B:31:0x008d, B:28:0x007e, B:25:0x0076, B:23:0x0066] A[DONT_GENERATE, DONT_INLINE]] */
    private int getSerializedSizeProto2(T t5) {
        int i10;
        int i11;
        int iComputeDoubleSize;
        int iComputeBoolSize;
        int iComputeSFixed32Size;
        boolean z6;
        int iComputeSizeFixed32List;
        int iComputeSizeFixed64ListNoTag;
        int iComputeTagSize;
        int iComputeUInt32SizeNoTag;
        Unsafe unsafe = UNSAFE;
        int i12 = 1048575;
        int i13 = 1048575;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i14 < this.buffer.length) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i14);
            int iNumberAt = numberAt(i14);
            int iType = type(iTypeAndOffsetAt);
            if (iType <= 17) {
                i10 = this.buffer[i14 + 2];
                int i17 = i10 & i12;
                i11 = 1 << (i10 >>> 20);
                if (i17 != i13) {
                    i16 = unsafe.getInt(t5, i17);
                    i13 = i17;
                }
            } else {
                i10 = (!this.useCachedSizeField || iType < FieldType.DOUBLE_LIST_PACKED.id() || iType > FieldType.SINT64_LIST_PACKED.id()) ? 0 : this.buffer[i14 + 2] & i12;
                i11 = 0;
            }
            long jOffset = offset(iTypeAndOffsetAt);
            switch (iType) {
                case 0:
                    if ((i16 & i11) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeDoubleSize(iNumberAt, com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
                        i15 += iComputeDoubleSize;
                    }
                    break;
                case 1:
                    if ((i16 & i11) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i15 += iComputeDoubleSize;
                    }
                    break;
                case 2:
                    if ((i16 & i11) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeInt64Size(iNumberAt, unsafe.getLong(t5, jOffset));
                        i15 += iComputeDoubleSize;
                    }
                    break;
                case 3:
                    if ((i16 & i11) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt64Size(iNumberAt, unsafe.getLong(t5, jOffset));
                        i15 += iComputeDoubleSize;
                    }
                    break;
                case 4:
                    if ((i16 & i11) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeInt32Size(iNumberAt, unsafe.getInt(t5, jOffset));
                        i15 += iComputeDoubleSize;
                    }
                    break;
                case 5:
                    if ((i16 & i11) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i15 += iComputeDoubleSize;
                    }
                    break;
                case 6:
                    if ((i16 & i11) != 0) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i15 += iComputeDoubleSize;
                    }
                    break;
                case 7:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 8:
                    if ((i16 & i11) != 0) {
                        Object object = unsafe.getObject(t5, jOffset);
                        iComputeBoolSize = object instanceof ByteString ? CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object) : CodedOutputStream.computeStringSize(iNumberAt, (String) object);
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 9:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = o0.computeSizeMessage(iNumberAt, unsafe.getObject(t5, jOffset), getMessageFieldSchema(i14));
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 10:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) unsafe.getObject(t5, jOffset));
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 11:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeUInt32Size(iNumberAt, unsafe.getInt(t5, jOffset));
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 12:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeEnumSize(iNumberAt, unsafe.getInt(t5, jOffset));
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 13:
                    if ((i16 & i11) != 0) {
                        iComputeSFixed32Size = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i15 += iComputeSFixed32Size;
                    }
                    break;
                case 14:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 15:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeSInt32Size(iNumberAt, unsafe.getInt(t5, jOffset));
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 16:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeSInt64Size(iNumberAt, unsafe.getLong(t5, jOffset));
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 17:
                    if ((i16 & i11) != 0) {
                        iComputeBoolSize = CodedOutputStream.computeGroupSize(iNumberAt, (MessageLite) unsafe.getObject(t5, jOffset), getMessageFieldSchema(i14));
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 18:
                    iComputeBoolSize = o0.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(t5, jOffset), false);
                    i15 += iComputeBoolSize;
                    break;
                case 19:
                    z6 = false;
                    iComputeSizeFixed32List = o0.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(t5, jOffset), false);
                    i15 += iComputeSizeFixed32List;
                    break;
                case 20:
                    z6 = false;
                    iComputeSizeFixed32List = o0.computeSizeInt64List(iNumberAt, (List) unsafe.getObject(t5, jOffset), false);
                    i15 += iComputeSizeFixed32List;
                    break;
                case 21:
                    z6 = false;
                    iComputeSizeFixed32List = o0.computeSizeUInt64List(iNumberAt, (List) unsafe.getObject(t5, jOffset), false);
                    i15 += iComputeSizeFixed32List;
                    break;
                case 22:
                    z6 = false;
                    iComputeSizeFixed32List = o0.computeSizeInt32List(iNumberAt, (List) unsafe.getObject(t5, jOffset), false);
                    i15 += iComputeSizeFixed32List;
                    break;
                case 23:
                    z6 = false;
                    iComputeSizeFixed32List = o0.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(t5, jOffset), false);
                    i15 += iComputeSizeFixed32List;
                    break;
                case 24:
                    z6 = false;
                    iComputeSizeFixed32List = o0.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(t5, jOffset), false);
                    i15 += iComputeSizeFixed32List;
                    break;
                case 25:
                    z6 = false;
                    iComputeSizeFixed32List = o0.computeSizeBoolList(iNumberAt, (List) unsafe.getObject(t5, jOffset), false);
                    i15 += iComputeSizeFixed32List;
                    break;
                case 26:
                    iComputeBoolSize = o0.computeSizeStringList(iNumberAt, (List) unsafe.getObject(t5, jOffset));
                    i15 += iComputeBoolSize;
                    break;
                case 27:
                    iComputeBoolSize = o0.computeSizeMessageList(iNumberAt, (List) unsafe.getObject(t5, jOffset), getMessageFieldSchema(i14));
                    i15 += iComputeBoolSize;
                    break;
                case 28:
                    iComputeBoolSize = o0.computeSizeByteStringList(iNumberAt, (List) unsafe.getObject(t5, jOffset));
                    i15 += iComputeBoolSize;
                    break;
                case 29:
                    iComputeBoolSize = o0.computeSizeUInt32List(iNumberAt, (List) unsafe.getObject(t5, jOffset), false);
                    i15 += iComputeBoolSize;
                    break;
                case 30:
                    z6 = false;
                    iComputeSizeFixed32List = o0.computeSizeEnumList(iNumberAt, (List) unsafe.getObject(t5, jOffset), false);
                    i15 += iComputeSizeFixed32List;
                    break;
                case 31:
                    z6 = false;
                    iComputeSizeFixed32List = o0.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(t5, jOffset), false);
                    i15 += iComputeSizeFixed32List;
                    break;
                case 32:
                    z6 = false;
                    iComputeSizeFixed32List = o0.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(t5, jOffset), false);
                    i15 += iComputeSizeFixed32List;
                    break;
                case 33:
                    z6 = false;
                    iComputeSizeFixed32List = o0.computeSizeSInt32List(iNumberAt, (List) unsafe.getObject(t5, jOffset), false);
                    i15 += iComputeSizeFixed32List;
                    break;
                case 34:
                    z6 = false;
                    iComputeSizeFixed32List = o0.computeSizeSInt64List(iNumberAt, (List) unsafe.getObject(t5, jOffset), false);
                    i15 += iComputeSizeFixed32List;
                    break;
                case 35:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeFixed64ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i15 += iComputeSFixed32Size;
                    }
                    break;
                case 36:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeFixed32ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i15 += iComputeSFixed32Size;
                    }
                    break;
                case 37:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeInt64ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i15 += iComputeSFixed32Size;
                    }
                    break;
                case 38:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeUInt64ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i15 += iComputeSFixed32Size;
                    }
                    break;
                case 39:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeInt32ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i15 += iComputeSFixed32Size;
                    }
                    break;
                case 40:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeFixed64ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i15 += iComputeSFixed32Size;
                    }
                    break;
                case 41:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeFixed32ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i15 += iComputeSFixed32Size;
                    }
                    break;
                case 42:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeBoolListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i15 += iComputeSFixed32Size;
                    }
                    break;
                case 43:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeUInt32ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i15 += iComputeSFixed32Size;
                    }
                    break;
                case 44:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeEnumListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i15 += iComputeSFixed32Size;
                    }
                    break;
                case 45:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeFixed32ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i15 += iComputeSFixed32Size;
                    }
                    break;
                case 46:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeFixed64ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i15 += iComputeSFixed32Size;
                    }
                    break;
                case 47:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeSInt32ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i15 += iComputeSFixed32Size;
                    }
                    break;
                case 48:
                    iComputeSizeFixed64ListNoTag = o0.computeSizeSInt64ListNoTag((List) unsafe.getObject(t5, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i15 += iComputeSFixed32Size;
                    }
                    break;
                case 49:
                    iComputeBoolSize = o0.computeSizeGroupList(iNumberAt, (List) unsafe.getObject(t5, jOffset), getMessageFieldSchema(i14));
                    i15 += iComputeBoolSize;
                    break;
                case 50:
                    iComputeBoolSize = this.mapFieldSchema.getSerializedSize(iNumberAt, unsafe.getObject(t5, jOffset), getMapFieldDefaultEntry(i14));
                    i15 += iComputeBoolSize;
                    break;
                case 51:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        iComputeBoolSize = CodedOutputStream.computeDoubleSize(iNumberAt, com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 52:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        iComputeBoolSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 53:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        iComputeBoolSize = CodedOutputStream.computeInt64Size(iNumberAt, oneofLongAt(t5, jOffset));
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 54:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        iComputeBoolSize = CodedOutputStream.computeUInt64Size(iNumberAt, oneofLongAt(t5, jOffset));
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 55:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        iComputeBoolSize = CodedOutputStream.computeInt32Size(iNumberAt, oneofIntAt(t5, jOffset));
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 56:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        iComputeBoolSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 57:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        iComputeSFixed32Size = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i15 += iComputeSFixed32Size;
                    }
                    break;
                case 58:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        iComputeBoolSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 59:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        Object object2 = unsafe.getObject(t5, jOffset);
                        iComputeBoolSize = object2 instanceof ByteString ? CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object2) : CodedOutputStream.computeStringSize(iNumberAt, (String) object2);
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 60:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        iComputeBoolSize = o0.computeSizeMessage(iNumberAt, unsafe.getObject(t5, jOffset), getMessageFieldSchema(i14));
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 61:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        iComputeBoolSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) unsafe.getObject(t5, jOffset));
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 62:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        iComputeBoolSize = CodedOutputStream.computeUInt32Size(iNumberAt, oneofIntAt(t5, jOffset));
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 63:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        iComputeBoolSize = CodedOutputStream.computeEnumSize(iNumberAt, oneofIntAt(t5, jOffset));
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 64:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        iComputeSFixed32Size = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i15 += iComputeSFixed32Size;
                    }
                    break;
                case 65:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        iComputeBoolSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 66:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        iComputeBoolSize = CodedOutputStream.computeSInt32Size(iNumberAt, oneofIntAt(t5, jOffset));
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 67:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        iComputeBoolSize = CodedOutputStream.computeSInt64Size(iNumberAt, oneofLongAt(t5, jOffset));
                        i15 += iComputeBoolSize;
                    }
                    break;
                case 68:
                    if (isOneofPresent(t5, iNumberAt, i14)) {
                        iComputeBoolSize = CodedOutputStream.computeGroupSize(iNumberAt, (MessageLite) unsafe.getObject(t5, jOffset), getMessageFieldSchema(i14));
                        i15 += iComputeBoolSize;
                    }
                    break;
                default:
                    break;
            }
            i14 += 3;
            i12 = 1048575;
        }
        int unknownFieldsSerializedSize = i15 + getUnknownFieldsSerializedSize(this.unknownFieldSchema, t5);
        return this.hasExtensions ? unknownFieldsSerializedSize + this.extensionSchema.getExtensions(t5).getSerializedSize() : unknownFieldsSerializedSize;
    }

    private boolean isFieldPresent(T t5, int i10) {
        int iPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i10);
        long j6 = 1048575 & iPresenceMaskAndOffsetAt;
        if (j6 != 1048575) {
            return (t0.getInt(t5, j6) & (1 << (iPresenceMaskAndOffsetAt >>> 20))) != 0;
        }
        int iTypeAndOffsetAt = typeAndOffsetAt(i10);
        long jOffset = offset(iTypeAndOffsetAt);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                return Double.doubleToRawLongBits(t0.getDouble(t5, jOffset)) != 0;
            case 1:
                return Float.floatToRawIntBits(t0.getFloat(t5, jOffset)) != 0;
            case 2:
                return t0.getLong(t5, jOffset) != 0;
            case 3:
                return t0.getLong(t5, jOffset) != 0;
            case 4:
                return t0.getInt(t5, jOffset) != 0;
            case 5:
                return t0.getLong(t5, jOffset) != 0;
            case 6:
                return t0.getInt(t5, jOffset) != 0;
            case 7:
                return t0.getBoolean(t5, jOffset);
            case 8:
                Object object = t0.getObject(t5, jOffset);
                if (object instanceof String) {
                    return !((String) object).isEmpty();
                }
                if (object instanceof ByteString) {
                    return !ByteString.EMPTY.equals(object);
                }
                throw new IllegalArgumentException();
            case 9:
                return t0.getObject(t5, jOffset) != null;
            case 10:
                return !ByteString.EMPTY.equals(t0.getObject(t5, jOffset));
            case 11:
                return t0.getInt(t5, jOffset) != 0;
            case 12:
                return t0.getInt(t5, jOffset) != 0;
            case 13:
                return t0.getInt(t5, jOffset) != 0;
            case 14:
                return t0.getLong(t5, jOffset) != 0;
            case 15:
                return t0.getInt(t5, jOffset) != 0;
            case 16:
                return t0.getLong(t5, jOffset) != 0;
            case 17:
                return t0.getObject(t5, jOffset) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [com.google.protobuf.m0] */
    private boolean isMapInitialized(T t5, int i10, int i11) {
        Map<?, ?> mapForMapData = this.mapFieldSchema.forMapData(t0.getObject(t5, offset(i10)));
        if (mapForMapData.isEmpty()) {
            return true;
        }
        if (this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i11)).valueType.getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        ?? SchemaFor = 0;
        for (Object obj : mapForMapData.values()) {
            if (SchemaFor == 0) {
                SchemaFor = SchemaFor;
                SchemaFor = h0.getInstance().schemaFor((Class) obj.getClass());
            }
            SchemaFor = SchemaFor;
            if (!SchemaFor.isInitialized(obj)) {
                return false;
            }
        }
        return true;
    }

    private static boolean isMutable(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof GeneratedMessageLite) {
            return ((GeneratedMessageLite) obj).isMutable();
        }
        return true;
    }

    static <T> z<T> newSchema(Class<T> cls, w wVar, b0 b0Var, q qVar, r0<?, ?> r0Var, j<?> jVar, t tVar) {
        return wVar instanceof j0 ? newSchemaForRawMessageInfo((j0) wVar, b0Var, qVar, r0Var, jVar, tVar) : newSchemaForMessageInfo((StructuralMessageInfo) wVar, b0Var, qVar, r0Var, jVar, tVar);
    }

    private int numberAt(int i10) {
        return this.buffer[i10];
    }

    private int positionForFieldNumber(int i10, int i11) {
        if (i10 < this.minFieldNumber || i10 > this.maxFieldNumber) {
            return -1;
        }
        return slowPositionForFieldNumber(i10, i11);
    }

    private int presenceMaskAndOffsetAt(int i10) {
        return this.buffer[i10 + 2];
    }

    private <E> void readGroupList(Object obj, long j6, k0 k0Var, m0<E> m0Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        k0Var.readGroupList(this.listFieldSchema.mutableListAt(obj, j6), m0Var, extensionRegistryLite);
    }

    private int slowPositionForFieldNumber(int i10, int i11) {
        int length = (this.buffer.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int iNumberAt = numberAt(i13);
            if (i10 == iNumberAt) {
                return i13;
            }
            if (i10 < iNumberAt) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    private void storeMessageField(T t5, int i10, Object obj) {
        UNSAFE.putObject(t5, offset(typeAndOffsetAt(i10)), obj);
        setFieldPresent(t5, i10);
    }

    private void storeOneofMessageField(T t5, int i10, int i11, Object obj) {
        UNSAFE.putObject(t5, offset(typeAndOffsetAt(i11)), obj);
        setOneofPresent(t5, i10, i11);
    }

    private int typeAndOffsetAt(int i10) {
        return this.buffer[i10 + 1];
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    private void writeFieldsInAscendingOrderProto2(T t5, Writer writer) throws IOException {
        Iterator it;
        Map.Entry<?, ?> entry;
        int i10;
        if (this.hasExtensions) {
            FieldSet<T> extensions = this.extensionSchema.getExtensions(t5);
            if (extensions.isEmpty()) {
                it = null;
                entry = null;
            } else {
                it = extensions.iterator();
                entry = (Map.Entry) it.next();
            }
        } else {
            it = null;
            entry = null;
        }
        int length = this.buffer.length;
        Unsafe unsafe = UNSAFE;
        int i11 = 1048575;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        while (i13 < length) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i13);
            int iNumberAt = numberAt(i13);
            int iType = type(iTypeAndOffsetAt);
            if (iType <= 17) {
                int i15 = this.buffer[i13 + 2];
                int i16 = i15 & i11;
                if (i16 != i12) {
                    i14 = unsafe.getInt(t5, i16);
                    i12 = i16;
                }
                i10 = 1 << (i15 >>> 20);
            } else {
                i10 = 0;
            }
            while (entry != null && this.extensionSchema.extensionNumber(entry) <= iNumberAt) {
                this.extensionSchema.serializeExtension(writer, entry);
                entry = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long jOffset = offset(iTypeAndOffsetAt);
            switch (iType) {
                case 0:
                    if ((i10 & i14) != 0) {
                        writer.writeDouble(iNumberAt, doubleAt(t5, jOffset));
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 1:
                    if ((i10 & i14) != 0) {
                        writer.writeFloat(iNumberAt, floatAt(t5, jOffset));
                    } else {
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 2:
                    if ((i10 & i14) != 0) {
                        writer.writeInt64(iNumberAt, unsafe.getLong(t5, jOffset));
                    } else {
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 3:
                    if ((i10 & i14) != 0) {
                        writer.writeUInt64(iNumberAt, unsafe.getLong(t5, jOffset));
                    } else {
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 4:
                    if ((i10 & i14) != 0) {
                        writer.writeInt32(iNumberAt, unsafe.getInt(t5, jOffset));
                    } else {
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 5:
                    if ((i10 & i14) != 0) {
                        writer.writeFixed64(iNumberAt, unsafe.getLong(t5, jOffset));
                    } else {
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 6:
                    if ((i10 & i14) != 0) {
                        writer.writeFixed32(iNumberAt, unsafe.getInt(t5, jOffset));
                    } else {
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 7:
                    if ((i10 & i14) != 0) {
                        writer.writeBool(iNumberAt, booleanAt(t5, jOffset));
                    } else {
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 8:
                    if ((i10 & i14) != 0) {
                        writeString(iNumberAt, unsafe.getObject(t5, jOffset), writer);
                    } else {
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 9:
                    if ((i10 & i14) != 0) {
                        writer.writeMessage(iNumberAt, unsafe.getObject(t5, jOffset), getMessageFieldSchema(i13));
                    } else {
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 10:
                    if ((i10 & i14) != 0) {
                        writer.writeBytes(iNumberAt, (ByteString) unsafe.getObject(t5, jOffset));
                    } else {
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 11:
                    if ((i10 & i14) != 0) {
                        writer.writeUInt32(iNumberAt, unsafe.getInt(t5, jOffset));
                    } else {
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 12:
                    if ((i10 & i14) != 0) {
                        writer.writeEnum(iNumberAt, unsafe.getInt(t5, jOffset));
                    } else {
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 13:
                    if ((i10 & i14) != 0) {
                        writer.writeSFixed32(iNumberAt, unsafe.getInt(t5, jOffset));
                    } else {
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 14:
                    if ((i10 & i14) != 0) {
                        writer.writeSFixed64(iNumberAt, unsafe.getLong(t5, jOffset));
                    } else {
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 15:
                    if ((i10 & i14) != 0) {
                        writer.writeSInt32(iNumberAt, unsafe.getInt(t5, jOffset));
                    } else {
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 16:
                    if ((i10 & i14) != 0) {
                        writer.writeSInt64(iNumberAt, unsafe.getLong(t5, jOffset));
                    } else {
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 17:
                    if ((i10 & i14) != 0) {
                        writer.writeGroup(iNumberAt, unsafe.getObject(t5, jOffset), getMessageFieldSchema(i13));
                    } else {
                        continue;
                    }
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 18:
                    o0.writeDoubleList(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, false);
                    continue;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 19:
                    o0.writeFloatList(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, false);
                    continue;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 20:
                    o0.writeInt64List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, false);
                    continue;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 21:
                    o0.writeUInt64List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, false);
                    continue;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 22:
                    o0.writeInt32List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, false);
                    continue;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 23:
                    o0.writeFixed64List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, false);
                    continue;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 24:
                    o0.writeFixed32List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, false);
                    continue;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 25:
                    o0.writeBoolList(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, false);
                    continue;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 26:
                    o0.writeStringList(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer);
                    break;
                case 27:
                    o0.writeMessageList(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, getMessageFieldSchema(i13));
                    break;
                case 28:
                    o0.writeBytesList(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer);
                    break;
                case 29:
                    o0.writeUInt32List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, false);
                    continue;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 30:
                    o0.writeEnumList(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, false);
                    continue;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 31:
                    o0.writeSFixed32List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, false);
                    continue;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 32:
                    o0.writeSFixed64List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, false);
                    continue;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 33:
                    o0.writeSInt32List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, false);
                    continue;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 34:
                    o0.writeSInt64List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, false);
                    continue;
                    i13 += 3;
                    i11 = 1048575;
                    break;
                case 35:
                    o0.writeDoubleList(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, true);
                    break;
                case 36:
                    o0.writeFloatList(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, true);
                    break;
                case 37:
                    o0.writeInt64List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, true);
                    break;
                case 38:
                    o0.writeUInt64List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, true);
                    break;
                case 39:
                    o0.writeInt32List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, true);
                    break;
                case 40:
                    o0.writeFixed64List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, true);
                    break;
                case 41:
                    o0.writeFixed32List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, true);
                    break;
                case 42:
                    o0.writeBoolList(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, true);
                    break;
                case 43:
                    o0.writeUInt32List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, true);
                    break;
                case 44:
                    o0.writeEnumList(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, true);
                    break;
                case 45:
                    o0.writeSFixed32List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, true);
                    break;
                case 46:
                    o0.writeSFixed64List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, true);
                    break;
                case 47:
                    o0.writeSInt32List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, true);
                    break;
                case 48:
                    o0.writeSInt64List(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, true);
                    break;
                case 49:
                    o0.writeGroupList(numberAt(i13), (List) unsafe.getObject(t5, jOffset), writer, getMessageFieldSchema(i13));
                    break;
                case 50:
                    writeMapHelper(writer, iNumberAt, unsafe.getObject(t5, jOffset), i13);
                    break;
                case 51:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(t5, jOffset));
                    }
                    break;
                case 52:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(t5, jOffset));
                    }
                    break;
                case 53:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(t5, jOffset));
                    }
                    break;
                case 54:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(t5, jOffset));
                    }
                    break;
                case 55:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(t5, jOffset));
                    }
                    break;
                case 56:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(t5, jOffset));
                    }
                    break;
                case 57:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(t5, jOffset));
                    }
                    break;
                case 58:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(t5, jOffset));
                    }
                    break;
                case 59:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writeString(iNumberAt, unsafe.getObject(t5, jOffset), writer);
                    }
                    break;
                case 60:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writer.writeMessage(iNumberAt, unsafe.getObject(t5, jOffset), getMessageFieldSchema(i13));
                    }
                    break;
                case 61:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writer.writeBytes(iNumberAt, (ByteString) unsafe.getObject(t5, jOffset));
                    }
                    break;
                case 62:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(t5, jOffset));
                    }
                    break;
                case 63:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(t5, jOffset));
                    }
                    break;
                case 64:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(t5, jOffset));
                    }
                    break;
                case 65:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(t5, jOffset));
                    }
                    break;
                case 66:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(t5, jOffset));
                    }
                    break;
                case 67:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(t5, jOffset));
                    }
                    break;
                case 68:
                    if (isOneofPresent(t5, iNumberAt, i13)) {
                        writer.writeGroup(iNumberAt, unsafe.getObject(t5, jOffset), getMessageFieldSchema(i13));
                    }
                    break;
            }
            i13 += 3;
            i11 = 1048575;
        }
        while (entry != null) {
            this.extensionSchema.serializeExtension(writer, entry);
            entry = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        writeUnknownInMessageTo(this.unknownFieldSchema, t5, writer);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    private void writeFieldsInAscendingOrderProto3(T t5, Writer writer) throws IOException {
        Iterator it;
        Map.Entry<?, ?> entry;
        if (this.hasExtensions) {
            FieldSet<T> extensions = this.extensionSchema.getExtensions(t5);
            if (extensions.isEmpty()) {
                it = null;
                entry = null;
            } else {
                it = extensions.iterator();
                entry = (Map.Entry) it.next();
            }
        } else {
            it = null;
            entry = null;
        }
        int length = this.buffer.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i10);
            int iNumberAt = numberAt(i10);
            while (entry != null && this.extensionSchema.extensionNumber(entry) <= iNumberAt) {
                this.extensionSchema.serializeExtension(writer, entry);
                entry = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    if (isFieldPresent(t5, i10)) {
                        writer.writeDouble(iNumberAt, doubleAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 1:
                    if (isFieldPresent(t5, i10)) {
                        writer.writeFloat(iNumberAt, floatAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 2:
                    if (isFieldPresent(t5, i10)) {
                        writer.writeInt64(iNumberAt, longAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 3:
                    if (isFieldPresent(t5, i10)) {
                        writer.writeUInt64(iNumberAt, longAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 4:
                    if (isFieldPresent(t5, i10)) {
                        writer.writeInt32(iNumberAt, intAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 5:
                    if (isFieldPresent(t5, i10)) {
                        writer.writeFixed64(iNumberAt, longAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 6:
                    if (isFieldPresent(t5, i10)) {
                        writer.writeFixed32(iNumberAt, intAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 7:
                    if (isFieldPresent(t5, i10)) {
                        writer.writeBool(iNumberAt, booleanAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 8:
                    if (isFieldPresent(t5, i10)) {
                        writeString(iNumberAt, t0.getObject(t5, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 9:
                    if (isFieldPresent(t5, i10)) {
                        writer.writeMessage(iNumberAt, t0.getObject(t5, offset(iTypeAndOffsetAt)), getMessageFieldSchema(i10));
                    }
                    break;
                case 10:
                    if (isFieldPresent(t5, i10)) {
                        writer.writeBytes(iNumberAt, (ByteString) t0.getObject(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 11:
                    if (isFieldPresent(t5, i10)) {
                        writer.writeUInt32(iNumberAt, intAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 12:
                    if (isFieldPresent(t5, i10)) {
                        writer.writeEnum(iNumberAt, intAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 13:
                    if (isFieldPresent(t5, i10)) {
                        writer.writeSFixed32(iNumberAt, intAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 14:
                    if (isFieldPresent(t5, i10)) {
                        writer.writeSFixed64(iNumberAt, longAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 15:
                    if (isFieldPresent(t5, i10)) {
                        writer.writeSInt32(iNumberAt, intAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 16:
                    if (isFieldPresent(t5, i10)) {
                        writer.writeSInt64(iNumberAt, longAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 17:
                    if (isFieldPresent(t5, i10)) {
                        writer.writeGroup(iNumberAt, t0.getObject(t5, offset(iTypeAndOffsetAt)), getMessageFieldSchema(i10));
                    }
                    break;
                case 18:
                    o0.writeDoubleList(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 19:
                    o0.writeFloatList(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 20:
                    o0.writeInt64List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 21:
                    o0.writeUInt64List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 22:
                    o0.writeInt32List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 23:
                    o0.writeFixed64List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 24:
                    o0.writeFixed32List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 25:
                    o0.writeBoolList(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 26:
                    o0.writeStringList(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer);
                    break;
                case 27:
                    o0.writeMessageList(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(i10));
                    break;
                case 28:
                    o0.writeBytesList(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer);
                    break;
                case 29:
                    o0.writeUInt32List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 30:
                    o0.writeEnumList(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 31:
                    o0.writeSFixed32List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 32:
                    o0.writeSFixed64List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 33:
                    o0.writeSInt32List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 34:
                    o0.writeSInt64List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 35:
                    o0.writeDoubleList(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 36:
                    o0.writeFloatList(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 37:
                    o0.writeInt64List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 38:
                    o0.writeUInt64List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 39:
                    o0.writeInt32List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 40:
                    o0.writeFixed64List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 41:
                    o0.writeFixed32List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 42:
                    o0.writeBoolList(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 43:
                    o0.writeUInt32List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 44:
                    o0.writeEnumList(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 45:
                    o0.writeSFixed32List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 46:
                    o0.writeSFixed64List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 47:
                    o0.writeSInt32List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 48:
                    o0.writeSInt64List(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 49:
                    o0.writeGroupList(numberAt(i10), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(i10));
                    break;
                case 50:
                    writeMapHelper(writer, iNumberAt, t0.getObject(t5, offset(iTypeAndOffsetAt)), i10);
                    break;
                case 51:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 52:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 53:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 54:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 55:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 56:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 57:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 58:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 59:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writeString(iNumberAt, t0.getObject(t5, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 60:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writer.writeMessage(iNumberAt, t0.getObject(t5, offset(iTypeAndOffsetAt)), getMessageFieldSchema(i10));
                    }
                    break;
                case 61:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writer.writeBytes(iNumberAt, (ByteString) t0.getObject(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 62:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 63:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 64:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 65:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 66:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 67:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 68:
                    if (isOneofPresent(t5, iNumberAt, i10)) {
                        writer.writeGroup(iNumberAt, t0.getObject(t5, offset(iTypeAndOffsetAt)), getMessageFieldSchema(i10));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.extensionSchema.serializeExtension(writer, entry);
            entry = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        writeUnknownInMessageTo(this.unknownFieldSchema, t5, writer);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    private void writeFieldsInDescendingOrder(T t5, Writer writer) throws IOException {
        Iterator itDescendingIterator;
        Map.Entry<?, ?> entry;
        writeUnknownInMessageTo(this.unknownFieldSchema, t5, writer);
        if (this.hasExtensions) {
            FieldSet<T> extensions = this.extensionSchema.getExtensions(t5);
            if (extensions.isEmpty()) {
                itDescendingIterator = null;
                entry = null;
            } else {
                itDescendingIterator = extensions.descendingIterator();
                entry = (Map.Entry) itDescendingIterator.next();
            }
        } else {
            itDescendingIterator = null;
            entry = null;
        }
        for (int length = this.buffer.length - 3; length >= 0; length -= 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(length);
            int iNumberAt = numberAt(length);
            while (entry != null && this.extensionSchema.extensionNumber(entry) > iNumberAt) {
                this.extensionSchema.serializeExtension(writer, entry);
                entry = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
            }
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    if (isFieldPresent(t5, length)) {
                        writer.writeDouble(iNumberAt, doubleAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 1:
                    if (isFieldPresent(t5, length)) {
                        writer.writeFloat(iNumberAt, floatAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 2:
                    if (isFieldPresent(t5, length)) {
                        writer.writeInt64(iNumberAt, longAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 3:
                    if (isFieldPresent(t5, length)) {
                        writer.writeUInt64(iNumberAt, longAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 4:
                    if (isFieldPresent(t5, length)) {
                        writer.writeInt32(iNumberAt, intAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 5:
                    if (isFieldPresent(t5, length)) {
                        writer.writeFixed64(iNumberAt, longAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 6:
                    if (isFieldPresent(t5, length)) {
                        writer.writeFixed32(iNumberAt, intAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 7:
                    if (isFieldPresent(t5, length)) {
                        writer.writeBool(iNumberAt, booleanAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 8:
                    if (isFieldPresent(t5, length)) {
                        writeString(iNumberAt, t0.getObject(t5, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 9:
                    if (isFieldPresent(t5, length)) {
                        writer.writeMessage(iNumberAt, t0.getObject(t5, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 10:
                    if (isFieldPresent(t5, length)) {
                        writer.writeBytes(iNumberAt, (ByteString) t0.getObject(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 11:
                    if (isFieldPresent(t5, length)) {
                        writer.writeUInt32(iNumberAt, intAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 12:
                    if (isFieldPresent(t5, length)) {
                        writer.writeEnum(iNumberAt, intAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 13:
                    if (isFieldPresent(t5, length)) {
                        writer.writeSFixed32(iNumberAt, intAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 14:
                    if (isFieldPresent(t5, length)) {
                        writer.writeSFixed64(iNumberAt, longAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 15:
                    if (isFieldPresent(t5, length)) {
                        writer.writeSInt32(iNumberAt, intAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 16:
                    if (isFieldPresent(t5, length)) {
                        writer.writeSInt64(iNumberAt, longAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 17:
                    if (isFieldPresent(t5, length)) {
                        writer.writeGroup(iNumberAt, t0.getObject(t5, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 18:
                    o0.writeDoubleList(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 19:
                    o0.writeFloatList(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 20:
                    o0.writeInt64List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 21:
                    o0.writeUInt64List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 22:
                    o0.writeInt32List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 23:
                    o0.writeFixed64List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 24:
                    o0.writeFixed32List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 25:
                    o0.writeBoolList(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 26:
                    o0.writeStringList(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer);
                    break;
                case 27:
                    o0.writeMessageList(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(length));
                    break;
                case 28:
                    o0.writeBytesList(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer);
                    break;
                case 29:
                    o0.writeUInt32List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 30:
                    o0.writeEnumList(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 31:
                    o0.writeSFixed32List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 32:
                    o0.writeSFixed64List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 33:
                    o0.writeSInt32List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 34:
                    o0.writeSInt64List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 35:
                    o0.writeDoubleList(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 36:
                    o0.writeFloatList(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 37:
                    o0.writeInt64List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 38:
                    o0.writeUInt64List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 39:
                    o0.writeInt32List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 40:
                    o0.writeFixed64List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 41:
                    o0.writeFixed32List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 42:
                    o0.writeBoolList(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 43:
                    o0.writeUInt32List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 44:
                    o0.writeEnumList(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 45:
                    o0.writeSFixed32List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 46:
                    o0.writeSFixed64List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 47:
                    o0.writeSInt32List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 48:
                    o0.writeSInt64List(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 49:
                    o0.writeGroupList(numberAt(length), (List) t0.getObject(t5, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(length));
                    break;
                case 50:
                    writeMapHelper(writer, iNumberAt, t0.getObject(t5, offset(iTypeAndOffsetAt)), length);
                    break;
                case 51:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 52:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 53:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 54:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 55:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 56:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 57:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 58:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 59:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writeString(iNumberAt, t0.getObject(t5, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 60:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writer.writeMessage(iNumberAt, t0.getObject(t5, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 61:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writer.writeBytes(iNumberAt, (ByteString) t0.getObject(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 62:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 63:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 64:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 65:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 66:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 67:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(t5, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 68:
                    if (isOneofPresent(t5, iNumberAt, length)) {
                        writer.writeGroup(iNumberAt, t0.getObject(t5, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.extensionSchema.serializeExtension(writer, entry);
            entry = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
        }
    }

    private <K, V> void writeMapHelper(Writer writer, int i10, Object obj, int i11) throws IOException {
        if (obj != null) {
            writer.writeMap(i10, this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i11)), this.mapFieldSchema.forMapData(obj));
        }
    }

    private void writeString(int i10, Object obj, Writer writer) throws IOException {
        if (obj instanceof String) {
            writer.writeString(i10, (String) obj);
        } else {
            writer.writeBytes(i10, (ByteString) obj);
        }
    }

    int getSchemaSize() {
        return this.buffer.length * 3;
    }

    @Override // com.google.protobuf.m0
    public int getSerializedSize(T t5) {
        return this.proto3 ? getSerializedSizeProto3(t5) : getSerializedSizeProto2(t5);
    }

    @Override // com.google.protobuf.m0
    public int hashCode(T t5) {
        int i10;
        int iHashLong;
        int length = this.buffer.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i12);
            int iNumberAt = numberAt(i12);
            long jOffset = offset(iTypeAndOffsetAt);
            int iHashCode = 37;
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    i10 = i11 * 53;
                    iHashLong = Internal.hashLong(Double.doubleToLongBits(t0.getDouble(t5, jOffset)));
                    i11 = i10 + iHashLong;
                    break;
                case 1:
                    i10 = i11 * 53;
                    iHashLong = Float.floatToIntBits(t0.getFloat(t5, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 2:
                    i10 = i11 * 53;
                    iHashLong = Internal.hashLong(t0.getLong(t5, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 3:
                    i10 = i11 * 53;
                    iHashLong = Internal.hashLong(t0.getLong(t5, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 4:
                    i10 = i11 * 53;
                    iHashLong = t0.getInt(t5, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 5:
                    i10 = i11 * 53;
                    iHashLong = Internal.hashLong(t0.getLong(t5, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 6:
                    i10 = i11 * 53;
                    iHashLong = t0.getInt(t5, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 7:
                    i10 = i11 * 53;
                    iHashLong = Internal.hashBoolean(t0.getBoolean(t5, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 8:
                    i10 = i11 * 53;
                    iHashLong = ((String) t0.getObject(t5, jOffset)).hashCode();
                    i11 = i10 + iHashLong;
                    break;
                case 9:
                    Object object = t0.getObject(t5, jOffset);
                    if (object != null) {
                        iHashCode = object.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i10 = i11 * 53;
                    iHashLong = t0.getObject(t5, jOffset).hashCode();
                    i11 = i10 + iHashLong;
                    break;
                case 11:
                    i10 = i11 * 53;
                    iHashLong = t0.getInt(t5, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 12:
                    i10 = i11 * 53;
                    iHashLong = t0.getInt(t5, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 13:
                    i10 = i11 * 53;
                    iHashLong = t0.getInt(t5, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 14:
                    i10 = i11 * 53;
                    iHashLong = Internal.hashLong(t0.getLong(t5, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 15:
                    i10 = i11 * 53;
                    iHashLong = t0.getInt(t5, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 16:
                    i10 = i11 * 53;
                    iHashLong = Internal.hashLong(t0.getLong(t5, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 17:
                    Object object2 = t0.getObject(t5, jOffset);
                    if (object2 != null) {
                        iHashCode = object2.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i10 = i11 * 53;
                    iHashLong = t0.getObject(t5, jOffset).hashCode();
                    i11 = i10 + iHashLong;
                    break;
                case 50:
                    i10 = i11 * 53;
                    iHashLong = t0.getObject(t5, jOffset).hashCode();
                    i11 = i10 + iHashLong;
                    break;
                case 51:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = Internal.hashLong(Double.doubleToLongBits(oneofDoubleAt(t5, jOffset)));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 52:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = Float.floatToIntBits(oneofFloatAt(t5, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 53:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t5, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 54:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t5, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 55:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(t5, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 56:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t5, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 57:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(t5, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 58:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = Internal.hashBoolean(oneofBooleanAt(t5, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 59:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = ((String) t0.getObject(t5, jOffset)).hashCode();
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 60:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = t0.getObject(t5, jOffset).hashCode();
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 61:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = t0.getObject(t5, jOffset).hashCode();
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 62:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(t5, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 63:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(t5, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 64:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(t5, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 65:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t5, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 66:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(t5, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 67:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = Internal.hashLong(oneofLongAt(t5, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 68:
                    if (isOneofPresent(t5, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = t0.getObject(t5, jOffset).hashCode();
                        i11 = i10 + iHashLong;
                    }
                    break;
            }
        }
        int iHashCode2 = (i11 * 53) + this.unknownFieldSchema.getFromMessage(t5).hashCode();
        return this.hasExtensions ? (iHashCode2 * 53) + this.extensionSchema.getExtensions(t5).hashCode() : iHashCode2;
    }

    @Override // com.google.protobuf.m0
    public T newInstance() {
        return (T) this.newInstanceSchema.newInstance(this.defaultInstance);
    }

    private boolean arePresentForEquals(T t5, T t10, int i10) {
        if (isFieldPresent(t5, i10) == isFieldPresent(t10, i10)) {
            return true;
        }
        return false;
    }

    private static <T> boolean booleanAt(T t5, long j6) {
        return t0.getBoolean(t5, j6);
    }

    private static void checkMutable(Object obj) {
        if (isMutable(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + obj);
    }

    private static <T> double doubleAt(T t5, long j6) {
        return t0.getDouble(t5, j6);
    }

    private <UT, UB> UB filterMapUnknownEnumValues(Object obj, int i10, UB ub, r0<UT, UB> r0Var, Object obj2) {
        Internal.EnumVerifier enumFieldVerifier;
        int iNumberAt = numberAt(i10);
        Object object = t0.getObject(obj, offset(typeAndOffsetAt(i10)));
        if (object == null || (enumFieldVerifier = getEnumFieldVerifier(i10)) == null) {
            return ub;
        }
        return (UB) filterUnknownEnumMap(i10, iNumberAt, this.mapFieldSchema.forMutableMapData(object), enumFieldVerifier, ub, r0Var, obj2);
    }

    private static <T> float floatAt(T t5, long j6) {
        return t0.getFloat(t5, j6);
    }

    private <UT, UB> int getUnknownFieldsSerializedSize(r0<UT, UB> r0Var, T t5) {
        return r0Var.getSerializedSize(r0Var.getFromMessage(t5));
    }

    private static <T> int intAt(T t5, long j6) {
        return t0.getInt(t5, j6);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N> boolean isListInitialized(Object obj, int i10, int i11) {
        List list = (List) t0.getObject(obj, offset(i10));
        if (list.isEmpty()) {
            return true;
        }
        m0 messageFieldSchema = getMessageFieldSchema(i11);
        for (int i12 = 0; i12 < list.size(); i12++) {
            if (!messageFieldSchema.isInitialized(list.get(i12))) {
                return false;
            }
        }
        return true;
    }

    private boolean isOneofCaseEqual(T t5, T t10, int i10) {
        long jPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i10) & 1048575;
        if (t0.getInt(t5, jPresenceMaskAndOffsetAt) == t0.getInt(t10, jPresenceMaskAndOffsetAt)) {
            return true;
        }
        return false;
    }

    private boolean isOneofPresent(T t5, int i10, int i11) {
        if (t0.getInt(t5, presenceMaskAndOffsetAt(i11) & 1048575) == i10) {
            return true;
        }
        return false;
    }

    private static List<?> listAt(Object obj, long j6) {
        return (List) t0.getObject(obj, j6);
    }

    private static <T> long longAt(T t5, long j6) {
        return t0.getLong(t5, j6);
    }

    private final <K, V> void mergeMap(Object obj, int i10, Object obj2, ExtensionRegistryLite extensionRegistryLite, k0 k0Var) throws IOException {
        long jOffset = offset(typeAndOffsetAt(i10));
        Object object = t0.getObject(obj, jOffset);
        if (object == null) {
            object = this.mapFieldSchema.newMapField(obj2);
            t0.putObject(obj, jOffset, object);
        } else if (this.mapFieldSchema.isImmutable(object)) {
            Object objNewMapField = this.mapFieldSchema.newMapField(obj2);
            this.mapFieldSchema.mergeFrom(objNewMapField, object);
            t0.putObject(obj, jOffset, objNewMapField);
            object = objNewMapField;
        }
        k0Var.readMap(this.mapFieldSchema.forMutableMapData(object), this.mapFieldSchema.forMapMetadata(obj2), extensionRegistryLite);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void mergeMessage(T t5, T t10, int i10) {
        if (!isFieldPresent(t10, i10)) {
            return;
        }
        long jOffset = offset(typeAndOffsetAt(i10));
        Unsafe unsafe = UNSAFE;
        Object object = unsafe.getObject(t10, jOffset);
        if (object != null) {
            m0 messageFieldSchema = getMessageFieldSchema(i10);
            if (!isFieldPresent(t5, i10)) {
                if (!isMutable(object)) {
                    unsafe.putObject(t5, jOffset, object);
                } else {
                    Object objNewInstance = messageFieldSchema.newInstance();
                    messageFieldSchema.mergeFrom(objNewInstance, object);
                    unsafe.putObject(t5, jOffset, objNewInstance);
                }
                setFieldPresent(t5, i10);
                return;
            }
            Object object2 = unsafe.getObject(t5, jOffset);
            if (!isMutable(object2)) {
                Object objNewInstance2 = messageFieldSchema.newInstance();
                messageFieldSchema.mergeFrom(objNewInstance2, object2);
                unsafe.putObject(t5, jOffset, objNewInstance2);
                object2 = objNewInstance2;
            }
            messageFieldSchema.mergeFrom(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + numberAt(i10) + " is present but null: " + t10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void mergeOneofMessage(T t5, T t10, int i10) {
        int iNumberAt = numberAt(i10);
        if (!isOneofPresent(t10, iNumberAt, i10)) {
            return;
        }
        long jOffset = offset(typeAndOffsetAt(i10));
        Unsafe unsafe = UNSAFE;
        Object object = unsafe.getObject(t10, jOffset);
        if (object != null) {
            m0 messageFieldSchema = getMessageFieldSchema(i10);
            if (!isOneofPresent(t5, iNumberAt, i10)) {
                if (!isMutable(object)) {
                    unsafe.putObject(t5, jOffset, object);
                } else {
                    Object objNewInstance = messageFieldSchema.newInstance();
                    messageFieldSchema.mergeFrom(objNewInstance, object);
                    unsafe.putObject(t5, jOffset, objNewInstance);
                }
                setOneofPresent(t5, iNumberAt, i10);
                return;
            }
            Object object2 = unsafe.getObject(t5, jOffset);
            if (!isMutable(object2)) {
                Object objNewInstance2 = messageFieldSchema.newInstance();
                messageFieldSchema.mergeFrom(objNewInstance2, object2);
                unsafe.putObject(t5, jOffset, objNewInstance2);
                object2 = objNewInstance2;
            }
            messageFieldSchema.mergeFrom(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + numberAt(i10) + " is present but null: " + t10);
    }

    private void mergeSingleField(T t5, T t10, int i10) {
        int iTypeAndOffsetAt = typeAndOffsetAt(i10);
        long jOffset = offset(iTypeAndOffsetAt);
        int iNumberAt = numberAt(i10);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                if (isFieldPresent(t10, i10)) {
                    t0.putDouble(t5, jOffset, t0.getDouble(t10, jOffset));
                    setFieldPresent(t5, i10);
                }
                break;
            case 1:
                if (isFieldPresent(t10, i10)) {
                    t0.putFloat(t5, jOffset, t0.getFloat(t10, jOffset));
                    setFieldPresent(t5, i10);
                }
                break;
            case 2:
                if (isFieldPresent(t10, i10)) {
                    t0.putLong(t5, jOffset, t0.getLong(t10, jOffset));
                    setFieldPresent(t5, i10);
                }
                break;
            case 3:
                if (isFieldPresent(t10, i10)) {
                    t0.putLong(t5, jOffset, t0.getLong(t10, jOffset));
                    setFieldPresent(t5, i10);
                }
                break;
            case 4:
                if (isFieldPresent(t10, i10)) {
                    t0.putInt(t5, jOffset, t0.getInt(t10, jOffset));
                    setFieldPresent(t5, i10);
                }
                break;
            case 5:
                if (isFieldPresent(t10, i10)) {
                    t0.putLong(t5, jOffset, t0.getLong(t10, jOffset));
                    setFieldPresent(t5, i10);
                }
                break;
            case 6:
                if (isFieldPresent(t10, i10)) {
                    t0.putInt(t5, jOffset, t0.getInt(t10, jOffset));
                    setFieldPresent(t5, i10);
                }
                break;
            case 7:
                if (isFieldPresent(t10, i10)) {
                    t0.putBoolean(t5, jOffset, t0.getBoolean(t10, jOffset));
                    setFieldPresent(t5, i10);
                }
                break;
            case 8:
                if (isFieldPresent(t10, i10)) {
                    t0.putObject(t5, jOffset, t0.getObject(t10, jOffset));
                    setFieldPresent(t5, i10);
                }
                break;
            case 9:
                mergeMessage(t5, t10, i10);
                break;
            case 10:
                if (isFieldPresent(t10, i10)) {
                    t0.putObject(t5, jOffset, t0.getObject(t10, jOffset));
                    setFieldPresent(t5, i10);
                }
                break;
            case 11:
                if (isFieldPresent(t10, i10)) {
                    t0.putInt(t5, jOffset, t0.getInt(t10, jOffset));
                    setFieldPresent(t5, i10);
                }
                break;
            case 12:
                if (isFieldPresent(t10, i10)) {
                    t0.putInt(t5, jOffset, t0.getInt(t10, jOffset));
                    setFieldPresent(t5, i10);
                }
                break;
            case 13:
                if (isFieldPresent(t10, i10)) {
                    t0.putInt(t5, jOffset, t0.getInt(t10, jOffset));
                    setFieldPresent(t5, i10);
                }
                break;
            case 14:
                if (isFieldPresent(t10, i10)) {
                    t0.putLong(t5, jOffset, t0.getLong(t10, jOffset));
                    setFieldPresent(t5, i10);
                }
                break;
            case 15:
                if (isFieldPresent(t10, i10)) {
                    t0.putInt(t5, jOffset, t0.getInt(t10, jOffset));
                    setFieldPresent(t5, i10);
                }
                break;
            case 16:
                if (isFieldPresent(t10, i10)) {
                    t0.putLong(t5, jOffset, t0.getLong(t10, jOffset));
                    setFieldPresent(t5, i10);
                }
                break;
            case 17:
                mergeMessage(t5, t10, i10);
                break;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                this.listFieldSchema.mergeListsAt(t5, t10, jOffset);
                break;
            case 50:
                o0.mergeMap(this.mapFieldSchema, t5, t10, jOffset);
                break;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (isOneofPresent(t10, iNumberAt, i10)) {
                    t0.putObject(t5, jOffset, t0.getObject(t10, jOffset));
                    setOneofPresent(t5, iNumberAt, i10);
                }
                break;
            case 60:
                mergeOneofMessage(t5, t10, i10);
                break;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (isOneofPresent(t10, iNumberAt, i10)) {
                    t0.putObject(t5, jOffset, t0.getObject(t10, jOffset));
                    setOneofPresent(t5, iNumberAt, i10);
                }
                break;
            case 68:
                mergeOneofMessage(t5, t10, i10);
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Object mutableMessageFieldForMerge(T t5, int i10) {
        m0 messageFieldSchema = getMessageFieldSchema(i10);
        long jOffset = offset(typeAndOffsetAt(i10));
        if (!isFieldPresent(t5, i10)) {
            return messageFieldSchema.newInstance();
        }
        Object object = UNSAFE.getObject(t5, jOffset);
        if (isMutable(object)) {
            return object;
        }
        Object objNewInstance = messageFieldSchema.newInstance();
        if (object != null) {
            messageFieldSchema.mergeFrom(objNewInstance, object);
        }
        return objNewInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Object mutableOneofMessageFieldForMerge(T t5, int i10, int i11) {
        m0 messageFieldSchema = getMessageFieldSchema(i11);
        if (!isOneofPresent(t5, i10, i11)) {
            return messageFieldSchema.newInstance();
        }
        Object object = UNSAFE.getObject(t5, offset(typeAndOffsetAt(i11)));
        if (isMutable(object)) {
            return object;
        }
        Object objNewInstance = messageFieldSchema.newInstance();
        if (object != null) {
            messageFieldSchema.mergeFrom(objNewInstance, object);
        }
        return objNewInstance;
    }

    static <T> z<T> newSchemaForMessageInfo(StructuralMessageInfo structuralMessageInfo, b0 b0Var, q qVar, r0<?, ?> r0Var, j<?> jVar, t tVar) {
        boolean z6;
        int fieldNumber;
        int fieldNumber2;
        int[] iArr;
        if (structuralMessageInfo.getSyntax() == ProtoSyntax.PROTO3) {
            z6 = true;
        } else {
            z6 = false;
        }
        FieldInfo[] fields = structuralMessageInfo.getFields();
        if (fields.length == 0) {
            fieldNumber = 0;
            fieldNumber2 = 0;
        } else {
            fieldNumber = fields[0].getFieldNumber();
            fieldNumber2 = fields[fields.length - 1].getFieldNumber();
        }
        int length = fields.length;
        int[] iArr2 = new int[length * 3];
        Object[] objArr = new Object[length * 2];
        int i10 = 0;
        int i11 = 0;
        for (FieldInfo fieldInfo : fields) {
            if (fieldInfo.getType() == FieldType.MAP) {
                i10++;
            } else if (fieldInfo.getType().id() >= 18 && fieldInfo.getType().id() <= 49) {
                i11++;
            }
        }
        int[] iArr3 = null;
        if (i10 > 0) {
            iArr = new int[i10];
        } else {
            iArr = null;
        }
        if (i11 > 0) {
            iArr3 = new int[i11];
        }
        int[] checkInitialized = structuralMessageInfo.getCheckInitialized();
        if (checkInitialized == null) {
            checkInitialized = EMPTY_INT_ARRAY;
        }
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i12 < fields.length) {
            FieldInfo fieldInfo2 = fields[i12];
            int fieldNumber3 = fieldInfo2.getFieldNumber();
            storeFieldData(fieldInfo2, iArr2, i13, objArr);
            if (i14 < checkInitialized.length && checkInitialized[i14] == fieldNumber3) {
                checkInitialized[i14] = i13;
                i14++;
            }
            if (fieldInfo2.getType() == FieldType.MAP) {
                iArr[i15] = i13;
                i15++;
            } else {
                if (fieldInfo2.getType().id() >= 18 && fieldInfo2.getType().id() <= 49) {
                    iArr3[i16] = (int) t0.objectFieldOffset(fieldInfo2.getField());
                    i16++;
                }
                i12++;
                i13 += 3;
            }
            i12++;
            i13 += 3;
        }
        if (iArr == null) {
            iArr = EMPTY_INT_ARRAY;
        }
        if (iArr3 == null) {
            iArr3 = EMPTY_INT_ARRAY;
        }
        int[] iArr4 = new int[checkInitialized.length + iArr.length + iArr3.length];
        System.arraycopy(checkInitialized, 0, iArr4, 0, checkInitialized.length);
        System.arraycopy(iArr, 0, iArr4, checkInitialized.length, iArr.length);
        System.arraycopy(iArr3, 0, iArr4, checkInitialized.length + iArr.length, iArr3.length);
        return new z<>(iArr2, objArr, fieldNumber, fieldNumber2, structuralMessageInfo.getDefaultInstance(), z6, true, iArr4, checkInitialized.length, checkInitialized.length + iArr.length, b0Var, qVar, r0Var, jVar, tVar);
    }

    /* JADX WARN: Code duplicated, block: B:122:0x024f  */
    /* JADX WARN: Code duplicated, block: B:124:0x0255  */
    /* JADX WARN: Code duplicated, block: B:127:0x026b  */
    /* JADX WARN: Code duplicated, block: B:129:0x026f  */
    /* JADX WARN: Code duplicated, block: B:163:0x031f  */
    /* JADX WARN: Code duplicated, block: B:179:0x036d  */
    /* JADX WARN: Code duplicated, block: B:182:0x037a  */
    static <T> z<T> newSchemaForRawMessageInfo(j0 j0Var, b0 b0Var, q qVar, r0<?, ?> r0Var, j<?> jVar, t tVar) {
        boolean z6;
        int i10;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int iCharAt4;
        int iCharAt5;
        int[] iArr;
        int i11;
        int i12;
        int i13;
        char cCharAt;
        int i14;
        char cCharAt2;
        int i15;
        char cCharAt3;
        int i16;
        char cCharAt4;
        int i17;
        char cCharAt5;
        int i18;
        char cCharAt6;
        int i19;
        char cCharAt7;
        int i20;
        char cCharAt8;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i27;
        int i28;
        java.lang.reflect.Field fieldReflectField;
        char cCharAt9;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        Object obj;
        java.lang.reflect.Field fieldReflectField2;
        int i34;
        Object obj2;
        java.lang.reflect.Field fieldReflectField3;
        int i35;
        char cCharAt10;
        int i36;
        char cCharAt11;
        int i37;
        char cCharAt12;
        int i38;
        char cCharAt13;
        if (j0Var.getSyntax() == ProtoSyntax.PROTO3) {
            z6 = true;
        } else {
            z6 = false;
        }
        String stringInfo = j0Var.getStringInfo();
        int length = stringInfo.length();
        char c7 = 55296;
        if (stringInfo.charAt(0) >= 55296) {
            int i39 = 1;
            while (true) {
                i10 = i39 + 1;
                if (stringInfo.charAt(i39) < 55296) {
                    break;
                }
                i39 = i10;
            }
        } else {
            i10 = 1;
        }
        int i40 = i10 + 1;
        int iCharAt6 = stringInfo.charAt(i10);
        if (iCharAt6 >= 55296) {
            int i41 = iCharAt6 & 8191;
            int i42 = 13;
            while (true) {
                i38 = i40 + 1;
                cCharAt13 = stringInfo.charAt(i40);
                if (cCharAt13 < 55296) {
                    break;
                }
                i41 |= (cCharAt13 & 8191) << i42;
                i42 += 13;
                i40 = i38;
            }
            iCharAt6 = i41 | (cCharAt13 << i42);
            i40 = i38;
        }
        if (iCharAt6 == 0) {
            iCharAt = 0;
            iCharAt2 = 0;
            iCharAt3 = 0;
            iCharAt4 = 0;
            iCharAt5 = 0;
            i11 = 0;
            iArr = EMPTY_INT_ARRAY;
            i12 = 0;
        } else {
            int i43 = i40 + 1;
            int iCharAt7 = stringInfo.charAt(i40);
            if (iCharAt7 >= 55296) {
                int i44 = iCharAt7 & 8191;
                int i45 = 13;
                while (true) {
                    i20 = i43 + 1;
                    cCharAt8 = stringInfo.charAt(i43);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt8 & 8191) << i45;
                    i45 += 13;
                    i43 = i20;
                }
                iCharAt7 = i44 | (cCharAt8 << i45);
                i43 = i20;
            }
            int i46 = i43 + 1;
            int iCharAt8 = stringInfo.charAt(i43);
            if (iCharAt8 >= 55296) {
                int i47 = iCharAt8 & 8191;
                int i48 = 13;
                while (true) {
                    i19 = i46 + 1;
                    cCharAt7 = stringInfo.charAt(i46);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt7 & 8191) << i48;
                    i48 += 13;
                    i46 = i19;
                }
                iCharAt8 = i47 | (cCharAt7 << i48);
                i46 = i19;
            }
            int i49 = i46 + 1;
            iCharAt = stringInfo.charAt(i46);
            if (iCharAt >= 55296) {
                int i50 = iCharAt & 8191;
                int i51 = 13;
                while (true) {
                    i18 = i49 + 1;
                    cCharAt6 = stringInfo.charAt(i49);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt6 & 8191) << i51;
                    i51 += 13;
                    i49 = i18;
                }
                iCharAt = i50 | (cCharAt6 << i51);
                i49 = i18;
            }
            int i52 = i49 + 1;
            iCharAt2 = stringInfo.charAt(i49);
            if (iCharAt2 >= 55296) {
                int i53 = iCharAt2 & 8191;
                int i54 = 13;
                while (true) {
                    i17 = i52 + 1;
                    cCharAt5 = stringInfo.charAt(i52);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt5 & 8191) << i54;
                    i54 += 13;
                    i52 = i17;
                }
                iCharAt2 = i53 | (cCharAt5 << i54);
                i52 = i17;
            }
            int i55 = i52 + 1;
            iCharAt3 = stringInfo.charAt(i52);
            if (iCharAt3 >= 55296) {
                int i56 = iCharAt3 & 8191;
                int i57 = 13;
                while (true) {
                    i16 = i55 + 1;
                    cCharAt4 = stringInfo.charAt(i55);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i56 |= (cCharAt4 & 8191) << i57;
                    i57 += 13;
                    i55 = i16;
                }
                iCharAt3 = i56 | (cCharAt4 << i57);
                i55 = i16;
            }
            int i58 = i55 + 1;
            iCharAt4 = stringInfo.charAt(i55);
            if (iCharAt4 >= 55296) {
                int i59 = iCharAt4 & 8191;
                int i60 = 13;
                while (true) {
                    i15 = i58 + 1;
                    cCharAt3 = stringInfo.charAt(i58);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i59 |= (cCharAt3 & 8191) << i60;
                    i60 += 13;
                    i58 = i15;
                }
                iCharAt4 = i59 | (cCharAt3 << i60);
                i58 = i15;
            }
            int i61 = i58 + 1;
            int iCharAt9 = stringInfo.charAt(i58);
            if (iCharAt9 >= 55296) {
                int i62 = iCharAt9 & 8191;
                int i63 = 13;
                while (true) {
                    i14 = i61 + 1;
                    cCharAt2 = stringInfo.charAt(i61);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i62 |= (cCharAt2 & 8191) << i63;
                    i63 += 13;
                    i61 = i14;
                }
                iCharAt9 = i62 | (cCharAt2 << i63);
                i61 = i14;
            }
            int i64 = i61 + 1;
            iCharAt5 = stringInfo.charAt(i61);
            if (iCharAt5 >= 55296) {
                int i65 = iCharAt5 & 8191;
                int i66 = 13;
                while (true) {
                    i13 = i64 + 1;
                    cCharAt = stringInfo.charAt(i64);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i65 |= (cCharAt & 8191) << i66;
                    i66 += 13;
                    i64 = i13;
                }
                iCharAt5 = i65 | (cCharAt << i66);
                i64 = i13;
            }
            iArr = new int[iCharAt5 + iCharAt4 + iCharAt9];
            i11 = (iCharAt7 * 2) + iCharAt8;
            i12 = iCharAt7;
            i40 = i64;
        }
        Unsafe unsafe = UNSAFE;
        Object[] objects = j0Var.getObjects();
        Class<?> cls = j0Var.getDefaultInstance().getClass();
        int[] iArr2 = new int[iCharAt3 * 3];
        Object[] objArr = new Object[iCharAt3 * 2];
        int i67 = iCharAt5 + iCharAt4;
        int i68 = iCharAt5;
        int i69 = i67;
        int i70 = 0;
        int i71 = 0;
        while (i40 < length) {
            int i72 = i40 + 1;
            int iCharAt10 = stringInfo.charAt(i40);
            if (iCharAt10 >= c7) {
                int i73 = iCharAt10 & 8191;
                int i74 = i72;
                int i75 = 13;
                while (true) {
                    i37 = i74 + 1;
                    cCharAt12 = stringInfo.charAt(i74);
                    if (cCharAt12 < c7) {
                        break;
                    }
                    i73 |= (cCharAt12 & 8191) << i75;
                    i75 += 13;
                    i74 = i37;
                }
                iCharAt10 = i73 | (cCharAt12 << i75);
                i21 = i37;
            } else {
                i21 = i72;
            }
            int i76 = i21 + 1;
            int iCharAt11 = stringInfo.charAt(i21);
            if (iCharAt11 >= c7) {
                int i77 = iCharAt11 & 8191;
                int i78 = i76;
                int i79 = 13;
                while (true) {
                    i36 = i78 + 1;
                    cCharAt11 = stringInfo.charAt(i78);
                    i22 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i77 |= (cCharAt11 & 8191) << i79;
                    i79 += 13;
                    i78 = i36;
                    length = i22;
                }
                iCharAt11 = i77 | (cCharAt11 << i79);
                i23 = i36;
            } else {
                i22 = length;
                i23 = i76;
            }
            int i80 = iCharAt11 & 255;
            int i81 = iCharAt5;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i70] = i71;
                i70++;
            }
            int i82 = i70;
            if (i80 >= 51) {
                int i83 = i23 + 1;
                int iCharAt12 = stringInfo.charAt(i23);
                char c10 = 55296;
                if (iCharAt12 >= 55296) {
                    int i84 = iCharAt12 & 8191;
                    int i85 = 13;
                    while (true) {
                        i35 = i83 + 1;
                        cCharAt10 = stringInfo.charAt(i83);
                        if (cCharAt10 < c10) {
                            break;
                        }
                        i84 |= (cCharAt10 & 8191) << i85;
                        i85 += 13;
                        i83 = i35;
                        c10 = 55296;
                    }
                    iCharAt12 = i84 | (cCharAt10 << i85);
                    i83 = i35;
                }
                int i86 = i80 - 51;
                int i87 = i83;
                if (i86 != 9 && i86 != 17) {
                    if (i86 == 12 && !z6) {
                        i32 = i11 + 1;
                        objArr[((i71 / 3) * 2) + 1] = objects[i11];
                    }
                    i33 = iCharAt12 * 2;
                    obj = objects[i33];
                    if (obj instanceof java.lang.reflect.Field) {
                        fieldReflectField2 = (java.lang.reflect.Field) obj;
                    } else {
                        fieldReflectField2 = reflectField(cls, (String) obj);
                        objects[i33] = fieldReflectField2;
                    }
                    i24 = iCharAt;
                    i25 = iCharAt2;
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldReflectField2);
                    i34 = i33 + 1;
                    obj2 = objects[i34];
                    if (obj2 instanceof java.lang.reflect.Field) {
                        fieldReflectField3 = (java.lang.reflect.Field) obj2;
                    } else {
                        fieldReflectField3 = reflectField(cls, (String) obj2);
                        objects[i34] = fieldReflectField3;
                    }
                    stringInfo = stringInfo;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldReflectField3);
                    z6 = z6;
                    i27 = i87;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i28 = 0;
                } else {
                    i32 = i11 + 1;
                    objArr[((i71 / 3) * 2) + 1] = objects[i11];
                }
                i11 = i32;
                i33 = iCharAt12 * 2;
                obj = objects[i33];
                if (obj instanceof java.lang.reflect.Field) {
                    fieldReflectField2 = (java.lang.reflect.Field) obj;
                } else {
                    fieldReflectField2 = reflectField(cls, (String) obj);
                    objects[i33] = fieldReflectField2;
                }
                i24 = iCharAt;
                i25 = iCharAt2;
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldReflectField2);
                i34 = i33 + 1;
                obj2 = objects[i34];
                if (obj2 instanceof java.lang.reflect.Field) {
                    fieldReflectField3 = (java.lang.reflect.Field) obj2;
                } else {
                    fieldReflectField3 = reflectField(cls, (String) obj2);
                    objects[i34] = fieldReflectField3;
                }
                stringInfo = stringInfo;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldReflectField3);
                z6 = z6;
                i27 = i87;
                iObjectFieldOffset = iObjectFieldOffset4;
                i28 = 0;
            } else {
                i24 = iCharAt;
                i25 = iCharAt2;
                int i88 = i11 + 1;
                java.lang.reflect.Field fieldReflectField4 = reflectField(cls, (String) objects[i11]);
                if (i80 != 9 && i80 != 17) {
                    if (i80 != 27 && i80 != 49) {
                        if (i80 != 12 && i80 != 30 && i80 != 44) {
                            if (i80 == 50) {
                                int i89 = i68 + 1;
                                iArr[i68] = i71;
                                int i90 = (i71 / 3) * 2;
                                int i91 = i11 + 2;
                                objArr[i90] = objects[i88];
                                if ((iCharAt11 & 2048) != 0) {
                                    i88 = i11 + 3;
                                    objArr[i90 + 1] = objects[i91];
                                    i68 = i89;
                                } else {
                                    i68 = i89;
                                    i26 = i91;
                                }
                                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField4);
                                i11 = i26;
                                if ((iCharAt11 & 4096) != 4096 && i80 <= 17) {
                                    int i92 = i23 + 1;
                                    int iCharAt13 = stringInfo.charAt(i23);
                                    if (iCharAt13 >= 55296) {
                                        int i93 = iCharAt13 & 8191;
                                        int i94 = 13;
                                        while (true) {
                                            i27 = i92 + 1;
                                            cCharAt9 = stringInfo.charAt(i92);
                                            if (cCharAt9 < 55296) {
                                                break;
                                            }
                                            i93 |= (cCharAt9 & 8191) << i94;
                                            i94 += 13;
                                            i92 = i27;
                                        }
                                        iCharAt13 = i93 | (cCharAt9 << i94);
                                    } else {
                                        i27 = i92;
                                    }
                                    int i95 = (i12 * 2) + (iCharAt13 / 32);
                                    Object obj3 = objects[i95];
                                    if (obj3 instanceof java.lang.reflect.Field) {
                                        fieldReflectField = (java.lang.reflect.Field) obj3;
                                    } else {
                                        fieldReflectField = reflectField(cls, (String) obj3);
                                        objects[i95] = fieldReflectField;
                                    }
                                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldReflectField);
                                    i28 = iCharAt13 % 32;
                                } else {
                                    iObjectFieldOffset2 = 1048575;
                                    i27 = i23;
                                    i28 = 0;
                                }
                                if (i80 >= 18 && i80 <= 49) {
                                    iArr[i69] = iObjectFieldOffset;
                                    i69++;
                                }
                            }
                        } else if (!z6) {
                            i29 = i11 + 2;
                            objArr[((i71 / 3) * 2) + 1] = objects[i88];
                        }
                    } else {
                        i29 = i11 + 2;
                        objArr[((i71 / 3) * 2) + 1] = objects[i88];
                    }
                    i26 = i29;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField4);
                    i11 = i26;
                    if ((iCharAt11 & 4096) != 4096) {
                        iObjectFieldOffset2 = 1048575;
                        i27 = i23;
                        i28 = 0;
                    } else {
                        iObjectFieldOffset2 = 1048575;
                        i27 = i23;
                        i28 = 0;
                    }
                    if (i80 >= 18) {
                        iArr[i69] = iObjectFieldOffset;
                        i69++;
                    }
                } else {
                    objArr[((i71 / 3) * 2) + 1] = fieldReflectField4.getType();
                }
                i26 = i88;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField4);
                i11 = i26;
                if ((iCharAt11 & 4096) != 4096) {
                    iObjectFieldOffset2 = 1048575;
                    i27 = i23;
                    i28 = 0;
                } else {
                    iObjectFieldOffset2 = 1048575;
                    i27 = i23;
                    i28 = 0;
                }
                if (i80 >= 18) {
                    iArr[i69] = iObjectFieldOffset;
                    i69++;
                }
            }
            int i96 = i71 + 1;
            iArr2[i71] = iCharAt10;
            int i97 = i71 + 2;
            if ((iCharAt11 & 512) != 0) {
                i30 = 536870912;
            } else {
                i30 = 0;
            }
            if ((iCharAt11 & 256) != 0) {
                i31 = 268435456;
            } else {
                i31 = 0;
            }
            iArr2[i96] = i31 | i30 | (i80 << 20) | iObjectFieldOffset;
            i71 += 3;
            iArr2[i97] = (i28 << 20) | iObjectFieldOffset2;
            z6 = z6;
            iCharAt = i24;
            iCharAt5 = i81;
            i40 = i27;
            length = i22;
            stringInfo = stringInfo;
            i70 = i82;
            iCharAt2 = i25;
            c7 = 55296;
        }
        return new z<>(iArr2, objArr, iCharAt, iCharAt2, j0Var.getDefaultInstance(), z6, false, iArr, iCharAt5, i67, b0Var, qVar, r0Var, jVar, tVar);
    }

    private static <T> boolean oneofBooleanAt(T t5, long j6) {
        return ((Boolean) t0.getObject(t5, j6)).booleanValue();
    }

    private static <T> double oneofDoubleAt(T t5, long j6) {
        return ((Double) t0.getObject(t5, j6)).doubleValue();
    }

    private static <T> float oneofFloatAt(T t5, long j6) {
        return ((Float) t0.getObject(t5, j6)).floatValue();
    }

    private static <T> int oneofIntAt(T t5, long j6) {
        return ((Integer) t0.getObject(t5, j6)).intValue();
    }

    private static <T> long oneofLongAt(T t5, long j6) {
        return ((Long) t0.getObject(t5, j6)).longValue();
    }

    private <E> void readMessageList(Object obj, int i10, k0 k0Var, m0<E> m0Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        k0Var.readMessageList(this.listFieldSchema.mutableListAt(obj, offset(i10)), m0Var, extensionRegistryLite);
    }

    private void readString(Object obj, int i10, k0 k0Var) throws IOException {
        if (isEnforceUtf8(i10)) {
            t0.putObject(obj, offset(i10), k0Var.readStringRequireUtf8());
        } else if (this.lite) {
            t0.putObject(obj, offset(i10), k0Var.readString());
        } else {
            t0.putObject(obj, offset(i10), k0Var.readBytes());
        }
    }

    private void readStringList(Object obj, int i10, k0 k0Var) throws IOException {
        if (isEnforceUtf8(i10)) {
            k0Var.readStringListRequireUtf8(this.listFieldSchema.mutableListAt(obj, offset(i10)));
        } else {
            k0Var.readStringList(this.listFieldSchema.mutableListAt(obj, offset(i10)));
        }
    }

    private static java.lang.reflect.Field reflectField(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            java.lang.reflect.Field[] declaredFields = cls.getDeclaredFields();
            for (java.lang.reflect.Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private void setFieldPresent(T t5, int i10) {
        int iPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i10);
        long j6 = 1048575 & iPresenceMaskAndOffsetAt;
        if (j6 == 1048575) {
            return;
        }
        t0.putInt(t5, j6, (1 << (iPresenceMaskAndOffsetAt >>> 20)) | t0.getInt(t5, j6));
    }

    private void setOneofPresent(T t5, int i10, int i11) {
        t0.putInt(t5, presenceMaskAndOffsetAt(i11) & 1048575, i10);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x007a  */
    /* JADX WARN: Code duplicated, block: B:22:0x007d  */
    /* JADX WARN: Code duplicated, block: B:25:0x0084  */
    /* JADX WARN: Code duplicated, block: B:28:0x009e  */
    /* JADX WARN: Code duplicated, block: B:30:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:31:0x00af  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:34:0x00be A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:38:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:? A[RETURN, SYNTHETIC] */
    private static void storeFieldData(FieldInfo fieldInfo, int[] iArr, int i10, Object[] objArr) {
        int iObjectFieldOffset;
        int iId;
        long jObjectFieldOffset;
        int iObjectFieldOffset2;
        int iNumberOfTrailingZeros;
        int i11;
        Class<?> messageFieldClass;
        int i12;
        f0 oneof = fieldInfo.getOneof();
        int i13 = 0;
        if (oneof != null) {
            iId = fieldInfo.getType().id() + 51;
            iObjectFieldOffset = (int) t0.objectFieldOffset(oneof.getValueField());
            jObjectFieldOffset = t0.objectFieldOffset(oneof.getCaseField());
        } else {
            FieldType type = fieldInfo.getType();
            iObjectFieldOffset = (int) t0.objectFieldOffset(fieldInfo.getField());
            iId = type.id();
            if (!type.isList() && !type.isMap()) {
                java.lang.reflect.Field presenceField = fieldInfo.getPresenceField();
                if (presenceField == null) {
                    iObjectFieldOffset2 = 1048575;
                } else {
                    iObjectFieldOffset2 = (int) t0.objectFieldOffset(presenceField);
                }
                iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(fieldInfo.getPresenceMask());
            } else if (fieldInfo.getCachedSizeField() == null) {
                iObjectFieldOffset2 = 0;
                iNumberOfTrailingZeros = 0;
            } else {
                jObjectFieldOffset = t0.objectFieldOffset(fieldInfo.getCachedSizeField());
            }
            iArr[i10] = fieldInfo.getFieldNumber();
            int i14 = i10 + 1;
            if (fieldInfo.isEnforceUtf8()) {
                i11 = 536870912;
            } else {
                i11 = 0;
            }
            if (fieldInfo.isRequired()) {
                i13 = 268435456;
            }
            iArr[i14] = i13 | i11 | (iId << 20) | iObjectFieldOffset;
            iArr[i10 + 2] = iObjectFieldOffset2 | (iNumberOfTrailingZeros << 20);
            messageFieldClass = fieldInfo.getMessageFieldClass();
            if (fieldInfo.getMapDefaultEntry() != null) {
                i12 = (i10 / 3) * 2;
                objArr[i12] = fieldInfo.getMapDefaultEntry();
                if (messageFieldClass != null) {
                    objArr[i12 + 1] = messageFieldClass;
                    return;
                } else {
                    if (fieldInfo.getEnumVerifier() != null) {
                        objArr[i12 + 1] = fieldInfo.getEnumVerifier();
                        return;
                    }
                    return;
                }
            }
            if (messageFieldClass != null) {
                objArr[((i10 / 3) * 2) + 1] = messageFieldClass;
            } else if (fieldInfo.getEnumVerifier() != null) {
                objArr[((i10 / 3) * 2) + 1] = fieldInfo.getEnumVerifier();
            }
        }
        iObjectFieldOffset2 = (int) jObjectFieldOffset;
        iNumberOfTrailingZeros = 0;
        iArr[i10] = fieldInfo.getFieldNumber();
        int i15 = i10 + 1;
        if (fieldInfo.isEnforceUtf8()) {
            i11 = 536870912;
        } else {
            i11 = 0;
        }
        if (fieldInfo.isRequired()) {
            i13 = 268435456;
        }
        iArr[i15] = i13 | i11 | (iId << 20) | iObjectFieldOffset;
        iArr[i10 + 2] = iObjectFieldOffset2 | (iNumberOfTrailingZeros << 20);
        messageFieldClass = fieldInfo.getMessageFieldClass();
        if (fieldInfo.getMapDefaultEntry() != null) {
            i12 = (i10 / 3) * 2;
            objArr[i12] = fieldInfo.getMapDefaultEntry();
            if (messageFieldClass != null) {
                objArr[i12 + 1] = messageFieldClass;
                return;
            } else {
                if (fieldInfo.getEnumVerifier() != null) {
                    objArr[i12 + 1] = fieldInfo.getEnumVerifier();
                    return;
                }
                return;
            }
        }
        if (messageFieldClass != null) {
            objArr[((i10 / 3) * 2) + 1] = messageFieldClass;
        } else if (fieldInfo.getEnumVerifier() != null) {
            objArr[((i10 / 3) * 2) + 1] = fieldInfo.getEnumVerifier();
        }
    }

    private <UT, UB> void writeUnknownInMessageTo(r0<UT, UB> r0Var, T t5, Writer writer) throws IOException {
        r0Var.writeTo(r0Var.getFromMessage(t5), writer);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0049  */
    /* JADX WARN: Code duplicated, block: B:20:0x004f  */
    /* JADX WARN: Code duplicated, block: B:31:0x005c A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.m0
    public void makeImmutable(T t5) {
        if (!isMutable(t5)) {
            return;
        }
        if (t5 instanceof GeneratedMessageLite) {
            GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) t5;
            generatedMessageLite.clearMemoizedSerializedSize();
            generatedMessageLite.clearMemoizedHashCode();
            generatedMessageLite.markImmutable();
        }
        int length = this.buffer.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i10);
            long jOffset = offset(iTypeAndOffsetAt);
            int iType = type(iTypeAndOffsetAt);
            if (iType != 9) {
                switch (iType) {
                    case 17:
                        if (isFieldPresent(t5, i10)) {
                            getMessageFieldSchema(i10).makeImmutable(UNSAFE.getObject(t5, jOffset));
                        }
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        this.listFieldSchema.makeImmutableListAt(t5, jOffset);
                        break;
                    case 50:
                        Unsafe unsafe = UNSAFE;
                        Object object = unsafe.getObject(t5, jOffset);
                        if (object != null) {
                            unsafe.putObject(t5, jOffset, this.mapFieldSchema.toImmutable(object));
                        }
                        break;
                }
            } else if (isFieldPresent(t5, i10)) {
                getMessageFieldSchema(i10).makeImmutable(UNSAFE.getObject(t5, jOffset));
            }
        }
        this.unknownFieldSchema.makeImmutable(t5);
        if (this.hasExtensions) {
            this.extensionSchema.makeImmutable(t5);
        }
    }

    @Override // com.google.protobuf.m0
    public void writeTo(T t5, Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            writeFieldsInDescendingOrder(t5, writer);
        } else if (this.proto3) {
            writeFieldsInAscendingOrderProto3(t5, writer);
        } else {
            writeFieldsInAscendingOrderProto2(t5, writer);
        }
    }

    @Override // com.google.protobuf.m0
    public void mergeFrom(T t5, k0 k0Var, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
        extensionRegistryLite.getClass();
        checkMutable(t5);
        mergeFromHelper(this.unknownFieldSchema, this.extensionSchema, t5, k0Var, extensionRegistryLite);
    }

    private boolean equals(T t5, T t10, int i10) {
        int iTypeAndOffsetAt = typeAndOffsetAt(i10);
        long jOffset = offset(iTypeAndOffsetAt);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                return arePresentForEquals(t5, t10, i10) && Double.doubleToLongBits(t0.getDouble(t5, jOffset)) == Double.doubleToLongBits(t0.getDouble(t10, jOffset));
            case 1:
                return arePresentForEquals(t5, t10, i10) && Float.floatToIntBits(t0.getFloat(t5, jOffset)) == Float.floatToIntBits(t0.getFloat(t10, jOffset));
            case 2:
                return arePresentForEquals(t5, t10, i10) && t0.getLong(t5, jOffset) == t0.getLong(t10, jOffset);
            case 3:
                return arePresentForEquals(t5, t10, i10) && t0.getLong(t5, jOffset) == t0.getLong(t10, jOffset);
            case 4:
                return arePresentForEquals(t5, t10, i10) && t0.getInt(t5, jOffset) == t0.getInt(t10, jOffset);
            case 5:
                return arePresentForEquals(t5, t10, i10) && t0.getLong(t5, jOffset) == t0.getLong(t10, jOffset);
            case 6:
                return arePresentForEquals(t5, t10, i10) && t0.getInt(t5, jOffset) == t0.getInt(t10, jOffset);
            case 7:
                return arePresentForEquals(t5, t10, i10) && t0.getBoolean(t5, jOffset) == t0.getBoolean(t10, jOffset);
            case 8:
                return arePresentForEquals(t5, t10, i10) && o0.safeEquals(t0.getObject(t5, jOffset), t0.getObject(t10, jOffset));
            case 9:
                return arePresentForEquals(t5, t10, i10) && o0.safeEquals(t0.getObject(t5, jOffset), t0.getObject(t10, jOffset));
            case 10:
                return arePresentForEquals(t5, t10, i10) && o0.safeEquals(t0.getObject(t5, jOffset), t0.getObject(t10, jOffset));
            case 11:
                return arePresentForEquals(t5, t10, i10) && t0.getInt(t5, jOffset) == t0.getInt(t10, jOffset);
            case 12:
                return arePresentForEquals(t5, t10, i10) && t0.getInt(t5, jOffset) == t0.getInt(t10, jOffset);
            case 13:
                return arePresentForEquals(t5, t10, i10) && t0.getInt(t5, jOffset) == t0.getInt(t10, jOffset);
            case 14:
                return arePresentForEquals(t5, t10, i10) && t0.getLong(t5, jOffset) == t0.getLong(t10, jOffset);
            case 15:
                return arePresentForEquals(t5, t10, i10) && t0.getInt(t5, jOffset) == t0.getInt(t10, jOffset);
            case 16:
                return arePresentForEquals(t5, t10, i10) && t0.getLong(t5, jOffset) == t0.getLong(t10, jOffset);
            case 17:
                return arePresentForEquals(t5, t10, i10) && o0.safeEquals(t0.getObject(t5, jOffset), t0.getObject(t10, jOffset));
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                return o0.safeEquals(t0.getObject(t5, jOffset), t0.getObject(t10, jOffset));
            case 50:
                return o0.safeEquals(t0.getObject(t5, jOffset), t0.getObject(t10, jOffset));
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
                return isOneofCaseEqual(t5, t10, i10) && o0.safeEquals(t0.getObject(t5, jOffset), t0.getObject(t10, jOffset));
            default:
                return true;
        }
    }

    @Override // com.google.protobuf.m0
    public void mergeFrom(T t5, byte[] bArr, int i10, int i11, c.b bVar) throws IOException {
        if (this.proto3) {
            parseProto3Message(t5, bArr, i10, i11, bVar);
        } else {
            parseProto2Message(t5, bArr, i10, i11, 0, bVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean isInitialized(Object obj, int i10, m0 m0Var) {
        return m0Var.isInitialized(t0.getObject(obj, offset(i10)));
    }
}
