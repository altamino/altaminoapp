package androidx.versionedparcelable;

import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
class VersionedParcelStream extends VersionedParcel {
    private static final int TYPE_BOOLEAN = 5;
    private static final int TYPE_BOOLEAN_ARRAY = 6;
    private static final int TYPE_DOUBLE = 7;
    private static final int TYPE_DOUBLE_ARRAY = 8;
    private static final int TYPE_FLOAT = 13;
    private static final int TYPE_FLOAT_ARRAY = 14;
    private static final int TYPE_INT = 9;
    private static final int TYPE_INT_ARRAY = 10;
    private static final int TYPE_LONG = 11;
    private static final int TYPE_LONG_ARRAY = 12;
    private static final int TYPE_NULL = 0;
    private static final int TYPE_STRING = 3;
    private static final int TYPE_STRING_ARRAY = 4;
    private static final int TYPE_SUB_BUNDLE = 1;
    private static final int TYPE_SUB_PERSISTABLE_BUNDLE = 2;
    private static final Charset UTF_16 = Charset.forName("UTF-16");
    int mCount;
    private DataInputStream mCurrentInput;
    private DataOutputStream mCurrentOutput;
    private FieldBuffer mFieldBuffer;
    private int mFieldId;
    int mFieldSize;
    private boolean mIgnoreParcelables;
    private final DataInputStream mMasterInput;
    private final DataOutputStream mMasterOutput;

    private static class FieldBuffer {
        final DataOutputStream mDataStream;
        private final int mFieldId;
        final ByteArrayOutputStream mOutput;
        private final DataOutputStream mTarget;

        void a() throws IOException {
            this.mDataStream.flush();
            int size = this.mOutput.size();
            this.mTarget.writeInt((this.mFieldId << 16) | (size >= 65535 ? 65535 : size));
            if (size >= 65535) {
                this.mTarget.writeInt(size);
            }
            this.mOutput.writeTo(this.mTarget);
        }

