package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes11.dex */
class GeneratedMessageInfoFactory implements MessageInfoFactory {
    private static final GeneratedMessageInfoFactory instance = new GeneratedMessageInfoFactory();

    public static GeneratedMessageInfoFactory a() {
        return instance;
    }

    @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
    public boolean isSupported(Class<?> cls) {
        return GeneratedMessageLite.class.isAssignableFrom(cls);
    }

    @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
    public MessageInfo messageInfoFor(Class<?> cls) {
        if (!GeneratedMessageLite.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
        }
        try {
            return (MessageInfo) GeneratedMessageLite.q(cls.asSubclass(GeneratedMessageLite.class)).j();
        } catch (Exception e) {
            throw new RuntimeException("Unable to get message info for " + cls.getName(), e);
        }
    }

    private GeneratedMessageInfoFactory() {
    }
}
