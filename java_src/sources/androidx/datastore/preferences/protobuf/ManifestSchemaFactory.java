package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes7.dex */
final class ManifestSchemaFactory implements SchemaFactory {
    private static final MessageInfoFactory EMPTY_FACTORY = new MessageInfoFactory() { // from class: androidx.datastore.preferences.protobuf.ManifestSchemaFactory.1
        @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
        public boolean isSupported(Class<?> cls) {
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
        public MessageInfo messageInfoFor(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }
    };
    private final MessageInfoFactory messageInfoFactory;

    private static class CompositeMessageInfoFactory implements MessageInfoFactory {
        private MessageInfoFactory[] factories;

        @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
        public boolean isSupported(Class<?> cls) {
            for (MessageInfoFactory messageInfoFactory : this.factories) {
                if (messageInfoFactory.isSupported(cls)) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
        public MessageInfo messageInfoFor(Class<?> cls) {
            for (MessageInfoFactory messageInfoFactory : this.factories) {
                if (messageInfoFactory.isSupported(cls)) {
                    return messageInfoFactory.messageInfoFor(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: " + cls.getName());
        }

        CompositeMessageInfoFactory(MessageInfoFactory... messageInfoFactoryArr) {
            this.factories = messageInfoFactoryArr;
        }
    }

    public ManifestSchemaFactory() {
        this(a());
    }

    private ManifestSchemaFactory(MessageInfoFactory messageInfoFactory) {
        this.messageInfoFactory = (MessageInfoFactory) Internal.b(messageInfoFactory, "messageInfoFactory");
    }

    private static MessageInfoFactory a() {
        return new CompositeMessageInfoFactory(GeneratedMessageInfoFactory.a(), b());
    }

    private static MessageInfoFactory b() {
        try {
            return (MessageInfoFactory) Class.forName("androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return EMPTY_FACTORY;
        }
    }

    private static <T> Schema<T> d(Class<T> cls, MessageInfo messageInfo) {
        if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            return c(messageInfo) ? MessageSchema.K(cls, messageInfo, NewInstanceSchemas.b(), ListFieldSchema.b(), SchemaUtil.M(), ExtensionSchemas.b(), MapFieldSchemas.b()) : MessageSchema.K(cls, messageInfo, NewInstanceSchemas.b(), ListFieldSchema.b(), SchemaUtil.M(), null, MapFieldSchemas.b());
        }
        return c(messageInfo) ? MessageSchema.K(cls, messageInfo, NewInstanceSchemas.a(), ListFieldSchema.a(), SchemaUtil.H(), ExtensionSchemas.a(), MapFieldSchemas.a()) : MessageSchema.K(cls, messageInfo, NewInstanceSchemas.a(), ListFieldSchema.a(), SchemaUtil.I(), null, MapFieldSchemas.a());
    }

    private static boolean c(MessageInfo messageInfo) {
        if (messageInfo.getSyntax() == ProtoSyntax.PROTO2) {
            return true;
        }
        return false;
    }

    @Override // androidx.datastore.preferences.protobuf.SchemaFactory
    public <T> Schema<T> createSchema(Class<T> cls) {
        SchemaUtil.J(cls);
        MessageInfo messageInfoMessageInfoFor = this.messageInfoFactory.messageInfoFor(cls);
        if (messageInfoMessageInfoFor.isMessageSetWireFormat()) {
            if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
                return MessageSetSchema.f(SchemaUtil.M(), ExtensionSchemas.b(), messageInfoMessageInfoFor.getDefaultInstance());
            }
            return MessageSetSchema.f(SchemaUtil.H(), ExtensionSchemas.a(), messageInfoMessageInfoFor.getDefaultInstance());
        }
        return d(cls, messageInfoMessageInfoFor);
    }
}
