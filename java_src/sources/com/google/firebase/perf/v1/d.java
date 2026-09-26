package com.google.firebase.perf.v1;

import com.google.protobuf.Internal;

/* JADX INFO: loaded from: classes8.dex */
public enum d implements Internal.EnumLite {
    APPLICATION_PROCESS_STATE_UNKNOWN(0),
    FOREGROUND(1),
    BACKGROUND(2),
    FOREGROUND_BACKGROUND(3);

    public static final int APPLICATION_PROCESS_STATE_UNKNOWN_VALUE = 0;
    public static final int BACKGROUND_VALUE = 2;
    public static final int FOREGROUND_BACKGROUND_VALUE = 3;
    public static final int FOREGROUND_VALUE = 1;
    private static final Internal.EnumLiteMap<d> internalValueMap = new Internal.EnumLiteMap<d>() { // from class: com.google.firebase.perf.v1.d.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public d findValueByNumber(int i10) {
            return d.a(i10);
        }
    };
    private final int value;

    public static d a(int i10) {
        if (i10 == 0) {
            return APPLICATION_PROCESS_STATE_UNKNOWN;
        }
        if (i10 == 1) {
            return FOREGROUND;
        }
        if (i10 == 2) {
            return BACKGROUND;
        }
        if (i10 != 3) {
            return null;
        }
        return FOREGROUND_BACKGROUND;
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
