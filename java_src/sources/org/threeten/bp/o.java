package org.threeten.bp;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* JADX INFO: loaded from: classes3.dex */
final class o implements Externalizable {
    static final byte DURATION_TYPE = 1;
    static final byte INSTANT_TYPE = 2;
    static final byte LOCAL_DATE_TIME_TYPE = 4;
    static final byte LOCAL_DATE_TYPE = 3;
    static final byte LOCAL_TIME_TYPE = 5;
    static final byte MONTH_DAY_TYPE = 64;
    static final byte OFFSET_DATE_TIME_TYPE = 69;
    static final byte OFFSET_TIME_TYPE = 66;
    static final byte YEAR_MONTH_TYPE = 68;
    static final byte YEAR_TYPE = 67;
    static final byte ZONED_DATE_TIME_TYPE = 6;
    static final byte ZONE_OFFSET_TYPE = 8;
    static final byte ZONE_REGION_TYPE = 7;
    private static final long serialVersionUID = -7683839454370182990L;
    private Object object;
    private byte type;

    public o() {
    }

    private Object readResolve() {
        return this.object;
    }

    o(byte b7, Object obj) {
        this.type = b7;
        this.object = obj;
    }

    private static Object b(byte b7, DataInput dataInput) throws IOException {
        if (b7 == 64) {
            return k.s(dataInput);
        }
        switch (b7) {
            case 1:
                return e.h(dataInput);
            case 2:
                return f.A(dataInput);
            case 3:
                return g.Z(dataInput);
            case 4:
                return h.S(dataInput);
            case 5:
                return i.F(dataInput);
            case 6:
                return u.O(dataInput);
            case 7:
                return t.u(dataInput);
            case 8:
                return s.A(dataInput);
            default:
                switch (b7) {
                    case 66:
                        return m.t(dataInput);
                    case 67:
                        return p.t(dataInput);
                    case 68:
                        return q.w(dataInput);
                    case 69:
                        return l.v(dataInput);
                    default:
                        throw new StreamCorruptedException("Unknown serialized type");
                }
        }
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        c(this.type, this.object, objectOutput);
    }

    static Object a(DataInput dataInput) throws IOException {
        return b(dataInput.readByte(), dataInput);
    }

    static void c(byte b7, Object obj, DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(b7);
        if (b7 != 64) {
            switch (b7) {
                case 1:
                    ((e) obj).i(dataOutput);
                    return;
                case 2:
                    ((f) obj).E(dataOutput);
                    return;
                case 3:
                    ((g) obj).h0(dataOutput);
                    return;
                case 4:
                    ((h) obj).X(dataOutput);
                    return;
                case 5:
                    ((i) obj).O(dataOutput);
                    return;
                case 6:
                    ((u) obj).X(dataOutput);
                    return;
                case 7:
                    ((t) obj).v(dataOutput);
                    return;
                case 8:
                    ((s) obj).D(dataOutput);
                    return;
                default:
                    switch (b7) {
                        case 66:
                            ((m) obj).y(dataOutput);
                            return;
                        case 67:
                            ((p) obj).w(dataOutput);
                            return;
                        case 68:
                            ((q) obj).C(dataOutput);
                            return;
                        case 69:
                            ((l) obj).D(dataOutput);
                            return;
                        default:
                            throw new InvalidClassException("Unknown serialized type");
                    }
            }
        }
        ((k) obj).t(dataOutput);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException {
        byte b7 = objectInput.readByte();
        this.type = b7;
        this.object = b(b7, objectInput);
    }
}
