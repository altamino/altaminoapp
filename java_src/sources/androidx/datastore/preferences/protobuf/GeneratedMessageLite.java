package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite.Builder;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GeneratedMessageLite<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> extends AbstractMessageLite<MessageType, BuilderType> {
    private static Map<Object, GeneratedMessageLite<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    protected UnknownFieldSetLite unknownFields = UnknownFieldSetLite.e();
    protected int memoizedSerializedSize = -1;

    public static abstract class Builder<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> extends AbstractMessageLite.Builder<MessageType, BuilderType> {
        private final MessageType defaultInstance;
        protected MessageType instance;
        protected boolean isBuilt = false;

        @Override // androidx.datastore.preferences.protobuf.MessageLiteOrBuilder
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public MessageType getDefaultInstanceForType() {
            return this.defaultInstance;
        }

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public MessageType buildPartial() {
            if (this.isBuilt) {
                return this.instance;
            }
            this.instance.u();
            this.isBuilt = true;
            return this.instance;
        }

        protected void q() {
            if (this.isBuilt) {
                MessageType messagetype = (MessageType) this.instance.m(MethodToInvoke.NEW_MUTABLE_INSTANCE);
                x(messagetype, this.instance);
                this.instance = messagetype;
                this.isBuilt = false;
            }
        }

        protected Builder(MessageType messagetype) {
            this.defaultInstance = messagetype;
            this.instance = (MessageType) messagetype.m(MethodToInvoke.NEW_MUTABLE_INSTANCE);
        }

        private void x(MessageType messagetype, MessageType messagetype2) {
            Protobuf.a().e(messagetype).mergeFrom(messagetype, messagetype2);
        }

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public final MessageType build() {
            MessageType messagetype = (MessageType) buildPartial();
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw AbstractMessageLite.Builder.m(messagetype);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.datastore.preferences.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public BuilderType e() {
            Empty.Builder builder = (BuilderType) getDefaultInstanceForType().newBuilderForType();
            builder.u(buildPartial());
            return builder;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.datastore.preferences.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public BuilderType g(MessageType messagetype) {
            return (BuilderType) u(messagetype);
        }

        @Override // androidx.datastore.preferences.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
        public BuilderType i(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            q();
            try {
                Protobuf.a().e(this.instance).b(this.instance, CodedInputStreamReader.h(codedInputStream), extensionRegistryLite);
                return this;
            } catch (RuntimeException e) {
                if (e.getCause() instanceof IOException) {
                    throw ((IOException) e.getCause());
                }
                throw e;
            }
        }

        public BuilderType u(MessageType messagetype) {
            q();
            x(this.instance, messagetype);
            return this;
        }

        @Override // androidx.datastore.preferences.protobuf.AbstractMessageLite.Builder
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public BuilderType l(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            return (BuilderType) w(bArr, i10, i11, ExtensionRegistryLite.b());
        }

        public BuilderType w(byte[] bArr, int i10, int i11, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            q();
            try {
                Protobuf.a().e(this.instance).c(this.instance, bArr, i10, i10 + i11, new ArrayDecoders.Registers(extensionRegistryLite));
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException unused) {
                throw InvalidProtocolBufferException.k();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static class DefaultInstanceBasedParser<T extends GeneratedMessageLite<T, ?>> extends AbstractParser<T> {
        private final T defaultInstance;

        @Override // androidx.datastore.preferences.protobuf.Parser
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public T a(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (T) GeneratedMessageLite.z(this.defaultInstance, codedInputStream, extensionRegistryLite);
        }

        public DefaultInstanceBasedParser(T t5) {
            this.defaultInstance = t5;
        }
    }

    public static abstract class ExtendableBuilder<MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType extends ExtendableBuilder<MessageType, BuilderType>> extends Builder<MessageType, BuilderType> implements ExtendableMessageOrBuilder<MessageType, BuilderType> {
        @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite.Builder
        protected void q() {
            if (this.isBuilt) {
                super.q();
                MessageType messagetype = this.instance;
                ((ExtendableMessage) messagetype).extensions = ((ExtendableMessage) messagetype).extensions.clone();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite.Builder
        /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
        public final MessageType buildPartial() {
            if (this.isBuilt) {
                return (MessageType) this.instance;
            }
            ((ExtendableMessage) this.instance).extensions.t();
            return (MessageType) super.buildPartial();
        }
    }

    public static abstract class ExtendableMessage<MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType extends ExtendableBuilder<MessageType, BuilderType>> extends GeneratedMessageLite<MessageType, BuilderType> implements ExtendableMessageOrBuilder<MessageType, BuilderType> {
        protected FieldSet<ExtensionDescriptor> extensions = FieldSet.h();

        protected class ExtensionWriter {
            private final Iterator<Map.Entry<ExtensionDescriptor, Object>> iter;
            private final boolean messageSetWireFormat;
            private Map.Entry<ExtensionDescriptor, Object> next;
            final /* synthetic */ ExtendableMessage this$0;
        }

        FieldSet<ExtensionDescriptor> C() {
            if (this.extensions.o()) {
                this.extensions = this.extensions.clone();
            }
            return this.extensions;
        }

        @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite, androidx.datastore.preferences.protobuf.MessageLiteOrBuilder
        public /* bridge */ /* synthetic */ MessageLite getDefaultInstanceForType() {
            return super.getDefaultInstanceForType();
        }

        @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite, androidx.datastore.preferences.protobuf.MessageLite
        public /* bridge */ /* synthetic */ MessageLite.Builder newBuilderForType() {
            return super.newBuilderForType();
        }

        @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite, androidx.datastore.preferences.protobuf.MessageLite
        public /* bridge */ /* synthetic */ MessageLite.Builder toBuilder() {
            return super.toBuilder();
        }
    }

    public interface ExtendableMessageOrBuilder<MessageType extends ExtendableMessage<MessageType, BuilderType>, BuilderType extends ExtendableBuilder<MessageType, BuilderType>> extends MessageLiteOrBuilder {
    }

    static final class ExtensionDescriptor implements FieldSet.FieldDescriptorLite<ExtensionDescriptor> {
        final Internal.EnumLiteMap<?> enumTypeMap;
        final boolean isPacked;
        final boolean isRepeated;
        final int number;
        final WireFormat.FieldType type;

        public Internal.EnumLiteMap<?> b() {
            return this.enumTypeMap;
        }

        @Override // androidx.datastore.preferences.protobuf.FieldSet.FieldDescriptorLite
        public WireFormat.FieldType getLiteType() {
            return this.type;
        }

        @Override // androidx.datastore.preferences.protobuf.FieldSet.FieldDescriptorLite
        public int getNumber() {
            return this.number;
        }

        @Override // androidx.datastore.preferences.protobuf.FieldSet.FieldDescriptorLite
        public boolean isPacked() {
            return this.isPacked;
        }

        @Override // androidx.datastore.preferences.protobuf.FieldSet.FieldDescriptorLite
        public boolean isRepeated() {
            return this.isRepeated;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(ExtensionDescriptor extensionDescriptor) {
            return this.number - extensionDescriptor.number;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.datastore.preferences.protobuf.FieldSet.FieldDescriptorLite
        public MessageLite.Builder g(MessageLite.Builder builder, MessageLite messageLite) {
            return ((Builder) builder).u((GeneratedMessageLite) messageLite);
        }

        @Override // androidx.datastore.preferences.protobuf.FieldSet.FieldDescriptorLite
        public WireFormat.JavaType getLiteJavaType() {
            return this.type.a();
        }
    }

    public static class GeneratedExtension<ContainingType extends MessageLite, Type> extends ExtensionLite<ContainingType, Type> {
        final ContainingType containingTypeDefaultInstance;
        final Type defaultValue;
        final ExtensionDescriptor descriptor;
        final MessageLite messageDefaultInstance;

        public MessageLite b() {
            return this.messageDefaultInstance;
        }

        public WireFormat.FieldType a() {
            return this.descriptor.getLiteType();
        }

        public int c() {
            return this.descriptor.getNumber();
        }

        public boolean d() {
            return this.descriptor.isRepeated;
        }
    }

    public enum MethodToInvoke {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    protected static final class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        private final byte[] asBytes;
        private final Class<?> messageClass;
        private final String messageClassName;

        private Class<?> b() throws ClassNotFoundException {
            Class<?> cls = this.messageClass;
            return cls != null ? cls : Class.forName(this.messageClassName);
        }

        @Deprecated
        private Object a() throws ObjectStreamException {
            try {
                java.lang.reflect.Field declaredField = b().getDeclaredField("defaultInstance");
                declaredField.setAccessible(true);
                return ((MessageLite) declaredField.get(null)).newBuilderForType().mergeFrom(this.asBytes).buildPartial();
            } catch (InvalidProtocolBufferException e) {
                throw new RuntimeException("Unable to understand proto buffer", e);
            } catch (ClassNotFoundException e2) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.messageClassName, e2);
            } catch (IllegalAccessException e6) {
                throw new RuntimeException("Unable to call parsePartialFrom", e6);
            } catch (NoSuchFieldException e7) {
                throw new RuntimeException("Unable to find defaultInstance in " + this.messageClassName, e7);
            } catch (SecurityException e10) {
                throw new RuntimeException("Unable to call defaultInstance in " + this.messageClassName, e10);
            }
        }

        protected Object readResolve() throws ObjectStreamException {
            try {
                java.lang.reflect.Field declaredField = b().getDeclaredField("DEFAULT_INSTANCE");
                declaredField.setAccessible(true);
                return ((MessageLite) declaredField.get(null)).newBuilderForType().mergeFrom(this.asBytes).buildPartial();
            } catch (InvalidProtocolBufferException e) {
                throw new RuntimeException("Unable to understand proto buffer", e);
            } catch (ClassNotFoundException e2) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.messageClassName, e2);
            } catch (IllegalAccessException e6) {
                throw new RuntimeException("Unable to call parsePartialFrom", e6);
            } catch (NoSuchFieldException unused) {
                return a();
            } catch (SecurityException e7) {
                throw new RuntimeException("Unable to call DEFAULT_INSTANCE in " + this.messageClassName, e7);
            }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractMessageLite
    int d() {
        return this.memoizedSerializedSize;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractMessageLite
    void h(int i10) {
        this.memoizedSerializedSize = i10;
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        return t(this, true);
    }

    protected Object m(MethodToInvoke methodToInvoke) {
        return o(methodToInvoke, null, null);
    }

    protected Object n(MethodToInvoke methodToInvoke, Object obj) {
        return o(methodToInvoke, obj, null);
    }

    protected abstract Object o(MethodToInvoke methodToInvoke, Object obj, Object obj2);

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.GeneratedMessageLite$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$JavaType;

        static {
            int[] iArr = new int[WireFormat.JavaType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$JavaType = iArr;
            try {
                iArr[WireFormat.JavaType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    protected static <T extends GeneratedMessageLite<?, ?>> void A(Class<T> cls, T t5) {
        defaultInstanceMap.put(cls, t5);
    }

    private static <T extends GeneratedMessageLite<T, ?>> T k(T t5) throws InvalidProtocolBufferException {
        if (t5 == null || t5.isInitialized()) {
            return t5;
        }
        throw t5.g().a().i(t5);
    }

    static <T extends GeneratedMessageLite<?, ?>> T q(Class<T> cls) {
        GeneratedMessageLite<?, ?> generatedMessageLite = defaultInstanceMap.get(cls);
        if (generatedMessageLite == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                generatedMessageLite = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (generatedMessageLite == null) {
            generatedMessageLite = (T) ((GeneratedMessageLite) UnsafeUtil.j(cls)).getDefaultInstanceForType();
            if (generatedMessageLite == null) {
                throw new IllegalStateException();
            }
            defaultInstanceMap.put(cls, generatedMessageLite);
        }
        return (T) generatedMessageLite;
    }

    protected static final <T extends GeneratedMessageLite<T, ?>> boolean t(T t5, boolean z6) {
        byte bByteValue = ((Byte) t5.m(MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zIsInitialized = Protobuf.a().e(t5).isInitialized(t5);
        if (z6) {
            t5.n(MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED, zIsInitialized ? t5 : null);
        }
        return zIsInitialized;
    }

    protected static Object x(MessageLite messageLite, String str, Object[] objArr) {
        return new RawMessageInfo(messageLite, str, objArr);
    }

    static <T extends GeneratedMessageLite<T, ?>> T z(T t5, CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        T t10 = (T) t5.m(MethodToInvoke.NEW_MUTABLE_INSTANCE);
        try {
            Schema schemaE = Protobuf.a().e(t10);
            schemaE.b(t10, CodedInputStreamReader.h(codedInputStream), extensionRegistryLite);
            schemaE.makeImmutable(t10);
            return t10;
        } catch (IOException e) {
            if (e.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e.getCause());
            }
            throw new InvalidProtocolBufferException(e.getMessage()).i(t10);
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e2.getCause());
            }
            throw e2;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public final BuilderType toBuilder() {
        BuilderType buildertype = (BuilderType) m(MethodToInvoke.NEW_BUILDER);
        buildertype.u(this);
        return buildertype;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (getDefaultInstanceForType().getClass().isInstance(obj)) {
            return Protobuf.a().e(this).equals(this, (GeneratedMessageLite) obj);
        }
        return false;
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    public final Parser<MessageType> getParserForType() {
        return (Parser) m(MethodToInvoke.GET_PARSER);
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    public int getSerializedSize() {
        if (this.memoizedSerializedSize == -1) {
            this.memoizedSerializedSize = Protobuf.a().e(this).getSerializedSize(this);
        }
        return this.memoizedSerializedSize;
    }

    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = Protobuf.a().e(this).hashCode(this);
        this.memoizedHashCode = iHashCode;
        return iHashCode;
    }

    Object j() throws Exception {
        return m(MethodToInvoke.BUILD_MESSAGE_INFO);
    }

    protected final <MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> BuilderType l() {
        return (BuilderType) m(MethodToInvoke.NEW_BUILDER);
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLiteOrBuilder
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public final MessageType getDefaultInstanceForType() {
        return (MessageType) m(MethodToInvoke.GET_DEFAULT_INSTANCE);
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public final BuilderType newBuilderForType() {
        return (BuilderType) m(MethodToInvoke.NEW_BUILDER);
    }

    protected static <E> Internal.ProtobufList<E> p() {
        return ProtobufArrayList.e();
    }

    static Object s(java.lang.reflect.Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    protected static <E> Internal.ProtobufList<E> v(Internal.ProtobufList<E> protobufList) {
        int i10;
        int size = protobufList.size();
        if (size == 0) {
            i10 = 10;
        } else {
            i10 = size * 2;
        }
        return protobufList.mutableCopyWithCapacity(i10);
    }

    protected static <T extends GeneratedMessageLite<T, ?>> T y(T t5, InputStream inputStream) throws InvalidProtocolBufferException {
        return (T) k(z(t5, CodedInputStream.f(inputStream), ExtensionRegistryLite.b()));
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    public void b(CodedOutputStream codedOutputStream) throws IOException {
        Protobuf.a().e(this).a(this, CodedOutputStreamWriter.g(codedOutputStream));
    }

    public String toString() {
        return MessageLiteToString.e(this, super.toString());
    }

    protected void u() {
        Protobuf.a().e(this).makeImmutable(this);
    }
}
