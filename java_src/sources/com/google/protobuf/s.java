package com.google.protobuf;

/* JADX INFO: loaded from: classes5.dex */
final class s implements n0 {
    private static final x EMPTY_FACTORY = new a();
    private final x messageInfoFactory;

    static class a implements x {
        @Override // com.google.protobuf.x
        public boolean isSupported(Class<?> cls) {
            return false;
        }

        @Override // com.google.protobuf.x
        public w messageInfoFor(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }

        a() {
        }
    }

    private static class b implements x {
        private x[] factories;

        @Override // com.google.protobuf.x
        public boolean isSupported(Class<?> cls) {
            for (x xVar : this.factories) {
                if (xVar.isSupported(cls)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.protobuf.x
        public w messageInfoFor(Class<?> cls) {
            for (x xVar : this.factories) {
                if (xVar.isSupported(cls)) {
                    return xVar.messageInfoFor(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: " + cls.getName());
        }

        b(x... xVarArr) {
            this.factories = xVarArr;
        }
    }

    public s() {
        this(getDefaultMessageInfoFactory());
    }

    private s(x xVar) {
        this.messageInfoFactory = (x) Internal.checkNotNull(xVar, "messageInfoFactory");
    }

    private static x getDefaultMessageInfoFactory() {
        return new b(n.getInstance(), getDescriptorMessageInfoFactory());
    }

    private static x getDescriptorMessageInfoFactory() {
        try {
            return (x) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return EMPTY_FACTORY;
        }
    }

    private static <T> m0<T> newSchema(Class<T> cls, w wVar) {
        if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            return isProto2(wVar) ? z.newSchema(cls, wVar, d0.lite(), q.lite(), o0.unknownFieldSetLiteSchema(), l.lite(), v.lite()) : z.newSchema(cls, wVar, d0.lite(), q.lite(), o0.unknownFieldSetLiteSchema(), null, v.lite());
        }
        return isProto2(wVar) ? z.newSchema(cls, wVar, d0.full(), q.full(), o0.proto2UnknownFieldSetSchema(), l.full(), v.full()) : z.newSchema(cls, wVar, d0.full(), q.full(), o0.proto3UnknownFieldSetSchema(), null, v.full());
    }

    private static boolean isProto2(w wVar) {
        if (wVar.getSyntax() == ProtoSyntax.PROTO2) {
            return true;
        }
        return false;
    }

    @Override // com.google.protobuf.n0
    public <T> m0<T> createSchema(Class<T> cls) {
        o0.requireGeneratedMessage(cls);
        w wVarMessageInfoFor = this.messageInfoFactory.messageInfoFor(cls);
        if (wVarMessageInfoFor.isMessageSetWireFormat()) {
            if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
                return a0.newSchema(o0.unknownFieldSetLiteSchema(), l.lite(), wVarMessageInfoFor.getDefaultInstance());
            }
            return a0.newSchema(o0.proto2UnknownFieldSetSchema(), l.full(), wVarMessageInfoFor.getDefaultInstance());
        }
        return newSchema(cls, wVarMessageInfoFor);
    }
}