        FieldBuffer(int i10, DataOutputStream dataOutputStream) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            this.mOutput = byteArrayOutputStream;
            this.mDataStream = new DataOutputStream(byteArrayOutputStream);
            this.mFieldId = i10;
            this.mTarget = dataOutputStream;
        }
    }

    public VersionedParcelStream(InputStream inputStream, OutputStream outputStream) {
        this(inputStream, outputStream, new ArrayMap(), new ArrayMap(), new ArrayMap());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean f() {
        return true;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected CharSequence k() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean m(int i10) {
        while (true) {
            try {
                int i11 = this.mFieldId;
                if (i11 == i10) {
                    return true;
                }
                if (String.valueOf(i11).compareTo(String.valueOf(i10)) > 0) {
                    return false;
                }
                int i12 = this.mCount;
                int i13 = this.mFieldSize;
                if (i12 < i13) {
                    this.mMasterInput.skip(i13 - i12);
                }
                this.mFieldSize = -1;
                int i14 = this.mMasterInput.readInt();
                this.mCount = 0;
                int i15 = i14 & 65535;
                if (i15 == 65535) {
                    i15 = this.mMasterInput.readInt();
                }
                this.mFieldId = (i14 >> 16) & 65535;
                this.mFieldSize = i15;
            } catch (IOException unused) {
                return false;
            }
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public <T extends Parcelable> T q() {
        return null;
    }

    private VersionedParcelStream(InputStream inputStream, OutputStream outputStream, ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        super(arrayMap, arrayMap2, arrayMap3);
        this.mCount = 0;
        this.mFieldId = -1;
        this.mFieldSize = -1;
        DataInputStream dataInputStream = inputStream != null ? new DataInputStream(new FilterInputStream(inputStream) { // from class: androidx.versionedparcelable.VersionedParcelStream.1
            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read() throws IOException {
                VersionedParcelStream versionedParcelStream = VersionedParcelStream.this;
                int i10 = versionedParcelStream.mFieldSize;
                if (i10 != -1 && versionedParcelStream.mCount >= i10) {
                    throw new IOException();
                }
                int i11 = super.read();
                VersionedParcelStream.this.mCount++;
                return i11;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public long skip(long j6) throws IOException {
                VersionedParcelStream versionedParcelStream = VersionedParcelStream.this;
                int i10 = versionedParcelStream.mFieldSize;
                if (i10 != -1 && versionedParcelStream.mCount >= i10) {
                    throw new IOException();
                }
                long jSkip = super.skip(j6);
                if (jSkip > 0) {
                    VersionedParcelStream.this.mCount += (int) jSkip;
                }
                return jSkip;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read(byte[] bArr, int i10, int i11) throws IOException {
                VersionedParcelStream versionedParcelStream = VersionedParcelStream.this;
                int i12 = versionedParcelStream.mFieldSize;
                if (i12 != -1 && versionedParcelStream.mCount >= i12) {
                    throw new IOException();
                }
                int i13 = super.read(bArr, i10, i11);
                if (i13 > 0) {
                    VersionedParcelStream.this.mCount += i13;
                }
                return i13;
            }
        }) : null;
        this.mMasterInput = dataInputStream;
        DataOutputStream dataOutputStream = outputStream != null ? new DataOutputStream(outputStream) : null;
        this.mMasterOutput = dataOutputStream;
        this.mCurrentInput = dataInputStream;
        this.mCurrentOutput = dataOutputStream;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void A(byte[] bArr) {
        try {
            if (bArr != null) {
                this.mCurrentOutput.writeInt(bArr.length);
                this.mCurrentOutput.write(bArr);
            } else {
                this.mCurrentOutput.writeInt(-1);
            }
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected void C(CharSequence charSequence) {
        if (!this.mIgnoreParcelables) {
            throw new RuntimeException("CharSequence cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void E(int i10) {
        try {
            this.mCurrentOutput.writeInt(i10);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void G(Parcelable parcelable) {
        if (!this.mIgnoreParcelables) {
            throw new RuntimeException("Parcelables cannot be written to an OutputStream");
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void I(String str) {
        try {
            if (str != null) {
                byte[] bytes = str.getBytes(UTF_16);
                this.mCurrentOutput.writeInt(bytes.length);
                this.mCurrentOutput.write(bytes);
            } else {
                this.mCurrentOutput.writeInt(-1);
            }
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void a() {
        FieldBuffer fieldBuffer = this.mFieldBuffer;
        if (fieldBuffer != null) {
            try {
                if (fieldBuffer.mOutput.size() != 0) {
                    this.mFieldBuffer.a();
                }
                this.mFieldBuffer = null;
            } catch (IOException e) {
                throw new VersionedParcel.ParcelException(e);
            }
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected VersionedParcel b() {
        return new VersionedParcelStream(this.mCurrentInput, this.mCurrentOutput, this.mReadCache, this.mWriteCache, this.mParcelizerCache);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean g() {
        try {
            return this.mCurrentInput.readBoolean();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public byte[] i() {
        try {
            int i10 = this.mCurrentInput.readInt();
            if (i10 <= 0) {
                return null;
            }
            byte[] bArr = new byte[i10];
            this.mCurrentInput.readFully(bArr);
            return bArr;
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public int o() {
        try {
            return this.mCurrentInput.readInt();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public String s() {
        try {
            int i10 = this.mCurrentInput.readInt();
            if (i10 <= 0) {
                return null;
            }
            byte[] bArr = new byte[i10];
            this.mCurrentInput.readFully(bArr);
            return new String(bArr, UTF_16);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void x(boolean z6, boolean z10) {
        if (!z6) {
            throw new RuntimeException("Serialization of this object is not allowed");
        }
        this.mIgnoreParcelables = z10;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void y(boolean z6) {
        try {
            this.mCurrentOutput.writeBoolean(z6);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void w(int i10) {
        a();
        FieldBuffer fieldBuffer = new FieldBuffer(i10, this.mMasterOutput);
        this.mFieldBuffer = fieldBuffer;
        this.mCurrentOutput = fieldBuffer.mDataStream;
    }
}
