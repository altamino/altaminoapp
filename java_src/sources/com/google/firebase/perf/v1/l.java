package com.google.firebase.perf.v1;

import com.google.protobuf.Internal;

/* JADX INFO: loaded from: classes7.dex */
public enum l implements Internal.EnumLite {
    SESSION_VERBOSITY_NONE(0),
    GAUGES_AND_SYSTEM_EVENTS(1);

    public static final int GAUGES_AND_SYSTEM_EVENTS_VALUE = 1;
    public static final int SESSION_VERBOSITY_NONE_VALUE = 0;
    private static final Internal.EnumLiteMap<l> internalValueMap = new Internal.EnumLiteMap<l>() { // from class: com.google.firebase.perf.v1.l.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public l findValueByNumber(int i10) {
            return l.a(i10);
        }
    };
    private final int value;

    public static l a(int i10) {
        if (i10 == 0) {
            return SESSION_VERBOSITY_NONE;
        }
        if (i10 != 1) {
            return null;
        }
        return GAUGES_AND_SYSTEM_EVENTS;
    }

    @Override // com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        return this.value;
    }

    private static final class b implements Internal.EnumVerifier {
        static final Internal.EnumVerifier INSTANCE = new b();

        private b() {
        }

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i10) {
            if (l.a(i10) != null) {
                return true;
            }
            return false;
        }
    }

    public static Internal.EnumVerifier b() {
        return b.INSTANCE;
    }

    l(int i10) {
        this.value = i10;
    }
}
