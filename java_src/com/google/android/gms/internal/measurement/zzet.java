package com.google.android.gms.internal.measurement;

import java.lang.reflect.Type;

/* loaded from: classes2.dex */
public enum zzet {
    DOUBLE(0, zzev.SCALAR, zzfj.DOUBLE),
    FLOAT(1, zzev.SCALAR, zzfj.FLOAT),
    INT64(2, zzev.SCALAR, zzfj.LONG),
    UINT64(3, zzev.SCALAR, zzfj.LONG),
    INT32(4, zzev.SCALAR, zzfj.INT),
    FIXED64(5, zzev.SCALAR, zzfj.LONG),
    FIXED32(6, zzev.SCALAR, zzfj.INT),
    BOOL(7, zzev.SCALAR, zzfj.BOOLEAN),
    STRING(8, zzev.SCALAR, zzfj.STRING),
    MESSAGE(9, zzev.SCALAR, zzfj.MESSAGE),
    BYTES(10, zzev.SCALAR, zzfj.BYTE_STRING),
    UINT32(11, zzev.SCALAR, zzfj.INT),
    ENUM(12, zzev.SCALAR, zzfj.ENUM),
    SFIXED32(13, zzev.SCALAR, zzfj.INT),
    SFIXED64(14, zzev.SCALAR, zzfj.LONG),
    SINT32(15, zzev.SCALAR, zzfj.INT),
    SINT64(16, zzev.SCALAR, zzfj.LONG),
    GROUP(17, zzev.SCALAR, zzfj.MESSAGE),
    DOUBLE_LIST(18, zzev.VECTOR, zzfj.DOUBLE),
    FLOAT_LIST(19, zzev.VECTOR, zzfj.FLOAT),
    INT64_LIST(20, zzev.VECTOR, zzfj.LONG),
    UINT64_LIST(21, zzev.VECTOR, zzfj.LONG),
    INT32_LIST(22, zzev.VECTOR, zzfj.INT),
    FIXED64_LIST(23, zzev.VECTOR, zzfj.LONG),
    FIXED32_LIST(24, zzev.VECTOR, zzfj.INT),
    BOOL_LIST(25, zzev.VECTOR, zzfj.BOOLEAN),
    STRING_LIST(26, zzev.VECTOR, zzfj.STRING),
    MESSAGE_LIST(27, zzev.VECTOR, zzfj.MESSAGE),
    BYTES_LIST(28, zzev.VECTOR, zzfj.BYTE_STRING),
    UINT32_LIST(29, zzev.VECTOR, zzfj.INT),
    ENUM_LIST(30, zzev.VECTOR, zzfj.ENUM),
    SFIXED32_LIST(31, zzev.VECTOR, zzfj.INT),
    SFIXED64_LIST(32, zzev.VECTOR, zzfj.LONG),
    SINT32_LIST(33, zzev.VECTOR, zzfj.INT),
    SINT64_LIST(34, zzev.VECTOR, zzfj.LONG),
    DOUBLE_LIST_PACKED(35, zzev.PACKED_VECTOR, zzfj.DOUBLE),
    FLOAT_LIST_PACKED(36, zzev.PACKED_VECTOR, zzfj.FLOAT),
    INT64_LIST_PACKED(37, zzev.PACKED_VECTOR, zzfj.LONG),
    UINT64_LIST_PACKED(38, zzev.PACKED_VECTOR, zzfj.LONG),
    INT32_LIST_PACKED(39, zzev.PACKED_VECTOR, zzfj.INT),
    FIXED64_LIST_PACKED(40, zzev.PACKED_VECTOR, zzfj.LONG),
    FIXED32_LIST_PACKED(41, zzev.PACKED_VECTOR, zzfj.INT),
    BOOL_LIST_PACKED(42, zzev.PACKED_VECTOR, zzfj.BOOLEAN),
    UINT32_LIST_PACKED(43, zzev.PACKED_VECTOR, zzfj.INT),
    ENUM_LIST_PACKED(44, zzev.PACKED_VECTOR, zzfj.ENUM),
    SFIXED32_LIST_PACKED(45, zzev.PACKED_VECTOR, zzfj.INT),
    SFIXED64_LIST_PACKED(46, zzev.PACKED_VECTOR, zzfj.LONG),
    SINT32_LIST_PACKED(47, zzev.PACKED_VECTOR, zzfj.INT),
    SINT64_LIST_PACKED(48, zzev.PACKED_VECTOR, zzfj.LONG),
    GROUP_LIST(49, zzev.VECTOR, zzfj.MESSAGE),
    MAP(50, zzev.MAP, zzfj.VOID);

    private static final zzet[] zzafy;
    private static final Type[] zzafz = new Type[0];
    private final int id;
    private final zzfj zzafu;
    private final zzev zzafv;
    private final Class<?> zzafw;
    private final boolean zzafx;

    zzet(int i, zzev zzevVar, zzfj zzfjVar) {
        int i2;
        this.id = i;
        this.zzafv = zzevVar;
        this.zzafu = zzfjVar;
        int i3 = zzeu.zzagb[zzevVar.ordinal()];
        if (i3 == 1 || i3 == 2) {
            this.zzafw = zzfjVar.zznd();
        } else {
            this.zzafw = null;
        }
        boolean z = false;
        if (zzevVar == zzev.SCALAR && (i2 = zzeu.zzagc[zzfjVar.ordinal()]) != 1 && i2 != 2 && i2 != 3) {
            z = true;
        }
        this.zzafx = z;
    }

    public final int id() {
        return this.id;
    }

    static {
        zzet[] zzetVarArrValues = values();
        zzafy = new zzet[zzetVarArrValues.length];
        for (zzet zzetVar : zzetVarArrValues) {
            zzafy[zzetVar.id] = zzetVar;
        }
    }
}
