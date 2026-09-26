package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.AbstractMessageLite;
import androidx.datastore.preferences.protobuf.AbstractMessageLite.Builder;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public abstract class AbstractMessageLite<MessageType extends AbstractMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> implements MessageLite {
    protected int memoizedHashCode = 0;

    public static abstract class Builder<MessageType extends AbstractMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> implements MessageLite.Builder {

        static final class LimitedInputStream extends FilterInputStream {
            private int limit;

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read() throws IOException {
                if (this.limit <= 0) {
                    return -1;
                }
                int i10 = super.read();
                if (i10 >= 0) {
                    this.limit--;
                }
                return i10;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read(byte[] bArr, int i10, int i11) throws IOException {
                int i12 = this.limit;
                if (i12 <= 0) {
                    return -1;
                }
                int i13 = super.read(bArr, i10, Math.min(i11, i12));
                if (i13 >= 0) {
                    this.limit -= i13;
                }
                return i13;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public long skip(long j6) throws IOException {
                long jSkip = super.skip(Math.min(j6, this.limit));
                if (jSkip >= 0) {
                    this.limit = (int) (((long) this.limit) - jSkip);
                }
                return jSkip;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int available() throws IOException {
                return Math.min(super.available(), this.limit);
            }
        }

        @Override // 
        public abstract BuilderType e();

        protected abstract BuilderType g(MessageType messagetype);

        public abstract BuilderType i(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException;

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public BuilderType mergeFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (BuilderType) l(bArr, 0, bArr.length);
        }

        private static <T> void d(Iterable<T> iterable, List<? super T> list) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
            }
            int size = list.size();
            for (T t5 : iterable) {
                if (t5 == null) {
                    String str = "Element at index " + (list.size() - size) + " is null.";
                    for (int size2 = list.size() - 1; size2 >= size; size2--) {
                        list.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                list.add(t5);
            }
        }

        private String f(String str) {
            return "Reading " + getClass().getName() + " from a " + str + " threw an IOException (should never happen).";
        }

        protected static UninitializedMessageException m(MessageLite messageLite) {
            return new UninitializedMessageException(messageLite);
        }

        protected static <T> void c(Iterable<T> iterable, List<? super T> list) {
            Internal.a(iterable);
            if (iterable instanceof LazyStringList) {
                List<?> underlyingElements = ((LazyStringList) iterable).getUnderlyingElements();
                LazyStringList lazyStringList = (LazyStringList) list;
                int size = list.size();
                for (Object obj : underlyingElements) {
                    if (obj == null) {
                        String str = "Element at index " + (lazyStringList.size() - size) + " is null.";
                        for (int size2 = lazyStringList.size() - 1; size2 >= size; size2--) {
                            lazyStringList.remove(size2);
                        }
                        throw new NullPointerException(str);
                    }
                    if (obj instanceof ByteString) {
                        lazyStringList.h((ByteString) obj);
                    } else {
                        lazyStringList.add((String) obj);
                    }
                }
                return;
            }
            if (iterable instanceof PrimitiveNonBoxingCollection) {
                list.addAll((Collection) iterable);
            } else {
                d(iterable, list);
            }
        }

        public BuilderType h(CodedInputStream codedInputStream) throws IOException {
            return (BuilderType) i(codedInputStream, ExtensionRegistryLite.b());
        }

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public BuilderType a(MessageLite messageLite) {
            if (getDefaultInstanceForType().getClass().isInstance(messageLite)) {
                return (BuilderType) g((AbstractMessageLite) messageLite);
            }
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }

        public BuilderType l(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            try {
                CodedInputStream codedInputStreamJ = CodedInputStream.j(bArr, i10, i11);
                h(codedInputStreamJ);
                codedInputStreamJ.a(0);
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException(f("byte array"), e2);
            }
        }
    }

    protected interface InternalOneOfEnum {
    }

    private String f(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    int d() {
        throw new UnsupportedOperationException();
    }

    UninitializedMessageException g() {
        return new UninitializedMessageException(this);
    }

    void h(int i10) {
        throw new UnsupportedOperationException();
    }

    protected static <T> void c(Iterable<T> iterable, List<? super T> list) {
        Builder.c(iterable, list);
    }

    int e(Schema schema) {
        int iD = d();
        if (iD == -1) {
            int serializedSize = schema.getSerializedSize(this);
            h(serializedSize);
            return serializedSize;
        }
        return iD;
    }

    public void i(OutputStream outputStream) throws IOException {
        CodedOutputStream codedOutputStreamN0 = CodedOutputStream.n0(outputStream, CodedOutputStream.Q(getSerializedSize()));
        b(codedOutputStreamN0);
        codedOutputStreamN0.k0();
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    public ByteString toByteString() {
        try {
            ByteString.CodedBuilder codedBuilderX = ByteString.x(getSerializedSize());
            b(codedBuilderX.b());
            return codedBuilderX.a();
        } catch (IOException e) {
            throw new RuntimeException(f("ByteString"), e);
        }
    }
}
