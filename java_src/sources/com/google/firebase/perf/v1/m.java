package com.google.firebase.perf.v1;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.WireFormat;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class m extends GeneratedMessageLite<m, b> implements MessageLiteOrBuilder {
    public static final int CLIENT_START_TIME_US_FIELD_NUMBER = 4;
    public static final int COUNTERS_FIELD_NUMBER = 6;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 8;
    private static final m DEFAULT_INSTANCE;
    public static final int DURATION_US_FIELD_NUMBER = 5;
    public static final int IS_AUTO_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    private static volatile Parser<m> PARSER = null;
    public static final int PERF_SESSIONS_FIELD_NUMBER = 9;
    public static final int SUBTRACES_FIELD_NUMBER = 7;
    private int bitField0_;
    private long clientStartTimeUs_;
    private long durationUs_;
    private boolean isAuto_;
    private MapFieldLite<String, Long> counters_ = MapFieldLite.emptyMapField();
    private MapFieldLite<String, String> customAttributes_ = MapFieldLite.emptyMapField();
    private String name_ = "";
    private Internal.ProtobufList<m> subtraces_ = GeneratedMessageLite.emptyProtobufList();
    private Internal.ProtobufList<k> perfSessions_ = GeneratedMessageLite.emptyProtobufList();

    public static final class b extends GeneratedMessageLite.Builder<m, b> implements MessageLiteOrBuilder {
        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            super(m.DEFAULT_INSTANCE);
        }

        public b d(Iterable<? extends k> iterable) {
            copyOnWrite();
            ((m) this.instance).q(iterable);
            return this;
        }

        public b h(Iterable<? extends m> iterable) {
            copyOnWrite();
            ((m) this.instance).r(iterable);
            return this;
        }

        public b j(k kVar) {
            copyOnWrite();
            ((m) this.instance).s(kVar);
            return this;
        }

        public b k(m mVar) {
            copyOnWrite();
            ((m) this.instance).t(mVar);
            return this;
        }

        public b l(Map<String, Long> map) {
            copyOnWrite();
            ((m) this.instance).C().putAll(map);
            return this;
        }

        public b m(Map<String, String> map) {
            copyOnWrite();
            ((m) this.instance).D().putAll(map);
            return this;
        }

        public b n(String str, long j6) {
            str.getClass();
            copyOnWrite();
            ((m) this.instance).C().put(str, Long.valueOf(j6));
            return this;
        }

        public b o(String str, String str2) {
            str.getClass();
            str2.getClass();
            copyOnWrite();
            ((m) this.instance).D().put(str, str2);
            return this;
        }

        public b p(long j6) {
            copyOnWrite();
            ((m) this.instance).M(j6);
            return this;
        }

        public b q(long j6) {
            copyOnWrite();
            ((m) this.instance).N(j6);
            return this;
        }

        public b r(String str) {
            copyOnWrite();
            ((m) this.instance).setName(str);
            return this;
        }
    }

    private static final class c {
        static final MapEntryLite<String, Long> defaultEntry = MapEntryLite.newDefaultInstance(WireFormat.FieldType.STRING, "", WireFormat.FieldType.INT64, 0L);
    }

    private static final class d {
        static final MapEntryLite<String, String> defaultEntry;

        static {
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            defaultEntry = MapEntryLite.newDefaultInstance(fieldType, "", fieldType, "");
        }
    }

    public static m A() {
        return DEFAULT_INSTANCE;
    }

    private MapFieldLite<String, Long> H() {
        return this.counters_;
    }

    private MapFieldLite<String, String> I() {
        return this.customAttributes_;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M(long j6) {
        this.bitField0_ |= 4;
        this.clientStartTimeUs_ = j6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(long j6) {
        this.bitField0_ |= 8;
        this.durationUs_ = j6;
    }

    public long B() {
        return this.durationUs_;
    }

    public List<k> E() {
        return this.perfSessions_;
    }

    public List<m> F() {
        return this.subtraces_;
    }

    public boolean G() {
        return (this.bitField0_ & 4) != 0;
    }

    public String getName() {
        return this.name_;
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
        m mVar = new m();
        DEFAULT_INSTANCE = mVar;
        GeneratedMessageLite.registerDefaultInstance(m.class, mVar);
    }

    private MapFieldLite<String, Long> J() {
        if (!this.counters_.isMutable()) {
            this.counters_ = this.counters_.mutableCopy();
        }
        return this.counters_;
    }

    private MapFieldLite<String, String> K() {
        if (!this.customAttributes_.isMutable()) {
            this.customAttributes_ = this.customAttributes_.mutableCopy();
        }
        return this.customAttributes_;
    }

    public static b L() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    private void v() {
        Internal.ProtobufList<k> protobufList = this.perfSessions_;
        if (protobufList.isModifiable()) {
            return;
        }
        this.perfSessions_ = GeneratedMessageLite.mutableCopy(protobufList);
    }

    private void w() {
        Internal.ProtobufList<m> protobufList = this.subtraces_;
        if (protobufList.isModifiable()) {
            return;
        }
        this.subtraces_ = GeneratedMessageLite.mutableCopy(protobufList);
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        a aVar = null;
        switch (a.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new m();
            case 2:
                return new b(aVar);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\b\u0000\u0001\u0001\t\b\u0002\u0002\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0004ဂ\u0002\u0005ဂ\u0003\u00062\u0007\u001b\b2\t\u001b", new Object[]{"bitField0_", "name_", "isAuto_", "clientStartTimeUs_", "durationUs_", "counters_", c.defaultEntry, "subtraces_", m.class, "customAttributes_", d.defaultEntry, "perfSessions_", k.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<m> defaultInstanceBasedParser = PARSER;
                if (defaultInstanceBasedParser == null) {
                    synchronized (m.class) {
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

    private m() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Long> C() {
        return J();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> D() {
        return K();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(Iterable<? extends k> iterable) {
        v();
        AbstractMessageLite.addAll((Iterable) iterable, (List) this.perfSessions_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(Iterable<? extends m> iterable) {
        w();
        AbstractMessageLite.addAll((Iterable) iterable, (List) this.subtraces_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(k kVar) {
        kVar.getClass();
        v();
        this.perfSessions_.add(kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setName(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.name_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(m mVar) {
        mVar.getClass();
        w();
        this.subtraces_.add(mVar);
    }

    public boolean u(String str) {
        str.getClass();
        return I().containsKey(str);
    }

    public int x() {
        return H().size();
    }

    public Map<String, Long> y() {
        return Collections.unmodifiableMap(H());
    }

    public Map<String, String> z() {
        return Collections.unmodifiableMap(I());
    }
}
