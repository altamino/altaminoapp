package androidx.datastore.preferences.protobuf;

import com.google.firebase.remoteconfig.a;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes7.dex */
final class MessageSchema<T> implements Schema<T> {
    private static final int ENFORCE_UTF8_MASK = 536870912;
    private static final int FIELD_TYPE_MASK = 267386880;
    private static final int INTS_PER_FIELD = 3;
    private static final int OFFSET_BITS = 20;
    private static final int OFFSET_MASK = 1048575;
    static final int ONEOF_TYPE_OFFSET = 51;
    private static final int REQUIRED_MASK = 268435456;
    private final int[] buffer;
    private final int checkInitializedCount;
    private final MessageLite defaultInstance;
    private final ExtensionSchema<?> extensionSchema;
    private final boolean hasExtensions;
    private final int[] intArray;
    private final ListFieldSchema listFieldSchema;
    private final boolean lite;
    private final MapFieldSchema mapFieldSchema;
    private final int maxFieldNumber;
    private final int minFieldNumber;
    private final NewInstanceSchema newInstanceSchema;
    private final Object[] objects;
    private final boolean proto3;
    private final int repeatedFieldOffsetStart;
    private final UnknownFieldSchema<?, ?> unknownFieldSchema;
    private final boolean useCachedSizeField;
    private static final int[] EMPTY_INT_ARRAY = new int[0];
    private static final Unsafe UNSAFE = UnsafeUtil.G();

    private MessageSchema(int[] iArr, Object[] objArr, int i10, int i11, MessageLite messageLite, boolean z6, boolean z10, int[] iArr2, int i12, int i13, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        this.buffer = iArr;
        this.objects = objArr;
        this.minFieldNumber = i10;
        this.maxFieldNumber = i11;
        this.lite = messageLite instanceof GeneratedMessageLite;
        this.proto3 = z6;
        this.hasExtensions = extensionSchema != null && extensionSchema.e(messageLite);
        this.useCachedSizeField = z10;
        this.intArray = iArr2;
        this.checkInitializedCount = i12;
        this.repeatedFieldOffsetStart = i13;
        this.newInstanceSchema = newInstanceSchema;
        this.listFieldSchema = listFieldSchema;
        this.unknownFieldSchema = unknownFieldSchema;
        this.extensionSchema = extensionSchema;
        this.defaultInstance = messageLite;
        this.mapFieldSchema = mapFieldSchema;
    }

