package com.google.protobuf;

/* JADX INFO: loaded from: classes10.dex */
class n implements x {
    private static final n instance = new n();

    public static n getInstance() {
        return instance;
    }

    @Override // com.google.protobuf.x
    public boolean isSupported(Class<?> cls) {
        return GeneratedMessageLite.class.isAssignableFrom(cls);
    }

    @Override // com.google.protobuf.x
    public w messageInfoFor(Class<?> cls) {
        if (!GeneratedMessageLite.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
        }
        try {
            return (w) GeneratedMessageLite.getDefaultInstance(cls.asSubclass(GeneratedMessageLite.class)).buildMessageInfo();
        } catch (Exception e) {
            throw new RuntimeException("Unable to get message info for " + cls.getName(), e);
        }
    }

    private n() {
    }
}
