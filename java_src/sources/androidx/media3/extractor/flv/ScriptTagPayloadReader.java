package androidx.media3.extractor.flv;

import androidx.annotation.Nullable;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.DummyTrackOutput;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
final class ScriptTagPayloadReader extends TagPayloadReader {
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

    @Override // androidx.media3.extractor.flv.TagPayloadReader
    protected boolean b(ParsableByteArray parsableByteArray) {
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

    public ScriptTagPayloadReader() {
        super(new DummyTrackOutput());
        this.durationUs = -9223372036854775807L;
        this.keyFrameTimesUs = new long[0];
        this.keyFrameTagPositions = new long[0];
    }

    @Nullable
    private static Object h(ParsableByteArray parsableByteArray, int i10) {
        if (i10 == 0) {
            return j(parsableByteArray);
        }
        if (i10 == 1) {
            return g(parsableByteArray);
        }
        if (i10 == 2) {
            return n(parsableByteArray);
        }
        if (i10 == 3) {
            return l(parsableByteArray);
        }
        if (i10 == 8) {
            return k(parsableByteArray);
        }
        if (i10 == 10) {
            return m(parsableByteArray);
        }
        if (i10 != 11) {
            return null;
        }
        return i(parsableByteArray);
    }

    private static Date i(ParsableByteArray parsableByteArray) {
        Date date = new Date((long) j(parsableByteArray).doubleValue());
        parsableByteArray.V(2);
        return date;
    }

    private static HashMap<String, Object> l(ParsableByteArray parsableByteArray) {
        HashMap<String, Object> map = new HashMap<>();
        while (true) {
            String strN = n(parsableByteArray);
            int iO = o(parsableByteArray);
            if (iO == 9) {
                return map;
            }
            Object objH = h(parsableByteArray, iO);
            if (objH != null) {
                map.put(strN, objH);
            }
        }
    }

    private static Boolean g(ParsableByteArray parsableByteArray) {
        boolean z6 = true;
        if (parsableByteArray.H() != 1) {
            z6 = false;
        }
        return Boolean.valueOf(z6);
    }

    private static Double j(ParsableByteArray parsableByteArray) {
        return Double.valueOf(Double.longBitsToDouble(parsableByteArray.A()));
    }

    private static HashMap<String, Object> k(ParsableByteArray parsableByteArray) {
        int iL = parsableByteArray.L();
        HashMap<String, Object> map = new HashMap<>(iL);
        for (int i10 = 0; i10 < iL; i10++) {
            String strN = n(parsableByteArray);
            Object objH = h(parsableByteArray, o(parsableByteArray));
            if (objH != null) {
                map.put(strN, objH);
            }
        }
        return map;
    }

    private static ArrayList<Object> m(ParsableByteArray parsableByteArray) {
        int iL = parsableByteArray.L();
        ArrayList<Object> arrayList = new ArrayList<>(iL);
        for (int i10 = 0; i10 < iL; i10++) {
            Object objH = h(parsableByteArray, o(parsableByteArray));
            if (objH != null) {
                arrayList.add(objH);
            }
        }
        return arrayList;
    }

    private static String n(ParsableByteArray parsableByteArray) {
        int iN = parsableByteArray.N();
        int iF = parsableByteArray.f();
        parsableByteArray.V(iN);
        return new String(parsableByteArray.e(), iF, iN);
    }

    private static int o(ParsableByteArray parsableByteArray) {
        return parsableByteArray.H();
    }

    @Override // androidx.media3.extractor.flv.TagPayloadReader
    protected boolean c(ParsableByteArray parsableByteArray, long j6) {
        if (o(parsableByteArray) != 2 || !NAME_METADATA.equals(n(parsableByteArray)) || parsableByteArray.a() == 0 || o(parsableByteArray) != 8) {
            return false;
        }
        HashMap<String, Object> mapK = k(parsableByteArray);
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
