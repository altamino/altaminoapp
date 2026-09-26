package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.os.Handler;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import androidx.compose.material.TextFieldImplKt;
import androidx.compose.runtime.ComposerKt;
import androidx.renderscript.ScriptIntrinsicBLAS;
import com.google.android.exoplayer2.util.o0;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import com.narvii.poweruser.SendBroadcastHelper;
import com.narvii.poweruser.history.ModerationHistory;
import com.narvii.util.http.ApiService;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.Constants;
import java.util.HashMap;
import java.util.Map;
import okio.Utf8;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes4.dex */
public final class r implements e, m0 {
    private static final int BYTES_TRANSFERRED_FOR_ESTIMATE = 524288;
    private static final int COUNTRY_GROUP_INDEX_2G = 1;
    private static final int COUNTRY_GROUP_INDEX_3G = 2;
    private static final int COUNTRY_GROUP_INDEX_4G = 3;
    private static final int COUNTRY_GROUP_INDEX_5G_NSA = 4;
    private static final int COUNTRY_GROUP_INDEX_5G_SA = 5;
    private static final int COUNTRY_GROUP_INDEX_WIFI = 0;
    public static final long DEFAULT_INITIAL_BITRATE_ESTIMATE = 1000000;
    public static final int DEFAULT_SLIDING_WINDOW_MAX_WEIGHT = 2000;
    private static final int ELAPSED_MILLIS_FOR_ESTIMATE = 2000;

    @Nullable
    private static r singletonInstance;
    private long bitrateEstimate;
    private final com.google.android.exoplayer2.util.d clock;
    private final e.a.C0184a eventDispatcher;
    private final com.google.common.collect.b0<Integer, Long> initialBitrateEstimates;
    private long lastReportedBitrateEstimate;
    private int networkType;
    private int networkTypeOverride;
    private boolean networkTypeOverrideSet;
    private final boolean resetOnNetworkTypeChange;
    private long sampleBytesTransferred;
    private long sampleStartTimeMs;
    private final k0 slidingPercentile;
    private int streamCount;
    private long totalBytesTransferred;
    private long totalElapsedTimeMs;
    public static final com.google.common.collect.a0<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI = com.google.common.collect.a0.B(4800000L, 3100000L, 2100000L, 1500000L, 800000L);
    public static final com.google.common.collect.a0<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_2G = com.google.common.collect.a0.B(1500000L, 1000000L, 730000L, 440000L, 170000L);
    public static final com.google.common.collect.a0<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_3G = com.google.common.collect.a0.B(2200000L, 1400000L, 1100000L, 910000L, 620000L);
    public static final com.google.common.collect.a0<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_4G = com.google.common.collect.a0.B(3000000L, 1900000L, 1400000L, 1000000L, 660000L);
    public static final com.google.common.collect.a0<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA = com.google.common.collect.a0.B(6000000L, 4100000L, 3200000L, 1800000L, 1000000L);
    public static final com.google.common.collect.a0<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA = com.google.common.collect.a0.B(2800000L, 2400000L, 1600000L, 1100000L, 950000L);

    public static final class b {
        private com.google.android.exoplayer2.util.d clock;

        @Nullable
        private final Context context;
        private Map<Integer, Long> initialBitrateEstimates;
        private boolean resetOnNetworkTypeChange;
        private int slidingWindowMaxWeight;

        public r a() {
            return new r(this.context, this.initialBitrateEstimates, this.slidingWindowMaxWeight, this.clock, this.resetOnNetworkTypeChange);
        }

        public b(Context context) {
            Context applicationContext;
            if (context == null) {
                applicationContext = null;
            } else {
                applicationContext = context.getApplicationContext();
            }
            this.context = applicationContext;
            this.initialBitrateEstimates = b(o0.H(context));
            this.slidingWindowMaxWeight = 2000;
            this.clock = com.google.android.exoplayer2.util.d.DEFAULT;
            this.resetOnNetworkTypeChange = true;
        }

