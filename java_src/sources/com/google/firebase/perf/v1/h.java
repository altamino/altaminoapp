package com.google.firebase.perf.v1;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.WireFormat;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class h extends GeneratedMessageLite<h, b> implements MessageLiteOrBuilder {
    public static final int CLIENT_START_TIME_US_FIELD_NUMBER = 7;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 12;
    private static final h DEFAULT_INSTANCE;
    public static final int HTTP_METHOD_FIELD_NUMBER = 2;
    public static final int HTTP_RESPONSE_CODE_FIELD_NUMBER = 5;
    public static final int NETWORK_CLIENT_ERROR_REASON_FIELD_NUMBER = 11;
    private static volatile Parser<h> PARSER = null;
    public static final int PERF_SESSIONS_FIELD_NUMBER = 13;
    public static final int REQUEST_PAYLOAD_BYTES_FIELD_NUMBER = 3;
    public static final int RESPONSE_CONTENT_TYPE_FIELD_NUMBER = 6;
    public static final int RESPONSE_PAYLOAD_BYTES_FIELD_NUMBER = 4;
    public static final int TIME_TO_REQUEST_COMPLETED_US_FIELD_NUMBER = 8;
    public static final int TIME_TO_RESPONSE_COMPLETED_US_FIELD_NUMBER = 10;
    public static final int TIME_TO_RESPONSE_INITIATED_US_FIELD_NUMBER = 9;
    public static final int URL_FIELD_NUMBER = 1;
    private int bitField0_;
    private long clientStartTimeUs_;
    private int httpMethod_;
    private int httpResponseCode_;
    private int networkClientErrorReason_;
    private long requestPayloadBytes_;
    private long responsePayloadBytes_;
    private long timeToRequestCompletedUs_;
    private long timeToResponseCompletedUs_;
    private long timeToResponseInitiatedUs_;
    private MapFieldLite<String, String> customAttributes_ = MapFieldLite.emptyMapField();
    private String url_ = "";
    private String responseContentType_ = "";
    private Internal.ProtobufList<k> perfSessions_ = GeneratedMessageLite.emptyProtobufList();

    public static final class b extends GeneratedMessageLite.Builder<h, b> implements MessageLiteOrBuilder {
        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            super(h.DEFAULT_INSTANCE);
        }

        public long k() {
            return ((h) this.instance).H();
        }

        public boolean l() {
            return ((h) this.instance).J();
        }

        public boolean m() {
            return ((h) this.instance).L();
        }

        public boolean n() {
            return ((h) this.instance).P();
        }

        public b d(Iterable<? extends k> iterable) {
            copyOnWrite();
            ((h) this.instance).u(iterable);
            return this;
        }

        public b j() {
            copyOnWrite();
            ((h) this.instance).v();
            return this;
        }

        public b o(long j6) {
            copyOnWrite();
            ((h) this.instance).S(j6);
            return this;
        }

        public b p(d dVar) {
            copyOnWrite();
            ((h) this.instance).T(dVar);
            return this;
        }

        public b q(int i10) {
            copyOnWrite();
            ((h) this.instance).U(i10);
            return this;
        }

        public b r(e eVar) {
            copyOnWrite();
            ((h) this.instance).V(eVar);
            return this;
        }

        public b s(long j6) {
            copyOnWrite();
            ((h) this.instance).W(j6);
            return this;
        }

        public b t(String str) {
            copyOnWrite();
            ((h) this.instance).X(str);
            return this;
        }

        public b u(long j6) {
            copyOnWrite();
            ((h) this.instance).Y(j6);
            return this;
        }

        public b v(long j6) {
            copyOnWrite();
            ((h) this.instance).Z(j6);
            return this;
        }

        public b w(long j6) {
            copyOnWrite();
            ((h) this.instance).a0(j6);
            return this;
        }

        public b x(long j6) {
            copyOnWrite();
            ((h) this.instance).b0(j6);
            return this;
        }

        public b y(String str) {
            copyOnWrite();
            ((h) this.instance).c0(str);
            return this;
        }
    }

    private static final class c {
        static final MapEntryLite<String, String> defaultEntry;

        static {
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            defaultEntry = MapEntryLite.newDefaultInstance(fieldType, "", fieldType, "");
        }
    }

    public enum d implements Internal.EnumLite {
        HTTP_METHOD_UNKNOWN(0),
        GET(1),
        PUT(2),
        POST(3),
        DELETE(4),
        HEAD(5),
        PATCH(6),
        OPTIONS(7),
        TRACE(8),
        CONNECT(9);

        public static final int CONNECT_VALUE = 9;
        public static final int DELETE_VALUE = 4;
        public static final int GET_VALUE = 1;
        public static final int HEAD_VALUE = 5;
        public static final int HTTP_METHOD_UNKNOWN_VALUE = 0;
        public static final int OPTIONS_VALUE = 7;
        public static final int PATCH_VALUE = 6;
        public static final int POST_VALUE = 3;
        public static final int PUT_VALUE = 2;
        public static final int TRACE_VALUE = 8;
        private static final Internal.EnumLiteMap<d> internalValueMap = new a();
        private final int value;

        public static d a(int i10) {
            switch (i10) {
                case 0:
                    return HTTP_METHOD_UNKNOWN;
                case 1:
                    return GET;
                case 2:
                    return PUT;
                case 3:
                    return POST;
                case 4:
                    return DELETE;
                case 5:
                    return HEAD;
                case 6:
                    return PATCH;
                case 7:
                    return OPTIONS;
                case 8:
                    return TRACE;
                case 9:
                    return CONNECT;
                default:
                    return null;
            }
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        class a implements Internal.EnumLiteMap<d> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public d findValueByNumber(int i10) {
                return d.a(i10);
            }
        }

        private static final class b implements Internal.EnumVerifier {
            static final Internal.EnumVerifier INSTANCE = new b();

            private b() {
            }

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int i10) {
                if (d.a(i10) != null) {
                    return true;
                }
                return false;
            }
        }

        public static Internal.EnumVerifier b() {
            return b.INSTANCE;
        }

        d(int i10) {
            this.value = i10;
        }
    }

    public enum e implements Internal.EnumLite {
        NETWORK_CLIENT_ERROR_REASON_UNKNOWN(0),
        GENERIC_CLIENT_ERROR(1);

        public static final int GENERIC_CLIENT_ERROR_VALUE = 1;
        public static final int NETWORK_CLIENT_ERROR_REASON_UNKNOWN_VALUE = 0;
        private static final Internal.EnumLiteMap<e> internalValueMap = new a();
        private final int value;

        public static e a(int i10) {
            if (i10 == 0) {
                return NETWORK_CLIENT_ERROR_REASON_UNKNOWN;
            }
            if (i10 != 1) {
                return null;
            }
            return GENERIC_CLIENT_ERROR;
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        class a implements Internal.EnumLiteMap<e> {
            a() {
            }

            @Override // com.google.protobuf.Internal.EnumLiteMap
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public e findValueByNumber(int i10) {
                return e.a(i10);
            }
        }

        private static final class b implements Internal.EnumVerifier {
            static final Internal.EnumVerifier INSTANCE = new b();

            private b() {
            }

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int i10) {
                if (e.a(i10) != null) {
                    return true;
                }
                return false;
            }
        }

        public static Internal.EnumVerifier b() {
            return b.INSTANCE;
        }

        e(int i10) {
            this.value = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S(long j6) {
        this.bitField0_ |= 128;
        this.clientStartTimeUs_ = j6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(int i10) {
        this.bitField0_ |= 32;
        this.httpResponseCode_ = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W(long j6) {
        this.bitField0_ |= 4;
        this.requestPayloadBytes_ = j6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y(long j6) {
        this.bitField0_ |= 8;
        this.responsePayloadBytes_ = j6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(long j6) {
        this.bitField0_ |= 256;
        this.timeToRequestCompletedUs_ = j6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(long j6) {
        this.bitField0_ |= 1024;
        this.timeToResponseCompletedUs_ = j6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0(long j6) {
        this.bitField0_ |= 512;
        this.timeToResponseInitiatedUs_ = j6;
    }

    public static h y() {
        return DEFAULT_INSTANCE;
    }

    public int A() {
        return this.httpResponseCode_;
    }

    public List<k> B() {
        return this.perfSessions_;
    }

    public long C() {
        return this.requestPayloadBytes_;
    }

    public String D() {
        return this.responseContentType_;
    }

    public long E() {
        return this.responsePayloadBytes_;
    }

    public long F() {
        return this.timeToRequestCompletedUs_;
    }

    public long G() {
        return this.timeToResponseCompletedUs_;
    }

    public long H() {
        return this.timeToResponseInitiatedUs_;
    }

    public String I() {
        return this.url_;
    }

    public boolean J() {
        return (this.bitField0_ & 128) != 0;
    }

    public boolean K() {
        return (this.bitField0_ & 2) != 0;
    }

    public boolean L() {
        return (this.bitField0_ & 32) != 0;
    }

    public boolean M() {
        return (this.bitField0_ & 4) != 0;
    }

    public boolean N() {
        return (this.bitField0_ & 8) != 0;
    }

    public boolean O() {
        return (this.bitField0_ & 256) != 0;
    }

    public boolean P() {
        return (this.bitField0_ & 1024) != 0;
    }

    public boolean Q() {
        return (this.bitField0_ & 512) != 0;
    }

    public long x() {
        return this.clientStartTimeUs_;
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
        h hVar = new h();
        DEFAULT_INSTANCE = hVar;
        GeneratedMessageLite.registerDefaultInstance(h.class, hVar);
    }

    public static b R() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        this.bitField0_ &= -65;
        this.responseContentType_ = y().D();
    }

    private void w() {
        Internal.ProtobufList<k> protobufList = this.perfSessions_;
        if (protobufList.isModifiable()) {
            return;
        }
        this.perfSessions_ = GeneratedMessageLite.mutableCopy(protobufList);
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        a aVar = null;
        switch (a.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new h();
            case 2:
                return new b(aVar);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\r\u0000\u0001\u0001\r\r\u0001\u0001\u0000\u0001ဈ\u0000\u0002ဌ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005င\u0005\u0006ဈ\u0006\u0007ဂ\u0007\bဂ\b\tဂ\t\nဂ\n\u000bဌ\u0004\f2\r\u001b", new Object[]{"bitField0_", "url_", "httpMethod_", d.b(), "requestPayloadBytes_", "responsePayloadBytes_", "httpResponseCode_", "responseContentType_", "clientStartTimeUs_", "timeToRequestCompletedUs_", "timeToResponseInitiatedUs_", "timeToResponseCompletedUs_", "networkClientErrorReason_", e.b(), "customAttributes_", c.defaultEntry, "perfSessions_", k.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<h> defaultInstanceBasedParser = PARSER;
                if (defaultInstanceBasedParser == null) {
                    synchronized (h.class) {
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

    public d z() {
        d dVarA = d.a(this.httpMethod_);
        return dVarA == null ? d.HTTP_METHOD_UNKNOWN : dVarA;
    }

    private h() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T(d dVar) {
        this.httpMethod_ = dVar.getNumber();
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V(e eVar) {
        this.networkClientErrorReason_ = eVar.getNumber();
        this.bitField0_ |= 16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X(String str) {
        str.getClass();
        this.bitField0_ |= 64;
        this.responseContentType_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.url_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(Iterable<? extends k> iterable) {
        w();
        AbstractMessageLite.addAll((Iterable) iterable, (List) this.perfSessions_);
    }
}