    private static boolean C(int i10) {
        return (i10 & 268435456) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:124:0x0278  */
    /* JADX WARN: Code duplicated, block: B:126:0x027e  */
    /* JADX WARN: Code duplicated, block: B:129:0x0294  */
    /* JADX WARN: Code duplicated, block: B:131:0x0298  */
    /* JADX WARN: Code duplicated, block: B:166:0x034f  */
    /* JADX WARN: Code duplicated, block: B:181:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:184:0x03ab  */
    static <T> MessageSchema<T> M(RawMessageInfo rawMessageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        int i10;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int i11;
        int i12;
        int[] iArr;
        int i13;
        int i14;
        char cCharAt;
        int i15;
        char cCharAt2;
        int i16;
        char cCharAt3;
        int i17;
        char cCharAt4;
        int i18;
        char cCharAt5;
        int i19;
        char cCharAt6;
        int i20;
        char cCharAt7;
        int i21;
        char cCharAt8;
        int i22;
        int i23;
        boolean z6;
        int i24;
        int i25;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i26;
        int i27;
        int i28;
        java.lang.reflect.Field fieldG0;
        int i29;
        char cCharAt9;
        int i30;
        int i31;
        int i32;
        Object obj;
        java.lang.reflect.Field fieldG1;
        int i33;
        Object obj2;
        java.lang.reflect.Field fieldG2;
        int i34;
        char cCharAt10;
        int i35;
        char cCharAt11;
        int i36;
        char cCharAt12;
        int i37;
        char cCharAt13;
        char cCharAt14;
        int i38 = 0;
        boolean z10 = rawMessageInfo.getSyntax() == ProtoSyntax.PROTO3;
        String strB = rawMessageInfo.b();
        int length = strB.length();
        int iCharAt4 = strB.charAt(0);
        if (iCharAt4 >= 55296) {
            int i39 = iCharAt4 & 8191;
            int i40 = 1;
            int i41 = 13;
            while (true) {
                i10 = i40 + 1;
                cCharAt14 = strB.charAt(i40);
                if (cCharAt14 < 55296) {
                    break;
                }
                i39 |= (cCharAt14 & 8191) << i41;
                i41 += 13;
                i40 = i10;
            }
            iCharAt4 = i39 | (cCharAt14 << i41);
        } else {
            i10 = 1;
        }
        int i42 = i10 + 1;
        int iCharAt5 = strB.charAt(i10);
        if (iCharAt5 >= 55296) {
            int i43 = iCharAt5 & 8191;
            int i44 = 13;
            while (true) {
                i37 = i42 + 1;
                cCharAt13 = strB.charAt(i42);
                if (cCharAt13 < 55296) {
                    break;
                }
                i43 |= (cCharAt13 & 8191) << i44;
                i44 += 13;
                i42 = i37;
            }
            iCharAt5 = i43 | (cCharAt13 << i44);
            i42 = i37;
        }
        if (iCharAt5 == 0) {
            i13 = 0;
            iCharAt = 0;
            iCharAt2 = 0;
            i11 = 0;
            iCharAt3 = 0;
            iArr = EMPTY_INT_ARRAY;
            i12 = 0;
        } else {
            int i45 = i42 + 1;
            int iCharAt6 = strB.charAt(i42);
            if (iCharAt6 >= 55296) {
                int i46 = iCharAt6 & 8191;
                int i47 = 13;
                while (true) {
                    i21 = i45 + 1;
                    cCharAt8 = strB.charAt(i45);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt8 & 8191) << i47;
                    i47 += 13;
                    i45 = i21;
                }
                iCharAt6 = i46 | (cCharAt8 << i47);
                i45 = i21;
            }
            int i48 = i45 + 1;
            int iCharAt7 = strB.charAt(i45);
            if (iCharAt7 >= 55296) {
                int i49 = iCharAt7 & 8191;
                int i50 = 13;
                while (true) {
                    i20 = i48 + 1;
                    cCharAt7 = strB.charAt(i48);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt7 & 8191) << i50;
                    i50 += 13;
                    i48 = i20;
                }
                iCharAt7 = i49 | (cCharAt7 << i50);
                i48 = i20;
            }
            int i51 = i48 + 1;
            int iCharAt8 = strB.charAt(i48);
            if (iCharAt8 >= 55296) {
                int i52 = iCharAt8 & 8191;
                int i53 = 13;
                while (true) {
                    i19 = i51 + 1;
                    cCharAt6 = strB.charAt(i51);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i52 |= (cCharAt6 & 8191) << i53;
                    i53 += 13;
                    i51 = i19;
                }
                iCharAt8 = i52 | (cCharAt6 << i53);
                i51 = i19;
            }
            int i54 = i51 + 1;
            iCharAt = strB.charAt(i51);
            if (iCharAt >= 55296) {
                int i55 = iCharAt & 8191;
                int i56 = 13;
                while (true) {
                    i18 = i54 + 1;
                    cCharAt5 = strB.charAt(i54);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i55 |= (cCharAt5 & 8191) << i56;
                    i56 += 13;
                    i54 = i18;
                }
                iCharAt = i55 | (cCharAt5 << i56);
                i54 = i18;
            }
            int i57 = i54 + 1;
            iCharAt2 = strB.charAt(i54);
            if (iCharAt2 >= 55296) {
                int i58 = iCharAt2 & 8191;
                int i59 = 13;
                while (true) {
                    i17 = i57 + 1;
                    cCharAt4 = strB.charAt(i57);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i58 |= (cCharAt4 & 8191) << i59;
                    i59 += 13;
                    i57 = i17;
                }
                iCharAt2 = i58 | (cCharAt4 << i59);
                i57 = i17;
            }
            int i60 = i57 + 1;
            int iCharAt9 = strB.charAt(i57);
            if (iCharAt9 >= 55296) {
                int i61 = iCharAt9 & 8191;
                int i62 = 13;
                while (true) {
                    i16 = i60 + 1;
                    cCharAt3 = strB.charAt(i60);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i61 |= (cCharAt3 & 8191) << i62;
                    i62 += 13;
                    i60 = i16;
                }
                iCharAt9 = i61 | (cCharAt3 << i62);
                i60 = i16;
            }
            int i63 = i60 + 1;
            int iCharAt10 = strB.charAt(i60);
            if (iCharAt10 >= 55296) {
                int i64 = iCharAt10 & 8191;
                int i65 = 13;
                while (true) {
                    i15 = i63 + 1;
                    cCharAt2 = strB.charAt(i63);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i64 |= (cCharAt2 & 8191) << i65;
                    i65 += 13;
                    i63 = i15;
                }
                iCharAt10 = i64 | (cCharAt2 << i65);
                i63 = i15;
            }
            int i66 = i63 + 1;
            iCharAt3 = strB.charAt(i63);
            if (iCharAt3 >= 55296) {
                int i67 = iCharAt3 & 8191;
                int i68 = i66;
                int i69 = 13;
                while (true) {
                    i14 = i68 + 1;
                    cCharAt = strB.charAt(i68);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i67 |= (cCharAt & 8191) << i69;
                    i69 += 13;
                    i68 = i14;
                }
                iCharAt3 = i67 | (cCharAt << i69);
                i66 = i14;
            }
            int[] iArr2 = new int[iCharAt3 + iCharAt9 + iCharAt10];
            i11 = (iCharAt6 * 2) + iCharAt7;
            i12 = iCharAt6;
            i42 = i66;
            int i70 = iCharAt9;
            iArr = iArr2;
            i38 = iCharAt8;
            i13 = i70;
        }
        Unsafe unsafe = UNSAFE;
        Object[] objArrA = rawMessageInfo.a();
        Class<?> cls = rawMessageInfo.getDefaultInstance().getClass();
        int[] iArr3 = new int[iCharAt2 * 3];
        Object[] objArr = new Object[iCharAt2 * 2];
        int i71 = iCharAt3 + i13;
        int i72 = iCharAt3;
        int i73 = i71;
        int i74 = 0;
        int i75 = 0;
        while (i42 < length) {
            int i76 = i42 + 1;
            int iCharAt11 = strB.charAt(i42);
            int i77 = length;
            if (iCharAt11 >= 55296) {
                int i78 = iCharAt11 & 8191;
                int i79 = i76;
                int i80 = 13;
                while (true) {
                    i36 = i79 + 1;
                    cCharAt12 = strB.charAt(i79);
                    i22 = iCharAt3;
                    if (cCharAt12 < 55296) {
                        break;
                    }
                    i78 |= (cCharAt12 & 8191) << i80;
                    i80 += 13;
                    i79 = i36;
                    iCharAt3 = i22;
                }
                iCharAt11 = i78 | (cCharAt12 << i80);
                i23 = i36;
            } else {
                i22 = iCharAt3;
                i23 = i76;
            }
            int i81 = i23 + 1;
            int iCharAt12 = strB.charAt(i23);
            if (iCharAt12 >= 55296) {
                int i82 = iCharAt12 & 8191;
                int i83 = i81;
                int i84 = 13;
                while (true) {
                    i35 = i83 + 1;
                    cCharAt11 = strB.charAt(i83);
                    z6 = z10;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i82 |= (cCharAt11 & 8191) << i84;
                    i84 += 13;
                    i83 = i35;
                    z10 = z6;
                }
                iCharAt12 = i82 | (cCharAt11 << i84);
                i24 = i35;
            } else {
                z6 = z10;
                i24 = i81;
            }
            int i85 = iCharAt12 & 255;
            int i86 = iCharAt;
            if ((iCharAt12 & 1024) != 0) {
                iArr[i74] = i75;
                i74++;
            }
            int i87 = i74;
            if (i85 >= 51) {
                int i88 = i24 + 1;
                int iCharAt13 = strB.charAt(i24);
                char c7 = 55296;
                if (iCharAt13 >= 55296) {
                    int i89 = iCharAt13 & 8191;
                    int i90 = 13;
                    while (true) {
                        i34 = i88 + 1;
                        cCharAt10 = strB.charAt(i88);
                        if (cCharAt10 < c7) {
                            break;
                        }
                        i89 |= (cCharAt10 & 8191) << i90;
                        i90 += 13;
                        i88 = i34;
                        c7 = 55296;
                    }
                    iCharAt13 = i89 | (cCharAt10 << i90);
                    i88 = i34;
                }
                int i91 = i85 - 51;
                int i92 = i88;
                if (i91 == 9 || i91 == 17) {
                    i31 = i11 + 1;
                    objArr[((i75 / 3) * 2) + 1] = objArrA[i11];
                } else {
                    if (i91 == 12 && (iCharAt4 & 1) == 1) {
                        i31 = i11 + 1;
                        objArr[((i75 / 3) * 2) + 1] = objArrA[i11];
                    }
                    i32 = iCharAt13 * 2;
                    obj = objArrA[i32];
                    if (obj instanceof java.lang.reflect.Field) {
                        fieldG1 = (java.lang.reflect.Field) obj;
                    } else {
                        fieldG1 = g0(cls, (String) obj);
                        objArrA[i32] = fieldG1;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldG1);
                    i33 = i32 + 1;
                    obj2 = objArrA[i33];
                    if (obj2 instanceof java.lang.reflect.Field) {
                        fieldG2 = (java.lang.reflect.Field) obj2;
                    } else {
                        fieldG2 = g0(cls, (String) obj2);
                        objArrA[i33] = fieldG2;
                    }
                    i25 = i38;
                    iCharAt4 = iCharAt4;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldG2);
                    i27 = iObjectFieldOffset3;
                    i28 = i11;
                    i42 = i92;
                    i26 = 0;
                    cls = cls;
                }
                i11 = i31;
                i32 = iCharAt13 * 2;
                obj = objArrA[i32];
                if (obj instanceof java.lang.reflect.Field) {
                    fieldG1 = (java.lang.reflect.Field) obj;
                } else {
                    fieldG1 = g0(cls, (String) obj);
                    objArrA[i32] = fieldG1;
                }
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldG1);
                i33 = i32 + 1;
                obj2 = objArrA[i33];
                if (obj2 instanceof java.lang.reflect.Field) {
                    fieldG2 = (java.lang.reflect.Field) obj2;
                } else {
                    fieldG2 = g0(cls, (String) obj2);
                    objArrA[i33] = fieldG2;
                }
                i25 = i38;
                iCharAt4 = iCharAt4;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldG2);
                i27 = iObjectFieldOffset4;
                i28 = i11;
                i42 = i92;
                i26 = 0;
                cls = cls;
            } else {
                int i93 = i11 + 1;
                java.lang.reflect.Field fieldG3 = g0(cls, (String) objArrA[i11]);
                if (i85 == 9 || i85 == 17) {
                    i25 = i38;
                    objArr[((i75 / 3) * 2) + 1] = fieldG3.getType();
                } else {
                    if (i85 == 27 || i85 == 49) {
                        i25 = i38;
                        i30 = i11 + 2;
                        objArr[((i75 / 3) * 2) + 1] = objArrA[i93];
                    } else if (i85 == 12 || i85 == 30 || i85 == 44) {
                        i25 = i38;
                        if ((iCharAt4 & 1) == 1) {
                            i30 = i11 + 2;
                            objArr[((i75 / 3) * 2) + 1] = objArrA[i93];
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldG3);
                        if ((iCharAt4 & 1) == 1 || i85 > 17) {
                            iObjectFieldOffset2 = 0;
                            i26 = 0;
                        } else {
                            int i94 = i24 + 1;
                            int iCharAt14 = strB.charAt(i24);
                            if (iCharAt14 >= 55296) {
                                int i95 = iCharAt14 & 8191;
                                int i96 = 13;
                                while (true) {
                                    i29 = i94 + 1;
                                    cCharAt9 = strB.charAt(i94);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i95 |= (cCharAt9 & 8191) << i96;
                                    i96 += 13;
                                    i94 = i29;
                                }
                                iCharAt14 = i95 | (cCharAt9 << i96);
                                i94 = i29;
                            }
                            int i97 = (i12 * 2) + (iCharAt14 / 32);
                            Object obj3 = objArrA[i97];
                            if (obj3 instanceof java.lang.reflect.Field) {
                                fieldG0 = (java.lang.reflect.Field) obj3;
                            } else {
                                fieldG0 = g0(cls, (String) obj3);
                                objArrA[i97] = fieldG0;
                            }
                            i24 = i94;
                            i26 = iCharAt14 % 32;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldG0);
                        }
                        if (i85 >= 18 && i85 <= 49) {
                            iArr[i73] = iObjectFieldOffset;
                            i73++;
                        }
                        i42 = i24;
                        int i98 = i93;
                        i27 = iObjectFieldOffset;
                        i28 = i98;
                    } else if (i85 == 50) {
                        int i99 = i72 + 1;
                        iArr[i72] = i75;
                        int i100 = (i75 / 3) * 2;
                        int i101 = i11 + 2;
                        objArr[i100] = objArrA[i93];
                        if ((iCharAt12 & 2048) != 0) {
                            i93 = i11 + 3;
                            objArr[i100 + 1] = objArrA[i101];
                            i25 = i38;
                            i72 = i99;
                        } else {
                            i72 = i99;
                            i93 = i101;
                            i25 = i38;
                        }
                    } else {
                        i25 = i38;
                    }
                    i93 = i30;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldG3);
                    if ((iCharAt4 & 1) == 1) {
                        iObjectFieldOffset2 = 0;
                        i26 = 0;
                    } else {
                        iObjectFieldOffset2 = 0;
                        i26 = 0;
                    }
                    if (i85 >= 18) {
                        iArr[i73] = iObjectFieldOffset;
                        i73++;
                    }
                    i42 = i24;
                    int i910 = i93;
                    i27 = iObjectFieldOffset;
                    i28 = i910;
                }
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldG3);
                if ((iCharAt4 & 1) == 1) {
                    iObjectFieldOffset2 = 0;
                    i26 = 0;
                } else {
                    iObjectFieldOffset2 = 0;
                    i26 = 0;
                }
                if (i85 >= 18) {
                    iArr[i73] = iObjectFieldOffset;
                    i73++;
                }
                i42 = i24;
                int i911 = i93;
                i27 = iObjectFieldOffset;
                i28 = i911;
            }
            int i102 = i75 + 1;
            iArr3[i75] = iCharAt11;
            int i103 = i75 + 2;
            iArr3[i102] = ((iCharAt12 & 256) != 0 ? 268435456 : 0) | ((iCharAt12 & 512) != 0 ? 536870912 : 0) | (i85 << 20) | i27;
            i75 += 3;
            iArr3[i103] = (i26 << 20) | iObjectFieldOffset2;
            i11 = i28;
            cls = cls;
            iArr3 = iArr3;
            iCharAt4 = iCharAt4;
            iCharAt = i86;
            length = i77;
            i38 = i25;
            iCharAt3 = i22;
            z10 = z6;
            i74 = i87;
        }
        return new MessageSchema<>(iArr3, objArr, i38, iCharAt, rawMessageInfo.getDefaultInstance(), z10, false, iArr, iCharAt3, i71, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    private static long O(int i10) {
        return i10 & OFFSET_MASK;
    }

    private <K, V> int U(T t5, byte[] bArr, int i10, int i11, int i12, long j6, ArrayDecoders.Registers registers) throws IOException {
        Unsafe unsafe = UNSAFE;
        Object objN = n(i12);
        Object object = unsafe.getObject(t5, j6);
        if (this.mapFieldSchema.isImmutable(object)) {
            Object objNewMapField = this.mapFieldSchema.newMapField(objN);
            this.mapFieldSchema.mergeFrom(objNewMapField, object);
            unsafe.putObject(t5, j6, objNewMapField);
            object = objNewMapField;
        }
        return f(bArr, i10, i11, this.mapFieldSchema.forMapMetadata(objN), this.mapFieldSchema.forMutableMapData(object), registers);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int Y(T t5, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, long j6, int i16, long j10, ArrayDecoders.Registers registers) throws IOException {
        int iJ;
        Unsafe unsafe = UNSAFE;
        Internal.ProtobufList protobufListMutableCopyWithCapacity = (Internal.ProtobufList) unsafe.getObject(t5, j10);
        if (!protobufListMutableCopyWithCapacity.isModifiable()) {
            int size = protobufListMutableCopyWithCapacity.size();
            protobufListMutableCopyWithCapacity = protobufListMutableCopyWithCapacity.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
            unsafe.putObject(t5, j10, protobufListMutableCopyWithCapacity);
        }
        switch (i16) {
            case 18:
            case 35:
                if (i14 == 2) {
                    return ArrayDecoders.s(bArr, i10, protobufListMutableCopyWithCapacity, registers);
                }
                return i14 == 1 ? ArrayDecoders.e(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity, registers) : i10;
            case 19:
            case 36:
                if (i14 == 2) {
                    return ArrayDecoders.v(bArr, i10, protobufListMutableCopyWithCapacity, registers);
                }
                return i14 == 5 ? ArrayDecoders.m(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity, registers) : i10;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i14 == 2) {
                    return ArrayDecoders.z(bArr, i10, protobufListMutableCopyWithCapacity, registers);
                }
                return i14 == 0 ? ArrayDecoders.M(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity, registers) : i10;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i14 == 2) {
                    return ArrayDecoders.y(bArr, i10, protobufListMutableCopyWithCapacity, registers);
                }
                return i14 == 0 ? ArrayDecoders.J(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity, registers) : i10;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i14 == 2) {
                    return ArrayDecoders.u(bArr, i10, protobufListMutableCopyWithCapacity, registers);
                }
                return i14 == 1 ? ArrayDecoders.k(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity, registers) : i10;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i14 == 2) {
                    return ArrayDecoders.t(bArr, i10, protobufListMutableCopyWithCapacity, registers);
                }
                return i14 == 5 ? ArrayDecoders.i(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity, registers) : i10;
            case 25:
            case 42:
                if (i14 == 2) {
                    return ArrayDecoders.r(bArr, i10, protobufListMutableCopyWithCapacity, registers);
                }
                return i14 == 0 ? ArrayDecoders.a(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity, registers) : i10;
            case 26:
                if (i14 == 2) {
                    return (j6 & 536870912) == 0 ? ArrayDecoders.D(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity, registers) : ArrayDecoders.E(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity, registers);
                }
                return i10;
            case 27:
                return i14 == 2 ? ArrayDecoders.q(o(i15), i12, bArr, i10, i11, protobufListMutableCopyWithCapacity, registers) : i10;
            case 28:
                return i14 == 2 ? ArrayDecoders.c(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity, registers) : i10;
            case 30:
            case 44:
                if (i14 == 2) {
                    iJ = ArrayDecoders.y(bArr, i10, protobufListMutableCopyWithCapacity, registers);
                } else {
                    if (i14 != 0) {
                        return i10;
                    }
                    iJ = ArrayDecoders.J(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity, registers);
                }
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) t5;
                UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
                if (unknownFieldSetLite == UnknownFieldSetLite.e()) {
                    unknownFieldSetLite = null;
                }
                UnknownFieldSetLite unknownFieldSetLite2 = (UnknownFieldSetLite) SchemaUtil.A(i13, protobufListMutableCopyWithCapacity, m(i15), unknownFieldSetLite, this.unknownFieldSchema);
                if (unknownFieldSetLite2 != null) {
                    generatedMessageLite.unknownFields = unknownFieldSetLite2;
                }
                return iJ;
            case 33:
            case 47:
                if (i14 == 2) {
                    return ArrayDecoders.w(bArr, i10, protobufListMutableCopyWithCapacity, registers);
                }
                return i14 == 0 ? ArrayDecoders.A(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity, registers) : i10;
            case 34:
            case 48:
                if (i14 == 2) {
                    return ArrayDecoders.x(bArr, i10, protobufListMutableCopyWithCapacity, registers);
                }
                return i14 == 0 ? ArrayDecoders.B(i12, bArr, i10, i11, protobufListMutableCopyWithCapacity, registers) : i10;
            case 49:
                return i14 == 3 ? ArrayDecoders.o(o(i15), i12, bArr, i10, i11, protobufListMutableCopyWithCapacity, registers) : i10;
            default:
                return i10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <K, V> int f(byte[] bArr, int i10, int i11, MapEntryLite.Metadata<K, V> metadata, Map<K, V> map, ArrayDecoders.Registers registers) throws IOException {
        int iH;
        int I = ArrayDecoders.I(bArr, i10, registers);
        int i12 = registers.int1;
        if (i12 < 0 || i12 > i11 - I) {
            throw InvalidProtocolBufferException.k();
        }
        int i13 = I + i12;
        Object obj = metadata.defaultKey;
        Object obj2 = metadata.defaultValue;
        while (I < i13) {
            int i14 = I + 1;
            int i15 = bArr[I];
            if (i15 < 0) {
                iH = ArrayDecoders.H(i15, bArr, i14, registers);
                i15 = registers.int1;
            } else {
                iH = i14;
            }
            int i16 = i15 >>> 3;
            int i17 = i15 & 7;
            if (i16 != 1) {
                if (i16 == 2 && i17 == metadata.valueType.b()) {
                    I = g(bArr, iH, i11, metadata.valueType, metadata.defaultValue.getClass(), registers);
                    obj2 = registers.object1;
                } else {
                    I = ArrayDecoders.N(i15, bArr, iH, i11, registers);
                }
            } else if (i17 == metadata.keyType.b()) {
                I = g(bArr, iH, i11, metadata.keyType, null, registers);
                obj = registers.object1;
            } else {
                I = ArrayDecoders.N(i15, bArr, iH, i11, registers);
            }
        }
        if (I != i13) {
            throw InvalidProtocolBufferException.g();
        }
        map.put(obj, obj2);
        return i13;
    }

    private static int l0(int i10) {
        return (i10 & FIELD_TYPE_MASK) >>> 20;
    }

    private int r(T t5) {
        int iQ;
        int i10;
        int iD0;
        int iF0;
        Unsafe unsafe = UNSAFE;
        int i11 = 0;
        for (int i12 = 0; i12 < this.buffer.length; i12 += 3) {
            int iM0 = m0(i12);
            int iL0 = l0(iM0);
            int iN = N(i12);
            long jO = O(iM0);
            int i13 = (iL0 < FieldType.DOUBLE_LIST_PACKED.a() || iL0 > FieldType.SINT64_LIST_PACKED.a()) ? 0 : this.buffer[i12 + 2] & OFFSET_MASK;
            switch (iL0) {
                case 0:
                    if (v(t5, i12)) {
                        iQ = CodedOutputStream.q(iN, a.DEFAULT_VALUE_FOR_DOUBLE);
                        i11 += iQ;
                    }
                    break;
                case 1:
                    if (v(t5, i12)) {
                        iQ = CodedOutputStream.y(iN, 0.0f);
                        i11 += iQ;
                    }
                    break;
                case 2:
                    if (v(t5, i12)) {
                        iQ = CodedOutputStream.F(iN, UnsafeUtil.D(t5, jO));
                        i11 += iQ;
                    }
                    break;
                case 3:
                    if (v(t5, i12)) {
                        iQ = CodedOutputStream.g0(iN, UnsafeUtil.D(t5, jO));
                        i11 += iQ;
                    }
                    break;
                case 4:
                    if (v(t5, i12)) {
                        iQ = CodedOutputStream.D(iN, UnsafeUtil.B(t5, jO));
                        i11 += iQ;
                    }
                    break;
                case 5:
                    if (v(t5, i12)) {
                        iQ = CodedOutputStream.w(iN, 0L);
                        i11 += iQ;
                    }
                    break;
                case 6:
                    if (v(t5, i12)) {
                        iQ = CodedOutputStream.u(iN, 0);
                        i11 += iQ;
                    }
                    break;
                case 7:
                    if (v(t5, i12)) {
                        iQ = CodedOutputStream.l(iN, true);
                        i11 += iQ;
                    }
                    break;
                case 8:
                    if (v(t5, i12)) {
                        Object objF = UnsafeUtil.F(t5, jO);
                        iQ = objF instanceof ByteString ? CodedOutputStream.o(iN, (ByteString) objF) : CodedOutputStream.b0(iN, (String) objF);
                        i11 += iQ;
                    }
                    break;
                case 9:
                    if (v(t5, i12)) {
                        iQ = SchemaUtil.o(iN, UnsafeUtil.F(t5, jO), o(i12));
                        i11 += iQ;
                    }
                    break;
                case 10:
                    if (v(t5, i12)) {
                        iQ = CodedOutputStream.o(iN, (ByteString) UnsafeUtil.F(t5, jO));
                        i11 += iQ;
                    }
                    break;
                case 11:
                    if (v(t5, i12)) {
                        iQ = CodedOutputStream.e0(iN, UnsafeUtil.B(t5, jO));
                        i11 += iQ;
                    }
                    break;
                case 12:
                    if (v(t5, i12)) {
                        iQ = CodedOutputStream.s(iN, UnsafeUtil.B(t5, jO));
                        i11 += iQ;
                    }
                    break;
                case 13:
                    if (v(t5, i12)) {
                        iQ = CodedOutputStream.T(iN, 0);
                        i11 += iQ;
                    }
                    break;
                case 14:
                    if (v(t5, i12)) {
                        iQ = CodedOutputStream.V(iN, 0L);
                        i11 += iQ;
                    }
                    break;
                case 15:
                    if (v(t5, i12)) {
                        iQ = CodedOutputStream.X(iN, UnsafeUtil.B(t5, jO));
                        i11 += iQ;
                    }
                    break;
                case 16:
                    if (v(t5, i12)) {
                        iQ = CodedOutputStream.Z(iN, UnsafeUtil.D(t5, jO));
                        i11 += iQ;
                    }
                    break;
                case 17:
                    if (v(t5, i12)) {
                        iQ = CodedOutputStream.A(iN, (MessageLite) UnsafeUtil.F(t5, jO), o(i12));
                        i11 += iQ;
                    }
                    break;
                case 18:
                    iQ = SchemaUtil.h(iN, D(t5, jO), false);
                    i11 += iQ;
                    break;
                case 19:
                    iQ = SchemaUtil.f(iN, D(t5, jO), false);
                    i11 += iQ;
                    break;
                case 20:
                    iQ = SchemaUtil.m(iN, D(t5, jO), false);
                    i11 += iQ;
                    break;
                case 21:
                    iQ = SchemaUtil.x(iN, D(t5, jO), false);
                    i11 += iQ;
                    break;
                case 22:
                    iQ = SchemaUtil.k(iN, D(t5, jO), false);
                    i11 += iQ;
                    break;
                case 23:
                    iQ = SchemaUtil.h(iN, D(t5, jO), false);
                    i11 += iQ;
                    break;
                case 24:
                    iQ = SchemaUtil.f(iN, D(t5, jO), false);
                    i11 += iQ;
                    break;
                case 25:
                    iQ = SchemaUtil.a(iN, D(t5, jO), false);
                    i11 += iQ;
                    break;
                case 26:
                    iQ = SchemaUtil.u(iN, D(t5, jO));
                    i11 += iQ;
                    break;
                case 27:
                    iQ = SchemaUtil.p(iN, D(t5, jO), o(i12));
                    i11 += iQ;
                    break;
                case 28:
                    iQ = SchemaUtil.c(iN, D(t5, jO));
                    i11 += iQ;
                    break;
                case 29:
                    iQ = SchemaUtil.v(iN, D(t5, jO), false);
                    i11 += iQ;
                    break;
                case 30:
                    iQ = SchemaUtil.d(iN, D(t5, jO), false);
                    i11 += iQ;
                    break;
                case 31:
                    iQ = SchemaUtil.f(iN, D(t5, jO), false);
                    i11 += iQ;
                    break;
                case 32:
                    iQ = SchemaUtil.h(iN, D(t5, jO), false);
                    i11 += iQ;
                    break;
                case 33:
                    iQ = SchemaUtil.q(iN, D(t5, jO), false);
                    i11 += iQ;
                    break;
                case 34:
                    iQ = SchemaUtil.s(iN, D(t5, jO), false);
                    i11 += iQ;
                    break;
                case 35:
                    i10 = SchemaUtil.i((List) unsafe.getObject(t5, jO));
                    if (i10 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i13, i10);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i10);
                        iQ = iD0 + iF0 + i10;
                        i11 += iQ;
                    }
                    break;
                case 36:
                    i10 = SchemaUtil.g((List) unsafe.getObject(t5, jO));
                    if (i10 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i13, i10);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i10);
                        iQ = iD0 + iF0 + i10;
                        i11 += iQ;
                    }
                    break;
                case 37:
                    i10 = SchemaUtil.n((List) unsafe.getObject(t5, jO));
                    if (i10 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i13, i10);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i10);
                        iQ = iD0 + iF0 + i10;
                        i11 += iQ;
                    }
                    break;
                case 38:
                    i10 = SchemaUtil.y((List) unsafe.getObject(t5, jO));
                    if (i10 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i13, i10);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i10);
                        iQ = iD0 + iF0 + i10;
                        i11 += iQ;
                    }
                    break;
                case 39:
                    i10 = SchemaUtil.l((List) unsafe.getObject(t5, jO));
                    if (i10 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i13, i10);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i10);
                        iQ = iD0 + iF0 + i10;
                        i11 += iQ;
                    }
                    break;
                case 40:
                    i10 = SchemaUtil.i((List) unsafe.getObject(t5, jO));
                    if (i10 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i13, i10);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i10);
                        iQ = iD0 + iF0 + i10;
                        i11 += iQ;
                    }
                    break;
                case 41:
                    i10 = SchemaUtil.g((List) unsafe.getObject(t5, jO));
                    if (i10 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i13, i10);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i10);
                        iQ = iD0 + iF0 + i10;
                        i11 += iQ;
                    }
                    break;
                case 42:
                    i10 = SchemaUtil.b((List) unsafe.getObject(t5, jO));
                    if (i10 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i13, i10);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i10);
                        iQ = iD0 + iF0 + i10;
                        i11 += iQ;
                    }
                    break;
                case 43:
                    i10 = SchemaUtil.w((List) unsafe.getObject(t5, jO));
                    if (i10 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i13, i10);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i10);
                        iQ = iD0 + iF0 + i10;
                        i11 += iQ;
                    }
                    break;
                case 44:
                    i10 = SchemaUtil.e((List) unsafe.getObject(t5, jO));
                    if (i10 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i13, i10);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i10);
                        iQ = iD0 + iF0 + i10;
                        i11 += iQ;
                    }
                    break;
                case 45:
                    i10 = SchemaUtil.g((List) unsafe.getObject(t5, jO));
                    if (i10 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i13, i10);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i10);
                        iQ = iD0 + iF0 + i10;
                        i11 += iQ;
                    }
                    break;
                case 46:
                    i10 = SchemaUtil.i((List) unsafe.getObject(t5, jO));
                    if (i10 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i13, i10);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i10);
                        iQ = iD0 + iF0 + i10;
                        i11 += iQ;
                    }
                    break;
                case 47:
                    i10 = SchemaUtil.r((List) unsafe.getObject(t5, jO));
                    if (i10 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i13, i10);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i10);
                        iQ = iD0 + iF0 + i10;
                        i11 += iQ;
                    }
                    break;
                case 48:
                    i10 = SchemaUtil.t((List) unsafe.getObject(t5, jO));
                    if (i10 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i13, i10);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i10);
                        iQ = iD0 + iF0 + i10;
                        i11 += iQ;
                    }
                    break;
                case 49:
                    iQ = SchemaUtil.j(iN, D(t5, jO), o(i12));
                    i11 += iQ;
                    break;
                case 50:
                    iQ = this.mapFieldSchema.getSerializedSize(iN, UnsafeUtil.F(t5, jO), n(i12));
                    i11 += iQ;
                    break;
                case 51:
                    if (B(t5, iN, i12)) {
                        iQ = CodedOutputStream.q(iN, a.DEFAULT_VALUE_FOR_DOUBLE);
                        i11 += iQ;
                    }
                    break;
                case 52:
                    if (B(t5, iN, i12)) {
                        iQ = CodedOutputStream.y(iN, 0.0f);
                        i11 += iQ;
                    }
                    break;
                case 53:
                    if (B(t5, iN, i12)) {
                        iQ = CodedOutputStream.F(iN, T(t5, jO));
                        i11 += iQ;
                    }
                    break;
                case 54:
                    if (B(t5, iN, i12)) {
                        iQ = CodedOutputStream.g0(iN, T(t5, jO));
                        i11 += iQ;
                    }
                    break;
                case 55:
                    if (B(t5, iN, i12)) {
                        iQ = CodedOutputStream.D(iN, S(t5, jO));
                        i11 += iQ;
                    }
                    break;
                case 56:
                    if (B(t5, iN, i12)) {
                        iQ = CodedOutputStream.w(iN, 0L);
                        i11 += iQ;
                    }
                    break;
                case 57:
                    if (B(t5, iN, i12)) {
                        iQ = CodedOutputStream.u(iN, 0);
                        i11 += iQ;
                    }
                    break;
                case 58:
                    if (B(t5, iN, i12)) {
                        iQ = CodedOutputStream.l(iN, true);
                        i11 += iQ;
                    }
                    break;
                case 59:
                    if (B(t5, iN, i12)) {
                        Object objF2 = UnsafeUtil.F(t5, jO);
                        iQ = objF2 instanceof ByteString ? CodedOutputStream.o(iN, (ByteString) objF2) : CodedOutputStream.b0(iN, (String) objF2);
                        i11 += iQ;
                    }
                    break;
                case 60:
                    if (B(t5, iN, i12)) {
                        iQ = SchemaUtil.o(iN, UnsafeUtil.F(t5, jO), o(i12));
                        i11 += iQ;
                    }
                    break;
                case 61:
                    if (B(t5, iN, i12)) {
                        iQ = CodedOutputStream.o(iN, (ByteString) UnsafeUtil.F(t5, jO));
                        i11 += iQ;
                    }
                    break;
                case 62:
                    if (B(t5, iN, i12)) {
                        iQ = CodedOutputStream.e0(iN, S(t5, jO));
                        i11 += iQ;
                    }
                    break;
                case 63:
                    if (B(t5, iN, i12)) {
                        iQ = CodedOutputStream.s(iN, S(t5, jO));
                        i11 += iQ;
                    }
                    break;
                case 64:
                    if (B(t5, iN, i12)) {
                        iQ = CodedOutputStream.T(iN, 0);
                        i11 += iQ;
                    }
                    break;
                case 65:
                    if (B(t5, iN, i12)) {
                        iQ = CodedOutputStream.V(iN, 0L);
                        i11 += iQ;
                    }
                    break;
                case 66:
                    if (B(t5, iN, i12)) {
                        iQ = CodedOutputStream.X(iN, S(t5, jO));
                        i11 += iQ;
                    }
                    break;
                case 67:
                    if (B(t5, iN, i12)) {
                        iQ = CodedOutputStream.Z(iN, T(t5, jO));
                        i11 += iQ;
                    }
                    break;
                case 68:
                    if (B(t5, iN, i12)) {
                        iQ = CodedOutputStream.A(iN, (MessageLite) UnsafeUtil.F(t5, jO), o(i12));
                        i11 += iQ;
                    }
                    break;
            }
        }
        return i11 + s(this.unknownFieldSchema, t5);
    }

    private static boolean u(int i10) {
        return (i10 & 536870912) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:120:0x0353 A[PHI: r0 r19 r25 r27
      0x0353: PHI (r0v27 int) = (r0v21 int), (r0v24 int), (r0v29 int) binds: [B:132:0x03c4, B:128:0x03a1, B:119:0x0351] A[DONT_GENERATE, DONT_INLINE]
      0x0353: PHI (r19v6 int) = (r19v4 int), (r19v4 int), (r19v7 int) binds: [B:132:0x03c4, B:128:0x03a1, B:119:0x0351] A[DONT_GENERATE, DONT_INLINE]
      0x0353: PHI (r25v2 int) = (r25v0 int), (r25v0 int), (r25v4 int) binds: [B:132:0x03c4, B:128:0x03a1, B:119:0x0351] A[DONT_GENERATE, DONT_INLINE]
      0x0353: PHI (r27v7 sun.misc.Unsafe) = (r27v5 sun.misc.Unsafe), (r27v5 sun.misc.Unsafe), (r27v8 sun.misc.Unsafe) binds: [B:132:0x03c4, B:128:0x03a1, B:119:0x0351] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:122:0x036d A[PHI: r0 r19 r25 r27
      0x036d: PHI (r0v25 int) = (r0v21 int), (r0v24 int), (r0v29 int) binds: [B:132:0x03c4, B:128:0x03a1, B:119:0x0351] A[DONT_GENERATE, DONT_INLINE]
      0x036d: PHI (r19v5 int) = (r19v4 int), (r19v4 int), (r19v7 int) binds: [B:132:0x03c4, B:128:0x03a1, B:119:0x0351] A[DONT_GENERATE, DONT_INLINE]
      0x036d: PHI (r25v1 int) = (r25v0 int), (r25v0 int), (r25v4 int) binds: [B:132:0x03c4, B:128:0x03a1, B:119:0x0351] A[DONT_GENERATE, DONT_INLINE]
      0x036d: PHI (r27v6 sun.misc.Unsafe) = (r27v5 sun.misc.Unsafe), (r27v5 sun.misc.Unsafe), (r27v8 sun.misc.Unsafe) binds: [B:132:0x03c4, B:128:0x03a1, B:119:0x0351] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x008d. Please report as an issue. */
    int W(T t5, byte[] bArr, int i10, int i11, int i12, ArrayDecoders.Registers registers) throws IOException {
        Unsafe unsafe;
        int i13;
        MessageSchema<T> messageSchema;
        T t10;
        int i14;
        int iH;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        byte b7;
        int i24;
        int i25;
        int i26;
        int iL;
        int i27;
        MessageSchema<T> messageSchema2 = this;
        t5 = t5;
        bArr = bArr;
        i11 = i11;
        i12 = i12;
        ArrayDecoders.Registers registers2 = registers;
        Unsafe unsafe2 = UNSAFE;
        int iG = i10;
        int i28 = 0;
        int i29 = 0;
        int i30 = 0;
        int i31 = -1;
        int i32 = -1;
        while (true) {
            if (iG < i11) {
                int i33 = iG + 1;
                byte b10 = bArr[iG];
                if (b10 < 0) {
                    iH = ArrayDecoders.H(b10, bArr, i33, registers2);
                    i14 = registers2.int1;
                } else {
                    i14 = b10;
                    iH = i33;
                }
                int i34 = i14 >>> 3;
                int i35 = i14 & 7;
                int iA0 = i34 > i31 ? messageSchema2.a0(i34, i28 / 3) : messageSchema2.Z(i34);
                if (iA0 == -1) {
                    i15 = i34;
                    i16 = iH;
                    i17 = i14;
                    i18 = i30;
                    i19 = i32;
                    unsafe = unsafe2;
                    i20 = i12;
                    i21 = 0;
                } else {
                    int i36 = messageSchema2.buffer[iA0 + 1];
                    int iL0 = l0(i36);
                    long jO = O(i36);
                    int i37 = i14;
                    if (iL0 <= 17) {
                        int i38 = messageSchema2.buffer[iA0 + 2];
                        int i39 = 1 << (i38 >>> 20);
                        int i40 = i38 & OFFSET_MASK;
                        if (i40 != i32) {
                            b7 = -1;
                            if (i32 != -1) {
                                unsafe2.putInt(t5, i32, i30);
                            }
                            i30 = unsafe2.getInt(t5, i40);
                            i32 = i40;
                        } else {
                            b7 = -1;
                        }
                        switch (iL0) {
                            case 0:
                                i24 = iA0;
                                i15 = i34;
                                bArr = bArr;
                                i25 = iH;
                                i26 = i37;
                                if (i35 == 1) {
                                    UnsafeUtil.R(t5, jO, ArrayDecoders.d(bArr, i25));
                                    iG = i25 + 8;
                                    i30 |= i39;
                                    i28 = i24;
                                    i29 = i26;
                                    i31 = i15;
                                    i11 = i11;
                                } else {
                                    i20 = i12;
                                    i18 = i30;
                                    i19 = i32;
                                    i21 = i24;
                                    unsafe = unsafe2;
                                    i16 = i25;
                                    i17 = i26;
                                }
                                break;
                            case 1:
                                i24 = iA0;
                                i15 = i34;
                                bArr = bArr;
                                i25 = iH;
                                i26 = i37;
                                if (i35 == 5) {
                                    UnsafeUtil.S(t5, jO, ArrayDecoders.l(bArr, i25));
                                    iG = i25 + 4;
                                    i30 |= i39;
                                    i28 = i24;
                                    i29 = i26;
                                    i31 = i15;
                                    i11 = i11;
                                } else {
                                    i20 = i12;
                                    i18 = i30;
                                    i19 = i32;
                                    i21 = i24;
                                    unsafe = unsafe2;
                                    i16 = i25;
                                    i17 = i26;
                                }
                                break;
                            case 2:
                            case 3:
                                i24 = iA0;
                                i15 = i34;
                                bArr = bArr;
                                i25 = iH;
                                i26 = i37;
                                if (i35 == 0) {
                                    iL = ArrayDecoders.L(bArr, i25, registers2);
                                    unsafe2.putLong(t5, jO, registers2.long1);
                                    i30 |= i39;
                                    i28 = i24;
                                    iG = iL;
                                    i29 = i26;
                                    i31 = i15;
                                    i11 = i11;
                                    i12 = i12;
                                } else {
                                    i20 = i12;
                                    i18 = i30;
                                    i19 = i32;
                                    i21 = i24;
                                    unsafe = unsafe2;
                                    i16 = i25;
                                    i17 = i26;
                                }
                                break;
                            case 4:
                            case 11:
                                i24 = iA0;
                                i15 = i34;
                                bArr = bArr;
                                i25 = iH;
                                i26 = i37;
                                if (i35 == 0) {
                                    iG = ArrayDecoders.I(bArr, i25, registers2);
                                    unsafe2.putInt(t5, jO, registers2.int1);
                                    i30 |= i39;
                                    i28 = i24;
                                    i29 = i26;
                                    i31 = i15;
                                    i11 = i11;
                                } else {
                                    i20 = i12;
                                    i18 = i30;
                                    i19 = i32;
                                    i21 = i24;
                                    unsafe = unsafe2;
                                    i16 = i25;
                                    i17 = i26;
                                }
                                break;
                            case 5:
                            case 14:
                                i24 = iA0;
                                i15 = i34;
                                bArr = bArr;
                                i26 = i37;
                                if (i35 == 1) {
                                    i25 = iH;
                                    unsafe2.putLong(t5, jO, ArrayDecoders.j(bArr, iH));
                                    iG = i25 + 8;
                                    i30 |= i39;
                                    i28 = i24;
                                    i29 = i26;
                                    i31 = i15;
                                    i11 = i11;
                                } else {
                                    i25 = iH;
                                    i20 = i12;
                                    i18 = i30;
                                    i19 = i32;
                                    i21 = i24;
                                    unsafe = unsafe2;
                                    i16 = i25;
                                    i17 = i26;
                                }
                                break;
                            case 6:
                            case 13:
                                i24 = iA0;
                                i15 = i34;
                                bArr = bArr;
                                i27 = i11;
                                i26 = i37;
                                if (i35 == 5) {
                                    unsafe2.putInt(t5, jO, ArrayDecoders.h(bArr, iH));
                                    iG = iH + 4;
                                    i30 |= i39;
                                    i28 = i24;
                                    i29 = i26;
                                    i31 = i15;
                                    i11 = i27;
                                    i12 = i12;
                                } else {
                                    i25 = iH;
                                    i20 = i12;
                                    i18 = i30;
                                    i19 = i32;
                                    i21 = i24;
                                    unsafe = unsafe2;
                                    i16 = i25;
                                    i17 = i26;
                                }
                                break;
                            case 7:
                                i24 = iA0;
                                i15 = i34;
                                bArr = bArr;
                                i27 = i11;
                                i26 = i37;
                                if (i35 == 0) {
                                    iG = ArrayDecoders.L(bArr, iH, registers2);
                                    UnsafeUtil.K(t5, jO, registers2.long1 != 0);
                                    i30 |= i39;
                                    i28 = i24;
                                    i29 = i26;
                                    i31 = i15;
                                    i11 = i27;
                                    i12 = i12;
                                } else {
                                    i25 = iH;
                                    i20 = i12;
                                    i18 = i30;
                                    i19 = i32;
                                    i21 = i24;
                                    unsafe = unsafe2;
                                    i16 = i25;
                                    i17 = i26;
                                }
                                break;
                            case 8:
                                i24 = iA0;
                                i15 = i34;
                                bArr = bArr;
                                i27 = i11;
                                i26 = i37;
                                if (i35 == 2) {
                                    iG = (i36 & 536870912) == 0 ? ArrayDecoders.C(bArr, iH, registers2) : ArrayDecoders.F(bArr, iH, registers2);
                                    unsafe2.putObject(t5, jO, registers2.object1);
                                    i30 |= i39;
                                    i28 = i24;
                                    i29 = i26;
                                    i31 = i15;
                                    i11 = i27;
                                    i12 = i12;
                                } else {
                                    i25 = iH;
                                    i20 = i12;
                                    i18 = i30;
                                    i19 = i32;
                                    i21 = i24;
                                    unsafe = unsafe2;
                                    i16 = i25;
                                    i17 = i26;
                                }
                                break;
                            case 9:
                                i24 = iA0;
                                i26 = i37;
                                i15 = i34;
                                bArr = bArr;
                                if (i35 == 2) {
                                    i27 = i11;
                                    iG = ArrayDecoders.p(messageSchema2.o(i24), bArr, iH, i27, registers2);
                                    if ((i30 & i39) == 0) {
                                        unsafe2.putObject(t5, jO, registers2.object1);
                                    } else {
                                        unsafe2.putObject(t5, jO, Internal.h(unsafe2.getObject(t5, jO), registers2.object1));
                                    }
                                    i30 |= i39;
                                    i28 = i24;
                                    i29 = i26;
                                    i31 = i15;
                                    i11 = i27;
                                    i12 = i12;
                                } else {
                                    i25 = iH;
                                    i20 = i12;
                                    i18 = i30;
                                    i19 = i32;
                                    i21 = i24;
                                    unsafe = unsafe2;
                                    i16 = i25;
                                    i17 = i26;
                                }
                                break;
                            case 10:
                                i24 = iA0;
                                i26 = i37;
                                i15 = i34;
                                bArr = bArr;
                                if (i35 == 2) {
                                    iG = ArrayDecoders.b(bArr, iH, registers2);
                                    unsafe2.putObject(t5, jO, registers2.object1);
                                    i30 |= i39;
                                    i28 = i24;
                                    i29 = i26;
                                    i31 = i15;
                                    i11 = i11;
                                } else {
                                    i25 = iH;
                                    i20 = i12;
                                    i18 = i30;
                                    i19 = i32;
                                    i21 = i24;
                                    unsafe = unsafe2;
                                    i16 = i25;
                                    i17 = i26;
                                }
                                break;
                            case 12:
                                i24 = iA0;
                                i26 = i37;
                                i15 = i34;
                                bArr = bArr;
                                if (i35 == 0) {
                                    iG = ArrayDecoders.I(bArr, iH, registers2);
                                    int i41 = registers2.int1;
                                    Internal.EnumVerifier enumVerifierM = messageSchema2.m(i24);
                                    if (enumVerifierM == null || enumVerifierM.isInRange(i41)) {
                                        unsafe2.putInt(t5, jO, i41);
                                        i30 |= i39;
                                    } else {
                                        p(t5).n(i26, Long.valueOf(i41));
                                    }
                                    i28 = i24;
                                    i29 = i26;
                                    i31 = i15;
                                    i11 = i11;
                                } else {
                                    i25 = iH;
                                    i20 = i12;
                                    i18 = i30;
                                    i19 = i32;
                                    i21 = i24;
                                    unsafe = unsafe2;
                                    i16 = i25;
                                    i17 = i26;
                                }
                                break;
                            case 15:
                                i24 = iA0;
                                i26 = i37;
                                i15 = i34;
                                bArr = bArr;
                                if (i35 == 0) {
                                    iG = ArrayDecoders.I(bArr, iH, registers2);
                                    unsafe2.putInt(t5, jO, CodedInputStream.b(registers2.int1));
                                    i30 |= i39;
                                    i28 = i24;
                                    i29 = i26;
                                    i31 = i15;
                                    i11 = i11;
                                } else {
                                    i25 = iH;
                                    i20 = i12;
                                    i18 = i30;
                                    i19 = i32;
                                    i21 = i24;
                                    unsafe = unsafe2;
                                    i16 = i25;
                                    i17 = i26;
                                }
                                break;
                            case 16:
                                i24 = iA0;
                                i26 = i37;
                                i15 = i34;
                                if (i35 == 0) {
                                    bArr = bArr;
                                    iL = ArrayDecoders.L(bArr, iH, registers2);
                                    unsafe2.putLong(t5, jO, CodedInputStream.c(registers2.long1));
                                    i30 |= i39;
                                    i28 = i24;
                                    iG = iL;
                                    i29 = i26;
                                    i31 = i15;
                                    i11 = i11;
                                    i12 = i12;
                                } else {
                                    i25 = iH;
                                    i20 = i12;
                                    i18 = i30;
                                    i19 = i32;
                                    i21 = i24;
                                    unsafe = unsafe2;
                                    i16 = i25;
                                    i17 = i26;
                                }
                                break;
                            case 17:
                                if (i35 == 3) {
                                    i24 = iA0;
                                    i15 = i34;
                                    i26 = i37;
                                    iG = ArrayDecoders.n(messageSchema2.o(iA0), bArr, iH, i11, (i34 << 3) | 4, registers);
                                    if ((i30 & i39) == 0) {
                                        unsafe2.putObject(t5, jO, registers2.object1);
                                    } else {
                                        unsafe2.putObject(t5, jO, Internal.h(unsafe2.getObject(t5, jO), registers2.object1));
                                    }
                                    i30 |= i39;
                                    bArr = bArr;
                                    i28 = i24;
                                    i29 = i26;
                                    i31 = i15;
                                    i11 = i11;
                                } else {
                                    i24 = iA0;
                                    i26 = i37;
                                    i15 = i34;
                                    i25 = iH;
                                    i20 = i12;
                                    i18 = i30;
                                    i19 = i32;
                                    i21 = i24;
                                    unsafe = unsafe2;
                                    i16 = i25;
                                    i17 = i26;
                                }
                                break;
                            default:
                                i25 = iH;
                                i24 = iA0;
                                i15 = i34;
                                i26 = i37;
                                i20 = i12;
                                i18 = i30;
                                i19 = i32;
                                i21 = i24;
                                unsafe = unsafe2;
                                i16 = i25;
                                i17 = i26;
                                break;
                        }
                    } else {
                        i15 = i34;
                        bArr = bArr;
                        int i42 = iH;
                        if (iL0 != 27) {
                            i21 = iA0;
                            i18 = i30;
                            if (iL0 <= 49) {
                                i19 = i32;
                                unsafe = unsafe2;
                                i23 = i37;
                                iG = Y(t5, bArr, i42, i11, i37, i15, i35, i21, i36, iL0, jO, registers);
                                if (iG != i42) {
                                    messageSchema2 = this;
                                    i12 = i12;
                                    registers2 = registers;
                                    i31 = i15;
                                    i32 = i19;
                                    i28 = i21;
                                    i30 = i18;
                                    i29 = i23;
                                } else {
                                    i16 = iG;
                                    i17 = i23;
                                    i20 = i12;
                                }
                                unsafe2 = unsafe;
                            } else {
                                unsafe = unsafe2;
                                i22 = i42;
                                i23 = i37;
                                i19 = i32;
                                if (iL0 != 50) {
                                    iG = V(t5, bArr, i22, i11, i23, i15, i35, i36, iL0, jO, i21, registers);
                                    if (iG != i22) {
                                        messageSchema2 = this;
                                        i12 = i12;
                                        registers2 = registers;
                                        i31 = i15;
                                        i32 = i19;
                                        i28 = i21;
                                        i30 = i18;
                                        i29 = i23;
                                    } else {
                                        i16 = iG;
                                        i17 = i23;
                                        i20 = i12;
                                    }
                                    unsafe2 = unsafe;
                                } else if (i35 == 2) {
                                    iG = U(t5, bArr, i22, i11, i21, jO, registers);
                                    if (iG != i22) {
                                        messageSchema2 = this;
                                        i12 = i12;
                                        registers2 = registers;
                                        i31 = i15;
                                        i32 = i19;
                                        i28 = i21;
                                        i30 = i18;
                                        i29 = i23;
                                    } else {
                                        i16 = iG;
                                        i17 = i23;
                                        i20 = i12;
                                    }
                                    unsafe2 = unsafe;
                                }
                            }
                        } else if (i35 == 2) {
                            Internal.ProtobufList protobufListMutableCopyWithCapacity = (Internal.ProtobufList) unsafe2.getObject(t5, jO);
                            if (!protobufListMutableCopyWithCapacity.isModifiable()) {
                                int size = protobufListMutableCopyWithCapacity.size();
                                protobufListMutableCopyWithCapacity = protobufListMutableCopyWithCapacity.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
                                unsafe2.putObject(t5, jO, protobufListMutableCopyWithCapacity);
                            }
                            iG = ArrayDecoders.q(messageSchema2.o(iA0), i37, bArr, i42, i11, protobufListMutableCopyWithCapacity, registers);
                            i29 = i37;
                            i31 = i15;
                            i28 = iA0;
                            i30 = i30;
                            i11 = i11;
                        } else {
                            i21 = iA0;
                            i18 = i30;
                            i19 = i32;
                            unsafe = unsafe2;
                            i22 = i42;
                            i23 = i37;
                        }
                        i20 = i12;
                        i16 = i22;
                        i17 = i23;
                    }
                }
                if (i17 != i20 || i20 == 0) {
                    int i43 = i20;
                    iG = (!this.hasExtensions || registers.extensionRegistry == ExtensionRegistryLite.b()) ? ArrayDecoders.G(i17, bArr, i16, i11, p(t5), registers) : ArrayDecoders.g(i17, bArr, i16, i11, t5, this.defaultInstance, this.unknownFieldSchema, registers);
                    i29 = i17;
                    messageSchema2 = this;
                    registers2 = registers;
                    i31 = i15;
                    i32 = i19;
                    i28 = i21;
                    i30 = i18;
                    i12 = i43;
                    unsafe2 = unsafe;
                } else {
                    messageSchema = this;
                    i13 = i20;
                    iG = i16;
                    i29 = i17;
                    i32 = i19;
                    i30 = i18;
                }
            } else {
                unsafe = unsafe2;
                i13 = i12;
                messageSchema = messageSchema2;
            }
        }
        if (i32 != -1) {
            t10 = t5;
            unsafe.putInt(t10, i32, i30);
        } else {
            t10 = t5;
        }
        UnknownFieldSetLite unknownFieldSetLite = null;
        for (int i44 = messageSchema.checkInitializedCount; i44 < messageSchema.repeatedFieldOffsetStart; i44++) {
            unknownFieldSetLite = (UnknownFieldSetLite) messageSchema.j(t10, messageSchema.intArray[i44], unknownFieldSetLite, messageSchema.unknownFieldSchema);
        }
        if (unknownFieldSetLite != null) {
            messageSchema.unknownFieldSchema.o(t10, unknownFieldSetLite);
        }
        if (i13 == 0) {
            if (iG != i11) {
                throw InvalidProtocolBufferException.g();
            }
        } else if (iG > i11 || i29 != i13) {
            throw InvalidProtocolBufferException.g();
        }
        return iG;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0078  */
    /* JADX WARN: Code duplicated, block: B:58:0x007e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x0090 A[SYNTHETIC] */
    @Override // androidx.datastore.preferences.protobuf.Schema
    public final boolean isInitialized(T t5) {
        int i10;
        int i11 = -1;
        int i12 = 0;
        for (int i13 = 0; i13 < this.checkInitializedCount; i13++) {
            int i14 = this.intArray[i13];
            int iN = N(i14);
            int iM0 = m0(i14);
            if (this.proto3) {
                i10 = 0;
            } else {
                int i15 = this.buffer[i14 + 2];
                int i16 = OFFSET_MASK & i15;
                i10 = 1 << (i15 >>> 20);
                if (i16 != i11) {
                    i12 = UNSAFE.getInt(t5, i16);
                    i11 = i16;
                }
            }
            if (C(iM0) && !w(t5, i14, i12, i10)) {
                return false;
            }
            int iL0 = l0(iM0);
            if (iL0 == 9 || iL0 == 17) {
                if (w(t5, i14, i12, i10) && !x(t5, iM0, o(i14))) {
                    return false;
                }
            } else if (iL0 == 27) {
                if (!y(t5, iM0, i14)) {
                    return false;
                }
            } else if (iL0 == 60 || iL0 == 68) {
                if (B(t5, iN, i14) && !x(t5, iM0, o(i14))) {
                    return false;
                }
            } else if (iL0 != 49) {
                if (iL0 == 50 && !z(t5, iM0, i14)) {
                    return false;
                }
            } else if (!y(t5, iM0, i14)) {
                return false;
            }
        }
        return !this.hasExtensions || this.extensionSchema.c(t5).p();
    }

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.MessageSchema$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
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

    /* JADX WARN: Multi-variable type inference failed */
    private <UT, UB, ET extends FieldSet.FieldDescriptorLite<ET>> void F(UnknownFieldSchema<UT, UB> unknownFieldSchema, ExtensionSchema<ET> extensionSchema, T t5, Reader reader, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        Object objJ = null;
        Object objD = null;
        while (true) {
            try {
                int fieldNumber = reader.getFieldNumber();
                int iZ = Z(fieldNumber);
                if (iZ >= 0) {
                    int iM0 = m0(iZ);
                    try {
                        switch (l0(iM0)) {
                            case 0:
                                UnsafeUtil.R(t5, O(iM0), reader.readDouble());
                                h0(t5, iZ);
                                break;
                            case 1:
                                UnsafeUtil.S(t5, O(iM0), reader.readFloat());
                                h0(t5, iZ);
                                break;
                            case 2:
                                UnsafeUtil.U(t5, O(iM0), reader.readInt64());
                                h0(t5, iZ);
                                break;
                            case 3:
                                UnsafeUtil.U(t5, O(iM0), reader.readUInt64());
                                h0(t5, iZ);
                                break;
                            case 4:
                                UnsafeUtil.T(t5, O(iM0), reader.readInt32());
                                h0(t5, iZ);
                                break;
                            case 5:
                                UnsafeUtil.U(t5, O(iM0), reader.readFixed64());
                                h0(t5, iZ);
                                break;
                            case 6:
                                UnsafeUtil.T(t5, O(iM0), reader.readFixed32());
                                h0(t5, iZ);
                                break;
                            case 7:
                                UnsafeUtil.K(t5, O(iM0), reader.readBool());
                                h0(t5, iZ);
                                break;
                            case 8:
                                e0(t5, iM0, reader);
                                h0(t5, iZ);
                                break;
                            case 9:
                                if (v(t5, iZ)) {
                                    UnsafeUtil.V(t5, O(iM0), Internal.h(UnsafeUtil.F(t5, O(iM0)), reader.c(o(iZ), extensionRegistryLite)));
                                } else {
                                    UnsafeUtil.V(t5, O(iM0), reader.c(o(iZ), extensionRegistryLite));
                                    h0(t5, iZ);
                                }
                                break;
                            case 10:
                                UnsafeUtil.V(t5, O(iM0), reader.readBytes());
                                h0(t5, iZ);
                                break;
                            case 11:
                                UnsafeUtil.T(t5, O(iM0), reader.readUInt32());
                                h0(t5, iZ);
                                break;
                            case 12:
                                int i10 = reader.readEnum();
                                Internal.EnumVerifier enumVerifierM = m(iZ);
                                if (enumVerifierM == null || enumVerifierM.isInRange(i10)) {
                                    UnsafeUtil.T(t5, O(iM0), i10);
                                    h0(t5, iZ);
                                } else {
                                    objJ = SchemaUtil.L(fieldNumber, i10, objJ, unknownFieldSchema);
                                }
                                break;
                            case 13:
                                UnsafeUtil.T(t5, O(iM0), reader.readSFixed32());
                                h0(t5, iZ);
                                break;
                            case 14:
                                UnsafeUtil.U(t5, O(iM0), reader.readSFixed64());
                                h0(t5, iZ);
                                break;
                            case 15:
                                UnsafeUtil.T(t5, O(iM0), reader.readSInt32());
                                h0(t5, iZ);
                                break;
                            case 16:
                                UnsafeUtil.U(t5, O(iM0), reader.readSInt64());
                                h0(t5, iZ);
                                break;
                            case 17:
                                if (v(t5, iZ)) {
                                    UnsafeUtil.V(t5, O(iM0), Internal.h(UnsafeUtil.F(t5, O(iM0)), reader.a(o(iZ), extensionRegistryLite)));
                                } else {
                                    UnsafeUtil.V(t5, O(iM0), reader.a(o(iZ), extensionRegistryLite));
                                    h0(t5, iZ);
                                }
                                break;
                            case 18:
                                reader.readDoubleList(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 19:
                                reader.readFloatList(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 20:
                                reader.readInt64List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 21:
                                reader.readUInt64List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 22:
                                reader.readInt32List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 23:
                                reader.readFixed64List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 24:
                                reader.readFixed32List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 25:
                                reader.readBoolList(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 26:
                                f0(t5, iM0, reader);
                                break;
                            case 27:
                                d0(t5, iM0, reader, o(iZ), extensionRegistryLite);
                                break;
                            case 28:
                                reader.readBytesList(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 29:
                                reader.readUInt32List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 30:
                                List<Integer> listE = this.listFieldSchema.e(t5, O(iM0));
                                reader.readEnumList(listE);
                                objJ = SchemaUtil.A(fieldNumber, listE, m(iZ), objJ, unknownFieldSchema);
                                break;
                            case 31:
                                reader.readSFixed32List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 32:
                                reader.readSFixed64List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 33:
                                reader.readSInt32List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 34:
                                reader.readSInt64List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 35:
                                reader.readDoubleList(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 36:
                                reader.readFloatList(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 37:
                                reader.readInt64List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 38:
                                reader.readUInt64List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 39:
                                reader.readInt32List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 40:
                                reader.readFixed64List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 41:
                                reader.readFixed32List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 42:
                                reader.readBoolList(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 43:
                                reader.readUInt32List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 44:
                                List<Integer> listE2 = this.listFieldSchema.e(t5, O(iM0));
                                reader.readEnumList(listE2);
                                objJ = SchemaUtil.A(fieldNumber, listE2, m(iZ), objJ, unknownFieldSchema);
                                break;
                            case 45:
                                reader.readSFixed32List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 46:
                                reader.readSFixed64List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 47:
                                reader.readSInt32List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 48:
                                reader.readSInt64List(this.listFieldSchema.e(t5, O(iM0)));
                                break;
                            case 49:
                                c0(t5, O(iM0), reader, o(iZ), extensionRegistryLite);
                                break;
                            case 50:
                                G(t5, iZ, n(iZ), extensionRegistryLite, reader);
                                break;
                            case 51:
                                UnsafeUtil.V(t5, O(iM0), Double.valueOf(reader.readDouble()));
                                i0(t5, fieldNumber, iZ);
                                break;
                            case 52:
                                UnsafeUtil.V(t5, O(iM0), Float.valueOf(reader.readFloat()));
                                i0(t5, fieldNumber, iZ);
                                break;
                            case 53:
                                UnsafeUtil.V(t5, O(iM0), Long.valueOf(reader.readInt64()));
                                i0(t5, fieldNumber, iZ);
                                break;
                            case 54:
                                UnsafeUtil.V(t5, O(iM0), Long.valueOf(reader.readUInt64()));
                                i0(t5, fieldNumber, iZ);
                                break;
                            case 55:
                                UnsafeUtil.V(t5, O(iM0), Integer.valueOf(reader.readInt32()));
                                i0(t5, fieldNumber, iZ);
                                break;
                            case 56:
                                UnsafeUtil.V(t5, O(iM0), Long.valueOf(reader.readFixed64()));
                                i0(t5, fieldNumber, iZ);
                                break;
                            case 57:
                                UnsafeUtil.V(t5, O(iM0), Integer.valueOf(reader.readFixed32()));
                                i0(t5, fieldNumber, iZ);
                                break;
                            case 58:
                                UnsafeUtil.V(t5, O(iM0), Boolean.valueOf(reader.readBool()));
                                i0(t5, fieldNumber, iZ);
                                break;
                            case 59:
                                e0(t5, iM0, reader);
                                i0(t5, fieldNumber, iZ);
                                break;
                            case 60:
                                if (B(t5, fieldNumber, iZ)) {
                                    UnsafeUtil.V(t5, O(iM0), Internal.h(UnsafeUtil.F(t5, O(iM0)), reader.c(o(iZ), extensionRegistryLite)));
                                } else {
                                    UnsafeUtil.V(t5, O(iM0), reader.c(o(iZ), extensionRegistryLite));
                                    h0(t5, iZ);
                                }
                                i0(t5, fieldNumber, iZ);
                                break;
                            case 61:
                                UnsafeUtil.V(t5, O(iM0), reader.readBytes());
                                i0(t5, fieldNumber, iZ);
                                break;
                            case 62:
                                UnsafeUtil.V(t5, O(iM0), Integer.valueOf(reader.readUInt32()));
                                i0(t5, fieldNumber, iZ);
                                break;
                            case 63:
                                int i11 = reader.readEnum();
                                Internal.EnumVerifier enumVerifierM2 = m(iZ);
                                if (enumVerifierM2 == null || enumVerifierM2.isInRange(i11)) {
                                    UnsafeUtil.V(t5, O(iM0), Integer.valueOf(i11));
                                    i0(t5, fieldNumber, iZ);
                                } else {
                                    objJ = SchemaUtil.L(fieldNumber, i11, objJ, unknownFieldSchema);
                                }
                                break;
                            case 64:
                                UnsafeUtil.V(t5, O(iM0), Integer.valueOf(reader.readSFixed32()));
                                i0(t5, fieldNumber, iZ);
                                break;
                            case 65:
                                UnsafeUtil.V(t5, O(iM0), Long.valueOf(reader.readSFixed64()));
                                i0(t5, fieldNumber, iZ);
                                break;
                            case 66:
                                UnsafeUtil.V(t5, O(iM0), Integer.valueOf(reader.readSInt32()));
                                i0(t5, fieldNumber, iZ);
                                break;
                            case 67:
                                UnsafeUtil.V(t5, O(iM0), Long.valueOf(reader.readSInt64()));
                                i0(t5, fieldNumber, iZ);
                                break;
                            case 68:
                                UnsafeUtil.V(t5, O(iM0), reader.a(o(iZ), extensionRegistryLite));
                                i0(t5, fieldNumber, iZ);
                                break;
                            default:
                                if (objJ == null) {
                                    objJ = unknownFieldSchema.n();
                                }
                                if (!unknownFieldSchema.m(objJ, reader)) {
                                    for (int i12 = this.checkInitializedCount; i12 < this.repeatedFieldOffsetStart; i12++) {
                                        objJ = j(t5, this.intArray[i12], objJ, unknownFieldSchema);
                                    }
                                    if (objJ != null) {
                                        unknownFieldSchema.o(t5, objJ);
                                        return;
                                    }
                                    return;
                                }
                                break;
                                break;
                        }
                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                        if (!unknownFieldSchema.q(reader)) {
                            if (objJ == null) {
                                objJ = unknownFieldSchema.f(t5);
                            }
                            if (!unknownFieldSchema.m(objJ, reader)) {
                                for (int i13 = this.checkInitializedCount; i13 < this.repeatedFieldOffsetStart; i13++) {
                                    objJ = j(t5, this.intArray[i13], objJ, unknownFieldSchema);
                                }
                                if (objJ != null) {
                                    unknownFieldSchema.o(t5, objJ);
                                    return;
                                }
                                return;
                            }
                        } else if (!reader.skipField()) {
                            for (int i14 = this.checkInitializedCount; i14 < this.repeatedFieldOffsetStart; i14++) {
                                objJ = j(t5, this.intArray[i14], objJ, unknownFieldSchema);
                            }
                            if (objJ != null) {
                                unknownFieldSchema.o(t5, objJ);
                                return;
                            }
                            return;
                        }
                    }
                } else {
                    if (fieldNumber == Integer.MAX_VALUE) {
                        for (int i15 = this.checkInitializedCount; i15 < this.repeatedFieldOffsetStart; i15++) {
                            objJ = j(t5, this.intArray[i15], objJ, unknownFieldSchema);
                        }
                        if (objJ != null) {
                            unknownFieldSchema.o(t5, objJ);
                            return;
                        }
                        return;
                    }
                    Object objB = !this.hasExtensions ? null : extensionSchema.b(extensionRegistryLite, this.defaultInstance, fieldNumber);
                    if (objB != null) {
                        if (objD == null) {
                            objD = extensionSchema.d(t5);
                        }
                        objJ = extensionSchema.g(reader, objB, extensionRegistryLite, objD, objJ, unknownFieldSchema);
                    } else if (!unknownFieldSchema.q(reader)) {
                        if (objJ == null) {
                            objJ = unknownFieldSchema.f(t5);
                        }
                        if (unknownFieldSchema.m(objJ, reader)) {
                        }
                    } else if (reader.skipField()) {
                    }
                }
            } catch (Throwable th) {
                for (int i16 = this.checkInitializedCount; i16 < this.repeatedFieldOffsetStart; i16++) {
                    objJ = j(t5, this.intArray[i16], objJ, unknownFieldSchema);
                }
                if (objJ != null) {
                    unknownFieldSchema.o(t5, objJ);
                }
                throw th;
            }
        }
        for (int i17 = this.checkInitializedCount; i17 < this.repeatedFieldOffsetStart; i17++) {
            objJ = j(t5, this.intArray[i17], objJ, unknownFieldSchema);
        }
        if (objJ != null) {
            unknownFieldSchema.o(t5, objJ);
        }
    }

    static <T> MessageSchema<T> K(Class<T> cls, MessageInfo messageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        return messageInfo instanceof RawMessageInfo ? M((RawMessageInfo) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema) : L((StructuralMessageInfo) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    private int N(int i10) {
        return this.buffer[i10];
    }

    private int V(T t5, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j6, int i17, ArrayDecoders.Registers registers) throws IOException {
        Unsafe unsafe = UNSAFE;
        long j10 = this.buffer[i17 + 2] & OFFSET_MASK;
        switch (i16) {
            case 51:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(t5, j6, Double.valueOf(ArrayDecoders.d(bArr, i10)));
                int i18 = i10 + 8;
                unsafe.putInt(t5, j10, i13);
                return i18;
            case 52:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(t5, j6, Float.valueOf(ArrayDecoders.l(bArr, i10)));
                int i19 = i10 + 4;
                unsafe.putInt(t5, j10, i13);
                return i19;
            case 53:
            case 54:
                if (i14 != 0) {
                    return i10;
                }
                int iL = ArrayDecoders.L(bArr, i10, registers);
                unsafe.putObject(t5, j6, Long.valueOf(registers.long1));
                unsafe.putInt(t5, j10, i13);
                return iL;
            case 55:
            case 62:
                if (i14 != 0) {
                    return i10;
                }
                int I = ArrayDecoders.I(bArr, i10, registers);
                unsafe.putObject(t5, j6, Integer.valueOf(registers.int1));
                unsafe.putInt(t5, j10, i13);
                return I;
            case 56:
            case 65:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(t5, j6, Long.valueOf(ArrayDecoders.j(bArr, i10)));
                int i20 = i10 + 8;
                unsafe.putInt(t5, j10, i13);
                return i20;
            case 57:
            case 64:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(t5, j6, Integer.valueOf(ArrayDecoders.h(bArr, i10)));
                int i21 = i10 + 4;
                unsafe.putInt(t5, j10, i13);
                return i21;
            case 58:
                if (i14 != 0) {
                    return i10;
                }
                int iL2 = ArrayDecoders.L(bArr, i10, registers);
                unsafe.putObject(t5, j6, Boolean.valueOf(registers.long1 != 0));
                unsafe.putInt(t5, j10, i13);
                return iL2;
            case 59:
                if (i14 != 2) {
                    return i10;
                }
                int I2 = ArrayDecoders.I(bArr, i10, registers);
                int i22 = registers.int1;
                if (i22 == 0) {
                    unsafe.putObject(t5, j6, "");
                } else {
                    if ((i15 & 536870912) != 0 && !Utf8.u(bArr, I2, I2 + i22)) {
                        throw InvalidProtocolBufferException.c();
                    }
                    unsafe.putObject(t5, j6, new String(bArr, I2, i22, Internal.UTF_8));
                    I2 += i22;
                }
                unsafe.putInt(t5, j10, i13);
                return I2;
            case 60:
                if (i14 != 2) {
                    return i10;
                }
                int iP = ArrayDecoders.p(o(i17), bArr, i10, i11, registers);
                Object object = unsafe.getInt(t5, j10) == i13 ? unsafe.getObject(t5, j6) : null;
                if (object == null) {
                    unsafe.putObject(t5, j6, registers.object1);
                } else {
                    unsafe.putObject(t5, j6, Internal.h(object, registers.object1));
                }
                unsafe.putInt(t5, j10, i13);
                return iP;
            case 61:
                if (i14 != 2) {
                    return i10;
                }
                int iB = ArrayDecoders.b(bArr, i10, registers);
                unsafe.putObject(t5, j6, registers.object1);
                unsafe.putInt(t5, j10, i13);
                return iB;
            case 63:
                if (i14 != 0) {
                    return i10;
                }
                int I3 = ArrayDecoders.I(bArr, i10, registers);
                int i23 = registers.int1;
                Internal.EnumVerifier enumVerifierM = m(i17);
                if (enumVerifierM == null || enumVerifierM.isInRange(i23)) {
                    unsafe.putObject(t5, j6, Integer.valueOf(i23));
                    unsafe.putInt(t5, j10, i13);
                } else {
                    p(t5).n(i12, Long.valueOf(i23));
                }
                return I3;
            case 66:
                if (i14 != 0) {
                    return i10;
                }
                int I4 = ArrayDecoders.I(bArr, i10, registers);
                unsafe.putObject(t5, j6, Integer.valueOf(CodedInputStream.b(registers.int1)));
                unsafe.putInt(t5, j10, i13);
                return I4;
            case 67:
                if (i14 != 0) {
                    return i10;
                }
                int iL3 = ArrayDecoders.L(bArr, i10, registers);
                unsafe.putObject(t5, j6, Long.valueOf(CodedInputStream.c(registers.long1)));
                unsafe.putInt(t5, j10, i13);
                return iL3;
            case 68:
                if (i14 != 3) {
                    return i10;
                }
                int iN = ArrayDecoders.n(o(i17), bArr, i10, i11, (i12 & (-8)) | 4, registers);
                Object object2 = unsafe.getInt(t5, j10) == i13 ? unsafe.getObject(t5, j6) : null;
                if (object2 == null) {
                    unsafe.putObject(t5, j6, registers.object1);
                } else {
                    unsafe.putObject(t5, j6, Internal.h(object2, registers.object1));
                }
                unsafe.putInt(t5, j10, i13);
                return iN;
            default:
                return i10;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x023e, code lost:
    
        if (r0 != r15) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01dd, code lost:
    
        if (r0 != r15) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01f3, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x021f, code lost:
    
        if (r0 != r15) goto L91;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x005d. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int X(T t5, byte[] bArr, int i10, int i11, ArrayDecoders.Registers registers) throws IOException {
        int i12;
        int iH;
        int i13;
        int i14;
        int i15;
        int i16;
        int iL;
        MessageSchema<T> messageSchema = this;
        T t10 = t5;
        byte[] bArr2 = bArr;
        int i17 = i11;
        ArrayDecoders.Registers registers2 = registers;
        Unsafe unsafe = UNSAFE;
        int i18 = -1;
        int iG = i10;
        int i19 = -1;
        int i20 = 0;
        while (iG < i17) {
            int i21 = iG + 1;
            byte b7 = bArr2[iG];
            if (b7 < 0) {
                iH = ArrayDecoders.H(b7, bArr2, i21, registers2);
                i12 = registers2.int1;
            } else {
                i12 = b7;
                iH = i21;
            }
            i19 = i12 >>> 3;
            int i22 = i12 & 7;
            int iA0 = i19 > i19 ? messageSchema.a0(i19, i20 / 3) : messageSchema.Z(i19);
            if (iA0 == i18) {
                i19 = i19;
                i13 = iH;
                unsafe = unsafe;
                i14 = i18;
                i15 = 0;
            } else {
                int i23 = messageSchema.buffer[iA0 + 1];
                int iL0 = l0(i23);
                long jO = O(i23);
                if (iL0 <= 17) {
                    switch (iL0) {
                        case 0:
                            i16 = iA0;
                            if (i22 != 1) {
                                i15 = i16;
                                i14 = -1;
                            } else {
                                UnsafeUtil.R(t10, jO, ArrayDecoders.d(bArr2, iH));
                                iG = iH + 8;
                                i20 = i16;
                                i18 = -1;
                            }
                            break;
                        case 1:
                            i16 = iA0;
                            if (i22 != 5) {
                                i15 = i16;
                                i14 = -1;
                            } else {
                                UnsafeUtil.S(t10, jO, ArrayDecoders.l(bArr2, iH));
                                iG = iH + 4;
                                i20 = i16;
                                i18 = -1;
                            }
                            break;
                        case 2:
                        case 3:
                            i16 = iA0;
                            if (i22 != 0) {
                                i15 = i16;
                                i14 = -1;
                            } else {
                                iL = ArrayDecoders.L(bArr2, iH, registers2);
                                unsafe.putLong(t5, jO, registers2.long1);
                                iG = iL;
                                i20 = i16;
                                i18 = -1;
                            }
                            break;
                        case 4:
                        case 11:
                            i16 = iA0;
                            if (i22 != 0) {
                                i15 = i16;
                                i14 = -1;
                            } else {
                                iG = ArrayDecoders.I(bArr2, iH, registers2);
                                unsafe.putInt(t10, jO, registers2.int1);
                                i20 = i16;
                                i18 = -1;
                            }
                            break;
                        case 5:
                        case 14:
                            if (i22 != 1) {
                                i15 = iA0;
                                i14 = -1;
                            } else {
                                i16 = iA0;
                                unsafe.putLong(t5, jO, ArrayDecoders.j(bArr2, iH));
                                iG = iH + 8;
                                i20 = i16;
                                i18 = -1;
                            }
                            break;
                        case 6:
                        case 13:
                            if (i22 != 5) {
                                i15 = iA0;
                                i14 = -1;
                            } else {
                                unsafe.putInt(t10, jO, ArrayDecoders.h(bArr2, iH));
                                iG = iH + 4;
                                i20 = iA0;
                                i18 = -1;
                            }
                            break;
                        case 7:
                            if (i22 != 0) {
                                i15 = iA0;
                                i14 = -1;
                            } else {
                                int iL2 = ArrayDecoders.L(bArr2, iH, registers2);
                                UnsafeUtil.K(t10, jO, registers2.long1 != 0);
                                iG = iL2;
                                i20 = iA0;
                                i18 = -1;
                            }
                            break;
                        case 8:
                            if (i22 != 2) {
                                i15 = iA0;
                                i14 = -1;
                            } else {
                                iG = (536870912 & i23) == 0 ? ArrayDecoders.C(bArr2, iH, registers2) : ArrayDecoders.F(bArr2, iH, registers2);
                                unsafe.putObject(t10, jO, registers2.object1);
                                i20 = iA0;
                                i18 = -1;
                            }
                            break;
                        case 9:
                            if (i22 != 2) {
                                i15 = iA0;
                                i14 = -1;
                            } else {
                                iG = ArrayDecoders.p(messageSchema.o(iA0), bArr2, iH, i17, registers2);
                                Object object = unsafe.getObject(t10, jO);
                                if (object == null) {
                                    unsafe.putObject(t10, jO, registers2.object1);
                                } else {
                                    unsafe.putObject(t10, jO, Internal.h(object, registers2.object1));
                                }
                                i20 = iA0;
                                i18 = -1;
                            }
                            break;
                        case 10:
                            if (i22 != 2) {
                                i15 = iA0;
                                i14 = -1;
                            } else {
                                iG = ArrayDecoders.b(bArr2, iH, registers2);
                                unsafe.putObject(t10, jO, registers2.object1);
                                i20 = iA0;
                                i18 = -1;
                            }
                            break;
                        case 12:
                            i16 = iA0;
                            if (i22 != 0) {
                                i15 = i16;
                                i14 = -1;
                            } else {
                                iG = ArrayDecoders.I(bArr2, iH, registers2);
                                unsafe.putInt(t10, jO, registers2.int1);
                                i20 = i16;
                                i18 = -1;
                            }
                            break;
                        case 15:
                            i16 = iA0;
                            if (i22 != 0) {
                                i15 = i16;
                                i14 = -1;
                            } else {
                                iG = ArrayDecoders.I(bArr2, iH, registers2);
                                unsafe.putInt(t10, jO, CodedInputStream.b(registers2.int1));
                                i20 = i16;
                                i18 = -1;
                            }
                            break;
                        case 16:
                            if (i22 != 0) {
                                i15 = iA0;
                                i14 = -1;
                            } else {
                                iL = ArrayDecoders.L(bArr2, iH, registers2);
                                i16 = iA0;
                                unsafe.putLong(t5, jO, CodedInputStream.c(registers2.long1));
                                iG = iL;
                                i20 = i16;
                                i18 = -1;
                            }
                            break;
                        default:
                            i15 = iA0;
                            i14 = -1;
                            break;
                    }
                } else {
                    if (iL0 != 27) {
                        i15 = iA0;
                        if (iL0 <= 49) {
                            i19 = i19;
                            int i24 = iH;
                            unsafe = unsafe;
                            i14 = -1;
                            iG = Y(t5, bArr, iH, i11, i12, i19, i22, i15, i23, iL0, jO, registers);
                        } else {
                            i19 = i19;
                            iH = iH;
                            unsafe = unsafe;
                            i14 = -1;
                            if (iL0 != 50) {
                                iG = V(t5, bArr, iH, i11, i12, i19, i22, i23, iL0, jO, i15, registers);
                            } else if (i22 == 2) {
                                iG = U(t5, bArr, iH, i11, i15, jO, registers);
                            }
                        }
                    } else if (i22 == 2) {
                        Internal.ProtobufList protobufListMutableCopyWithCapacity = (Internal.ProtobufList) unsafe.getObject(t10, jO);
                        if (!protobufListMutableCopyWithCapacity.isModifiable()) {
                            int size = protobufListMutableCopyWithCapacity.size();
                            protobufListMutableCopyWithCapacity = protobufListMutableCopyWithCapacity.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
                            unsafe.putObject(t10, jO, protobufListMutableCopyWithCapacity);
                        }
                        iG = ArrayDecoders.q(messageSchema.o(iA0), i12, bArr, iH, i11, protobufListMutableCopyWithCapacity, registers);
                        i20 = iA0;
                        i18 = -1;
                    } else {
                        i15 = iA0;
                        i14 = -1;
                    }
                    messageSchema = this;
                    t10 = t5;
                    bArr2 = bArr;
                    i17 = i11;
                    registers2 = registers;
                    unsafe = unsafe;
                    i20 = i15;
                    i19 = i19;
                    i18 = i14;
                }
                i13 = iH;
            }
            iG = ArrayDecoders.G(i12, bArr, i13, i11, p(t5), registers);
            messageSchema = this;
            t10 = t5;
            bArr2 = bArr;
            i17 = i11;
            registers2 = registers;
            unsafe = unsafe;
            i20 = i15;
            i19 = i19;
            i18 = i14;
        }
        if (iG == i17) {
            return iG;
        }
        throw InvalidProtocolBufferException.g();
    }

    private int Z(int i10) {
        if (i10 < this.minFieldNumber || i10 > this.maxFieldNumber) {
            return -1;
        }
        return j0(i10, 0);
    }

    private int a0(int i10, int i11) {
        if (i10 < this.minFieldNumber || i10 > this.maxFieldNumber) {
            return -1;
        }
        return j0(i10, i11);
    }

    private int b0(int i10) {
        return this.buffer[i10 + 2];
    }

    private <E> void c0(Object obj, long j6, Reader reader, Schema<E> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        reader.g(this.listFieldSchema.e(obj, j6), schema, extensionRegistryLite);
    }

    private int g(byte[] bArr, int i10, int i11, WireFormat.FieldType fieldType, Class<?> cls, ArrayDecoders.Registers registers) throws IOException {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                int iL = ArrayDecoders.L(bArr, i10, registers);
                registers.object1 = Boolean.valueOf(registers.long1 != 0);
                return iL;
            case 2:
                return ArrayDecoders.b(bArr, i10, registers);
            case 3:
                registers.object1 = Double.valueOf(ArrayDecoders.d(bArr, i10));
                return i10 + 8;
            case 4:
            case 5:
                registers.object1 = Integer.valueOf(ArrayDecoders.h(bArr, i10));
                return i10 + 4;
            case 6:
            case 7:
                registers.object1 = Long.valueOf(ArrayDecoders.j(bArr, i10));
                return i10 + 8;
            case 8:
                registers.object1 = Float.valueOf(ArrayDecoders.l(bArr, i10));
                return i10 + 4;
            case 9:
            case 10:
            case 11:
                int I = ArrayDecoders.I(bArr, i10, registers);
                registers.object1 = Integer.valueOf(registers.int1);
                return I;
            case 12:
            case 13:
                int iL2 = ArrayDecoders.L(bArr, i10, registers);
                registers.object1 = Long.valueOf(registers.long1);
                return iL2;
            case 14:
                return ArrayDecoders.p(Protobuf.a().d(cls), bArr, i10, i11, registers);
            case 15:
                int I2 = ArrayDecoders.I(bArr, i10, registers);
                registers.object1 = Integer.valueOf(CodedInputStream.b(registers.int1));
                return I2;
            case 16:
                int iL3 = ArrayDecoders.L(bArr, i10, registers);
                registers.object1 = Long.valueOf(CodedInputStream.c(registers.long1));
                return iL3;
            case 17:
                return ArrayDecoders.F(bArr, i10, registers);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private void h0(T t5, int i10) {
        if (this.proto3) {
            return;
        }
        int iB0 = b0(i10);
        long j6 = iB0 & OFFSET_MASK;
        UnsafeUtil.T(t5, j6, UnsafeUtil.B(t5, j6) | (1 << (iB0 >>> 20)));
    }

    private int j0(int i10, int i11) {
        int length = (this.buffer.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int iN = N(i13);
            if (i10 == iN) {
                return i13;
            }
            if (i10 < iN) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    private final <K, V, UT, UB> UB k(int i10, int i11, Map<K, V> map, Internal.EnumVerifier enumVerifier, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        MapEntryLite.Metadata<?, ?> metadataForMapMetadata = this.mapFieldSchema.forMapMetadata(n(i10));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!enumVerifier.isInRange(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = unknownFieldSchema.n();
                }
                ByteString.CodedBuilder codedBuilderX = ByteString.x(MapEntryLite.b(metadataForMapMetadata, next.getKey(), next.getValue()));
                try {
                    MapEntryLite.e(codedBuilderX.b(), metadataForMapMetadata, next.getKey(), next.getValue());
                    unknownFieldSchema.d(ub, i11, codedBuilderX.a());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    private Internal.EnumVerifier m(int i10) {
        return (Internal.EnumVerifier) this.objects[((i10 / 3) * 2) + 1];
    }

    private int m0(int i10) {
        return this.buffer[i10 + 1];
    }

    private Object n(int i10) {
        return this.objects[(i10 / 3) * 2];
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    private void n0(T t5, Writer writer) throws IOException {
        Iterator itS;
        Map.Entry<?, ?> entry;
        Map.Entry<?, ?> entry2;
        int i10;
        if (this.hasExtensions) {
            FieldSet<T> fieldSetC = this.extensionSchema.c(t5);
            if (fieldSetC.n()) {
                itS = null;
                entry = null;
            } else {
                itS = fieldSetC.s();
                entry = (Map.Entry) itS.next();
            }
        } else {
            itS = null;
            entry = null;
        }
        int length = this.buffer.length;
        Unsafe unsafe = UNSAFE;
        int i11 = -1;
        int i12 = 0;
        int i13 = 0;
        while (i12 < length) {
            int iM0 = m0(i12);
            int iN = N(i12);
            int iL0 = l0(iM0);
            if (this.proto3 || iL0 > 17) {
                entry2 = entry;
                i10 = 0;
            } else {
                int i14 = this.buffer[i12 + 2];
                int i15 = i14 & OFFSET_MASK;
                Map.Entry<?, ?> entry3 = entry;
                if (i15 != i11) {
                    i13 = unsafe.getInt(t5, i15);
                    i11 = i15;
                }
                i10 = 1 << (i14 >>> 20);
                entry2 = entry3;
            }
            while (entry2 != null && this.extensionSchema.a(entry2) <= iN) {
                this.extensionSchema.j(writer, entry2);
                entry2 = itS.hasNext() ? (Map.Entry) itS.next() : null;
            }
            Map.Entry<?, ?> entry4 = entry2;
            int i16 = length;
            long jO = O(iM0);
            switch (iL0) {
                case 0:
                    if ((i10 & i13) != 0) {
                        writer.writeDouble(iN, h(t5, jO));
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 1:
                    if ((i10 & i13) != 0) {
                        writer.writeFloat(iN, l(t5, jO));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 2:
                    if ((i10 & i13) != 0) {
                        writer.writeInt64(iN, unsafe.getLong(t5, jO));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 3:
                    if ((i10 & i13) != 0) {
                        writer.writeUInt64(iN, unsafe.getLong(t5, jO));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 4:
                    if ((i10 & i13) != 0) {
                        writer.writeInt32(iN, unsafe.getInt(t5, jO));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 5:
                    if ((i10 & i13) != 0) {
                        writer.writeFixed64(iN, unsafe.getLong(t5, jO));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 6:
                    if ((i10 & i13) != 0) {
                        writer.writeFixed32(iN, unsafe.getInt(t5, jO));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 7:
                    if ((i10 & i13) != 0) {
                        writer.writeBool(iN, e(t5, jO));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 8:
                    if ((i10 & i13) != 0) {
                        r0(iN, unsafe.getObject(t5, jO), writer);
                    } else {
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 9:
                    if ((i10 & i13) != 0) {
                        writer.b(iN, unsafe.getObject(t5, jO), o(i12));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 10:
                    if ((i10 & i13) != 0) {
                        writer.a(iN, (ByteString) unsafe.getObject(t5, jO));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 11:
                    if ((i10 & i13) != 0) {
                        writer.writeUInt32(iN, unsafe.getInt(t5, jO));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 12:
                    if ((i10 & i13) != 0) {
                        writer.writeEnum(iN, unsafe.getInt(t5, jO));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 13:
                    if ((i10 & i13) != 0) {
                        writer.writeSFixed32(iN, unsafe.getInt(t5, jO));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 14:
                    if ((i10 & i13) != 0) {
                        writer.writeSFixed64(iN, unsafe.getLong(t5, jO));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 15:
                    if ((i10 & i13) != 0) {
                        writer.writeSInt32(iN, unsafe.getInt(t5, jO));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 16:
                    if ((i10 & i13) != 0) {
                        writer.writeSInt64(iN, unsafe.getLong(t5, jO));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 17:
                    if ((i10 & i13) != 0) {
                        writer.e(iN, unsafe.getObject(t5, jO), o(i12));
                    } else {
                        continue;
                    }
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 18:
                    SchemaUtil.P(N(i12), (List) unsafe.getObject(t5, jO), writer, false);
                    continue;
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 19:
                    SchemaUtil.T(N(i12), (List) unsafe.getObject(t5, jO), writer, false);
                    continue;
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 20:
                    SchemaUtil.W(N(i12), (List) unsafe.getObject(t5, jO), writer, false);
                    continue;
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 21:
                    SchemaUtil.e0(N(i12), (List) unsafe.getObject(t5, jO), writer, false);
                    continue;
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 22:
                    SchemaUtil.V(N(i12), (List) unsafe.getObject(t5, jO), writer, false);
                    continue;
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 23:
                    SchemaUtil.S(N(i12), (List) unsafe.getObject(t5, jO), writer, false);
                    continue;
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 24:
                    SchemaUtil.R(N(i12), (List) unsafe.getObject(t5, jO), writer, false);
                    continue;
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 25:
                    SchemaUtil.N(N(i12), (List) unsafe.getObject(t5, jO), writer, false);
                    continue;
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 26:
                    SchemaUtil.c0(N(i12), (List) unsafe.getObject(t5, jO), writer);
                    break;
                case 27:
                    SchemaUtil.X(N(i12), (List) unsafe.getObject(t5, jO), writer, o(i12));
                    break;
                case 28:
                    SchemaUtil.O(N(i12), (List) unsafe.getObject(t5, jO), writer);
                    break;
                case 29:
                    SchemaUtil.d0(N(i12), (List) unsafe.getObject(t5, jO), writer, false);
                    continue;
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 30:
                    SchemaUtil.Q(N(i12), (List) unsafe.getObject(t5, jO), writer, false);
                    continue;
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 31:
                    SchemaUtil.Y(N(i12), (List) unsafe.getObject(t5, jO), writer, false);
                    continue;
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 32:
                    SchemaUtil.Z(N(i12), (List) unsafe.getObject(t5, jO), writer, false);
                    continue;
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 33:
                    SchemaUtil.a0(N(i12), (List) unsafe.getObject(t5, jO), writer, false);
                    continue;
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 34:
                    SchemaUtil.b0(N(i12), (List) unsafe.getObject(t5, jO), writer, false);
                    continue;
                    i12 += 3;
                    length = i16;
                    entry = entry4;
                    break;
                case 35:
                    SchemaUtil.P(N(i12), (List) unsafe.getObject(t5, jO), writer, true);
                    break;
                case 36:
                    SchemaUtil.T(N(i12), (List) unsafe.getObject(t5, jO), writer, true);
                    break;
                case 37:
                    SchemaUtil.W(N(i12), (List) unsafe.getObject(t5, jO), writer, true);
                    break;
                case 38:
                    SchemaUtil.e0(N(i12), (List) unsafe.getObject(t5, jO), writer, true);
                    break;
                case 39:
                    SchemaUtil.V(N(i12), (List) unsafe.getObject(t5, jO), writer, true);
                    break;
                case 40:
                    SchemaUtil.S(N(i12), (List) unsafe.getObject(t5, jO), writer, true);
                    break;
                case 41:
                    SchemaUtil.R(N(i12), (List) unsafe.getObject(t5, jO), writer, true);
                    break;
                case 42:
                    SchemaUtil.N(N(i12), (List) unsafe.getObject(t5, jO), writer, true);
                    break;
                case 43:
                    SchemaUtil.d0(N(i12), (List) unsafe.getObject(t5, jO), writer, true);
                    break;
                case 44:
                    SchemaUtil.Q(N(i12), (List) unsafe.getObject(t5, jO), writer, true);
                    break;
                case 45:
                    SchemaUtil.Y(N(i12), (List) unsafe.getObject(t5, jO), writer, true);
                    break;
                case 46:
                    SchemaUtil.Z(N(i12), (List) unsafe.getObject(t5, jO), writer, true);
                    break;
                case 47:
                    SchemaUtil.a0(N(i12), (List) unsafe.getObject(t5, jO), writer, true);
                    break;
                case 48:
                    SchemaUtil.b0(N(i12), (List) unsafe.getObject(t5, jO), writer, true);
                    break;
                case 49:
                    SchemaUtil.U(N(i12), (List) unsafe.getObject(t5, jO), writer, o(i12));
                    break;
                case 50:
                    q0(writer, iN, unsafe.getObject(t5, jO), i12);
                    break;
                case 51:
                    if (B(t5, iN, i12)) {
                        writer.writeDouble(iN, Q(t5, jO));
                    }
                    break;
                case 52:
                    if (B(t5, iN, i12)) {
                        writer.writeFloat(iN, R(t5, jO));
                    }
                    break;
                case 53:
                    if (B(t5, iN, i12)) {
                        writer.writeInt64(iN, T(t5, jO));
                    }
                    break;
                case 54:
                    if (B(t5, iN, i12)) {
                        writer.writeUInt64(iN, T(t5, jO));
                    }
                    break;
                case 55:
                    if (B(t5, iN, i12)) {
                        writer.writeInt32(iN, S(t5, jO));
                    }
                    break;
                case 56:
                    if (B(t5, iN, i12)) {
                        writer.writeFixed64(iN, T(t5, jO));
                    }
                    break;
                case 57:
                    if (B(t5, iN, i12)) {
                        writer.writeFixed32(iN, S(t5, jO));
                    }
                    break;
                case 58:
                    if (B(t5, iN, i12)) {
                        writer.writeBool(iN, P(t5, jO));
                    }
                    break;
                case 59:
                    if (B(t5, iN, i12)) {
                        r0(iN, unsafe.getObject(t5, jO), writer);
                    }
                    break;
                case 60:
                    if (B(t5, iN, i12)) {
                        writer.b(iN, unsafe.getObject(t5, jO), o(i12));
                    }
                    break;
                case 61:
                    if (B(t5, iN, i12)) {
                        writer.a(iN, (ByteString) unsafe.getObject(t5, jO));
                    }
                    break;
                case 62:
                    if (B(t5, iN, i12)) {
                        writer.writeUInt32(iN, S(t5, jO));
                    }
                    break;
                case 63:
                    if (B(t5, iN, i12)) {
                        writer.writeEnum(iN, S(t5, jO));
                    }
                    break;
                case 64:
                    if (B(t5, iN, i12)) {
                        writer.writeSFixed32(iN, S(t5, jO));
                    }
                    break;
                case 65:
                    if (B(t5, iN, i12)) {
                        writer.writeSFixed64(iN, T(t5, jO));
                    }
                    break;
                case 66:
                    if (B(t5, iN, i12)) {
                        writer.writeSInt32(iN, S(t5, jO));
                    }
                    break;
                case 67:
                    if (B(t5, iN, i12)) {
                        writer.writeSInt64(iN, T(t5, jO));
                    }
                    break;
                case 68:
                    if (B(t5, iN, i12)) {
                        writer.e(iN, unsafe.getObject(t5, jO), o(i12));
                    }
                    break;
            }
            i12 += 3;
            length = i16;
            entry = entry4;
        }
        while (entry != null) {
            this.extensionSchema.j(writer, entry);
            entry = itS.hasNext() ? (Map.Entry) itS.next() : null;
        }
        s0(this.unknownFieldSchema, t5, writer);
    }

    private Schema o(int i10) {
        int i11 = (i10 / 3) * 2;
        Schema schema = (Schema) this.objects[i11];
        if (schema != null) {
            return schema;
        }
        Schema<T> schemaD = Protobuf.a().d((Class) this.objects[i11 + 1]);
        this.objects[i11] = schemaD;
        return schemaD;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    private void o0(T t5, Writer writer) throws IOException {
        Iterator itS;
        Map.Entry<?, ?> entry;
        if (this.hasExtensions) {
            FieldSet<T> fieldSetC = this.extensionSchema.c(t5);
            if (fieldSetC.n()) {
                itS = null;
                entry = null;
            } else {
                itS = fieldSetC.s();
                entry = (Map.Entry) itS.next();
            }
        } else {
            itS = null;
            entry = null;
        }
        int length = this.buffer.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int iM0 = m0(i10);
            int iN = N(i10);
            while (entry != null && this.extensionSchema.a(entry) <= iN) {
                this.extensionSchema.j(writer, entry);
                entry = itS.hasNext() ? (Map.Entry) itS.next() : null;
            }
            switch (l0(iM0)) {
                case 0:
                    if (v(t5, i10)) {
                        writer.writeDouble(iN, h(t5, O(iM0)));
                    }
                    break;
                case 1:
                    if (v(t5, i10)) {
                        writer.writeFloat(iN, l(t5, O(iM0)));
                    }
                    break;
                case 2:
                    if (v(t5, i10)) {
                        writer.writeInt64(iN, E(t5, O(iM0)));
                    }
                    break;
                case 3:
                    if (v(t5, i10)) {
                        writer.writeUInt64(iN, E(t5, O(iM0)));
                    }
                    break;
                case 4:
                    if (v(t5, i10)) {
                        writer.writeInt32(iN, t(t5, O(iM0)));
                    }
                    break;
                case 5:
                    if (v(t5, i10)) {
                        writer.writeFixed64(iN, E(t5, O(iM0)));
                    }
                    break;
                case 6:
                    if (v(t5, i10)) {
                        writer.writeFixed32(iN, t(t5, O(iM0)));
                    }
                    break;
                case 7:
                    if (v(t5, i10)) {
                        writer.writeBool(iN, e(t5, O(iM0)));
                    }
                    break;
                case 8:
                    if (v(t5, i10)) {
                        r0(iN, UnsafeUtil.F(t5, O(iM0)), writer);
                    }
                    break;
                case 9:
                    if (v(t5, i10)) {
                        writer.b(iN, UnsafeUtil.F(t5, O(iM0)), o(i10));
                    }
                    break;
                case 10:
                    if (v(t5, i10)) {
                        writer.a(iN, (ByteString) UnsafeUtil.F(t5, O(iM0)));
                    }
                    break;
                case 11:
                    if (v(t5, i10)) {
                        writer.writeUInt32(iN, t(t5, O(iM0)));
                    }
                    break;
                case 12:
                    if (v(t5, i10)) {
                        writer.writeEnum(iN, t(t5, O(iM0)));
                    }
                    break;
                case 13:
                    if (v(t5, i10)) {
                        writer.writeSFixed32(iN, t(t5, O(iM0)));
                    }
                    break;
                case 14:
                    if (v(t5, i10)) {
                        writer.writeSFixed64(iN, E(t5, O(iM0)));
                    }
                    break;
                case 15:
                    if (v(t5, i10)) {
                        writer.writeSInt32(iN, t(t5, O(iM0)));
                    }
                    break;
                case 16:
                    if (v(t5, i10)) {
                        writer.writeSInt64(iN, E(t5, O(iM0)));
                    }
                    break;
                case 17:
                    if (v(t5, i10)) {
                        writer.e(iN, UnsafeUtil.F(t5, O(iM0)), o(i10));
                    }
                    break;
                case 18:
                    SchemaUtil.P(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 19:
                    SchemaUtil.T(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 20:
                    SchemaUtil.W(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 21:
                    SchemaUtil.e0(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 22:
                    SchemaUtil.V(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 23:
                    SchemaUtil.S(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 24:
                    SchemaUtil.R(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 25:
                    SchemaUtil.N(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 26:
                    SchemaUtil.c0(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer);
                    break;
                case 27:
                    SchemaUtil.X(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, o(i10));
                    break;
                case 28:
                    SchemaUtil.O(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer);
                    break;
                case 29:
                    SchemaUtil.d0(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 30:
                    SchemaUtil.Q(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 31:
                    SchemaUtil.Y(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 32:
                    SchemaUtil.Z(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 33:
                    SchemaUtil.a0(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 34:
                    SchemaUtil.b0(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 35:
                    SchemaUtil.P(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 36:
                    SchemaUtil.T(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 37:
                    SchemaUtil.W(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 38:
                    SchemaUtil.e0(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 39:
                    SchemaUtil.V(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 40:
                    SchemaUtil.S(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 41:
                    SchemaUtil.R(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 42:
                    SchemaUtil.N(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 43:
                    SchemaUtil.d0(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 44:
                    SchemaUtil.Q(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 45:
                    SchemaUtil.Y(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 46:
                    SchemaUtil.Z(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 47:
                    SchemaUtil.a0(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 48:
                    SchemaUtil.b0(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 49:
                    SchemaUtil.U(N(i10), (List) UnsafeUtil.F(t5, O(iM0)), writer, o(i10));
                    break;
                case 50:
                    q0(writer, iN, UnsafeUtil.F(t5, O(iM0)), i10);
                    break;
                case 51:
                    if (B(t5, iN, i10)) {
                        writer.writeDouble(iN, Q(t5, O(iM0)));
                    }
                    break;
                case 52:
                    if (B(t5, iN, i10)) {
                        writer.writeFloat(iN, R(t5, O(iM0)));
                    }
                    break;
                case 53:
                    if (B(t5, iN, i10)) {
                        writer.writeInt64(iN, T(t5, O(iM0)));
                    }
                    break;
                case 54:
                    if (B(t5, iN, i10)) {
                        writer.writeUInt64(iN, T(t5, O(iM0)));
                    }
                    break;
                case 55:
                    if (B(t5, iN, i10)) {
                        writer.writeInt32(iN, S(t5, O(iM0)));
                    }
                    break;
                case 56:
                    if (B(t5, iN, i10)) {
                        writer.writeFixed64(iN, T(t5, O(iM0)));
                    }
                    break;
                case 57:
                    if (B(t5, iN, i10)) {
                        writer.writeFixed32(iN, S(t5, O(iM0)));
                    }
                    break;
                case 58:
                    if (B(t5, iN, i10)) {
                        writer.writeBool(iN, P(t5, O(iM0)));
                    }
                    break;
                case 59:
                    if (B(t5, iN, i10)) {
                        r0(iN, UnsafeUtil.F(t5, O(iM0)), writer);
                    }
                    break;
                case 60:
                    if (B(t5, iN, i10)) {
                        writer.b(iN, UnsafeUtil.F(t5, O(iM0)), o(i10));
                    }
                    break;
                case 61:
                    if (B(t5, iN, i10)) {
                        writer.a(iN, (ByteString) UnsafeUtil.F(t5, O(iM0)));
                    }
                    break;
                case 62:
                    if (B(t5, iN, i10)) {
                        writer.writeUInt32(iN, S(t5, O(iM0)));
                    }
                    break;
                case 63:
                    if (B(t5, iN, i10)) {
                        writer.writeEnum(iN, S(t5, O(iM0)));
                    }
                    break;
                case 64:
                    if (B(t5, iN, i10)) {
                        writer.writeSFixed32(iN, S(t5, O(iM0)));
                    }
                    break;
                case 65:
                    if (B(t5, iN, i10)) {
                        writer.writeSFixed64(iN, T(t5, O(iM0)));
                    }
                    break;
                case 66:
                    if (B(t5, iN, i10)) {
                        writer.writeSInt32(iN, S(t5, O(iM0)));
                    }
                    break;
                case 67:
                    if (B(t5, iN, i10)) {
                        writer.writeSInt64(iN, T(t5, O(iM0)));
                    }
                    break;
                case 68:
                    if (B(t5, iN, i10)) {
                        writer.e(iN, UnsafeUtil.F(t5, O(iM0)), o(i10));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.extensionSchema.j(writer, entry);
            entry = itS.hasNext() ? (Map.Entry) itS.next() : null;
        }
        s0(this.unknownFieldSchema, t5, writer);
    }

    static UnknownFieldSetLite p(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        if (unknownFieldSetLite != UnknownFieldSetLite.e()) {
            return unknownFieldSetLite;
        }
        UnknownFieldSetLite unknownFieldSetLiteL = UnknownFieldSetLite.l();
        generatedMessageLite.unknownFields = unknownFieldSetLiteL;
        return unknownFieldSetLiteL;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    private void p0(T t5, Writer writer) throws IOException {
        Iterator itG;
        Map.Entry<?, ?> entry;
        s0(this.unknownFieldSchema, t5, writer);
        if (this.hasExtensions) {
            FieldSet<T> fieldSetC = this.extensionSchema.c(t5);
            if (fieldSetC.n()) {
                itG = null;
                entry = null;
            } else {
                itG = fieldSetC.g();
                entry = (Map.Entry) itG.next();
            }
        } else {
            itG = null;
            entry = null;
        }
        for (int length = this.buffer.length - 3; length >= 0; length -= 3) {
            int iM0 = m0(length);
            int iN = N(length);
            while (entry != null && this.extensionSchema.a(entry) > iN) {
                this.extensionSchema.j(writer, entry);
                entry = itG.hasNext() ? (Map.Entry) itG.next() : null;
            }
            switch (l0(iM0)) {
                case 0:
                    if (v(t5, length)) {
                        writer.writeDouble(iN, h(t5, O(iM0)));
                    }
                    break;
                case 1:
                    if (v(t5, length)) {
                        writer.writeFloat(iN, l(t5, O(iM0)));
                    }
                    break;
                case 2:
                    if (v(t5, length)) {
                        writer.writeInt64(iN, E(t5, O(iM0)));
                    }
                    break;
                case 3:
                    if (v(t5, length)) {
                        writer.writeUInt64(iN, E(t5, O(iM0)));
                    }
                    break;
                case 4:
                    if (v(t5, length)) {
                        writer.writeInt32(iN, t(t5, O(iM0)));
                    }
                    break;
                case 5:
                    if (v(t5, length)) {
                        writer.writeFixed64(iN, E(t5, O(iM0)));
                    }
                    break;
                case 6:
                    if (v(t5, length)) {
                        writer.writeFixed32(iN, t(t5, O(iM0)));
                    }
                    break;
                case 7:
                    if (v(t5, length)) {
                        writer.writeBool(iN, e(t5, O(iM0)));
                    }
                    break;
                case 8:
                    if (v(t5, length)) {
                        r0(iN, UnsafeUtil.F(t5, O(iM0)), writer);
                    }
                    break;
                case 9:
                    if (v(t5, length)) {
                        writer.b(iN, UnsafeUtil.F(t5, O(iM0)), o(length));
                    }
                    break;
                case 10:
                    if (v(t5, length)) {
                        writer.a(iN, (ByteString) UnsafeUtil.F(t5, O(iM0)));
                    }
                    break;
                case 11:
                    if (v(t5, length)) {
                        writer.writeUInt32(iN, t(t5, O(iM0)));
                    }
                    break;
                case 12:
                    if (v(t5, length)) {
                        writer.writeEnum(iN, t(t5, O(iM0)));
                    }
                    break;
                case 13:
                    if (v(t5, length)) {
                        writer.writeSFixed32(iN, t(t5, O(iM0)));
                    }
                    break;
                case 14:
                    if (v(t5, length)) {
                        writer.writeSFixed64(iN, E(t5, O(iM0)));
                    }
                    break;
                case 15:
                    if (v(t5, length)) {
                        writer.writeSInt32(iN, t(t5, O(iM0)));
                    }
                    break;
                case 16:
                    if (v(t5, length)) {
                        writer.writeSInt64(iN, E(t5, O(iM0)));
                    }
                    break;
                case 17:
                    if (v(t5, length)) {
                        writer.e(iN, UnsafeUtil.F(t5, O(iM0)), o(length));
                    }
                    break;
                case 18:
                    SchemaUtil.P(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 19:
                    SchemaUtil.T(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 20:
                    SchemaUtil.W(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 21:
                    SchemaUtil.e0(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 22:
                    SchemaUtil.V(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 23:
                    SchemaUtil.S(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 24:
                    SchemaUtil.R(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 25:
                    SchemaUtil.N(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 26:
                    SchemaUtil.c0(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer);
                    break;
                case 27:
                    SchemaUtil.X(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, o(length));
                    break;
                case 28:
                    SchemaUtil.O(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer);
                    break;
                case 29:
                    SchemaUtil.d0(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 30:
                    SchemaUtil.Q(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 31:
                    SchemaUtil.Y(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 32:
                    SchemaUtil.Z(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 33:
                    SchemaUtil.a0(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 34:
                    SchemaUtil.b0(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, false);
                    break;
                case 35:
                    SchemaUtil.P(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 36:
                    SchemaUtil.T(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 37:
                    SchemaUtil.W(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 38:
                    SchemaUtil.e0(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 39:
                    SchemaUtil.V(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 40:
                    SchemaUtil.S(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 41:
                    SchemaUtil.R(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 42:
                    SchemaUtil.N(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 43:
                    SchemaUtil.d0(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 44:
                    SchemaUtil.Q(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 45:
                    SchemaUtil.Y(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 46:
                    SchemaUtil.Z(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 47:
                    SchemaUtil.a0(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 48:
                    SchemaUtil.b0(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, true);
                    break;
                case 49:
                    SchemaUtil.U(N(length), (List) UnsafeUtil.F(t5, O(iM0)), writer, o(length));
                    break;
                case 50:
                    q0(writer, iN, UnsafeUtil.F(t5, O(iM0)), length);
                    break;
                case 51:
                    if (B(t5, iN, length)) {
                        writer.writeDouble(iN, Q(t5, O(iM0)));
                    }
                    break;
                case 52:
                    if (B(t5, iN, length)) {
                        writer.writeFloat(iN, R(t5, O(iM0)));
                    }
                    break;
                case 53:
                    if (B(t5, iN, length)) {
                        writer.writeInt64(iN, T(t5, O(iM0)));
                    }
                    break;
                case 54:
                    if (B(t5, iN, length)) {
                        writer.writeUInt64(iN, T(t5, O(iM0)));
                    }
                    break;
                case 55:
                    if (B(t5, iN, length)) {
                        writer.writeInt32(iN, S(t5, O(iM0)));
                    }
                    break;
                case 56:
                    if (B(t5, iN, length)) {
                        writer.writeFixed64(iN, T(t5, O(iM0)));
                    }
                    break;
                case 57:
                    if (B(t5, iN, length)) {
                        writer.writeFixed32(iN, S(t5, O(iM0)));
                    }
                    break;
                case 58:
                    if (B(t5, iN, length)) {
                        writer.writeBool(iN, P(t5, O(iM0)));
                    }
                    break;
                case 59:
                    if (B(t5, iN, length)) {
                        r0(iN, UnsafeUtil.F(t5, O(iM0)), writer);
                    }
                    break;
                case 60:
                    if (B(t5, iN, length)) {
                        writer.b(iN, UnsafeUtil.F(t5, O(iM0)), o(length));
                    }
                    break;
                case 61:
                    if (B(t5, iN, length)) {
                        writer.a(iN, (ByteString) UnsafeUtil.F(t5, O(iM0)));
                    }
                    break;
                case 62:
                    if (B(t5, iN, length)) {
                        writer.writeUInt32(iN, S(t5, O(iM0)));
                    }
                    break;
                case 63:
                    if (B(t5, iN, length)) {
                        writer.writeEnum(iN, S(t5, O(iM0)));
                    }
                    break;
                case 64:
                    if (B(t5, iN, length)) {
                        writer.writeSFixed32(iN, S(t5, O(iM0)));
                    }
                    break;
                case 65:
                    if (B(t5, iN, length)) {
                        writer.writeSFixed64(iN, T(t5, O(iM0)));
                    }
                    break;
                case 66:
                    if (B(t5, iN, length)) {
                        writer.writeSInt32(iN, S(t5, O(iM0)));
                    }
                    break;
                case 67:
                    if (B(t5, iN, length)) {
                        writer.writeSInt64(iN, T(t5, O(iM0)));
                    }
                    break;
                case 68:
                    if (B(t5, iN, length)) {
                        writer.e(iN, UnsafeUtil.F(t5, O(iM0)), o(length));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.extensionSchema.j(writer, entry);
            entry = itG.hasNext() ? (Map.Entry) itG.next() : null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:27:0x0079 A[PHI: r6
      0x0079: PHI (r6v4 int) = 
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
     binds: [B:21:0x0060, B:225:0x04ca, B:222:0x04bf, B:216:0x04a3, B:213:0x0491, B:210:0x0481, B:207:0x0473, B:204:0x0465, B:201:0x045a, B:198:0x0450, B:195:0x0442, B:192:0x0434, B:189:0x0420, B:165:0x032f, B:159:0x0311, B:153:0x02f3, B:147:0x02d5, B:141:0x02b7, B:135:0x0299, B:129:0x027b, B:123:0x025d, B:117:0x023f, B:111:0x0222, B:105:0x0205, B:99:0x01e8, B:93:0x01cb, B:86:0x01ab, B:81:0x0177, B:78:0x016b, B:75:0x015b, B:72:0x014b, B:69:0x013b, B:66:0x012f, B:63:0x0123, B:60:0x0116, B:54:0x00f8, B:51:0x00e5, B:48:0x00d4, B:45:0x00c5, B:42:0x00b6, B:40:0x00b0, B:38:0x00a9, B:35:0x009e, B:32:0x008f, B:29:0x0080, B:26:0x0078, B:24:0x0068] A[DONT_GENERATE, DONT_INLINE]] */
    private int q(T t5) {
        int i10;
        int i11;
        int iQ;
        int iL;
        int iT;
        boolean z6;
        int iF;
        int i12;
        int iD0;
        int iF0;
        Unsafe unsafe = UNSAFE;
        int i13 = -1;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i14 < this.buffer.length) {
            int iM0 = m0(i14);
            int iN = N(i14);
            int iL0 = l0(iM0);
            if (iL0 <= 17) {
                i10 = this.buffer[i14 + 2];
                int i17 = OFFSET_MASK & i10;
                int i18 = 1 << (i10 >>> 20);
                if (i17 != i13) {
                    i16 = unsafe.getInt(t5, i17);
                    i13 = i17;
                }
                i11 = i18;
            } else {
                i10 = (!this.useCachedSizeField || iL0 < FieldType.DOUBLE_LIST_PACKED.a() || iL0 > FieldType.SINT64_LIST_PACKED.a()) ? 0 : this.buffer[i14 + 2] & OFFSET_MASK;
                i11 = 0;
            }
            long jO = O(iM0);
            int i19 = i13;
            switch (iL0) {
                case 0:
                    if ((i16 & i11) != 0) {
                        iQ = CodedOutputStream.q(iN, a.DEFAULT_VALUE_FOR_DOUBLE);
                        i15 += iQ;
                    }
                    break;
                case 1:
                    if ((i16 & i11) != 0) {
                        iQ = CodedOutputStream.y(iN, 0.0f);
                        i15 += iQ;
                    }
                    break;
                case 2:
                    if ((i16 & i11) != 0) {
                        iQ = CodedOutputStream.F(iN, unsafe.getLong(t5, jO));
                        i15 += iQ;
                    }
                    break;
                case 3:
                    if ((i16 & i11) != 0) {
                        iQ = CodedOutputStream.g0(iN, unsafe.getLong(t5, jO));
                        i15 += iQ;
                    }
                    break;
                case 4:
                    if ((i16 & i11) != 0) {
                        iQ = CodedOutputStream.D(iN, unsafe.getInt(t5, jO));
                        i15 += iQ;
                    }
                    break;
                case 5:
                    if ((i16 & i11) != 0) {
                        iQ = CodedOutputStream.w(iN, 0L);
                        i15 += iQ;
                    }
                    break;
                case 6:
                    if ((i16 & i11) != 0) {
                        iQ = CodedOutputStream.u(iN, 0);
                        i15 += iQ;
                    }
                    break;
                case 7:
                    if ((i16 & i11) != 0) {
                        iL = CodedOutputStream.l(iN, true);
                        i15 += iL;
                    }
                    break;
                case 8:
                    if ((i16 & i11) != 0) {
                        Object object = unsafe.getObject(t5, jO);
                        iL = object instanceof ByteString ? CodedOutputStream.o(iN, (ByteString) object) : CodedOutputStream.b0(iN, (String) object);
                        i15 += iL;
                    }
                    break;
                case 9:
                    if ((i16 & i11) != 0) {
                        iL = SchemaUtil.o(iN, unsafe.getObject(t5, jO), o(i14));
                        i15 += iL;
                    }
                    break;
                case 10:
                    if ((i16 & i11) != 0) {
                        iL = CodedOutputStream.o(iN, (ByteString) unsafe.getObject(t5, jO));
                        i15 += iL;
                    }
                    break;
                case 11:
                    if ((i16 & i11) != 0) {
                        iL = CodedOutputStream.e0(iN, unsafe.getInt(t5, jO));
                        i15 += iL;
                    }
                    break;
                case 12:
                    if ((i16 & i11) != 0) {
                        iL = CodedOutputStream.s(iN, unsafe.getInt(t5, jO));
                        i15 += iL;
                    }
                    break;
                case 13:
                    if ((i16 & i11) != 0) {
                        iT = CodedOutputStream.T(iN, 0);
                        i15 += iT;
                    }
                    break;
                case 14:
                    if ((i16 & i11) != 0) {
                        iL = CodedOutputStream.V(iN, 0L);
                        i15 += iL;
                    }
                    break;
                case 15:
                    if ((i16 & i11) != 0) {
                        iL = CodedOutputStream.X(iN, unsafe.getInt(t5, jO));
                        i15 += iL;
                    }
                    break;
                case 16:
                    if ((i16 & i11) != 0) {
                        iL = CodedOutputStream.Z(iN, unsafe.getLong(t5, jO));
                        i15 += iL;
                    }
                    break;
                case 17:
                    if ((i16 & i11) != 0) {
                        iL = CodedOutputStream.A(iN, (MessageLite) unsafe.getObject(t5, jO), o(i14));
                        i15 += iL;
                    }
                    break;
                case 18:
                    iL = SchemaUtil.h(iN, (List) unsafe.getObject(t5, jO), false);
                    i15 += iL;
                    break;
                case 19:
                    z6 = false;
                    iF = SchemaUtil.f(iN, (List) unsafe.getObject(t5, jO), false);
                    i15 += iF;
                    break;
                case 20:
                    z6 = false;
                    iF = SchemaUtil.m(iN, (List) unsafe.getObject(t5, jO), false);
                    i15 += iF;
                    break;
                case 21:
                    z6 = false;
                    iF = SchemaUtil.x(iN, (List) unsafe.getObject(t5, jO), false);
                    i15 += iF;
                    break;
                case 22:
                    z6 = false;
                    iF = SchemaUtil.k(iN, (List) unsafe.getObject(t5, jO), false);
                    i15 += iF;
                    break;
                case 23:
                    z6 = false;
                    iF = SchemaUtil.h(iN, (List) unsafe.getObject(t5, jO), false);
                    i15 += iF;
                    break;
                case 24:
                    z6 = false;
                    iF = SchemaUtil.f(iN, (List) unsafe.getObject(t5, jO), false);
                    i15 += iF;
                    break;
                case 25:
                    z6 = false;
                    iF = SchemaUtil.a(iN, (List) unsafe.getObject(t5, jO), false);
                    i15 += iF;
                    break;
                case 26:
                    iL = SchemaUtil.u(iN, (List) unsafe.getObject(t5, jO));
                    i15 += iL;
                    break;
                case 27:
                    iL = SchemaUtil.p(iN, (List) unsafe.getObject(t5, jO), o(i14));
                    i15 += iL;
                    break;
                case 28:
                    iL = SchemaUtil.c(iN, (List) unsafe.getObject(t5, jO));
                    i15 += iL;
                    break;
                case 29:
                    iL = SchemaUtil.v(iN, (List) unsafe.getObject(t5, jO), false);
                    i15 += iL;
                    break;
                case 30:
                    z6 = false;
                    iF = SchemaUtil.d(iN, (List) unsafe.getObject(t5, jO), false);
                    i15 += iF;
                    break;
                case 31:
                    z6 = false;
                    iF = SchemaUtil.f(iN, (List) unsafe.getObject(t5, jO), false);
                    i15 += iF;
                    break;
                case 32:
                    z6 = false;
                    iF = SchemaUtil.h(iN, (List) unsafe.getObject(t5, jO), false);
                    i15 += iF;
                    break;
                case 33:
                    z6 = false;
                    iF = SchemaUtil.q(iN, (List) unsafe.getObject(t5, jO), false);
                    i15 += iF;
                    break;
                case 34:
                    z6 = false;
                    iF = SchemaUtil.s(iN, (List) unsafe.getObject(t5, jO), false);
                    i15 += iF;
                    break;
                case 35:
                    i12 = SchemaUtil.i((List) unsafe.getObject(t5, jO));
                    if (i12 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, i12);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i12);
                        iT = iD0 + iF0 + i12;
                        i15 += iT;
                    }
                    break;
                case 36:
                    i12 = SchemaUtil.g((List) unsafe.getObject(t5, jO));
                    if (i12 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, i12);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i12);
                        iT = iD0 + iF0 + i12;
                        i15 += iT;
                    }
                    break;
                case 37:
                    i12 = SchemaUtil.n((List) unsafe.getObject(t5, jO));
                    if (i12 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, i12);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i12);
                        iT = iD0 + iF0 + i12;
                        i15 += iT;
                    }
                    break;
                case 38:
                    i12 = SchemaUtil.y((List) unsafe.getObject(t5, jO));
                    if (i12 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, i12);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i12);
                        iT = iD0 + iF0 + i12;
                        i15 += iT;
                    }
                    break;
                case 39:
                    i12 = SchemaUtil.l((List) unsafe.getObject(t5, jO));
                    if (i12 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, i12);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i12);
                        iT = iD0 + iF0 + i12;
                        i15 += iT;
                    }
                    break;
                case 40:
                    i12 = SchemaUtil.i((List) unsafe.getObject(t5, jO));
                    if (i12 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, i12);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i12);
                        iT = iD0 + iF0 + i12;
                        i15 += iT;
                    }
                    break;
                case 41:
                    i12 = SchemaUtil.g((List) unsafe.getObject(t5, jO));
                    if (i12 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, i12);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i12);
                        iT = iD0 + iF0 + i12;
                        i15 += iT;
                    }
                    break;
                case 42:
                    i12 = SchemaUtil.b((List) unsafe.getObject(t5, jO));
                    if (i12 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, i12);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i12);
                        iT = iD0 + iF0 + i12;
                        i15 += iT;
                    }
                    break;
                case 43:
                    i12 = SchemaUtil.w((List) unsafe.getObject(t5, jO));
                    if (i12 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, i12);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i12);
                        iT = iD0 + iF0 + i12;
                        i15 += iT;
                    }
                    break;
                case 44:
                    i12 = SchemaUtil.e((List) unsafe.getObject(t5, jO));
                    if (i12 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, i12);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i12);
                        iT = iD0 + iF0 + i12;
                        i15 += iT;
                    }
                    break;
                case 45:
                    i12 = SchemaUtil.g((List) unsafe.getObject(t5, jO));
                    if (i12 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, i12);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i12);
                        iT = iD0 + iF0 + i12;
                        i15 += iT;
                    }
                    break;
                case 46:
                    i12 = SchemaUtil.i((List) unsafe.getObject(t5, jO));
                    if (i12 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, i12);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i12);
                        iT = iD0 + iF0 + i12;
                        i15 += iT;
                    }
                    break;
                case 47:
                    i12 = SchemaUtil.r((List) unsafe.getObject(t5, jO));
                    if (i12 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, i12);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i12);
                        iT = iD0 + iF0 + i12;
                        i15 += iT;
                    }
                    break;
                case 48:
                    i12 = SchemaUtil.t((List) unsafe.getObject(t5, jO));
                    if (i12 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t5, i10, i12);
                        }
                        iD0 = CodedOutputStream.d0(iN);
                        iF0 = CodedOutputStream.f0(i12);
                        iT = iD0 + iF0 + i12;
                        i15 += iT;
                    }
                    break;
                case 49:
                    iL = SchemaUtil.j(iN, (List) unsafe.getObject(t5, jO), o(i14));
                    i15 += iL;
                    break;
                case 50:
                    iL = this.mapFieldSchema.getSerializedSize(iN, unsafe.getObject(t5, jO), n(i14));
                    i15 += iL;
                    break;
                case 51:
                    if (B(t5, iN, i14)) {
                        iL = CodedOutputStream.q(iN, a.DEFAULT_VALUE_FOR_DOUBLE);
                        i15 += iL;
                    }
                    break;
                case 52:
                    if (B(t5, iN, i14)) {
                        iL = CodedOutputStream.y(iN, 0.0f);
                        i15 += iL;
                    }
                    break;
                case 53:
                    if (B(t5, iN, i14)) {
                        iL = CodedOutputStream.F(iN, T(t5, jO));
                        i15 += iL;
                    }
                    break;
                case 54:
                    if (B(t5, iN, i14)) {
                        iL = CodedOutputStream.g0(iN, T(t5, jO));
                        i15 += iL;
                    }
                    break;
                case 55:
                    if (B(t5, iN, i14)) {
                        iL = CodedOutputStream.D(iN, S(t5, jO));
                        i15 += iL;
                    }
                    break;
                case 56:
                    if (B(t5, iN, i14)) {
                        iL = CodedOutputStream.w(iN, 0L);
                        i15 += iL;
                    }
                    break;
                case 57:
                    if (B(t5, iN, i14)) {
                        iT = CodedOutputStream.u(iN, 0);
                        i15 += iT;
                    }
                    break;
                case 58:
                    if (B(t5, iN, i14)) {
                        iL = CodedOutputStream.l(iN, true);
                        i15 += iL;
                    }
                    break;
                case 59:
                    if (B(t5, iN, i14)) {
                        Object object2 = unsafe.getObject(t5, jO);
                        iL = object2 instanceof ByteString ? CodedOutputStream.o(iN, (ByteString) object2) : CodedOutputStream.b0(iN, (String) object2);
                        i15 += iL;
                    }
                    break;
                case 60:
                    if (B(t5, iN, i14)) {
                        iL = SchemaUtil.o(iN, unsafe.getObject(t5, jO), o(i14));
                        i15 += iL;
                    }
                    break;
                case 61:
                    if (B(t5, iN, i14)) {
                        iL = CodedOutputStream.o(iN, (ByteString) unsafe.getObject(t5, jO));
                        i15 += iL;
                    }
                    break;
                case 62:
                    if (B(t5, iN, i14)) {
                        iL = CodedOutputStream.e0(iN, S(t5, jO));
                        i15 += iL;
                    }
                    break;
                case 63:
                    if (B(t5, iN, i14)) {
                        iL = CodedOutputStream.s(iN, S(t5, jO));
                        i15 += iL;
                    }
                    break;
                case 64:
                    if (B(t5, iN, i14)) {
                        iT = CodedOutputStream.T(iN, 0);
                        i15 += iT;
                    }
                    break;
                case 65:
                    if (B(t5, iN, i14)) {
                        iL = CodedOutputStream.V(iN, 0L);
                        i15 += iL;
                    }
                    break;
                case 66:
                    if (B(t5, iN, i14)) {
                        iL = CodedOutputStream.X(iN, S(t5, jO));
                        i15 += iL;
                    }
                    break;
                case 67:
                    if (B(t5, iN, i14)) {
                        iL = CodedOutputStream.Z(iN, T(t5, jO));
                        i15 += iL;
                    }
                    break;
                case 68:
                    if (B(t5, iN, i14)) {
                        iL = CodedOutputStream.A(iN, (MessageLite) unsafe.getObject(t5, jO), o(i14));
                        i15 += iL;
                    }
                    break;
                default:
                    break;
            }
            i14 += 3;
            i13 = i19;
        }
        int iS = i15 + s(this.unknownFieldSchema, t5);
        return this.hasExtensions ? iS + this.extensionSchema.c(t5).l() : iS;
    }

    private <K, V> void q0(Writer writer, int i10, Object obj, int i11) throws IOException {
        if (obj != null) {
            writer.c(i10, this.mapFieldSchema.forMapMetadata(n(i11)), this.mapFieldSchema.forMapData(obj));
        }
    }

    private void r0(int i10, Object obj, Writer writer) throws IOException {
        if (obj instanceof String) {
            writer.writeString(i10, (String) obj);
        } else {
            writer.a(i10, (ByteString) obj);
        }
    }

    private boolean v(T t5, int i10) {
        if (!this.proto3) {
            int iB0 = b0(i10);
            return (UnsafeUtil.B(t5, (long) (iB0 & OFFSET_MASK)) & (1 << (iB0 >>> 20))) != 0;
        }
        int iM0 = m0(i10);
        long jO = O(iM0);
        switch (l0(iM0)) {
            case 0:
                return UnsafeUtil.z(t5, jO) != a.DEFAULT_VALUE_FOR_DOUBLE;
            case 1:
                return UnsafeUtil.A(t5, jO) != 0.0f;
            case 2:
                return UnsafeUtil.D(t5, jO) != 0;
            case 3:
                return UnsafeUtil.D(t5, jO) != 0;
            case 4:
                return UnsafeUtil.B(t5, jO) != 0;
            case 5:
                return UnsafeUtil.D(t5, jO) != 0;
            case 6:
                return UnsafeUtil.B(t5, jO) != 0;
            case 7:
                return UnsafeUtil.s(t5, jO);
            case 8:
                Object objF = UnsafeUtil.F(t5, jO);
                if (objF instanceof String) {
                    return !((String) objF).isEmpty();
                }
                if (objF instanceof ByteString) {
                    return !ByteString.EMPTY.equals(objF);
                }
                throw new IllegalArgumentException();
            case 9:
                return UnsafeUtil.F(t5, jO) != null;
            case 10:
                return !ByteString.EMPTY.equals(UnsafeUtil.F(t5, jO));
            case 11:
                return UnsafeUtil.B(t5, jO) != 0;
            case 12:
                return UnsafeUtil.B(t5, jO) != 0;
            case 13:
                return UnsafeUtil.B(t5, jO) != 0;
            case 14:
                return UnsafeUtil.D(t5, jO) != 0;
            case 15:
                return UnsafeUtil.B(t5, jO) != 0;
            case 16:
                return UnsafeUtil.D(t5, jO) != 0;
            case 17:
                return UnsafeUtil.F(t5, jO) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private boolean w(T t5, int i10, int i11, int i12) {
        if (this.proto3) {
            return v(t5, i10);
        }
        return (i11 & i12) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [androidx.datastore.preferences.protobuf.Schema] */
    private boolean z(T t5, int i10, int i11) {
        Map<?, ?> mapForMapData = this.mapFieldSchema.forMapData(UnsafeUtil.F(t5, O(i10)));
        if (mapForMapData.isEmpty()) {
            return true;
        }
        if (this.mapFieldSchema.forMapMetadata(n(i11)).valueType.a() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        ?? D = 0;
        for (Object obj : mapForMapData.values()) {
            if (D == 0) {
                D = D;
                D = Protobuf.a().d(obj.getClass());
            }
            D = D;
            if (!D.isInitialized(obj)) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void c(T t5, byte[] bArr, int i10, int i11, ArrayDecoders.Registers registers) throws IOException {
        if (this.proto3) {
            X(t5, bArr, i10, i11, registers);
        } else {
            W(t5, bArr, i10, i11, 0, registers);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public boolean equals(T t5, T t10) {
        int length = this.buffer.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            if (!i(t5, t10, i10)) {
                return false;
            }
        }
        if (!this.unknownFieldSchema.g(t5).equals(this.unknownFieldSchema.g(t10))) {
            return false;
        }
        if (this.hasExtensions) {
            return this.extensionSchema.c(t5).equals(this.extensionSchema.c(t10));
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public int getSerializedSize(T t5) {
        return this.proto3 ? r(t5) : q(t5);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public int hashCode(T t5) {
        int i10;
        int iF;
        int length = this.buffer.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iM0 = m0(i12);
            int iN = N(i12);
            long jO = O(iM0);
            int iHashCode = 37;
            switch (l0(iM0)) {
                case 0:
                    i10 = i11 * 53;
                    iF = Internal.f(Double.doubleToLongBits(UnsafeUtil.z(t5, jO)));
                    i11 = i10 + iF;
                    break;
                case 1:
                    i10 = i11 * 53;
                    iF = Float.floatToIntBits(UnsafeUtil.A(t5, jO));
                    i11 = i10 + iF;
                    break;
                case 2:
                    i10 = i11 * 53;
                    iF = Internal.f(UnsafeUtil.D(t5, jO));
                    i11 = i10 + iF;
                    break;
                case 3:
                    i10 = i11 * 53;
                    iF = Internal.f(UnsafeUtil.D(t5, jO));
                    i11 = i10 + iF;
                    break;
                case 4:
                    i10 = i11 * 53;
                    iF = UnsafeUtil.B(t5, jO);
                    i11 = i10 + iF;
                    break;
                case 5:
                    i10 = i11 * 53;
                    iF = Internal.f(UnsafeUtil.D(t5, jO));
                    i11 = i10 + iF;
                    break;
                case 6:
                    i10 = i11 * 53;
                    iF = UnsafeUtil.B(t5, jO);
                    i11 = i10 + iF;
                    break;
                case 7:
                    i10 = i11 * 53;
                    iF = Internal.c(UnsafeUtil.s(t5, jO));
                    i11 = i10 + iF;
                    break;
                case 8:
                    i10 = i11 * 53;
                    iF = ((String) UnsafeUtil.F(t5, jO)).hashCode();
                    i11 = i10 + iF;
                    break;
                case 9:
                    Object objF = UnsafeUtil.F(t5, jO);
                    if (objF != null) {
                        iHashCode = objF.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i10 = i11 * 53;
                    iF = UnsafeUtil.F(t5, jO).hashCode();
                    i11 = i10 + iF;
                    break;
                case 11:
                    i10 = i11 * 53;
                    iF = UnsafeUtil.B(t5, jO);
                    i11 = i10 + iF;
                    break;
                case 12:
                    i10 = i11 * 53;
                    iF = UnsafeUtil.B(t5, jO);
                    i11 = i10 + iF;
                    break;
                case 13:
                    i10 = i11 * 53;
                    iF = UnsafeUtil.B(t5, jO);
                    i11 = i10 + iF;
                    break;
                case 14:
                    i10 = i11 * 53;
                    iF = Internal.f(UnsafeUtil.D(t5, jO));
                    i11 = i10 + iF;
                    break;
                case 15:
                    i10 = i11 * 53;
                    iF = UnsafeUtil.B(t5, jO);
                    i11 = i10 + iF;
                    break;
                case 16:
                    i10 = i11 * 53;
                    iF = Internal.f(UnsafeUtil.D(t5, jO));
                    i11 = i10 + iF;
                    break;
                case 17:
                    Object objF2 = UnsafeUtil.F(t5, jO);
                    if (objF2 != null) {
                        iHashCode = objF2.hashCode();
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
                    iF = UnsafeUtil.F(t5, jO).hashCode();
                    i11 = i10 + iF;
                    break;
                case 50:
                    i10 = i11 * 53;
                    iF = UnsafeUtil.F(t5, jO).hashCode();
                    i11 = i10 + iF;
                    break;
                case 51:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = Internal.f(Double.doubleToLongBits(Q(t5, jO)));
                        i11 = i10 + iF;
                    }
                    break;
                case 52:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = Float.floatToIntBits(R(t5, jO));
                        i11 = i10 + iF;
                    }
                    break;
                case 53:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = Internal.f(T(t5, jO));
                        i11 = i10 + iF;
                    }
                    break;
                case 54:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = Internal.f(T(t5, jO));
                        i11 = i10 + iF;
                    }
                    break;
                case 55:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = S(t5, jO);
                        i11 = i10 + iF;
                    }
                    break;
                case 56:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = Internal.f(T(t5, jO));
                        i11 = i10 + iF;
                    }
                    break;
                case 57:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = S(t5, jO);
                        i11 = i10 + iF;
                    }
                    break;
                case 58:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = Internal.c(P(t5, jO));
                        i11 = i10 + iF;
                    }
                    break;
                case 59:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = ((String) UnsafeUtil.F(t5, jO)).hashCode();
                        i11 = i10 + iF;
                    }
                    break;
                case 60:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = UnsafeUtil.F(t5, jO).hashCode();
                        i11 = i10 + iF;
                    }
                    break;
                case 61:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = UnsafeUtil.F(t5, jO).hashCode();
                        i11 = i10 + iF;
                    }
                    break;
                case 62:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = S(t5, jO);
                        i11 = i10 + iF;
                    }
                    break;
                case 63:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = S(t5, jO);
                        i11 = i10 + iF;
                    }
                    break;
                case 64:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = S(t5, jO);
                        i11 = i10 + iF;
                    }
                    break;
                case 65:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = Internal.f(T(t5, jO));
                        i11 = i10 + iF;
                    }
                    break;
                case 66:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = S(t5, jO);
                        i11 = i10 + iF;
                    }
                    break;
                case 67:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = Internal.f(T(t5, jO));
                        i11 = i10 + iF;
                    }
                    break;
                case 68:
                    if (B(t5, iN, i12)) {
                        i10 = i11 * 53;
                        iF = UnsafeUtil.F(t5, jO).hashCode();
                        i11 = i10 + iF;
                    }
                    break;
            }
        }
        int iHashCode2 = (i11 * 53) + this.unknownFieldSchema.g(t5).hashCode();
        return this.hasExtensions ? (iHashCode2 * 53) + this.extensionSchema.c(t5).hashCode() : iHashCode2;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void makeImmutable(T t5) {
        int i10;
        int i11 = this.checkInitializedCount;
        while (true) {
            i10 = this.repeatedFieldOffsetStart;
            if (i11 >= i10) {
                break;
            }
            long jO = O(m0(this.intArray[i11]));
            Object objF = UnsafeUtil.F(t5, jO);
            if (objF != null) {
                UnsafeUtil.V(t5, jO, this.mapFieldSchema.toImmutable(objF));
            }
            i11++;
        }
        int length = this.intArray.length;
        while (i10 < length) {
            this.listFieldSchema.c(t5, this.intArray[i10]);
            i10++;
        }
        this.unknownFieldSchema.j(t5);
        if (this.hasExtensions) {
            this.extensionSchema.f(t5);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public T newInstance() {
        return (T) this.newInstanceSchema.newInstance(this.defaultInstance);
    }

    private boolean A(T t5, T t10, int i10) {
        long jB0 = b0(i10) & OFFSET_MASK;
        if (UnsafeUtil.B(t5, jB0) == UnsafeUtil.B(t10, jB0)) {
            return true;
        }
        return false;
    }

    private boolean B(T t5, int i10, int i11) {
        if (UnsafeUtil.B(t5, b0(i11) & OFFSET_MASK) == i10) {
            return true;
        }
        return false;
    }

    private static List<?> D(Object obj, long j6) {
        return (List) UnsafeUtil.F(obj, j6);
    }

    private static <T> long E(T t5, long j6) {
        return UnsafeUtil.D(t5, j6);
    }

    private final <K, V> void G(Object obj, int i10, Object obj2, ExtensionRegistryLite extensionRegistryLite, Reader reader) throws IOException {
        long jO = O(m0(i10));
        Object objF = UnsafeUtil.F(obj, jO);
        if (objF == null) {
            objF = this.mapFieldSchema.newMapField(obj2);
            UnsafeUtil.V(obj, jO, objF);
        } else if (this.mapFieldSchema.isImmutable(objF)) {
            Object objNewMapField = this.mapFieldSchema.newMapField(obj2);
            this.mapFieldSchema.mergeFrom(objNewMapField, objF);
            UnsafeUtil.V(obj, jO, objNewMapField);
            objF = objNewMapField;
        }
        reader.f(this.mapFieldSchema.forMutableMapData(objF), this.mapFieldSchema.forMapMetadata(obj2), extensionRegistryLite);
    }

    private void H(T t5, T t10, int i10) {
        long jO = O(m0(i10));
        if (!v(t10, i10)) {
            return;
        }
        Object objF = UnsafeUtil.F(t5, jO);
        Object objF2 = UnsafeUtil.F(t10, jO);
        if (objF != null && objF2 != null) {
            UnsafeUtil.V(t5, jO, Internal.h(objF, objF2));
            h0(t5, i10);
        } else if (objF2 != null) {
            UnsafeUtil.V(t5, jO, objF2);
            h0(t5, i10);
        }
    }

    private void I(T t5, T t10, int i10) {
        int iM0 = m0(i10);
        int iN = N(i10);
        long jO = O(iM0);
        if (!B(t10, iN, i10)) {
            return;
        }
        Object objF = UnsafeUtil.F(t5, jO);
        Object objF2 = UnsafeUtil.F(t10, jO);
        if (objF != null && objF2 != null) {
            UnsafeUtil.V(t5, jO, Internal.h(objF, objF2));
            i0(t5, iN, i10);
        } else if (objF2 != null) {
            UnsafeUtil.V(t5, jO, objF2);
            i0(t5, iN, i10);
        }
    }

    private void J(T t5, T t10, int i10) {
        int iM0 = m0(i10);
        long jO = O(iM0);
        int iN = N(i10);
        switch (l0(iM0)) {
            case 0:
                if (v(t10, i10)) {
                    UnsafeUtil.R(t5, jO, UnsafeUtil.z(t10, jO));
                    h0(t5, i10);
                }
                break;
            case 1:
                if (v(t10, i10)) {
                    UnsafeUtil.S(t5, jO, UnsafeUtil.A(t10, jO));
                    h0(t5, i10);
                }
                break;
            case 2:
                if (v(t10, i10)) {
                    UnsafeUtil.U(t5, jO, UnsafeUtil.D(t10, jO));
                    h0(t5, i10);
                }
                break;
            case 3:
                if (v(t10, i10)) {
                    UnsafeUtil.U(t5, jO, UnsafeUtil.D(t10, jO));
                    h0(t5, i10);
                }
                break;
            case 4:
                if (v(t10, i10)) {
                    UnsafeUtil.T(t5, jO, UnsafeUtil.B(t10, jO));
                    h0(t5, i10);
                }
                break;
            case 5:
                if (v(t10, i10)) {
                    UnsafeUtil.U(t5, jO, UnsafeUtil.D(t10, jO));
                    h0(t5, i10);
                }
                break;
            case 6:
                if (v(t10, i10)) {
                    UnsafeUtil.T(t5, jO, UnsafeUtil.B(t10, jO));
                    h0(t5, i10);
                }
                break;
            case 7:
                if (v(t10, i10)) {
                    UnsafeUtil.K(t5, jO, UnsafeUtil.s(t10, jO));
                    h0(t5, i10);
                }
                break;
            case 8:
                if (v(t10, i10)) {
                    UnsafeUtil.V(t5, jO, UnsafeUtil.F(t10, jO));
                    h0(t5, i10);
                }
                break;
            case 9:
                H(t5, t10, i10);
                break;
            case 10:
                if (v(t10, i10)) {
                    UnsafeUtil.V(t5, jO, UnsafeUtil.F(t10, jO));
                    h0(t5, i10);
                }
                break;
            case 11:
                if (v(t10, i10)) {
                    UnsafeUtil.T(t5, jO, UnsafeUtil.B(t10, jO));
                    h0(t5, i10);
                }
                break;
            case 12:
                if (v(t10, i10)) {
                    UnsafeUtil.T(t5, jO, UnsafeUtil.B(t10, jO));
                    h0(t5, i10);
                }
                break;
            case 13:
                if (v(t10, i10)) {
                    UnsafeUtil.T(t5, jO, UnsafeUtil.B(t10, jO));
                    h0(t5, i10);
                }
                break;
            case 14:
                if (v(t10, i10)) {
                    UnsafeUtil.U(t5, jO, UnsafeUtil.D(t10, jO));
                    h0(t5, i10);
                }
                break;
            case 15:
                if (v(t10, i10)) {
                    UnsafeUtil.T(t5, jO, UnsafeUtil.B(t10, jO));
                    h0(t5, i10);
                }
                break;
            case 16:
                if (v(t10, i10)) {
                    UnsafeUtil.U(t5, jO, UnsafeUtil.D(t10, jO));
                    h0(t5, i10);
                }
                break;
            case 17:
                H(t5, t10, i10);
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
                this.listFieldSchema.d(t5, t10, jO);
                break;
            case 50:
                SchemaUtil.F(this.mapFieldSchema, t5, t10, jO);
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
                if (B(t10, iN, i10)) {
                    UnsafeUtil.V(t5, jO, UnsafeUtil.F(t10, jO));
                    i0(t5, iN, i10);
                }
                break;
            case 60:
                I(t5, t10, i10);
                break;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (B(t10, iN, i10)) {
                    UnsafeUtil.V(t5, jO, UnsafeUtil.F(t10, jO));
                    i0(t5, iN, i10);
                }
                break;
            case 68:
                I(t5, t10, i10);
                break;
        }
    }

    static <T> MessageSchema<T> L(StructuralMessageInfo structuralMessageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        boolean z6;
        int iE;
        int iE2;
        int[] iArr;
        if (structuralMessageInfo.getSyntax() == ProtoSyntax.PROTO3) {
            z6 = true;
        } else {
            z6 = false;
        }
        FieldInfo[] fieldInfoArrB = structuralMessageInfo.b();
        if (fieldInfoArrB.length == 0) {
            iE = 0;
            iE2 = 0;
        } else {
            iE = fieldInfoArrB[0].e();
            iE2 = fieldInfoArrB[fieldInfoArrB.length - 1].e();
        }
        int length = fieldInfoArrB.length;
        int[] iArr2 = new int[length * 3];
        Object[] objArr = new Object[length * 2];
        int i10 = 0;
        int i11 = 0;
        for (FieldInfo fieldInfo : fieldInfoArrB) {
            if (fieldInfo.l() == FieldType.MAP) {
                i10++;
            } else if (fieldInfo.l().a() >= 18 && fieldInfo.l().a() <= 49) {
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
        int[] iArrA = structuralMessageInfo.a();
        if (iArrA == null) {
            iArrA = EMPTY_INT_ARRAY;
        }
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i12 < fieldInfoArrB.length) {
            FieldInfo fieldInfo2 = fieldInfoArrB[i12];
            int iE3 = fieldInfo2.e();
            k0(fieldInfo2, iArr2, i13, z6, objArr);
            if (i14 < iArrA.length && iArrA[i14] == iE3) {
                iArrA[i14] = i13;
                i14++;
            }
            if (fieldInfo2.l() == FieldType.MAP) {
                iArr[i15] = i13;
                i15++;
            } else {
                if (fieldInfo2.l().a() >= 18 && fieldInfo2.l().a() <= 49) {
                    iArr3[i16] = (int) UnsafeUtil.J(fieldInfo2.d());
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
        int[] iArr4 = new int[iArrA.length + iArr.length + iArr3.length];
        System.arraycopy(iArrA, 0, iArr4, 0, iArrA.length);
        System.arraycopy(iArr, 0, iArr4, iArrA.length, iArr.length);
        System.arraycopy(iArr3, 0, iArr4, iArrA.length + iArr.length, iArr3.length);
        return new MessageSchema<>(iArr2, objArr, iE, iE2, structuralMessageInfo.getDefaultInstance(), z6, true, iArr4, iArrA.length, iArrA.length + iArr.length, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    private static <T> boolean P(T t5, long j6) {
        return ((Boolean) UnsafeUtil.F(t5, j6)).booleanValue();
    }

    private static <T> double Q(T t5, long j6) {
        return ((Double) UnsafeUtil.F(t5, j6)).doubleValue();
    }

    private static <T> float R(T t5, long j6) {
        return ((Float) UnsafeUtil.F(t5, j6)).floatValue();
    }

    private static <T> int S(T t5, long j6) {
        return ((Integer) UnsafeUtil.F(t5, j6)).intValue();
    }

    private static <T> long T(T t5, long j6) {
        return ((Long) UnsafeUtil.F(t5, j6)).longValue();
    }

    private boolean d(T t5, T t10, int i10) {
        if (v(t5, i10) == v(t10, i10)) {
            return true;
        }
        return false;
    }

    private <E> void d0(Object obj, int i10, Reader reader, Schema<E> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        reader.d(this.listFieldSchema.e(obj, O(i10)), schema, extensionRegistryLite);
    }

    private static <T> boolean e(T t5, long j6) {
        return UnsafeUtil.s(t5, j6);
    }

    private void e0(Object obj, int i10, Reader reader) throws IOException {
        if (u(i10)) {
            UnsafeUtil.V(obj, O(i10), reader.readStringRequireUtf8());
        } else if (this.lite) {
            UnsafeUtil.V(obj, O(i10), reader.readString());
        } else {
            UnsafeUtil.V(obj, O(i10), reader.readBytes());
        }
    }

    private void f0(Object obj, int i10, Reader reader) throws IOException {
        if (u(i10)) {
            reader.readStringListRequireUtf8(this.listFieldSchema.e(obj, O(i10)));
        } else {
            reader.readStringList(this.listFieldSchema.e(obj, O(i10)));
        }
    }

    private static java.lang.reflect.Field g0(Class<?> cls, String str) {
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

    private static <T> double h(T t5, long j6) {
        return UnsafeUtil.z(t5, j6);
    }

    private boolean i(T t5, T t10, int i10) {
        int iM0 = m0(i10);
        long jO = O(iM0);
        switch (l0(iM0)) {
            case 0:
                if (!d(t5, t10, i10) || Double.doubleToLongBits(UnsafeUtil.z(t5, jO)) != Double.doubleToLongBits(UnsafeUtil.z(t10, jO))) {
                    return false;
                }
                return true;
            case 1:
                if (!d(t5, t10, i10) || Float.floatToIntBits(UnsafeUtil.A(t5, jO)) != Float.floatToIntBits(UnsafeUtil.A(t10, jO))) {
                    return false;
                }
                return true;
            case 2:
                if (!d(t5, t10, i10) || UnsafeUtil.D(t5, jO) != UnsafeUtil.D(t10, jO)) {
                    return false;
                }
                return true;
            case 3:
                if (!d(t5, t10, i10) || UnsafeUtil.D(t5, jO) != UnsafeUtil.D(t10, jO)) {
                    return false;
                }
                return true;
            case 4:
                if (!d(t5, t10, i10) || UnsafeUtil.B(t5, jO) != UnsafeUtil.B(t10, jO)) {
                    return false;
                }
                return true;
            case 5:
                if (!d(t5, t10, i10) || UnsafeUtil.D(t5, jO) != UnsafeUtil.D(t10, jO)) {
                    return false;
                }
                return true;
            case 6:
                if (!d(t5, t10, i10) || UnsafeUtil.B(t5, jO) != UnsafeUtil.B(t10, jO)) {
                    return false;
                }
                return true;
            case 7:
                if (!d(t5, t10, i10) || UnsafeUtil.s(t5, jO) != UnsafeUtil.s(t10, jO)) {
                    return false;
                }
                return true;
            case 8:
                if (!d(t5, t10, i10) || !SchemaUtil.K(UnsafeUtil.F(t5, jO), UnsafeUtil.F(t10, jO))) {
                    return false;
                }
                return true;
            case 9:
                if (!d(t5, t10, i10) || !SchemaUtil.K(UnsafeUtil.F(t5, jO), UnsafeUtil.F(t10, jO))) {
                    return false;
                }
                return true;
            case 10:
                if (!d(t5, t10, i10) || !SchemaUtil.K(UnsafeUtil.F(t5, jO), UnsafeUtil.F(t10, jO))) {
                    return false;
                }
                return true;
            case 11:
                if (!d(t5, t10, i10) || UnsafeUtil.B(t5, jO) != UnsafeUtil.B(t10, jO)) {
                    return false;
                }
                return true;
            case 12:
                if (!d(t5, t10, i10) || UnsafeUtil.B(t5, jO) != UnsafeUtil.B(t10, jO)) {
                    return false;
                }
                return true;
            case 13:
                if (!d(t5, t10, i10) || UnsafeUtil.B(t5, jO) != UnsafeUtil.B(t10, jO)) {
                    return false;
                }
                return true;
            case 14:
                if (!d(t5, t10, i10) || UnsafeUtil.D(t5, jO) != UnsafeUtil.D(t10, jO)) {
                    return false;
                }
                return true;
            case 15:
                if (!d(t5, t10, i10) || UnsafeUtil.B(t5, jO) != UnsafeUtil.B(t10, jO)) {
                    return false;
                }
                return true;
            case 16:
                if (!d(t5, t10, i10) || UnsafeUtil.D(t5, jO) != UnsafeUtil.D(t10, jO)) {
                    return false;
                }
                return true;
            case 17:
                if (!d(t5, t10, i10) || !SchemaUtil.K(UnsafeUtil.F(t5, jO), UnsafeUtil.F(t10, jO))) {
                    return false;
                }
                return true;
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
                return SchemaUtil.K(UnsafeUtil.F(t5, jO), UnsafeUtil.F(t10, jO));
            case 50:
                return SchemaUtil.K(UnsafeUtil.F(t5, jO), UnsafeUtil.F(t10, jO));
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
                if (!A(t5, t10, i10) || !SchemaUtil.K(UnsafeUtil.F(t5, jO), UnsafeUtil.F(t10, jO))) {
                    return false;
                }
                return true;
            default:
                return true;
        }
    }

    private void i0(T t5, int i10, int i11) {
        UnsafeUtil.T(t5, b0(i11) & OFFSET_MASK, i10);
    }

    private final <UT, UB> UB j(Object obj, int i10, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        Internal.EnumVerifier enumVerifierM;
        int iN = N(i10);
        Object objF = UnsafeUtil.F(obj, O(m0(i10)));
        if (objF == null || (enumVerifierM = m(i10)) == null) {
            return ub;
        }
        return (UB) k(i10, iN, this.mapFieldSchema.forMutableMapData(objF), enumVerifierM, ub, unknownFieldSchema);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0081  */
    /* JADX WARN: Code duplicated, block: B:20:0x0084  */
    /* JADX WARN: Code duplicated, block: B:23:0x008b  */
    /* JADX WARN: Code duplicated, block: B:26:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:28:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:31:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:34:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:39:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:? A[RETURN, SYNTHETIC] */
    private static void k0(FieldInfo fieldInfo, int[] iArr, int i10, boolean z6, Object[] objArr) {
        int iJ;
        int iJ2;
        int iA;
        int iNumberOfTrailingZeros;
        int i11;
        int i12;
        int i13;
        Class<?> clsH;
        int i14;
        OneofInfo oneofInfoI = fieldInfo.i();
        int i15 = 0;
        if (oneofInfoI != null) {
            iA = fieldInfo.l().a() + 51;
            iJ = (int) UnsafeUtil.J(oneofInfoI.b());
            iJ2 = (int) UnsafeUtil.J(oneofInfoI.a());
        } else {
            FieldType fieldTypeL = fieldInfo.l();
            iJ = (int) UnsafeUtil.J(fieldInfo.d());
            int iA2 = fieldTypeL.a();
            if (!z6 && !fieldTypeL.b() && !fieldTypeL.c()) {
                int iJ3 = (int) UnsafeUtil.J(fieldInfo.j());
                iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(fieldInfo.k());
                iA = iA2;
                i11 = iJ;
                i12 = iJ3;
            } else if (fieldInfo.b() == null) {
                iNumberOfTrailingZeros = 0;
                iA = iA2;
                i11 = iJ;
                i12 = 0;
            } else {
                iJ2 = (int) UnsafeUtil.J(fieldInfo.b());
                iA = iA2;
            }
            iArr[i10] = fieldInfo.e();
            int i16 = i10 + 1;
            if (fieldInfo.n()) {
                i13 = 536870912;
            } else {
                i13 = 0;
            }
            if (fieldInfo.o()) {
                i15 = 268435456;
            }
            iArr[i16] = (iA << 20) | i15 | i13 | i11;
            iArr[i10 + 2] = (iNumberOfTrailingZeros << 20) | i12;
            clsH = fieldInfo.h();
            if (fieldInfo.f() != null) {
                i14 = (i10 / 3) * 2;
                objArr[i14] = fieldInfo.f();
                if (clsH != null) {
                    objArr[i14 + 1] = clsH;
                    return;
                } else {
                    if (fieldInfo.c() != null) {
                        objArr[i14 + 1] = fieldInfo.c();
                        return;
                    }
                    return;
                }
            }
            if (clsH != null) {
                objArr[((i10 / 3) * 2) + 1] = clsH;
            } else if (fieldInfo.c() != null) {
                objArr[((i10 / 3) * 2) + 1] = fieldInfo.c();
            }
        }
        i11 = iJ;
        i12 = iJ2;
        iNumberOfTrailingZeros = 0;
        iArr[i10] = fieldInfo.e();
        int i17 = i10 + 1;
        if (fieldInfo.n()) {
            i13 = 536870912;
        } else {
            i13 = 0;
        }
        if (fieldInfo.o()) {
            i15 = 268435456;
        }
        iArr[i17] = (iA << 20) | i15 | i13 | i11;
        iArr[i10 + 2] = (iNumberOfTrailingZeros << 20) | i12;
        clsH = fieldInfo.h();
        if (fieldInfo.f() != null) {
            i14 = (i10 / 3) * 2;
            objArr[i14] = fieldInfo.f();
            if (clsH != null) {
                objArr[i14 + 1] = clsH;
                return;
            } else {
                if (fieldInfo.c() != null) {
                    objArr[i14 + 1] = fieldInfo.c();
                    return;
                }
                return;
            }
        }
        if (clsH != null) {
            objArr[((i10 / 3) * 2) + 1] = clsH;
        } else if (fieldInfo.c() != null) {
            objArr[((i10 / 3) * 2) + 1] = fieldInfo.c();
        }
    }

    private static <T> float l(T t5, long j6) {
        return UnsafeUtil.A(t5, j6);
    }

    private <UT, UB> int s(UnknownFieldSchema<UT, UB> unknownFieldSchema, T t5) {
        return unknownFieldSchema.h(unknownFieldSchema.g(t5));
    }

    private <UT, UB> void s0(UnknownFieldSchema<UT, UB> unknownFieldSchema, T t5, Writer writer) throws IOException {
        unknownFieldSchema.t(unknownFieldSchema.g(t5), writer);
    }

    private static <T> int t(T t5, long j6) {
        return UnsafeUtil.B(t5, j6);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean x(Object obj, int i10, Schema schema) {
        return schema.isInitialized(UnsafeUtil.F(obj, O(i10)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N> boolean y(Object obj, int i10, int i11) {
        List list = (List) UnsafeUtil.F(obj, O(i10));
        if (list.isEmpty()) {
            return true;
        }
        Schema schemaO = o(i11);
        for (int i12 = 0; i12 < list.size(); i12++) {
            if (!schemaO.isInitialized(list.get(i12))) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void a(T t5, Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            p0(t5, writer);
        } else if (this.proto3) {
            o0(t5, writer);
        } else {
            n0(t5, writer);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void b(T t5, Reader reader, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        extensionRegistryLite.getClass();
        F(this.unknownFieldSchema, this.extensionSchema, t5, reader, extensionRegistryLite);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void mergeFrom(T t5, T t10) {
        t10.getClass();
        for (int i10 = 0; i10 < this.buffer.length; i10 += 3) {
            J(t5, t10, i10);
        }
        if (!this.proto3) {
            SchemaUtil.G(this.unknownFieldSchema, t5, t10);
            if (this.hasExtensions) {
                SchemaUtil.E(this.extensionSchema, t5, t10);
            }
        }
    }
}
