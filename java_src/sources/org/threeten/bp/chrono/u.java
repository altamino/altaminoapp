package org.threeten.bp.chrono;

import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* JADX INFO: loaded from: classes4.dex */
final class u implements Externalizable {
    static final byte CHRONO_LOCALDATETIME_TYPE = 12;
    static final byte CHRONO_TYPE = 11;
    static final byte CHRONO_ZONEDDATETIME_TYPE = 13;
    static final byte HIJRAH_DATE_TYPE = 3;
    static final byte HIJRAH_ERA_TYPE = 4;
    static final byte JAPANESE_DATE_TYPE = 1;
    static final byte JAPANESE_ERA_TYPE = 2;
    static final byte MINGUO_DATE_TYPE = 5;
    static final byte MINGUO_ERA_TYPE = 6;
    static final byte THAIBUDDHIST_DATE_TYPE = 7;
    static final byte THAIBUDDHIST_ERA_TYPE = 8;
    private static final long serialVersionUID = 7857518227608961174L;
    private Object object;
    private byte type;

    public u() {
    }

    private Object readResolve() {
        return this.object;
    }

    u(byte b7, Object obj) {
        this.type = b7;
        this.object = obj;
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        b(this.type, this.object, objectOutput);
    }

    private static Object a(byte b7, ObjectInput objectInput) throws IOException, ClassNotFoundException {
        switch (b7) {
            case 1:
                return p.K(objectInput);
            case 2:
                return q.r(objectInput);
            case 3:
                return k.m0(objectInput);
            case 4:
                return l.o(objectInput);
            case 5:
                return s.K(objectInput);
            case 6:
                return t.n(objectInput);
            case 7:
                return w.K(objectInput);
            case 8:
                return x.n(objectInput);
            case 9:
            case 10:
            default:
                throw new StreamCorruptedException("Unknown serialized type");
            case 11:
                return h.o(objectInput);
            case 12:
                return d.I(objectInput);
            case 13:
                return g.E(objectInput);
        }
    }

    private static void b(byte b7, Object obj, ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(b7);
        switch (b7) {
            case 1:
                ((p) obj).Q(objectOutput);
                return;
            case 2:
                ((q) obj).u(objectOutput);
                return;
            case 3:
                ((k) obj).q0(objectOutput);
                return;
            case 4:
                ((l) obj).p(objectOutput);
                return;
            case 5:
                ((s) obj).O(objectOutput);
                return;
            case 6:
                ((t) obj).o(objectOutput);
                return;
            case 7:
                ((w) obj).O(objectOutput);
                return;
            case 8:
                ((x) obj).o(objectOutput);
                return;
            case 9:
            case 10:
            default:
                throw new InvalidClassException("Unknown serialized type");
            case 11:
                ((h) obj).q(objectOutput);
                return;
            case 12:
                ((d) obj).writeExternal(objectOutput);
                return;
            case 13:
                ((g) obj).writeExternal(objectOutput);
                return;
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        byte b7 = objectInput.readByte();
        this.type = b7;
        this.object = a(b7, objectInput);
    }
}
