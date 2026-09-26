package com.google.firebase.perf.v1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;

/* JADX INFO: loaded from: classes9.dex */
public final class g extends GeneratedMessageLite<g, b> implements MessageLiteOrBuilder {
    public static final int ANDROID_MEMORY_READINGS_FIELD_NUMBER = 4;
    public static final int CPU_METRIC_READINGS_FIELD_NUMBER = 2;
    private static final g DEFAULT_INSTANCE;
    public static final int GAUGE_METADATA_FIELD_NUMBER = 3;
    private static volatile Parser<g> PARSER = null;
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    private int bitField0_;
    private f gaugeMetadata_;
    private String sessionId_ = "";
    private Internal.ProtobufList<e> cpuMetricReadings_ = GeneratedMessageLite.emptyProtobufList();
    private Internal.ProtobufList<com.google.firebase.perf.v1.b> androidMemoryReadings_ = GeneratedMessageLite.emptyProtobufList();

    public static final class b extends GeneratedMessageLite.Builder<g, b> implements MessageLiteOrBuilder {
        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            super(g.DEFAULT_INSTANCE);
        }

        public b d(com.google.firebase.perf.v1.b bVar) {
            copyOnWrite();
            ((g) this.instance).l(bVar);
            return this;
        }

        public b h(e eVar) {
            copyOnWrite();
            ((g) this.instance).m(eVar);
            return this;
        }

        public b j(f fVar) {
            copyOnWrite();
            ((g) this.instance).v(fVar);
            return this;
        }

        public b k(String str) {
            copyOnWrite();
            ((g) this.instance).setSessionId(str);
            return this;
        }
    }

    public static g r() {
        return DEFAULT_INSTANCE;
    }

    public boolean hasSessionId() {
        return (this.bitField0_ & 1) != 0;
    }

    public boolean t() {
        return (this.bitField0_ & 2) != 0;
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    static {
        g gVar = new g();
        DEFAULT_INSTANCE = gVar;
        GeneratedMessageLite.registerDefaultInstance(g.class, gVar);
    }

    private void n() {
        Internal.ProtobufList<com.google.firebase.perf.v1.b> protobufList = this.androidMemoryReadings_;
        if (protobufList.isModifiable()) {
            return;
        }
        this.androidMemoryReadings_ = GeneratedMessageLite.mutableCopy(protobufList);
    }

    private void o() {
        Internal.ProtobufList<e> protobufList = this.cpuMetricReadings_;
        if (protobufList.isModifiable()) {
            return;
        }
        this.cpuMetricReadings_ = GeneratedMessageLite.mutableCopy(protobufList);
    }

    public static b u() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        a aVar = null;
        switch (a.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new g();
            case 2:
                return new b(aVar);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဉ\u0001\u0004\u001b", new Object[]{"bitField0_", "sessionId_", "cpuMetricReadings_", e.class, "gaugeMetadata_", "androidMemoryReadings_", com.google.firebase.perf.v1.b.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<g> defaultInstanceBasedParser = PARSER;
                if (defaultInstanceBasedParser == null) {
                    synchronized (g.class) {
                        try {
                            defaultInstanceBasedParser = PARSER;
                            if (defaultInstanceBasedParser == null) {
                                defaultInstanceBasedParser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = defaultInstanceBasedParser;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                }
                return defaultInstanceBasedParser;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public int p() {
        return this.androidMemoryReadings_.size();
    }

    public int q() {
        return this.cpuMetricReadings_.size();
    }

    public f s() {
        f fVar = this.gaugeMetadata_;
        return fVar == null ? f.k() : fVar;
    }

    private g() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(com.google.firebase.perf.v1.b bVar) {
        bVar.getClass();
        n();
        this.androidMemoryReadings_.add(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(e eVar) {
        eVar.getClass();
        o();
        this.cpuMetricReadings_.add(eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSessionId(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.sessionId_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(f fVar) {
        fVar.getClass();
        this.gaugeMetadata_ = fVar;
        this.bitField0_ |= 2;
    }
}
