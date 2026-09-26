package com.google.android.exoplayer2.extractor.flv;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.extractor.k;
import com.google.android.exoplayer2.util.c0;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
final class d extends e {
    private static final int AMF_TYPE_BOOLEAN = 1;
    private static final int AMF_TYPE_DATE = 11;
    private static final int AMF_TYPE_ECMA_ARRAY = 8;
    private static final int AMF_TYPE_END_MARKER = 9;
    private static final int AMF_TYPE_NUMBER = 0;
    private static final int AMF_TYPE_OBJECT = 3;
    private static final int AMF_TYPE_STRICT_ARRAY = 10;
    private static final int AMF_TYPE_STRING = 2;
    private static final String KEY_DURATION = "duration";
    private static final String KEY_FILE_POSITIONS = "filepositions";
    private static final String KEY_KEY_FRAMES = "keyframes";
    private static final String KEY_TIMES = "times";
    private static final String NAME_METADATA = "onMetaData";
    private long durationUs;
    private long[] keyFrameTagPositions;
    private long[] keyFrameTimesUs;

    @Override // com.google.android.exoplayer2.extractor.flv.e
    protected boolean b(c0 c0Var) {
        return true;
    }

    public long d() {
        return this.durationUs;
    }

    public long[] e() {
        return this.keyFrameTagPositions;
    }

    public long[] f() {
        return this.keyFrameTimesUs;
    }

    public d() {
        super(new k());
        this.durationUs = -9223372036854775807L;
        this.keyFrameTimesUs = new long[0];
        this.keyFrameTagPositions = new long[0];
    }

    @Nullable
    private static Object h(c0 c0Var, int i10) {
        if (i10 == 0) {
            return j(c0Var);
        }
        if (i10 == 1) {
            return g(c0Var);
        }
        if (i10 == 2) {
            return n(c0Var);
        }
        if (i10 == 3) {
            return l(c0Var);
        }
        if (i10 == 8) {
            return k(c0Var);
        }
        if (i10 == 10) {
            return m(c0Var);
        }
        if (i10 != 11) {
            return null;
        }
        return i(c0Var);
    }

    private static Date i(c0 c0Var) {
        Date date = new Date((long) j(c0Var).doubleValue());
        c0Var.Q(2);
        return date;
    }

    private static HashMap<String, Object> l(c0 c0Var) {
        HashMap<String, Object> map = new HashMap<>();
        while (true) {
            String strN = n(c0Var);
            int iO = o(c0Var);
            if (iO == 9) {
                return map;
            }
            Object objH = h(c0Var, iO);
            if (objH != null) {
                map.put(strN, objH);
            }
        }
    }

    private static Boolean g(c0 c0Var) {
        boolean z6 = true;
        if (c0Var.D() != 1) {
            z6 = false;
        }
        return Boolean.valueOf(z6);
    }

    private static Double j(c0 c0Var) {
        return Double.valueOf(Double.longBitsToDouble(c0Var.w()));
    }

    private static HashMap<String, Object> k(c0 c0Var) {
        int iH = c0Var.H();
        HashMap<String, Object> map = new HashMap<>(iH);
        for (int i10 = 0; i10 < iH; i10++) {
            String strN = n(c0Var);
            Object objH = h(c0Var, o(c0Var));
            if (objH != null) {
                map.put(strN, objH);
            }
        }
        return map;
    }

    private static ArrayList<Object> m(c0 c0Var) {
        int iH = c0Var.H();
        ArrayList<Object> arrayList = new ArrayList<>(iH);
        for (int i10 = 0; i10 < iH; i10++) {
            Object objH = h(c0Var, o(c0Var));
            if (objH != null) {
                arrayList.add(objH);
            }
        }
        return arrayList;
    }

    private static String n(c0 c0Var) {
        int iJ = c0Var.J();
        int iE = c0Var.e();
        c0Var.Q(iJ);
        return new String(c0Var.d(), iE, iJ);
    }

    private static int o(c0 c0Var) {
        return c0Var.D();
    }

    @Override // com.google.android.exoplayer2.extractor.flv.e
    protected boolean c(c0 c0Var, long j6) {
        if (o(c0Var) != 2 || !NAME_METADATA.equals(n(c0Var)) || c0Var.a() == 0 || o(c0Var) != 8) {
            return false;
        }
        HashMap<String, Object> mapK = k(c0Var);
        Object obj = mapK.get("duration");
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (dDoubleValue > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                this.durationUs = (long) (dDoubleValue * 1000000.0d);
            }
        }
        Object obj2 = mapK.get(KEY_KEY_FRAMES);
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get(KEY_FILE_POSITIONS);
            Object obj4 = map.get(KEY_TIMES);
            if ((obj3 instanceof List) && (obj4 instanceof List)) {
                List list = (List) obj3;
                List list2 = (List) obj4;
                int size = list2.size();
                this.keyFrameTimesUs = new long[size];
                this.keyFrameTagPositions = new long[size];
                for (int i10 = 0; i10 < size; i10++) {
                    Object obj5 = list.get(i10);
                    Object obj6 = list2.get(i10);
                    if ((obj6 instanceof Double) && (obj5 instanceof Double)) {
                        this.keyFrameTimesUs[i10] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                        this.keyFrameTagPositions[i10] = ((Double) obj5).longValue();
                    } else {
                        this.keyFrameTimesUs = new long[0];
                        this.keyFrameTagPositions = new long[0];
                        break;
                    }
                }
            }
        }
        return false;
    }
}