        private static Map<Integer, Long> b(String str) {
            int[] iArrJ = r.j(str);
            HashMap map = new HashMap(8);
            map.put(0, 1000000L);
            com.google.common.collect.a0<Long> a0Var = r.DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI;
            map.put(2, a0Var.get(iArrJ[0]));
            map.put(3, r.DEFAULT_INITIAL_BITRATE_ESTIMATES_2G.get(iArrJ[1]));
            map.put(4, r.DEFAULT_INITIAL_BITRATE_ESTIMATES_3G.get(iArrJ[2]));
            map.put(5, r.DEFAULT_INITIAL_BITRATE_ESTIMATES_4G.get(iArrJ[3]));
            map.put(10, r.DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA.get(iArrJ[4]));
            map.put(9, r.DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA.get(iArrJ[5]));
            map.put(7, a0Var.get(iArrJ[0]));
            return map;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static int[] j(String str) {
        str.hashCode();
        byte b7 = -1;
        switch (str.hashCode()) {
            case 2083:
                if (str.equals("AD")) {
                    b7 = 0;
                }
                break;
            case 2084:
                if (str.equals("AE")) {
                    b7 = 1;
                }
                break;
            case 2085:
                if (str.equals("AF")) {
                    b7 = 2;
                }
                break;
            case 2086:
                if (str.equals("AG")) {
                    b7 = 3;
                }
                break;
            case 2088:
                if (str.equals("AI")) {
                    b7 = 4;
                }
                break;
            case 2091:
                if (str.equals("AL")) {
                    b7 = 5;
                }
                break;
            case 2092:
                if (str.equals("AM")) {
                    b7 = 6;
                }
                break;
            case 2094:
                if (str.equals("AO")) {
                    b7 = 7;
                }
                break;
            case 2096:
                if (str.equals("AQ")) {
                    b7 = 8;
                }
                break;
            case 2097:
                if (str.equals("AR")) {
                    b7 = 9;
                }
                break;
            case 2098:
                if (str.equals("AS")) {
                    b7 = 10;
                }
                break;
            case 2099:
                if (str.equals("AT")) {
                    b7 = com.google.common.base.c.VT;
                }
                break;
            case 2100:
                if (str.equals("AU")) {
                    b7 = com.google.common.base.c.FF;
                }
                break;
            case 2102:
                if (str.equals("AW")) {
                    b7 = com.google.common.base.c.CR;
                }
                break;
            case 2103:
                if (str.equals("AX")) {
                    b7 = com.google.common.base.c.SO;
                }
                break;
            case 2105:
                if (str.equals("AZ")) {
                    b7 = com.google.common.base.c.SI;
                }
                break;
            case 2111:
                if (str.equals("BA")) {
                    b7 = com.google.common.base.c.DLE;
                }
                break;
            case 2112:
                if (str.equals("BB")) {
                    b7 = 17;
                }
                break;
            case 2114:
                if (str.equals("BD")) {
                    b7 = com.google.common.base.c.DC2;
                }
                break;
            case 2115:
                if (str.equals("BE")) {
                    b7 = 19;
                }
                break;
            case 2116:
                if (str.equals("BF")) {
                    b7 = com.google.common.base.c.DC4;
                }
                break;
            case 2117:
                if (str.equals("BG")) {
                    b7 = com.google.common.base.c.NAK;
                }
                break;
            case 2118:
                if (str.equals("BH")) {
                    b7 = com.google.common.base.c.SYN;
                }
                break;
            case 2119:
                if (str.equals("BI")) {
                    b7 = com.google.common.base.c.ETB;
                }
                break;
            case 2120:
                if (str.equals("BJ")) {
                    b7 = com.google.common.base.c.CAN;
                }
                break;
            case 2122:
                if (str.equals("BL")) {
                    b7 = com.google.common.base.c.EM;
                }
                break;
            case 2123:
                if (str.equals("BM")) {
                    b7 = com.google.common.base.c.SUB;
                }
                break;
            case 2124:
                if (str.equals("BN")) {
                    b7 = com.google.common.base.c.ESC;
                }
                break;
            case 2125:
                if (str.equals("BO")) {
                    b7 = com.google.common.base.c.FS;
                }
                break;
            case 2127:
                if (str.equals("BQ")) {
                    b7 = com.google.common.base.c.GS;
                }
                break;
            case 2129:
                if (str.equals("BS")) {
                    b7 = com.google.common.base.c.RS;
                }
                break;
            case 2130:
                if (str.equals("BT")) {
                    b7 = com.google.common.base.c.US;
                }
                break;
            case 2133:
                if (str.equals("BW")) {
                    b7 = 32;
                }
                break;
            case 2135:
                if (str.equals("BY")) {
                    b7 = 33;
                }
                break;
            case 2136:
                if (str.equals("BZ")) {
                    b7 = 34;
                }
                break;
            case 2142:
                if (str.equals("CA")) {
                    b7 = 35;
                }
                break;
            case 2145:
                if (str.equals("CD")) {
                    b7 = 36;
                }
                break;
            case 2147:
                if (str.equals("CF")) {
                    b7 = 37;
                }
                break;
            case 2148:
                if (str.equals("CG")) {
                    b7 = 38;
                }
                break;
            case 2149:
                if (str.equals("CH")) {
                    b7 = 39;
                }
                break;
            case 2150:
                if (str.equals("CI")) {
                    b7 = 40;
                }
                break;
            case 2152:
                if (str.equals("CK")) {
                    b7 = 41;
                }
                break;
            case 2153:
                if (str.equals("CL")) {
                    b7 = 42;
                }
                break;
            case 2154:
                if (str.equals("CM")) {
                    b7 = 43;
                }
                break;
            case 2155:
                if (str.equals("CN")) {
                    b7 = 44;
                }
                break;
            case 2156:
                if (str.equals("CO")) {
                    b7 = 45;
                }
                break;
            case 2159:
                if (str.equals("CR")) {
                    b7 = 46;
                }
                break;
            case 2162:
                if (str.equals("CU")) {
                    b7 = 47;
                }
                break;
            case 2163:
                if (str.equals("CV")) {
                    b7 = TarConstants.LF_NORMAL;
                }
                break;
            case 2164:
                if (str.equals("CW")) {
                    b7 = TarConstants.LF_LINK;
                }
                break;
            case 2165:
                if (str.equals("CX")) {
                    b7 = TarConstants.LF_SYMLINK;
                }
                break;
            case 2166:
                if (str.equals("CY")) {
                    b7 = TarConstants.LF_CHR;
                }
                break;
            case 2167:
                if (str.equals("CZ")) {
                    b7 = TarConstants.LF_BLK;
                }
                break;
            case 2177:
                if (str.equals("DE")) {
                    b7 = TarConstants.LF_DIR;
                }
                break;
            case 2182:
                if (str.equals("DJ")) {
                    b7 = TarConstants.LF_FIFO;
                }
                break;
            case 2183:
                if (str.equals("DK")) {
                    b7 = TarConstants.LF_CONTIG;
                }
                break;
            case 2185:
                if (str.equals("DM")) {
                    b7 = 56;
                }
                break;
            case 2187:
                if (str.equals("DO")) {
                    b7 = 57;
                }
                break;
            case 2198:
                if (str.equals("DZ")) {
                    b7 = 58;
                }
                break;
            case 2206:
                if (str.equals("EC")) {
                    b7 = 59;
                }
                break;
            case 2208:
                if (str.equals("EE")) {
                    b7 = 60;
                }
                break;
            case 2210:
                if (str.equals("EG")) {
                    b7 = 61;
                }
                break;
            case 2221:
                if (str.equals("ER")) {
                    b7 = 62;
                }
                break;
            case 2222:
                if (str.equals("ES")) {
                    b7 = Utf8.REPLACEMENT_BYTE;
                }
                break;
            case 2223:
                if (str.equals("ET")) {
                    b7 = 64;
                }
                break;
            case 2243:
                if (str.equals("FI")) {
                    b7 = 65;
                }
                break;
            case 2244:
                if (str.equals("FJ")) {
                    b7 = 66;
                }
                break;
            case 2245:
                if (str.equals("FK")) {
                    b7 = 67;
                }
                break;
            case 2247:
                if (str.equals("FM")) {
                    b7 = 68;
                }
                break;
            case 2249:
                if (str.equals("FO")) {
                    b7 = 69;
                }
                break;
            case 2252:
                if (str.equals("FR")) {
                    b7 = 70;
                }
                break;
            case 2266:
                if (str.equals("GA")) {
                    b7 = 71;
                }
                break;
            case 2267:
                if (str.equals("GB")) {
                    b7 = 72;
                }
                break;
            case 2269:
                if (str.equals("GD")) {
                    b7 = 73;
                }
                break;
            case 2270:
                if (str.equals("GE")) {
                    b7 = 74;
                }
                break;
            case 2271:
                if (str.equals("GF")) {
                    b7 = TarConstants.LF_GNUTYPE_LONGLINK;
                }
                break;
            case 2272:
                if (str.equals("GG")) {
                    b7 = TarConstants.LF_GNUTYPE_LONGNAME;
                }
                break;
            case 2273:
                if (str.equals("GH")) {
                    b7 = 77;
                }
                break;
            case 2274:
                if (str.equals("GI")) {
                    b7 = 78;
                }
                break;
            case 2277:
                if (str.equals("GL")) {
                    b7 = 79;
                }
                break;
            case 2278:
                if (str.equals("GM")) {
                    b7 = 80;
                }
                break;
            case 2279:
                if (str.equals("GN")) {
                    b7 = 81;
                }
                break;
            case 2281:
                if (str.equals("GP")) {
                    b7 = 82;
                }
                break;
            case 2282:
                if (str.equals("GQ")) {
                    b7 = TarConstants.LF_GNUTYPE_SPARSE;
                }
                break;
            case 2283:
                if (str.equals("GR")) {
                    b7 = 84;
                }
                break;
            case 2285:
                if (str.equals("GT")) {
                    b7 = 85;
                }
                break;
            case 2286:
                if (str.equals("GU")) {
                    b7 = 86;
                }
                break;
            case 2288:
                if (str.equals("GW")) {
                    b7 = 87;
                }
                break;
            case 2290:
                if (str.equals("GY")) {
                    b7 = TarConstants.LF_PAX_EXTENDED_HEADER_UC;
                }
                break;
            case 2307:
                if (str.equals("HK")) {
                    b7 = 89;
                }
                break;
            case 2314:
                if (str.equals("HR")) {
                    b7 = 90;
                }
                break;
            case 2316:
                if (str.equals("HT")) {
                    b7 = 91;
                }
                break;
            case 2317:
                if (str.equals("HU")) {
                    b7 = 92;
                }
                break;
            case 2331:
                if (str.equals("ID")) {
                    b7 = 93;
                }
                break;
            case 2332:
                if (str.equals("IE")) {
                    b7 = 94;
                }
                break;
            case 2339:
                if (str.equals("IL")) {
                    b7 = 95;
                }
                break;
            case 2340:
                if (str.equals("IM")) {
                    b7 = 96;
                }
                break;
            case 2341:
                if (str.equals("IN")) {
                    b7 = 97;
                }
                break;
            case 2342:
                if (str.equals("IO")) {
                    b7 = 98;
                }
                break;
            case 2344:
                if (str.equals("IQ")) {
                    b7 = 99;
                }
                break;
            case 2345:
                if (str.equals("IR")) {
                    b7 = 100;
                }
                break;
            case 2346:
                if (str.equals("IS")) {
                    b7 = 101;
                }
                break;
            case 2347:
                if (str.equals("IT")) {
                    b7 = 102;
                }
                break;
            case 2363:
                if (str.equals("JE")) {
                    b7 = TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER;
                }
                break;
            case 2371:
                if (str.equals("JM")) {
                    b7 = 104;
                }
                break;
            case 2373:
                if (str.equals("JO")) {
                    b7 = 105;
                }
                break;
            case 2374:
                if (str.equals("JP")) {
                    b7 = 106;
                }
                break;
            case 2394:
                if (str.equals("KE")) {
                    b7 = 107;
                }
                break;
            case 2396:
                if (str.equals("KG")) {
                    b7 = 108;
                }
                break;
            case 2397:
                if (str.equals("KH")) {
                    b7 = 109;
                }
                break;
            case 2398:
                if (str.equals("KI")) {
                    b7 = 110;
                }
                break;
            case 2402:
                if (str.equals("KM")) {
                    b7 = 111;
                }
                break;
            case 2403:
                if (str.equals("KN")) {
                    b7 = 112;
                }
                break;
            case 2405:
                if (str.equals("KP")) {
                    b7 = 113;
                }
                break;
            case 2407:
                if (str.equals("KR")) {
                    b7 = 114;
                }
                break;
            case 2412:
                if (str.equals("KW")) {
                    b7 = 115;
                }
                break;
            case 2414:
                if (str.equals("KY")) {
                    b7 = 116;
                }
                break;
            case 2415:
                if (str.equals("KZ")) {
                    b7 = 117;
                }
                break;
            case 2421:
                if (str.equals("LA")) {
                    b7 = 118;
                }
                break;
            case 2422:
                if (str.equals("LB")) {
                    b7 = 119;
                }
                break;
            case 2423:
                if (str.equals("LC")) {
                    b7 = TarConstants.LF_PAX_EXTENDED_HEADER_LC;
                }
                break;
            case 2429:
                if (str.equals("LI")) {
                    b7 = 121;
                }
                break;
            case 2431:
                if (str.equals("LK")) {
                    b7 = 122;
                }
                break;
            case 2438:
                if (str.equals("LR")) {
                    b7 = 123;
                }
                break;
            case 2439:
                if (str.equals("LS")) {
                    b7 = 124;
                }
                break;
            case 2440:
                if (str.equals("LT")) {
                    b7 = 125;
                }
                break;
            case 2441:
                if (str.equals("LU")) {
                    b7 = 126;
                }
                break;
            case 2442:
                if (str.equals("LV")) {
                    b7 = 127;
                }
                break;
            case 2445:
                if (str.equals("LY")) {
                    b7 = 128;
                }
                break;
            case 2452:
                if (str.equals("MA")) {
                    b7 = 129;
                }
                break;
            case 2454:
                if (str.equals("MC")) {
                    b7 = 130;
                }
                break;
            case 2455:
                if (str.equals("MD")) {
                    b7 = 131;
                }
                break;
            case 2456:
                if (str.equals("ME")) {
                    b7 = 132;
                }
                break;
            case 2457:
                if (str.equals("MF")) {
                    b7 = 133;
                }
                break;
            case 2458:
                if (str.equals("MG")) {
                    b7 = 134;
                }
                break;
            case 2459:
                if (str.equals("MH")) {
                    b7 = 135;
                }
                break;
            case 2462:
                if (str.equals("MK")) {
                    b7 = 136;
                }
                break;
            case 2463:
                if (str.equals("ML")) {
                    b7 = 137;
                }
                break;
            case 2464:
                if (str.equals("MM")) {
                    b7 = 138;
                }
                break;
            case 2465:
                if (str.equals("MN")) {
                    b7 = 139;
                }
                break;
            case 2466:
                if (str.equals("MO")) {
                    b7 = 140;
                }
                break;
            case 2467:
                if (str.equals("MP")) {
                    b7 = 141;
                }
                break;
            case 2468:
                if (str.equals("MQ")) {
                    b7 = 142;
                }
                break;
            case 2469:
                if (str.equals("MR")) {
                    b7 = 143;
                }
                break;
            case 2470:
                if (str.equals("MS")) {
                    b7 = 144;
                }
                break;
            case 2471:
                if (str.equals("MT")) {
                    b7 = 145;
                }
                break;
            case 2472:
                if (str.equals("MU")) {
                    b7 = 146;
                }
                break;
            case 2473:
                if (str.equals("MV")) {
                    b7 = 147;
                }
                break;
            case 2474:
                if (str.equals("MW")) {
                    b7 = 148;
                }
                break;
            case 2475:
                if (str.equals("MX")) {
                    b7 = 149;
                }
                break;
            case 2476:
                if (str.equals("MY")) {
                    b7 = 150;
                }
                break;
            case 2477:
                if (str.equals("MZ")) {
                    b7 = 151;
                }
                break;
            case 2483:
                if (str.equals("NA")) {
                    b7 = 152;
                }
                break;
            case 2485:
                if (str.equals("NC")) {
                    b7 = 153;
                }
                break;
            case 2487:
                if (str.equals("NE")) {
                    b7 = 154;
                }
                break;
            case 2489:
                if (str.equals("NG")) {
                    b7 = 155;
                }
                break;
            case 2491:
                if (str.equals("NI")) {
                    b7 = 156;
                }
                break;
            case 2494:
                if (str.equals("NL")) {
                    b7 = 157;
                }
                break;
            case 2497:
                if (str.equals("NO")) {
                    b7 = 158;
                }
                break;
            case 2498:
                if (str.equals("NP")) {
                    b7 = 159;
                }
                break;
            case 2500:
                if (str.equals("NR")) {
                    b7 = 160;
                }
                break;
            case SendBroadcastHelper.API_ERR_PUSH_SERVER_LINK_NOT_IN_COMMUNITY /* 2503 */:
                if (str.equals("NU")) {
                    b7 = 161;
                }
                break;
            case 2508:
                if (str.equals("NZ")) {
                    b7 = 162;
                }
                break;
            case 2526:
                if (str.equals("OM")) {
                    b7 = 163;
                }
                break;
            case 2545:
                if (str.equals("PA")) {
                    b7 = 164;
                }
                break;
            case 2549:
                if (str.equals("PE")) {
                    b7 = 165;
                }
                break;
            case 2550:
                if (str.equals("PF")) {
                    b7 = 166;
                }
                break;
            case 2551:
                if (str.equals("PG")) {
                    b7 = 167;
                }
                break;
            case 2552:
                if (str.equals("PH")) {
                    b7 = 168;
                }
                break;
            case 2555:
                if (str.equals("PK")) {
                    b7 = 169;
                }
                break;
            case 2556:
                if (str.equals("PL")) {
                    b7 = 170;
                }
                break;
            case 2557:
                if (str.equals("PM")) {
                    b7 = 171;
                }
                break;
            case 2562:
                if (str.equals("PR")) {
                    b7 = 172;
                }
                break;
            case 2563:
                if (str.equals("PS")) {
                    b7 = 173;
                }
                break;
            case 2564:
                if (str.equals("PT")) {
                    b7 = 174;
                }
                break;
            case 2567:
                if (str.equals("PW")) {
                    b7 = 175;
                }
                break;
            case 2576:
                if (str.equals("QA")) {
                    b7 = 176;
                }
                break;
            case 2611:
                if (str.equals("RE")) {
                    b7 = 177;
                }
                break;
            case 2621:
                if (str.equals("RO")) {
                    b7 = 178;
                }
                break;
            case 2625:
                if (str.equals("RS")) {
                    b7 = 179;
                }
                break;
            case 2627:
                if (str.equals("RU")) {
                    b7 = 180;
                }
                break;
            case 2629:
                if (str.equals("RW")) {
                    b7 = 181;
                }
                break;
            case 2638:
                if (str.equals("SA")) {
                    b7 = 182;
                }
                break;
            case 2639:
                if (str.equals("SB")) {
                    b7 = 183;
                }
                break;
            case 2640:
                if (str.equals("SC")) {
                    b7 = 184;
                }
                break;
            case 2641:
                if (str.equals("SD")) {
                    b7 = 185;
                }
                break;
            case 2642:
                if (str.equals("SE")) {
                    b7 = 186;
                }
                break;
            case 2644:
                if (str.equals("SG")) {
                    b7 = 187;
                }
                break;
            case 2645:
                if (str.equals("SH")) {
                    b7 = 188;
                }
                break;
            case 2646:
                if (str.equals("SI")) {
                    b7 = 189;
                }
                break;
            case 2648:
                if (str.equals("SK")) {
                    b7 = 190;
                }
                break;
            case 2649:
                if (str.equals("SL")) {
                    b7 = 191;
                }
                break;
            case 2650:
                if (str.equals("SM")) {
                    b7 = 192;
                }
                break;
            case 2651:
                if (str.equals("SN")) {
                    b7 = 193;
                }
                break;
            case 2652:
                if (str.equals("SO")) {
                    b7 = 194;
                }
                break;
            case 2655:
                if (str.equals("SR")) {
                    b7 = 195;
                }
                break;
            case 2656:
                if (str.equals("SS")) {
                    b7 = 196;
                }
                break;
            case 2657:
                if (str.equals("ST")) {
                    b7 = 197;
                }
                break;
            case 2659:
                if (str.equals("SV")) {
                    b7 = 198;
                }
                break;
            case 2661:
                if (str.equals("SX")) {
                    b7 = 199;
                }
                break;
            case 2662:
                if (str.equals("SY")) {
                    b7 = 200;
                }
                break;
            case 2663:
                if (str.equals("SZ")) {
                    b7 = 201;
                }
                break;
            case 2671:
                if (str.equals("TC")) {
                    b7 = 202;
                }
                break;
            case 2672:
                if (str.equals("TD")) {
                    b7 = 203;
                }
                break;
            case 2675:
                if (str.equals("TG")) {
                    b7 = 204;
                }
                break;
            case 2676:
                if (str.equals("TH")) {
                    b7 = 205;
                }
                break;
            case 2678:
                if (str.equals("TJ")) {
                    b7 = 206;
                }
                break;
            case 2679:
                if (str.equals("TK")) {
                    b7 = 207;
                }
                break;
            case 2680:
                if (str.equals("TL")) {
                    b7 = 208;
                }
                break;
            case 2681:
                if (str.equals("TM")) {
                    b7 = 209;
                }
                break;
            case 2682:
                if (str.equals("TN")) {
                    b7 = 210;
                }
                break;
            case 2683:
                if (str.equals("TO")) {
                    b7 = 211;
                }
                break;
            case 2686:
                if (str.equals("TR")) {
                    b7 = 212;
                }
                break;
            case 2688:
                if (str.equals("TT")) {
                    b7 = 213;
                }
                break;
            case 2690:
                if (str.equals("TV")) {
                    b7 = 214;
                }
                break;
            case 2691:
                if (str.equals("TW")) {
                    b7 = 215;
                }
                break;
            case 2694:
                if (str.equals("TZ")) {
                    b7 = 216;
                }
                break;
            case 2700:
                if (str.equals("UA")) {
                    b7 = 217;
                }
                break;
            case 2706:
                if (str.equals("UG")) {
                    b7 = 218;
                }
                break;
            case 2718:
                if (str.equals("US")) {
                    b7 = 219;
                }
                break;
            case 2724:
                if (str.equals("UY")) {
                    b7 = 220;
                }
                break;
            case 2725:
                if (str.equals("UZ")) {
                    b7 = 221;
                }
                break;
            case 2731:
                if (str.equals("VA")) {
                    b7 = 222;
                }
                break;
            case 2733:
                if (str.equals("VC")) {
                    b7 = 223;
                }
                break;
            case 2735:
                if (str.equals("VE")) {
                    b7 = 224;
                }
                break;
            case 2737:
                if (str.equals("VG")) {
                    b7 = 225;
                }
                break;
            case 2739:
                if (str.equals("VI")) {
                    b7 = 226;
                }
                break;
            case 2744:
                if (str.equals("VN")) {
                    b7 = 227;
                }
                break;
            case 2751:
                if (str.equals("VU")) {
                    b7 = 228;
                }
                break;
            case 2767:
                if (str.equals("WF")) {
                    b7 = 229;
                }
                break;
            case 2780:
                if (str.equals("WS")) {
                    b7 = 230;
                }
                break;
            case 2803:
                if (str.equals("XK")) {
                    b7 = 231;
                }
                break;
            case 2828:
                if (str.equals("YE")) {
                    b7 = 232;
                }
                break;
            case 2843:
                if (str.equals("YT")) {
                    b7 = 233;
                }
                break;
            case 2855:
                if (str.equals("ZA")) {
                    b7 = 234;
                }
                break;
            case 2867:
                if (str.equals("ZM")) {
                    b7 = 235;
                }
                break;
            case 2877:
                if (str.equals("ZW")) {
                    b7 = 236;
                }
                break;
        }
        switch (b7) {
            case 0:
            case 26:
            case 29:
            case 73:
            case 79:
            case 112:
            case 116:
            case 120:
            case 223:
                return new int[]{1, 2, 0, 0, 2, 2};
            case 1:
                return new int[]{1, 4, 4, 4, 4, 0};
            case 2:
            case 80:
                return new int[]{4, 3, 3, 4, 2, 2};
            case 3:
                return new int[]{2, 4, 1, 2, 2, 2};
            case 4:
                return new int[]{0, 2, 0, 3, 2, 2};
            case 5:
            case 231:
                return new int[]{1, 1, 1, 1, 2, 2};
            case 6:
                return new int[]{2, 3, 2, 3, 2, 2};
            case 7:
                return new int[]{4, 4, 3, 2, 2, 2};
            case 8:
            case 62:
            case 188:
                return new int[]{4, 2, 2, 2, 2, 2};
            case 9:
            case 108:
            case 210:
            case 220:
                return new int[]{2, 1, 1, 1, 2, 2};
            case 10:
                return new int[]{2, 2, 3, 3, 2, 2};
            case 11:
                return new int[]{1, 0, 1, 1, 0, 0};
            case 12:
                return new int[]{0, 1, 1, 1, 2, 0};
            case 13:
                return new int[]{1, 3, 4, 4, 2, 2};
            case 14:
            case 121:
            case 144:
            case 171:
            case 192:
                return new int[]{0, 2, 2, 2, 2, 2};
            case 15:
            case 75:
            case 128:
            case 169:
            case 194:
            case 211:
                return new int[]{3, 2, 3, 3, 2, 2};
            case 16:
                return new int[]{1, 2, 1, 1, 2, 2};
            case 17:
            case 56:
            case 69:
            case 78:
                return new int[]{0, 2, 0, 0, 2, 2};
            case 18:
                return new int[]{2, 1, 3, 3, 2, 2};
            case 19:
                return new int[]{0, 1, 4, 4, 3, 2};
            case 20:
                return new int[]{4, 3, 4, 3, 2, 2};
            case 21:
            case 145:
            case 190:
                return new int[]{0, 0, 0, 0, 1, 2};
            case 22:
                return new int[]{1, 2, 1, 3, 4, 2};
            case 23:
            case 91:
            case 111:
            case 134:
            case Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR /* 154 */:
            case 185:
            case 203:
            case 224:
            case 232:
                return new int[]{4, 4, 4, 4, 2, 2};
            case 24:
                return new int[]{4, 4, 3, 3, 2, 2};
            case 25:
            case 50:
            case 222:
                return new int[]{1, 2, 2, 2, 2, 2};
            case 27:
            case 49:
                return new int[]{2, 2, 0, 0, 2, 2};
            case 28:
                return new int[]{1, 2, 3, 2, 2, 2};
            case 30:
                return new int[]{4, 4, 2, 2, 2, 2};
            case 31:
                return new int[]{3, 1, 3, 2, 2, 2};
            case 32:
                return new int[]{3, 2, 1, 0, 2, 2};
            case 33:
                return new int[]{0, 1, 2, 3, 2, 2};
            case 34:
                return new int[]{2, 4, 2, 1, 2, 2};
            case 35:
                return new int[]{0, 2, 2, 2, 3, 2};
            case 36:
                return new int[]{4, 2, 3, 2, 2, 2};
            case 37:
            case 110:
                return new int[]{4, 2, 4, 2, 2, 2};
            case 38:
            case 61:
            case 87:
                return new int[]{3, 4, 3, 3, 2, 2};
            case 39:
                return new int[]{0, 0, 0, 1, 0, 2};
            case 40:
            case 58:
            case 123:
                return new int[]{3, 4, 4, 4, 2, 2};
            case 41:
            case 166:
                return new int[]{2, 2, 2, 1, 2, 2};
            case 42:
            case 95:
                return new int[]{1, 2, 2, 2, 3, 2};
            case 43:
                return new int[]{3, 3, 3, 3, 2, 2};
            case 44:
                return new int[]{2, 0, 1, 1, 3, 2};
            case 45:
                return new int[]{2, 3, 4, 3, 2, 2};
            case 46:
                return new int[]{2, 3, 4, 4, 2, 2};
            case 47:
            case 54:
            case 200:
            case ComposerKt.referenceKey /* 206 */:
            case 208:
                return new int[]{4, 3, 4, 4, 2, 2};
            case 48:
                return new int[]{2, 1, 0, 0, 2, 2};
            case 51:
            case 115:
                return new int[]{1, 0, 0, 0, 0, 2};
            case 52:
            case 158:
                return new int[]{0, 0, 2, 0, 1, 2};
            case 53:
                return new int[]{0, 1, 2, 2, 2, 3};
            case 55:
                return new int[]{0, 0, 3, 2, 0, 2};
            case 57:
                return new int[]{3, 4, 4, 4, 4, 2};
            case 59:
                return new int[]{2, 3, 2, 1, 2, 2};
            case 60:
            case 101:
            case 127:
            case 174:
            case 186:
            case ThirdPartyAccountBaseFragment.API_ERR_EMAIL_TAKEN /* 215 */:
                return new int[]{0, 0, 0, 0, 0, 2};
            case 63:
            case 94:
                return new int[]{0, 1, 1, 1, 2, 2};
            case 64:
                return new int[]{4, 3, 3, 1, 2, 2};
            case 65:
                return new int[]{0, 0, 0, 3, 0, 2};
            case 66:
                return new int[]{3, 1, 2, 2, 2, 2};
            case 67:
            case 107:
            case 113:
                return new int[]{3, 2, 2, 2, 2, 2};
            case 68:
                return new int[]{4, 2, 4, 1, 2, 2};
            case 70:
                return new int[]{1, 2, 3, 1, 0, 2};
            case 71:
            case ComposerKt.providerMapsKey /* 204 */:
                return new int[]{3, 4, 1, 0, 2, 2};
            case 72:
                return new int[]{0, 0, 1, 1, 1, 1};
            case 74:
                return new int[]{1, 1, 1, 2, 2, 2};
            case 76:
            case 226:
                return new int[]{0, 2, 0, 1, 2, 2};
            case 77:
            case Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT /* 152 */:
            case 228:
                return new int[]{3, 3, 3, 2, 2, 2};
            case 81:
                return new int[]{4, 3, 4, 2, 2, 2};
            case 82:
            case ScriptIntrinsicBLAS.RIGHT /* 142 */:
                return new int[]{2, 1, 2, 3, 2, 2};
            case 83:
                return new int[]{4, 2, 1, 4, 2, 2};
            case 84:
            case 90:
            case 189:
                return new int[]{1, 0, 0, 0, 1, 2};
            case 85:
                return new int[]{2, 3, 2, 2, 2, 2};
            case 86:
            case 165:
                return new int[]{1, 2, 4, 4, 4, 2};
            case 88:
                return new int[]{3, 2, 2, 1, 2, 2};
            case 89:
                return new int[]{0, 1, 2, 3, 2, 0};
            case 92:
                return new int[]{0, 0, 0, 1, 3, 2};
            case 93:
                return new int[]{3, 1, 2, 2, 3, 2};
            case 96:
            case 217:
                return new int[]{0, 2, 1, 1, 2, 2};
            case 97:
                return new int[]{1, 1, 3, 2, 3, 3};
            case 98:
            case 135:
            case 214:
            case 229:
                return new int[]{4, 2, 2, 4, 2, 2};
            case 99:
                return new int[]{3, 2, 2, 3, 2, 2};
            case 100:
                return new int[]{3, 0, 1, 1, 4, 1};
            case 102:
                return new int[]{0, 0, 0, 1, 1, 2};
            case 103:
            case 233:
                return new int[]{4, 2, 2, 3, 2, 2};
            case 104:
                return new int[]{2, 4, 3, 2, 2, 2};
            case 105:
                return new int[]{2, 1, 1, 2, 2, 2};
            case 106:
                return new int[]{0, 1, 1, 2, 2, 4};
            case 109:
                return new int[]{2, 1, 4, 2, 2, 2};
            case 114:
                return new int[]{0, 1, 1, 3, 4, 4};
            case 117:
                return new int[]{2, 1, 2, 2, 2, 2};
            case 118:
                return new int[]{1, 2, 1, 3, 2, 2};
            case 119:
                return new int[]{3, 3, 2, 4, 2, 2};
            case 122:
                return new int[]{3, 1, 3, 3, 4, 2};
            case 124:
                return new int[]{3, 3, 2, 2, 2, 2};
            case 125:
                return new int[]{0, 0, 0, 0, 2, 2};
            case 126:
                return new int[]{1, 0, 3, 2, 1, 4};
            case 129:
                return new int[]{3, 3, 1, 1, 2, 2};
            case 130:
                return new int[]{0, 2, 2, 0, 2, 2};
            case 131:
            case 179:
                return new int[]{1, 0, 0, 0, 2, 2};
            case 132:
                return new int[]{2, 0, 0, 1, 2, 2};
            case 133:
            case 177:
                return new int[]{1, 2, 1, 2, 2, 2};
            case WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST /* 136 */:
                return new int[]{1, 0, 0, 1, 3, 2};
            case WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE /* 137 */:
            case 167:
                return new int[]{4, 3, 3, 2, 2, 2};
            case 138:
                return new int[]{2, 4, 2, 3, 2, 2};
            case WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE /* 139 */:
                return new int[]{2, 0, 1, 2, 2, 2};
            case 140:
            case ScriptIntrinsicBLAS.LEFT /* 141 */:
                return new int[]{0, 2, 4, 4, 2, 2};
            case 143:
            case 236:
                return new int[]{4, 2, 4, 4, 2, 2};
            case 146:
                return new int[]{3, 1, 1, 2, 2, 2};
            case 147:
                return new int[]{3, 4, 1, 4, 2, 2};
            case TarConstants.CHKSUM_OFFSET /* 148 */:
                return new int[]{4, 2, 3, 3, 2, 2};
            case 149:
                return new int[]{2, 4, 3, 4, 2, 2};
            case TextFieldImplKt.AnimationDuration /* 150 */:
                return new int[]{1, 0, 3, 1, 3, 2};
            case Constants.ERR_PUBLISH_STREAM_CDN_ERROR /* 151 */:
                return new int[]{3, 1, 2, 1, 2, 2};
            case Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED /* 153 */:
                return new int[]{3, 3, 4, 4, 2, 2};
            case 155:
                return new int[]{3, 4, 2, 1, 2, 2};
            case Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED /* 156 */:
            case 164:
            case 198:
                return new int[]{2, 3, 3, 3, 2, 2};
            case Constants.ERR_MODULE_NOT_FOUND /* 157 */:
                return new int[]{0, 2, 2, 3, 0, 3};
            case 159:
                return new int[]{2, 2, 4, 3, 2, 2};
            case 160:
            case 161:
                return new int[]{4, 2, 2, 1, 2, 2};
            case 162:
            case 170:
                return new int[]{1, 1, 2, 2, 4, 2};
            case 163:
                return new int[]{2, 3, 1, 3, 4, 2};
            case 168:
                return new int[]{2, 1, 3, 3, 3, 0};
            case 172:
                return new int[]{2, 0, 2, 1, 2, 1};
            case 173:
                return new int[]{3, 4, 1, 2, 2, 2};
            case 175:
                return new int[]{2, 2, 4, 1, 2, 2};
            case 176:
                return new int[]{2, 4, 4, 4, 4, 2};
            case 178:
                return new int[]{0, 0, 1, 2, 1, 2};
            case 180:
                return new int[]{1, 0, 0, 0, 4, 3};
            case 181:
                return new int[]{3, 4, 2, 0, 2, 2};
            case 182:
                return new int[]{3, 1, 1, 1, 2, 2};
            case 183:
                return new int[]{4, 2, 4, 3, 2, 2};
            case 184:
            case 209:
                return new int[]{4, 2, 1, 1, 2, 2};
            case 187:
                return new int[]{1, 1, 2, 2, 2, 1};
            case 191:
            case 218:
                return new int[]{3, 3, 4, 3, 2, 2};
            case 193:
                return new int[]{4, 4, 4, 3, 2, 2};
            case 195:
                return new int[]{2, 4, 3, 0, 2, 2};
            case 196:
                return new int[]{4, 3, 2, 3, 2, 2};
            case 197:
                return new int[]{2, 2, 1, 2, 2, 2};
            case 199:
            case 202:
                return new int[]{1, 2, 1, 0, 2, 2};
            case 201:
                return new int[]{3, 3, 3, 4, 2, 2};
            case ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER /* 205 */:
                return new int[]{0, 2, 2, 3, 3, 4};
            case 207:
                return new int[]{2, 2, 2, 4, 2, 2};
            case 212:
                return new int[]{1, 1, 0, 0, 2, 2};
            case ThirdPartyAccountBaseFragment.API_ERR_EMAIL /* 213 */:
                return new int[]{1, 4, 1, 3, 2, 2};
            case 216:
                return new int[]{3, 4, 3, 2, 2, 2};
            case 219:
                return new int[]{1, 0, 2, 2, 3, 1};
            case 221:
                return new int[]{2, 2, 3, 4, 2, 2};
            case 225:
                return new int[]{2, 2, 1, 1, 2, 2};
            case 227:
                return new int[]{0, 3, 3, 4, 2, 2};
            case ApiService.API_ERR_USER_NOT_IN_COMMUNITY /* 230 */:
                return new int[]{3, 1, 3, 1, 2, 2};
            case 234:
                return new int[]{3, 2, 2, 1, 1, 2};
            case 235:
                return new int[]{3, 3, 4, 2, 2, 2};
            default:
                return new int[]{2, 2, 2, 2, 2, 2};
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void o(int i10) {
        int i11 = this.networkType;
        if (i11 == 0 || this.resetOnNetworkTypeChange) {
            if (this.networkTypeOverrideSet) {
                i10 = this.networkTypeOverride;
            }
            if (i11 == i10) {
                return;
            }
            this.networkType = i10;
            if (i10 != 1 && i10 != 0 && i10 != 8) {
                this.bitrateEstimate = k(i10);
                long jElapsedRealtime = this.clock.elapsedRealtime();
                n(this.streamCount > 0 ? (int) (jElapsedRealtime - this.sampleStartTimeMs) : 0, this.sampleBytesTransferred, this.bitrateEstimate);
                this.sampleStartTimeMs = jElapsedRealtime;
                this.sampleBytesTransferred = 0L;
                this.totalBytesTransferred = 0L;
                this.totalElapsedTimeMs = 0L;
                this.slidingPercentile.i();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.m0
    public synchronized void a(k kVar, o oVar, boolean z6) {
        try {
            if (m(oVar, z6)) {
                com.google.android.exoplayer2.util.a.g(this.streamCount > 0);
                long jElapsedRealtime = this.clock.elapsedRealtime();
                int i10 = (int) (jElapsedRealtime - this.sampleStartTimeMs);
                this.totalElapsedTimeMs += (long) i10;
                long j6 = this.totalBytesTransferred;
                long j10 = this.sampleBytesTransferred;
                this.totalBytesTransferred = j6 + j10;
                if (i10 > 0) {
                    this.slidingPercentile.c((int) Math.sqrt(j10), (j10 * 8000.0f) / i10);
                    if (this.totalElapsedTimeMs >= 2000 || this.totalBytesTransferred >= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                        this.bitrateEstimate = (long) this.slidingPercentile.f(0.5f);
                    }
                    n(i10, this.sampleBytesTransferred, this.bitrateEstimate);
                    this.sampleStartTimeMs = jElapsedRealtime;
                    this.sampleBytesTransferred = 0L;
                }
                this.streamCount--;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.m0
    public synchronized void b(k kVar, o oVar, boolean z6, int i10) {
        if (m(oVar, z6)) {
            this.sampleBytesTransferred += (long) i10;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public m0 d() {
        return this;
    }

    @Override // com.google.android.exoplayer2.upstream.m0
    public synchronized void e(k kVar, o oVar, boolean z6) {
        try {
            if (m(oVar, z6)) {
                if (this.streamCount == 0) {
                    this.sampleStartTimeMs = this.clock.elapsedRealtime();
                }
                this.streamCount++;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.m0
    public void g(k kVar, o oVar, boolean z6) {
    }

    @Deprecated
    public r() {
        this(null, com.google.common.collect.b0.m(), 2000, com.google.android.exoplayer2.util.d.DEFAULT, false);
    }

    private long k(int i10) {
        Long l = this.initialBitrateEstimates.get(Integer.valueOf(i10));
        if (l == null) {
            l = this.initialBitrateEstimates.get(0);
        }
        if (l == null) {
            l = 1000000L;
        }
        return l.longValue();
    }

    public static synchronized r l(Context context) {
        try {
            if (singletonInstance == null) {
                singletonInstance = new b(context).a();
            }
        } catch (Throwable th) {
            throw th;
        }
        return singletonInstance;
    }

    private static boolean m(o oVar, boolean z6) {
        return z6 && !oVar.d(8);
    }

    private void n(int i10, long j6, long j10) {
        if (i10 == 0 && j6 == 0 && j10 == this.lastReportedBitrateEstimate) {
            return;
        }
        this.lastReportedBitrateEstimate = j10;
        this.eventDispatcher.c(i10, j6, j10);
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public void f(e.a aVar) {
        this.eventDispatcher.e(aVar);
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public void c(Handler handler, e.a aVar) {
        com.google.android.exoplayer2.util.a.e(handler);
        com.google.android.exoplayer2.util.a.e(aVar);
        this.eventDispatcher.b(handler, aVar);
    }

    private r(@Nullable Context context, Map<Integer, Long> map, int i10, com.google.android.exoplayer2.util.d dVar, boolean z6) {
        this.initialBitrateEstimates = com.google.common.collect.b0.f(map);
        this.eventDispatcher = new e.a.C0184a();
        this.slidingPercentile = new k0(i10);
        this.clock = dVar;
        this.resetOnNetworkTypeChange = z6;
        if (context != null) {
            com.google.android.exoplayer2.util.a0 a0VarD = com.google.android.exoplayer2.util.a0.d(context);
            int iF = a0VarD.f();
            this.networkType = iF;
            this.bitrateEstimate = k(iF);
            a0VarD.i(new com.google.android.exoplayer2.util.a0.c() { // from class: com.google.android.exoplayer2.upstream.q
                @Override // com.google.android.exoplayer2.util.a0.c
                public final void a(int i11) {
                    this.f1341a.o(i11);
                }
            });
            return;
        }
        this.networkType = 0;
        this.bitrateEstimate = k(0);
    }
}
