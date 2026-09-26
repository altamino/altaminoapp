package org.threeten.bp.zone;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import org.threeten.bp.s;

/* JADX INFO: loaded from: classes9.dex */
final class a implements Externalizable {
    static final byte SZR = 1;
    static final byte ZOT = 2;
    static final byte ZOTRULE = 3;
    private static final long serialVersionUID = -8885321777449118786L;
    private Object object;
    private byte type;

    public a() {
    }

    private static Object c(byte b7, DataInput dataInput) throws IOException, ClassNotFoundException {
        if (b7 == 1) {
            return b.k(dataInput);
        }
        if (b7 == 2) {
            return d.l(dataInput);
        }
        if (b7 == 3) {
            return e.c(dataInput);
        }
        throw new StreamCorruptedException("Unknown serialized type");
    }

    private Object readResolve() {
        return this.object;
    }

    a(byte b7, Object obj) {
        this.type = b7;
        this.object = obj;
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f(this.type, this.object, objectOutput);
    }

    static Object a(DataInput dataInput) throws IOException, ClassNotFoundException {
        return c(dataInput.readByte(), dataInput);
    }

    static long b(DataInput dataInput) throws IOException {
        int i10 = dataInput.readByte() & 255;
        if (i10 == 255) {
            return dataInput.readLong();
        }
        return (((long) (((i10 << 16) + ((dataInput.readByte() & 255) << 8)) + (dataInput.readByte() & 255))) * 900) - 4575744000L;
    }

    static s d(DataInput dataInput) throws IOException {
        byte b7 = dataInput.readByte();
        if (b7 == 127) {
            return s.y(dataInput.readInt());
        }
        return s.y(b7 * 900);
    }

    private static void f(byte b7, Object obj, DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(b7);
        if (b7 != 1) {
            if (b7 != 2) {
                if (b7 == 3) {
                    ((e) obj).d(dataOutput);
                    return;
                }
                throw new InvalidClassException("Unknown serialized type");
            }
            ((d) obj).o(dataOutput);
            return;
        }
        ((b) obj).l(dataOutput);
    }

    static void g(s sVar, DataOutput dataOutput) throws IOException {
        int i10;
        int iV = sVar.v();
        if (iV % TypedValues.Custom.TYPE_INT == 0) {
            i10 = iV / TypedValues.Custom.TYPE_INT;
        } else {
            i10 = 127;
        }
        dataOutput.writeByte(i10);
        if (i10 == 127) {
            dataOutput.writeInt(iV);
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        byte b7 = objectInput.readByte();
        this.type = b7;
        this.object = c(b7, objectInput);
    }

    static void e(long j6, DataOutput dataOutput) throws IOException {
        if (j6 >= -4575744000L && j6 < 10413792000L && j6 % 900 == 0) {
            int i10 = (int) ((j6 + 4575744000L) / 900);
            dataOutput.writeByte((i10 >>> 16) & 255);
            dataOutput.writeByte((i10 >>> 8) & 255);
            dataOutput.writeByte(i10 & 255);
            return;
        }
        dataOutput.writeByte(255);
        dataOutput.writeLong(j6);
    }
}
