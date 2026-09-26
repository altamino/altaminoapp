package androidx.datastore.preferences;

import androidx.datastore.preferences.protobuf.AbstractMessageLite;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.Internal;
import androidx.datastore.preferences.protobuf.MapEntryLite;
import androidx.datastore.preferences.protobuf.MapFieldLite;
import androidx.datastore.preferences.protobuf.MessageLiteOrBuilder;
import androidx.datastore.preferences.protobuf.Parser;
import androidx.datastore.preferences.protobuf.WireFormat;
import com.google.firebase.remoteconfig.a;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class PreferencesProto {

    public static final class PreferenceMap extends GeneratedMessageLite<PreferenceMap, Builder> implements PreferenceMapOrBuilder {
        private static final PreferenceMap DEFAULT_INSTANCE;
        private static volatile Parser<PreferenceMap> PARSER = null;
        public static final int PREFERENCES_FIELD_NUMBER = 1;
        private MapFieldLite<String, Value> preferences_ = MapFieldLite.i();

        public static final class Builder extends GeneratedMessageLite.Builder<PreferenceMap, Builder> implements PreferenceMapOrBuilder {
            /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
                this();
            }

            private Builder() {
                super(PreferenceMap.DEFAULT_INSTANCE);
            }

            public Builder y(String str, Value value) {
                str.getClass();
                value.getClass();
                q();
                ((PreferenceMap) this.instance).E().put(str, value);
                return this;
            }
        }

        private MapFieldLite<String, Value> H() {
            return this.preferences_;
        }

        private static final class PreferencesDefaultEntryHolder {
            static final MapEntryLite<String, Value> defaultEntry = MapEntryLite.d(WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, Value.L());

            private PreferencesDefaultEntryHolder() {
            }
        }

        static {
            PreferenceMap preferenceMap = new PreferenceMap();
            DEFAULT_INSTANCE = preferenceMap;
            GeneratedMessageLite.A(PreferenceMap.class, preferenceMap);
        }

        private MapFieldLite<String, Value> G() {
            if (!this.preferences_.m()) {
                this.preferences_ = this.preferences_.p();
            }
            return this.preferences_;
        }

        public static Builder I() {
            return DEFAULT_INSTANCE.l();
        }

        public static PreferenceMap J(InputStream inputStream) throws IOException {
            return (PreferenceMap) GeneratedMessageLite.y(DEFAULT_INSTANCE, inputStream);
        }

        @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite
        protected final Object o(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            AnonymousClass1 anonymousClass1 = null;
            switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
                case 1:
                    return new PreferenceMap();
                case 2:
                    return new Builder(anonymousClass1);
                case 3:
                    return GeneratedMessageLite.x(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"preferences_", PreferencesDefaultEntryHolder.defaultEntry});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<PreferenceMap> defaultInstanceBasedParser = PARSER;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (PreferenceMap.class) {
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

        private PreferenceMap() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<String, Value> E() {
            return G();
        }

        public Map<String, Value> F() {
            return Collections.unmodifiableMap(H());
        }
    }

    public interface PreferenceMapOrBuilder extends MessageLiteOrBuilder {
    }

    public static final class StringSet extends GeneratedMessageLite<StringSet, Builder> implements StringSetOrBuilder {
        private static final StringSet DEFAULT_INSTANCE;
        private static volatile Parser<StringSet> PARSER = null;
        public static final int STRINGS_FIELD_NUMBER = 1;
        private Internal.ProtobufList<String> strings_ = GeneratedMessageLite.p();

        public static final class Builder extends GeneratedMessageLite.Builder<StringSet, Builder> implements StringSetOrBuilder {
            /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
                this();
            }

            private Builder() {
                super(StringSet.DEFAULT_INSTANCE);
            }

            public Builder y(Iterable<String> iterable) {
                q();
                ((StringSet) this.instance).E(iterable);
                return this;
            }
        }

        public static StringSet G() {
            return DEFAULT_INSTANCE;
        }

        public List<String> H() {
            return this.strings_;
        }

        static {
            StringSet stringSet = new StringSet();
            DEFAULT_INSTANCE = stringSet;
            GeneratedMessageLite.A(StringSet.class, stringSet);
        }

        private void F() {
            if (this.strings_.isModifiable()) {
                return;
            }
            this.strings_ = GeneratedMessageLite.v(this.strings_);
        }

        public static Builder I() {
            return DEFAULT_INSTANCE.l();
        }

        @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite
        protected final Object o(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            AnonymousClass1 anonymousClass1 = null;
            switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
                case 1:
                    return new StringSet();
                case 2:
                    return new Builder(anonymousClass1);
                case 3:
                    return GeneratedMessageLite.x(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"strings_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<StringSet> defaultInstanceBasedParser = PARSER;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (StringSet.class) {
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

        private StringSet() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void E(Iterable<String> iterable) {
            F();
            AbstractMessageLite.c(iterable, this.strings_);
        }
    }

    public interface StringSetOrBuilder extends MessageLiteOrBuilder {
    }

    public static final class Value extends GeneratedMessageLite<Value, Builder> implements ValueOrBuilder {
        public static final int BOOLEAN_FIELD_NUMBER = 1;
        private static final Value DEFAULT_INSTANCE;
        public static final int DOUBLE_FIELD_NUMBER = 7;
        public static final int FLOAT_FIELD_NUMBER = 2;
        public static final int INTEGER_FIELD_NUMBER = 3;
        public static final int LONG_FIELD_NUMBER = 4;
        private static volatile Parser<Value> PARSER = null;
        public static final int STRING_FIELD_NUMBER = 5;
        public static final int STRING_SET_FIELD_NUMBER = 6;
        private int bitField0_;
        private int valueCase_ = 0;
        private Object value_;

        public static final class Builder extends GeneratedMessageLite.Builder<Value, Builder> implements ValueOrBuilder {
            /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
                this();
            }

            private Builder() {
                super(Value.DEFAULT_INSTANCE);
            }

            public Builder A(float f) {
                q();
                ((Value) this.instance).W(f);
                return this;
            }

            public Builder B(int i10) {
                q();
                ((Value) this.instance).X(i10);
                return this;
            }

            public Builder C(long j6) {
                q();
                ((Value) this.instance).Y(j6);
                return this;
            }

            public Builder D(String str) {
                q();
                ((Value) this.instance).Z(str);
                return this;
            }

            public Builder E(StringSet.Builder builder) {
                q();
                ((Value) this.instance).a0(builder);
                return this;
            }

            public Builder y(boolean z6) {
                q();
                ((Value) this.instance).U(z6);
                return this;
            }

            public Builder z(double d) {
                q();
                ((Value) this.instance).V(d);
                return this;
            }
        }

        public static Value L() {
            return DEFAULT_INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void U(boolean z6) {
            this.valueCase_ = 1;
            this.value_ = Boolean.valueOf(z6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void V(double d) {
            this.valueCase_ = 7;
            this.value_ = Double.valueOf(d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void W(float f) {
            this.valueCase_ = 2;
            this.value_ = Float.valueOf(f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void X(int i10) {
            this.valueCase_ = 3;
            this.value_ = Integer.valueOf(i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void Y(long j6) {
            this.valueCase_ = 4;
            this.value_ = Long.valueOf(j6);
        }

        public enum ValueCase {
            BOOLEAN(1),
            FLOAT(2),
            INTEGER(3),
            LONG(4),
            STRING(5),
            STRING_SET(6),
            DOUBLE(7),
            VALUE_NOT_SET(0);

            private final int value;

            public static ValueCase a(int i10) {
                switch (i10) {
                    case 0:
                        return VALUE_NOT_SET;
                    case 1:
                        return BOOLEAN;
                    case 2:
                        return FLOAT;
                    case 3:
                        return INTEGER;
                    case 4:
                        return LONG;
                    case 5:
                        return STRING;
                    case 6:
                        return STRING_SET;
                    case 7:
                        return DOUBLE;
                    default:
                        return null;
                }
            }

            ValueCase(int i10) {
                this.value = i10;
            }
        }

        static {
            Value value = new Value();
            DEFAULT_INSTANCE = value;
            GeneratedMessageLite.A(Value.class, value);
        }

        public static Builder T() {
            return DEFAULT_INSTANCE.l();
        }

        public boolean K() {
            if (this.valueCase_ == 1) {
                return ((Boolean) this.value_).booleanValue();
            }
            return false;
        }

        public double M() {
            return this.valueCase_ == 7 ? ((Double) this.value_).doubleValue() : a.DEFAULT_VALUE_FOR_DOUBLE;
        }

        public float N() {
            if (this.valueCase_ == 2) {
                return ((Float) this.value_).floatValue();
            }
            return 0.0f;
        }

        public int O() {
            if (this.valueCase_ == 3) {
                return ((Integer) this.value_).intValue();
            }
            return 0;
        }

        public long P() {
            if (this.valueCase_ == 4) {
                return ((Long) this.value_).longValue();
            }
            return 0L;
        }

        public String Q() {
            return this.valueCase_ == 5 ? (String) this.value_ : "";
        }

        public StringSet R() {
            return this.valueCase_ == 6 ? (StringSet) this.value_ : StringSet.G();
        }

        public ValueCase S() {
            return ValueCase.a(this.valueCase_);
        }

        @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite
        protected final Object o(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            AnonymousClass1 anonymousClass1 = null;
            switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
                case 1:
                    return new Value();
                case 2:
                    return new Builder(anonymousClass1);
                case 3:
                    return GeneratedMessageLite.x(DEFAULT_INSTANCE, "\u0001\u0007\u0001\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001:\u0000\u00024\u0000\u00037\u0000\u00045\u0000\u0005;\u0000\u0006<\u0000\u00073\u0000", new Object[]{"value_", "valueCase_", "bitField0_", StringSet.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Value> defaultInstanceBasedParser = PARSER;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Value.class) {
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

        private Value() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void Z(String str) {
            str.getClass();
            this.valueCase_ = 5;
            this.value_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a0(StringSet.Builder builder) {
            this.value_ = builder.build();
            this.valueCase_ = 6;
        }
    }

    public interface ValueOrBuilder extends MessageLiteOrBuilder {
    }

    /* JADX INFO: renamed from: androidx.datastore.preferences.PreferencesProto$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
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

    private PreferencesProto() {
    }
}
