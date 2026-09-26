package com.google.firebase.perf.v1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;

/* JADX INFO: loaded from: classes9.dex */
public final class k extends GeneratedMessageLite<k, c> implements MessageLiteOrBuilder {
    private static final k DEFAULT_INSTANCE;
    private static volatile Parser<k> PARSER = null;
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    public static final int SESSION_VERBOSITY_FIELD_NUMBER = 2;
    private static final Internal.ListAdapter.Converter<Integer, l> sessionVerbosity_converter_ = new a();
    private int bitField0_;
    private String sessionId_ = "";
    private Internal.IntList sessionVerbosity_ = GeneratedMessageLite.emptyIntList();

    public static final class c extends GeneratedMessageLite.Builder<k, c> implements MessageLiteOrBuilder {
        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            super(k.DEFAULT_INSTANCE);
        }

        public c d(l lVar) {
            copyOnWrite();
            ((k) this.instance).j(lVar);
            return this;
        }

        public c h(String str) {
            copyOnWrite();
            ((k) this.instance).setSessionId(str);
            return this;
        }
    }

    class a implements Internal.ListAdapter.Converter<Integer, l> {
        a() {
        }

        @Override // com.google.protobuf.Internal.ListAdapter.Converter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public l convert(Integer num) {
            l lVarA = l.a(num.intValue());
            if (lVarA == null) {
                return l.SESSION_VERBOSITY_NONE;
            }
            return lVarA;
        }
    }

    static /* synthetic */ class b {
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
        k kVar = new k();
        DEFAULT_INSTANCE = kVar;
        GeneratedMessageLite.registerDefaultInstance(k.class, kVar);
    }

    private void k() {
        Internal.IntList intList = this.sessionVerbosity_;
        if (intList.isModifiable()) {
            return;
        }
        this.sessionVerbosity_ = GeneratedMessageLite.mutableCopy(intList);
    }

    public static c n() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        a aVar = null;
        switch (b.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new k();
            case 2:
                return new c(aVar);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001e", new Object[]{"bitField0_", "sessionId_", "sessionVerbosity_", l.b()});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<k> defaultInstanceBasedParser = PARSER;
                if (defaultInstanceBasedParser == null) {
                    synchronized (k.class) {
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

    public l l(int i10) {
        l lVarA = l.a(this.sessionVerbosity_.getInt(i10));
        return lVarA == null ? l.SESSION_VERBOSITY_NONE : lVarA;
    }

    public int m() {
        return this.sessionVerbosity_.size();
    }

    private k() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(l lVar) {
        lVar.getClass();
        k();
        this.sessionVerbosity_.addInt(lVar.getNumber());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSessionId(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.sessionId_ = str;
    }
}
