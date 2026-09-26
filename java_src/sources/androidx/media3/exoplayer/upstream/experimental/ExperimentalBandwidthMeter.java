package androidx.media3.exoplayer.upstream.experimental;

import android.content.Context;
import android.os.Handler;
import androidx.compose.material.TextFieldImplKt;
import androidx.compose.runtime.ComposerKt;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.TimeToFirstByteEstimator;
import androidx.renderscript.ScriptIntrinsicBLAS;
import com.google.common.base.c;
import com.google.common.collect.a0;
import com.google.common.collect.b0;
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

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class ExperimentalBandwidthMeter implements BandwidthMeter, TransferListener {
    private static final int COUNTRY_GROUP_INDEX_2G = 1;
    private static final int COUNTRY_GROUP_INDEX_3G = 2;
    private static final int COUNTRY_GROUP_INDEX_4G = 3;
    private static final int COUNTRY_GROUP_INDEX_5G_NSA = 4;
    private static final int COUNTRY_GROUP_INDEX_5G_SA = 5;
    private static final int COUNTRY_GROUP_INDEX_WIFI = 0;
    public static final long DEFAULT_INITIAL_BITRATE_ESTIMATE = 1000000;
    public static final float DEFAULT_TIME_TO_FIRST_BYTE_PERCENTILE = 0.5f;
    public static final int DEFAULT_TIME_TO_FIRST_BYTE_SAMPLES = 20;
    private final BandwidthEstimator bandwidthEstimator;
    private long initialBitrateEstimate;
    private final b0<Integer, Long> initialBitrateEstimates;
    private int networkType;
    private int networkTypeOverride;
    private boolean networkTypeOverrideSet;
    private final boolean resetOnNetworkTypeChange;
    private final TimeToFirstByteEstimator timeToFirstByteEstimator;
    public static final a0<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI = a0.B(4400000L, 3200000L, 2300000L, 1600000L, 810000L);
    public static final a0<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_2G = a0.B(1400000L, 990000L, 730000L, 510000L, 230000L);
    public static final a0<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_3G = a0.B(2100000L, 1400000L, 1000000L, 890000L, 640000L);
    public static final a0<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_4G = a0.B(2600000L, 1700000L, 1300000L, 1000000L, 700000L);
    public static final a0<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA = a0.B(5700000L, 3700000L, 2300000L, 1700000L, 990000L);
    public static final a0<Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA = a0.B(2800000L, 1800000L, 1400000L, 1100000L, 870000L);

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
            case 2098:
                if (str.equals("AS")) {
                    b7 = 9;
                }
                break;
            case 2099:
                if (str.equals("AT")) {
                    b7 = 10;
                }
                break;
            case 2100:
                if (str.equals("AU")) {
                    b7 = c.VT;
                }
                break;
            case 2102:
                if (str.equals("AW")) {
                    b7 = c.FF;
                }
                break;
            case 2103:
                if (str.equals("AX")) {
                    b7 = c.CR;
                }
                break;
            case 2105:
                if (str.equals("AZ")) {
                    b7 = c.SO;
                }
                break;
            case 2111:
                if (str.equals("BA")) {
                    b7 = c.SI;
                }
                break;
            case 2112:
                if (str.equals("BB")) {
                    b7 = c.DLE;
                }
                break;
            case 2114:
                if (str.equals("BD")) {
                    b7 = 17;
                }
                break;
            case 2115:
                if (str.equals("BE")) {
                    b7 = c.DC2;
                }
                break;
            case 2116:
                if (str.equals("BF")) {
                    b7 = 19;
                }
                break;
            case 2117:
                if (str.equals("BG")) {
                    b7 = c.DC4;
                }
                break;
            case 2118:
                if (str.equals("BH")) {
                    b7 = c.NAK;
                }
                break;
            case 2119:
                if (str.equals("BI")) {
                    b7 = c.SYN;
                }
                break;
            case 2120:
                if (str.equals("BJ")) {
                    b7 = c.ETB;
                }
                break;
            case 2122:
                if (str.equals("BL")) {
                    b7 = c.CAN;
                }
                break;
            case 2123:
                if (str.equals("BM")) {
                    b7 = c.EM;
                }
                break;
            case 2124:
                if (str.equals("BN")) {
                    b7 = c.SUB;
                }
                break;
            case 2125:
                if (str.equals("BO")) {
                    b7 = c.ESC;
                }
                break;
            case 2127:
                if (str.equals("BQ")) {
                    b7 = c.FS;
                }
                break;
            case 2128:
                if (str.equals("BR")) {
                    b7 = c.GS;
                }
                break;
            case 2129:
                if (str.equals("BS")) {
                    b7 = c.RS;
                }
                break;
            case 2130:
                if (str.equals("BT")) {
                    b7 = c.US;
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
            case 2247:
                if (str.equals("FM")) {
                    b7 = 67;
                }
                break;
            case 2249:
                if (str.equals("FO")) {
                    b7 = 68;
                }
                break;
            case 2252:
                if (str.equals("FR")) {
                    b7 = 69;
                }
                break;
            case 2266:
                if (str.equals("GA")) {
                    b7 = 70;
                }
                break;
            case 2267:
                if (str.equals("GB")) {
                    b7 = 71;
                }
                break;
            case 2269:
                if (str.equals("GD")) {
                    b7 = 72;
                }
                break;
            case 2270:
                if (str.equals("GE")) {
                    b7 = 73;
                }
                break;
            case 2271:
                if (str.equals("GF")) {
                    b7 = 74;
                }
                break;
            case 2272:
                if (str.equals("GG")) {
                    b7 = TarConstants.LF_GNUTYPE_LONGLINK;
                }
                break;
            case 2273:
                if (str.equals("GH")) {
                    b7 = TarConstants.LF_GNUTYPE_LONGNAME;
                }
                break;
            case 2274:
                if (str.equals("GI")) {
                    b7 = 77;
                }
                break;
            case 2277:
                if (str.equals("GL")) {
                    b7 = 78;
                }
                break;
            case 2278:
                if (str.equals("GM")) {
                    b7 = 79;
                }
                break;
            case 2279:
                if (str.equals("GN")) {
                    b7 = 80;
                }
                break;
            case 2281:
                if (str.equals("GP")) {
                    b7 = 81;
                }
                break;
            case 2282:
                if (str.equals("GQ")) {
                    b7 = 82;
                }
                break;
            case 2283:
                if (str.equals("GR")) {
                    b7 = TarConstants.LF_GNUTYPE_SPARSE;
                }
                break;
            case 2285:
                if (str.equals("GT")) {
                    b7 = 84;
                }
                break;
            case 2286:
                if (str.equals("GU")) {
                    b7 = 85;
                }
                break;
            case 2288:
                if (str.equals("GW")) {
                    b7 = 86;
                }
                break;
            case 2290:
                if (str.equals("GY")) {
                    b7 = 87;
                }
                break;
            case 2307:
                if (str.equals("HK")) {
                    b7 = TarConstants.LF_PAX_EXTENDED_HEADER_UC;
                }
                break;
            case 2310:
                if (str.equals("HN")) {
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
            case 2407:
                if (str.equals("KR")) {
                    b7 = 113;
                }
                break;
            case 2412:
                if (str.equals("KW")) {
                    b7 = 114;
                }
                break;
            case 2414:
                if (str.equals("KY")) {
                    b7 = 115;
                }
                break;
            case 2415:
                if (str.equals("KZ")) {
                    b7 = 116;
                }
                break;
            case 2421:
                if (str.equals("LA")) {
                    b7 = 117;
                }
                break;
            case 2422:
                if (str.equals("LB")) {
                    b7 = 118;
                }
                break;
            case 2423:
                if (str.equals("LC")) {
                    b7 = 119;
                }
                break;
            case 2429:
                if (str.equals("LI")) {
                    b7 = TarConstants.LF_PAX_EXTENDED_HEADER_LC;
                }
                break;
            case 2431:
                if (str.equals("LK")) {
                    b7 = 121;
                }
                break;
            case 2438:
                if (str.equals("LR")) {
                    b7 = 122;
                }
                break;
            case 2439:
                if (str.equals("LS")) {
                    b7 = 123;
                }
                break;
            case 2440:
                if (str.equals("LT")) {
                    b7 = 124;
                }
                break;
            case 2441:
                if (str.equals("LU")) {
                    b7 = 125;
                }
                break;
            case 2442:
                if (str.equals("LV")) {
                    b7 = 126;
                }
                break;
            case 2445:
                if (str.equals("LY")) {
                    b7 = 127;
                }
                break;
            case 2452:
                if (str.equals("MA")) {
                    b7 = 128;
                }
                break;
            case 2454:
                if (str.equals("MC")) {
                    b7 = 129;
                }
                break;
            case 2455:
                if (str.equals("MD")) {
                    b7 = 130;
                }
                break;
            case 2456:
                if (str.equals("ME")) {
                    b7 = 131;
                }
                break;
            case 2457:
                if (str.equals("MF")) {
                    b7 = 132;
                }
                break;
            case 2458:
                if (str.equals("MG")) {
                    b7 = 133;
                }
                break;
            case 2459:
                if (str.equals("MH")) {
                    b7 = 134;
                }
                break;
            case 2462:
                if (str.equals("MK")) {
                    b7 = 135;
                }
                break;
            case 2463:
                if (str.equals("ML")) {
                    b7 = 136;
                }
                break;
            case 2464:
                if (str.equals("MM")) {
                    b7 = 137;
                }
                break;
            case 2465:
                if (str.equals("MN")) {
                    b7 = 138;
                }
                break;
            case 2466:
                if (str.equals("MO")) {
                    b7 = 139;
                }
                break;
            case 2467:
                if (str.equals("MP")) {
                    b7 = 140;
                }
                break;
            case 2468:
                if (str.equals("MQ")) {
                    b7 = 141;
                }
                break;
            case 2469:
                if (str.equals("MR")) {
                    b7 = 142;
                }
                break;
            case 2470:
                if (str.equals("MS")) {
                    b7 = 143;
                }
                break;
            case 2471:
                if (str.equals("MT")) {
                    b7 = 144;
                }
                break;
            case 2472:
                if (str.equals("MU")) {
                    b7 = 145;
                }
                break;
            case 2473:
                if (str.equals("MV")) {
                    b7 = 146;
                }
                break;
            case 2474:
                if (str.equals("MW")) {
                    b7 = 147;
                }
                break;
            case 2475:
                if (str.equals("MX")) {
                    b7 = 148;
                }
                break;
            case 2476:
                if (str.equals("MY")) {
                    b7 = 149;
                }
                break;
            case 2477:
                if (str.equals("MZ")) {
                    b7 = 150;
                }
                break;
            case 2483:
                if (str.equals("NA")) {
                    b7 = 151;
                }
                break;
            case 2485:
                if (str.equals("NC")) {
                    b7 = 152;
                }
                break;
            case 2487:
                if (str.equals("NE")) {
                    b7 = 153;
                }
                break;
            case 2489:
                if (str.equals("NG")) {
                    b7 = 154;
                }
                break;
            case 2491:
                if (str.equals("NI")) {
                    b7 = 155;
                }
                break;
            case 2494:
                if (str.equals("NL")) {
                    b7 = 156;
                }
                break;
            case 2497:
                if (str.equals("NO")) {
                    b7 = 157;
                }
                break;
            case 2498:
                if (str.equals("NP")) {
                    b7 = 158;
                }
                break;
            case 2500:
                if (str.equals("NR")) {
                    b7 = 159;
                }
                break;
            case SendBroadcastHelper.API_ERR_PUSH_SERVER_LINK_NOT_IN_COMMUNITY /* 2503 */:
                if (str.equals("NU")) {
                    b7 = 160;
                }
                break;
            case 2508:
                if (str.equals("NZ")) {
                    b7 = 161;
                }
                break;
            case 2526:
                if (str.equals("OM")) {
                    b7 = 162;
                }
                break;
            case 2545:
                if (str.equals("PA")) {
                    b7 = 163;
                }
                break;
            case 2549:
                if (str.equals("PE")) {
                    b7 = 164;
                }
                break;
            case 2550:
                if (str.equals("PF")) {
                    b7 = 165;
                }
                break;
            case 2551:
                if (str.equals("PG")) {
                    b7 = 166;
                }
                break;
            case 2552:
                if (str.equals("PH")) {
                    b7 = 167;
                }
                break;
            case 2555:
                if (str.equals("PK")) {
                    b7 = 168;
                }
                break;
            case 2556:
                if (str.equals("PL")) {
                    b7 = 169;
                }
                break;
            case 2557:
                if (str.equals("PM")) {
                    b7 = 170;
                }
                break;
            case 2562:
                if (str.equals("PR")) {
                    b7 = 171;
                }
                break;
            case 2563:
                if (str.equals("PS")) {
                    b7 = 172;
                }
                break;
            case 2564:
                if (str.equals("PT")) {
                    b7 = 173;
                }
                break;
            case 2567:
                if (str.equals("PW")) {
                    b7 = 174;
                }
                break;
            case 2569:
                if (str.equals("PY")) {
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
            case 2647:
                if (str.equals("SJ")) {
                    b7 = 190;
                }
                break;
            case 2648:
                if (str.equals("SK")) {
                    b7 = 191;
                }
                break;
            case 2649:
                if (str.equals("SL")) {
                    b7 = 192;
                }
                break;
            case 2650:
                if (str.equals("SM")) {
                    b7 = 193;
                }
                break;
            case 2651:
                if (str.equals("SN")) {
                    b7 = 194;
                }
                break;
            case 2652:
                if (str.equals("SO")) {
                    b7 = 195;
                }
                break;
            case 2655:
                if (str.equals("SR")) {
                    b7 = 196;
                }
                break;
            case 2656:
                if (str.equals("SS")) {
                    b7 = 197;
                }
                break;
            case 2657:
                if (str.equals("ST")) {
                    b7 = 198;
                }
                break;
            case 2659:
                if (str.equals("SV")) {
                    b7 = 199;
                }
                break;
            case 2661:
                if (str.equals("SX")) {
                    b7 = 200;
                }
                break;
            case 2662:
                if (str.equals("SY")) {
                    b7 = 201;
                }
                break;
            case 2663:
                if (str.equals("SZ")) {
                    b7 = 202;
                }
                break;
            case 2671:
                if (str.equals("TC")) {
                    b7 = 203;
                }
                break;
            case 2672:
                if (str.equals("TD")) {
                    b7 = 204;
                }
                break;
            case 2675:
                if (str.equals("TG")) {
                    b7 = 205;
                }
                break;
            case 2676:
                if (str.equals("TH")) {
                    b7 = 206;
                }
                break;
            case 2678:
                if (str.equals("TJ")) {
                    b7 = 207;
                }
                break;
            case 2679:
                if (str.equals("TK")) {
                    b7 = 208;
                }
                break;
            case 2680:
                if (str.equals("TL")) {
                    b7 = 209;
                }
                break;
            case 2681:
                if (str.equals("TM")) {
                    b7 = 210;
                }
                break;
            case 2682:
                if (str.equals("TN")) {
                    b7 = 211;
                }
                break;
            case 2683:
                if (str.equals("TO")) {
                    b7 = 212;
                }
                break;
            case 2686:
                if (str.equals("TR")) {
                    b7 = 213;
                }
                break;
            case 2688:
                if (str.equals("TT")) {
                    b7 = 214;
                }
                break;
            case 2690:
                if (str.equals("TV")) {
                    b7 = 215;
                }
                break;
            case 2691:
                if (str.equals("TW")) {
                    b7 = 216;
                }
                break;
            case 2694:
                if (str.equals("TZ")) {
                    b7 = 217;
                }
                break;
            case 2700:
                if (str.equals("UA")) {
                    b7 = 218;
                }
                break;
            case 2706:
                if (str.equals("UG")) {
                    b7 = 219;
                }
                break;
            case 2718:
                if (str.equals("US")) {
                    b7 = 220;
                }
                break;
            case 2724:
                if (str.equals("UY")) {
                    b7 = 221;
                }
                break;
            case 2725:
                if (str.equals("UZ")) {
                    b7 = 222;
                }
                break;
            case 2731:
                if (str.equals("VA")) {
                    b7 = 223;
                }
                break;
            case 2733:
                if (str.equals("VC")) {
                    b7 = 224;
                }
                break;
            case 2735:
                if (str.equals("VE")) {
                    b7 = 225;
                }
                break;
            case 2737:
                if (str.equals("VG")) {
                    b7 = 226;
                }
                break;
            case 2739:
                if (str.equals("VI")) {
                    b7 = 227;
                }
                break;
            case 2744:
                if (str.equals("VN")) {
                    b7 = 228;
                }
                break;
            case 2751:
                if (str.equals("VU")) {
                    b7 = 229;
                }
                break;
            case 2767:
                if (str.equals("WF")) {
                    b7 = 230;
                }
                break;
            case 2780:
                if (str.equals("WS")) {
                    b7 = 231;
                }
                break;
            case 2803:
                if (str.equals("XK")) {
                    b7 = 232;
                }
                break;
            case 2828:
                if (str.equals("YE")) {
                    b7 = 233;
                }
                break;
            case 2843:
                if (str.equals("YT")) {
                    b7 = 234;
                }
                break;
            case 2855:
                if (str.equals("ZA")) {
                    b7 = 235;
                }
                break;
            case 2867:
                if (str.equals("ZM")) {
                    b7 = 236;
                }
                break;
            case 2877:
                if (str.equals("ZW")) {
                    b7 = 237;
                }
                break;
        }
        switch (b7) {
            case 0:
            case 49:
                return new int[]{2, 2, 0, 0, 2, 2};
            case 1:
                return new int[]{1, 4, 3, 4, 4, 2};
            case 2:
            case 166:
                return new int[]{4, 3, 3, 3, 2, 2};
            case 3:
                return new int[]{2, 4, 3, 4, 2, 2};
            case 4:
            case 16:
            case 25:
            case 28:
            case 56:
            case 68:
                return new int[]{0, 2, 0, 0, 2, 2};
            case 5:
                return new int[]{1, 1, 1, 3, 2, 2};
            case 6:
                return new int[]{2, 3, 2, 3, 2, 2};
            case 7:
                return new int[]{4, 4, 4, 3, 2, 2};
            case 8:
            case 62:
            case 188:
                return new int[]{4, 2, 2, 2, 2, 2};
            case 9:
                return new int[]{2, 2, 3, 3, 2, 2};
            case 10:
                return new int[]{1, 2, 1, 4, 1, 4};
            case 11:
                return new int[]{0, 2, 1, 1, 3, 0};
            case 12:
            case 85:
                return new int[]{1, 2, 4, 4, 2, 2};
            case 13:
            case 50:
            case 120:
            case 140:
            case 143:
            case 170:
            case 193:
            case 223:
                return new int[]{0, 2, 2, 2, 2, 2};
            case 14:
            case 19:
            case 58:
                return new int[]{3, 3, 4, 4, 2, 2};
            case 15:
            case 94:
                return new int[]{1, 1, 1, 1, 2, 2};
            case 17:
            case 116:
                return new int[]{2, 1, 2, 2, 2, 2};
            case 18:
                return new int[]{0, 1, 4, 4, 3, 2};
            case 20:
            case 63:
            case 83:
            case 189:
                return new int[]{0, 0, 0, 0, 1, 2};
            case 21:
                return new int[]{1, 3, 1, 4, 4, 2};
            case 22:
            case 91:
            case 133:
            case Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED /* 153 */:
            case ComposerKt.providerMapsKey /* 204 */:
            case 225:
            case 233:
                return new int[]{4, 4, 4, 4, 2, 2};
            case 23:
                return new int[]{4, 4, 2, 3, 2, 2};
            case 24:
            case 132:
            case 175:
                return new int[]{1, 2, 2, 2, 2, 2};
            case 26:
                return new int[]{3, 2, 0, 1, 2, 2};
            case 27:
                return new int[]{1, 2, 3, 2, 2, 2};
            case 29:
                return new int[]{1, 1, 2, 1, 1, 0};
            case 30:
            case 118:
                return new int[]{3, 2, 1, 2, 2, 2};
            case 31:
            case TextFieldImplKt.AnimationDuration /* 150 */:
            case 231:
                return new int[]{3, 1, 2, 1, 2, 2};
            case 32:
                return new int[]{3, 2, 1, 0, 2, 2};
            case 33:
                return new int[]{1, 1, 2, 3, 2, 2};
            case 34:
            case 41:
                return new int[]{2, 2, 2, 1, 2, 2};
            case 35:
                return new int[]{0, 2, 3, 3, 3, 3};
            case 36:
            case 111:
                return new int[]{4, 3, 3, 2, 2, 2};
            case 37:
            case 183:
                return new int[]{4, 2, 4, 2, 2, 2};
            case 38:
            case 76:
                return new int[]{3, 3, 3, 3, 2, 2};
            case 39:
                return new int[]{0, 0, 0, 0, 0, 3};
            case 40:
            case 61:
                return new int[]{3, 4, 3, 3, 2, 2};
            case 42:
                return new int[]{1, 1, 2, 1, 3, 2};
            case 43:
                return new int[]{4, 3, 3, 4, 2, 2};
            case 44:
                return new int[]{2, 0, 4, 3, 3, 1};
            case 45:
                return new int[]{2, 3, 4, 2, 2, 2};
            case 46:
                return new int[]{2, 4, 4, 4, 2, 2};
            case 47:
            case 110:
                return new int[]{4, 2, 4, 3, 2, 2};
            case 48:
                return new int[]{2, 3, 0, 1, 2, 2};
            case 51:
            case 90:
            case 126:
                return new int[]{1, 0, 0, 0, 0, 2};
            case 52:
                return new int[]{0, 0, 2, 0, 1, 2};
            case 53:
                return new int[]{0, 1, 3, 2, 2, 2};
            case 54:
            case 201:
            case 207:
                return new int[]{4, 3, 4, 4, 2, 2};
            case 55:
            case 60:
            case 92:
            case 124:
            case 144:
                return new int[]{0, 0, 0, 0, 0, 2};
            case 57:
                return new int[]{3, 4, 4, 4, 4, 2};
            case 59:
                return new int[]{1, 3, 2, 1, 2, 2};
            case 64:
            case 194:
                return new int[]{4, 4, 3, 2, 2, 2};
            case 65:
                return new int[]{0, 0, 0, 2, 0, 2};
            case 66:
                return new int[]{3, 1, 2, 3, 2, 2};
            case 67:
                return new int[]{4, 2, 3, 0, 2, 2};
            case 69:
                return new int[]{1, 1, 2, 1, 1, 2};
            case 70:
            case ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER /* 205 */:
                return new int[]{3, 4, 1, 0, 2, 2};
            case 71:
                return new int[]{0, 1, 1, 2, 1, 2};
            case 72:
            case 112:
            case 115:
            case 119:
            case 200:
            case 224:
                return new int[]{1, 2, 0, 0, 2, 2};
            case 73:
                return new int[]{1, 0, 0, 2, 2, 2};
            case 74:
            case 168:
            case 192:
                return new int[]{3, 2, 3, 3, 2, 2};
            case 75:
                return new int[]{0, 2, 1, 0, 2, 2};
            case 77:
            case 103:
                return new int[]{1, 2, 0, 1, 2, 2};
            case 78:
            case 208:
                return new int[]{2, 2, 2, 4, 2, 2};
            case 79:
                return new int[]{4, 3, 2, 4, 2, 2};
            case 80:
                return new int[]{4, 4, 4, 2, 2, 2};
            case 81:
                return new int[]{3, 1, 1, 3, 2, 2};
            case 82:
                return new int[]{4, 4, 3, 3, 2, 2};
            case 84:
                return new int[]{2, 2, 2, 1, 1, 2};
            case 86:
                return new int[]{4, 4, 2, 2, 2, 2};
            case 87:
                return new int[]{3, 0, 1, 1, 2, 2};
            case 88:
                return new int[]{0, 1, 1, 3, 2, 0};
            case 89:
                return new int[]{3, 3, 2, 2, 2, 2};
            case 93:
                return new int[]{3, 1, 1, 2, 3, 2};
            case 95:
                return new int[]{1, 2, 2, 3, 4, 2};
            case 96:
                return new int[]{0, 2, 0, 1, 2, 2};
            case 97:
                return new int[]{1, 1, 2, 1, 2, 1};
            case 98:
            case ThirdPartyAccountBaseFragment.API_ERR_EMAIL_TAKEN /* 215 */:
            case ApiService.API_ERR_USER_NOT_IN_COMMUNITY /* 230 */:
                return new int[]{4, 2, 2, 4, 2, 2};
            case 99:
            case 190:
                return new int[]{3, 2, 2, 2, 2, 2};
            case 100:
                return new int[]{4, 2, 3, 3, 4, 2};
            case 101:
                return new int[]{0, 0, 1, 0, 0, 2};
            case 102:
                return new int[]{0, 0, 1, 1, 1, 2};
            case 104:
                return new int[]{2, 4, 2, 1, 2, 2};
            case 105:
                return new int[]{2, 0, 1, 1, 2, 2};
            case 106:
                return new int[]{0, 3, 3, 3, 4, 4};
            case 107:
                return new int[]{3, 2, 2, 1, 2, 2};
            case 108:
            case ScriptIntrinsicBLAS.LEFT /* 141 */:
                return new int[]{2, 1, 1, 2, 2, 2};
            case 109:
                return new int[]{1, 0, 4, 2, 2, 2};
            case 113:
                return new int[]{0, 2, 2, 4, 4, 4};
            case 114:
                return new int[]{1, 0, 1, 0, 0, 2};
            case 117:
                return new int[]{1, 2, 1, 3, 2, 2};
            case 121:
                return new int[]{3, 2, 3, 4, 4, 2};
            case 122:
                return new int[]{3, 4, 3, 4, 2, 2};
            case 123:
            case 219:
                return new int[]{3, 3, 3, 2, 2, 2};
            case 125:
                return new int[]{1, 1, 4, 2, 0, 2};
            case 127:
            case 212:
            case 237:
                return new int[]{3, 2, 4, 3, 2, 2};
            case 128:
                return new int[]{3, 3, 2, 1, 2, 2};
            case 129:
                return new int[]{0, 2, 2, 0, 2, 2};
            case 130:
                return new int[]{1, 0, 0, 0, 2, 2};
            case 131:
                return new int[]{2, 0, 0, 1, 1, 2};
            case 134:
                return new int[]{4, 2, 1, 3, 2, 2};
            case 135:
                return new int[]{2, 0, 0, 1, 3, 2};
            case WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST /* 136 */:
            case 217:
                return new int[]{3, 4, 2, 2, 2, 2};
            case WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE /* 137 */:
                return new int[]{2, 2, 2, 3, 4, 2};
            case 138:
                return new int[]{2, 0, 1, 2, 2, 2};
            case WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE /* 139 */:
                return new int[]{0, 2, 4, 4, 4, 2};
            case ScriptIntrinsicBLAS.RIGHT /* 142 */:
                return new int[]{4, 2, 3, 4, 2, 2};
            case 145:
            case 182:
                return new int[]{3, 1, 1, 2, 2, 2};
            case 146:
                return new int[]{3, 4, 1, 3, 3, 2};
            case 147:
                return new int[]{4, 2, 3, 3, 2, 2};
            case TarConstants.CHKSUM_OFFSET /* 148 */:
                return new int[]{3, 4, 4, 4, 2, 2};
            case 149:
                return new int[]{1, 0, 4, 1, 2, 2};
            case Constants.ERR_PUBLISH_STREAM_CDN_ERROR /* 151 */:
                return new int[]{3, 4, 3, 2, 2, 2};
            case Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT /* 152 */:
                return new int[]{3, 2, 3, 4, 2, 2};
            case Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR /* 154 */:
                return new int[]{3, 4, 2, 1, 2, 2};
            case 155:
                return new int[]{2, 3, 4, 3, 2, 2};
            case Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED /* 156 */:
                return new int[]{0, 2, 3, 3, 0, 4};
            case Constants.ERR_MODULE_NOT_FOUND /* 157 */:
                return new int[]{0, 1, 2, 1, 1, 2};
            case 158:
                return new int[]{2, 1, 4, 3, 2, 2};
            case 159:
                return new int[]{4, 0, 3, 2, 2, 2};
            case 160:
                return new int[]{4, 2, 2, 1, 2, 2};
            case 161:
                return new int[]{1, 0, 2, 2, 4, 2};
            case 162:
                return new int[]{2, 3, 1, 3, 4, 2};
            case 163:
                return new int[]{2, 3, 3, 3, 2, 2};
            case 164:
                return new int[]{1, 2, 4, 4, 3, 2};
            case 165:
            case 199:
                return new int[]{2, 3, 3, 1, 2, 2};
            case 167:
                return new int[]{2, 1, 3, 2, 2, 0};
            case 169:
                return new int[]{2, 1, 2, 2, 4, 2};
            case 171:
                return new int[]{2, 0, 2, 0, 2, 1};
            case 172:
                return new int[]{3, 4, 1, 4, 2, 2};
            case 173:
                return new int[]{1, 0, 0, 0, 1, 2};
            case 174:
                return new int[]{2, 2, 4, 2, 2, 2};
            case 176:
                return new int[]{1, 4, 4, 4, 4, 2};
            case 177:
                return new int[]{1, 2, 2, 3, 1, 2};
            case 178:
                return new int[]{0, 0, 1, 2, 1, 2};
            case 179:
                return new int[]{2, 0, 0, 0, 2, 2};
            case 180:
                return new int[]{1, 0, 0, 0, 3, 3};
            case 181:
                return new int[]{3, 3, 1, 0, 2, 2};
            case 184:
                return new int[]{4, 3, 1, 1, 2, 2};
            case 185:
                return new int[]{4, 3, 4, 2, 2, 2};
            case 186:
                return new int[]{0, 1, 1, 1, 0, 2};
            case 187:
                return new int[]{2, 3, 3, 3, 3, 3};
            case 191:
                return new int[]{1, 1, 1, 1, 3, 2};
            case 195:
                return new int[]{3, 2, 2, 4, 4, 2};
            case 196:
                return new int[]{2, 4, 3, 0, 2, 2};
            case 197:
            case 210:
                return new int[]{4, 2, 2, 3, 2, 2};
            case 198:
                return new int[]{2, 2, 1, 2, 2, 2};
            case 202:
                return new int[]{4, 4, 3, 4, 2, 2};
            case 203:
                return new int[]{2, 2, 1, 3, 2, 2};
            case ComposerKt.referenceKey /* 206 */:
                return new int[]{0, 1, 2, 1, 2, 2};
            case 209:
                return new int[]{4, 2, 4, 4, 2, 2};
            case 211:
            case 221:
                return new int[]{2, 1, 1, 1, 2, 2};
            case ThirdPartyAccountBaseFragment.API_ERR_EMAIL /* 213 */:
                return new int[]{1, 0, 0, 1, 3, 2};
            case 214:
                return new int[]{1, 4, 0, 0, 2, 2};
            case 216:
                return new int[]{0, 2, 0, 0, 0, 0};
            case 218:
                return new int[]{0, 1, 1, 2, 4, 2};
            case 220:
                return new int[]{1, 1, 4, 1, 3, 1};
            case 222:
                return new int[]{2, 2, 3, 4, 3, 2};
            case 226:
                return new int[]{2, 2, 0, 1, 2, 2};
            case 227:
                return new int[]{0, 2, 1, 2, 2, 2};
            case 228:
                return new int[]{0, 0, 1, 2, 2, 1};
            case 229:
                return new int[]{4, 3, 3, 1, 2, 2};
            case 232:
                return new int[]{1, 2, 1, 1, 2, 2};
            case 234:
                return new int[]{2, 3, 3, 4, 2, 2};
            case 235:
                return new int[]{2, 3, 2, 1, 2, 2};
            case 236:
                return new int[]{4, 4, 4, 3, 3, 2};
            default:
                return new int[]{2, 2, 2, 2, 2, 2};
        }
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public TransferListener d() {
        return this;
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void e(DataSource dataSource, DataSpec dataSpec, boolean z6) {
        if (k(dataSpec, z6)) {
            this.timeToFirstByteEstimator.a(dataSpec);
            this.bandwidthEstimator.g(dataSource);
        }
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void f(DataSource dataSource, DataSpec dataSpec, boolean z6, int i10) {
        if (k(dataSpec, z6)) {
            this.bandwidthEstimator.f(dataSource, i10);
        }
    }

    @Override // androidx.media3.datasource.TransferListener
    public synchronized void g(DataSource dataSource, DataSpec dataSpec, boolean z6) {
        if (k(dataSpec, z6)) {
            this.bandwidthEstimator.e(dataSource);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public synchronized long getBitrateEstimate() {
        long jB;
        jB = this.bandwidthEstimator.b();
        if (jB == Long.MIN_VALUE) {
            jB = this.initialBitrateEstimate;
        }
        return jB;
    }

    public static final class Builder {
        private final Context context;
        private Map<Integer, Long> initialBitrateEstimates;
        private TimeToFirstByteEstimator timeToFirstByteEstimator = new PercentileTimeToFirstByteEstimator(20, 0.5f);
        private BandwidthEstimator bandwidthEstimator = new SplitParallelSampleBandwidthEstimator.Builder().e();
        private boolean resetOnNetworkTypeChange = true;

        public Builder(Context context) {
            this.context = context.getApplicationContext();
            this.initialBitrateEstimates = a(Util.O(context));
        }

        private static Map<Integer, Long> a(String str) {
            int[] iArrJ = ExperimentalBandwidthMeter.j(str);
            HashMap map = new HashMap(8);
            map.put(0, 1000000L);
            a0<Long> a0Var = ExperimentalBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI;
            map.put(2, a0Var.get(iArrJ[0]));
            map.put(3, ExperimentalBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_2G.get(iArrJ[1]));
            map.put(4, ExperimentalBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_3G.get(iArrJ[2]));
            map.put(5, ExperimentalBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_4G.get(iArrJ[3]));
            map.put(10, ExperimentalBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA.get(iArrJ[4]));
            map.put(9, ExperimentalBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA.get(iArrJ[5]));
            map.put(7, a0Var.get(iArrJ[0]));
            return map;
        }
    }

    private static boolean k(DataSpec dataSpec, boolean z6) {
        return z6 && !dataSpec.d(8);
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public void a(BandwidthMeter.EventListener eventListener) {
        this.bandwidthEstimator.a(eventListener);
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public long b() {
        return this.timeToFirstByteEstimator.b();
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter
    public void c(Handler handler, BandwidthMeter.EventListener eventListener) {
        Assertions.e(handler);
        Assertions.e(eventListener);
        this.bandwidthEstimator.c(handler, eventListener);
    }

    @Override // androidx.media3.datasource.TransferListener
    public void h(DataSource dataSource, DataSpec dataSpec, boolean z6) {
        if (!k(dataSpec, z6)) {
            return;
        }
        this.timeToFirstByteEstimator.c(dataSpec);
        this.bandwidthEstimator.d(dataSource);
    }
}
