package com.google.android.exoplayer2.text.cea;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import androidx.compose.material.TextFieldImplKt;
import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.text.k;
import com.google.android.exoplayer2.text.n;
import com.google.android.exoplayer2.text.o;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.t;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import okio.Utf8;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes4.dex */
public final class c extends e {
    private static final int CC_VALID_FLAG = 4;
    private static final int CHARACTER_BIG_CARONS = 42;
    private static final int CHARACTER_BIG_OE = 44;
    private static final int CHARACTER_BOLD_BULLET = 53;
    private static final int CHARACTER_CLOSE_DOUBLE_QUOTE = 52;
    private static final int CHARACTER_CLOSE_SINGLE_QUOTE = 50;
    private static final int CHARACTER_DIAERESIS_Y = 63;
    private static final int CHARACTER_ELLIPSIS = 37;
    private static final int CHARACTER_FIVE_EIGHTHS = 120;
    private static final int CHARACTER_HORIZONTAL_BORDER = 125;
    private static final int CHARACTER_LOWER_LEFT_BORDER = 124;
    private static final int CHARACTER_LOWER_RIGHT_BORDER = 126;
    private static final int CHARACTER_MN = 127;
    private static final int CHARACTER_NBTSP = 33;
    private static final int CHARACTER_ONE_EIGHTH = 118;
    private static final int CHARACTER_OPEN_DOUBLE_QUOTE = 51;
    private static final int CHARACTER_OPEN_SINGLE_QUOTE = 49;
    private static final int CHARACTER_SEVEN_EIGHTHS = 121;
    private static final int CHARACTER_SM = 61;
    private static final int CHARACTER_SMALL_CARONS = 58;
    private static final int CHARACTER_SMALL_OE = 60;
    private static final int CHARACTER_SOLID_BLOCK = 48;
    private static final int CHARACTER_THREE_EIGHTHS = 119;
    private static final int CHARACTER_TM = 57;
    private static final int CHARACTER_TSP = 32;
    private static final int CHARACTER_UPPER_LEFT_BORDER = 127;
    private static final int CHARACTER_UPPER_RIGHT_BORDER = 123;
    private static final int CHARACTER_VERTICAL_BORDER = 122;
    private static final int COMMAND_BS = 8;
    private static final int COMMAND_CLW = 136;
    private static final int COMMAND_CR = 13;
    private static final int COMMAND_CW0 = 128;
    private static final int COMMAND_CW1 = 129;
    private static final int COMMAND_CW2 = 130;
    private static final int COMMAND_CW3 = 131;
    private static final int COMMAND_CW4 = 132;
    private static final int COMMAND_CW5 = 133;
    private static final int COMMAND_CW6 = 134;
    private static final int COMMAND_CW7 = 135;
    private static final int COMMAND_DF0 = 152;
    private static final int COMMAND_DF1 = 153;
    private static final int COMMAND_DF2 = 154;
    private static final int COMMAND_DF3 = 155;
    private static final int COMMAND_DF4 = 156;
    private static final int COMMAND_DF5 = 157;
    private static final int COMMAND_DF6 = 158;
    private static final int COMMAND_DF7 = 159;
    private static final int COMMAND_DLC = 142;
    private static final int COMMAND_DLW = 140;
    private static final int COMMAND_DLY = 141;
    private static final int COMMAND_DSW = 137;
    private static final int COMMAND_ETX = 3;
    private static final int COMMAND_EXT1 = 16;
    private static final int COMMAND_EXT1_END = 23;
    private static final int COMMAND_EXT1_START = 17;
    private static final int COMMAND_FF = 12;
    private static final int COMMAND_HCR = 14;
    private static final int COMMAND_HDW = 138;
    private static final int COMMAND_NUL = 0;
    private static final int COMMAND_P16_END = 31;
    private static final int COMMAND_P16_START = 24;
    private static final int COMMAND_RST = 143;
    private static final int COMMAND_SPA = 144;
    private static final int COMMAND_SPC = 145;
    private static final int COMMAND_SPL = 146;
    private static final int COMMAND_SWA = 151;
    private static final int COMMAND_TGW = 139;
    private static final int DTVCC_PACKET_DATA = 2;
    private static final int DTVCC_PACKET_START = 3;
    private static final int GROUP_C0_END = 31;
    private static final int GROUP_C1_END = 159;
    private static final int GROUP_C2_END = 31;
    private static final int GROUP_C3_END = 159;
    private static final int GROUP_G0_END = 127;
    private static final int GROUP_G1_END = 255;
    private static final int GROUP_G2_END = 127;
    private static final int GROUP_G3_END = 255;
    private static final int NUM_WINDOWS = 8;
    private static final String TAG = "Cea708Decoder";
    private final b[] cueInfoBuilders;

    @Nullable
    private List<com.google.android.exoplayer2.text.b> cues;
    private b currentCueInfoBuilder;

    @Nullable
    private C0181c currentDtvCcPacket;
    private int currentWindow;
    private final boolean isWideAspectRatio;

    @Nullable
    private List<com.google.android.exoplayer2.text.b> lastCues;
    private final int selectedServiceNumber;
    private final c0 ccData = new c0();
    private final b0 captionChannelPacketData = new b0();
    private int previousSequenceNumber = -1;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {
        private static final Comparator<a> LEAST_IMPORTANT_FIRST = new Comparator() { // from class: com.google.android.exoplayer2.text.cea.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return c.a.c((c.a) obj, (c.a) obj2);
            }
        };
        public final com.google.android.exoplayer2.text.b cue;
        public final int priority;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int c(a aVar, a aVar2) {
            return Integer.compare(aVar2.priority, aVar.priority);
        }

        public a(CharSequence charSequence, Layout.Alignment alignment, float f, int i10, int i11, float f6, int i12, float f7, boolean z6, int i13, int i14) {
            com.google.android.exoplayer2.text.b.C0178b c0178bN = new com.google.android.exoplayer2.text.b.C0178b().o(charSequence).p(alignment).h(f, i10).i(i11).k(f6).l(i12).n(f7);
            if (z6) {
                c0178bN.s(i13);
            }
            this.cue = c0178bN.a();
            this.priority = i14;
        }
    }

    private static final class b {
        private static final int BORDER_AND_EDGE_TYPE_NONE = 0;
        private static final int BORDER_AND_EDGE_TYPE_UNIFORM = 3;
        public static final int COLOR_SOLID_BLACK;
        public static final int COLOR_SOLID_WHITE = h(2, 2, 2, 0);
        public static final int COLOR_TRANSPARENT;
        private static final int DEFAULT_PRIORITY = 4;
        private static final int DIRECTION_BOTTOM_TO_TOP = 3;
        private static final int DIRECTION_LEFT_TO_RIGHT = 0;
        private static final int DIRECTION_RIGHT_TO_LEFT = 1;
        private static final int DIRECTION_TOP_TO_BOTTOM = 2;
        private static final int HORIZONTAL_SIZE = 209;
        private static final int JUSTIFICATION_CENTER = 2;
        private static final int JUSTIFICATION_FULL = 3;
        private static final int JUSTIFICATION_LEFT = 0;
        private static final int JUSTIFICATION_RIGHT = 1;
        private static final int MAXIMUM_ROW_COUNT = 15;
        private static final int PEN_FONT_STYLE_DEFAULT = 0;
        private static final int PEN_FONT_STYLE_MONOSPACED_WITHOUT_SERIFS = 3;
        private static final int PEN_FONT_STYLE_MONOSPACED_WITH_SERIFS = 1;
        private static final int PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITHOUT_SERIFS = 4;
        private static final int PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITH_SERIFS = 2;
        private static final int PEN_OFFSET_NORMAL = 1;
        private static final int PEN_SIZE_STANDARD = 1;
        private static final int[] PEN_STYLE_BACKGROUND;
        private static final int[] PEN_STYLE_EDGE_TYPE;
        private static final int[] PEN_STYLE_FONT_STYLE;
        private static final int RELATIVE_CUE_SIZE = 99;
        private static final int VERTICAL_SIZE = 74;
        private static final int[] WINDOW_STYLE_FILL;
        private static final int[] WINDOW_STYLE_JUSTIFICATION;
        private static final int[] WINDOW_STYLE_PRINT_DIRECTION;
        private static final int[] WINDOW_STYLE_SCROLL_DIRECTION;
        private static final boolean[] WINDOW_STYLE_WORD_WRAP;
        private int anchorId;
        private int backgroundColor;
        private int backgroundColorStartPosition;
        private boolean defined;
        private int foregroundColor;
        private int foregroundColorStartPosition;
        private int horizontalAnchor;
        private int italicsStartPosition;
        private int justification;
        private int penStyleId;
        private int priority;
        private boolean relativePositioning;
        private int row;
        private int rowCount;
        private boolean rowLock;
        private int underlineStartPosition;
        private int verticalAnchor;
        private boolean visible;
        private int windowFillColor;
        private int windowStyleId;
        private final List<SpannableString> rolledUpCaptions = new ArrayList();
        private final SpannableStringBuilder captionStringBuilder = new SpannableStringBuilder();

        static {
            int iH = h(0, 0, 0, 0);
            COLOR_SOLID_BLACK = iH;
            int iH2 = h(0, 0, 0, 3);
            COLOR_TRANSPARENT = iH2;
            WINDOW_STYLE_JUSTIFICATION = new int[]{0, 0, 0, 0, 0, 2, 0};
            WINDOW_STYLE_PRINT_DIRECTION = new int[]{0, 0, 0, 0, 0, 0, 2};
            WINDOW_STYLE_SCROLL_DIRECTION = new int[]{3, 3, 3, 3, 3, 3, 1};
            WINDOW_STYLE_WORD_WRAP = new boolean[]{false, false, false, true, true, true, false};
            WINDOW_STYLE_FILL = new int[]{iH, iH2, iH, iH, iH2, iH, iH};
            PEN_STYLE_FONT_STYLE = new int[]{0, 1, 2, 3, 4, 3, 4};
            PEN_STYLE_EDGE_TYPE = new int[]{0, 0, 0, 0, 0, 3, 3};
            PEN_STYLE_BACKGROUND = new int[]{iH, iH, iH, iH, iH, iH2, iH2};
        }

        public static int g(int i10, int i11, int i12) {
            return h(i10, i11, i12, 0);
        }

        /* JADX WARN: Code duplicated, block: B:9:0x001b  */
        public static int h(int i10, int i11, int i12, int i13) {
            int i14;
            com.google.android.exoplayer2.util.a.c(i10, 0, 4);
            com.google.android.exoplayer2.util.a.c(i11, 0, 4);
            com.google.android.exoplayer2.util.a.c(i12, 0, 4);
            com.google.android.exoplayer2.util.a.c(i13, 0, 4);
            if (i13 == 0 || i13 == 1) {
                i14 = 255;
            } else if (i13 == 2) {
                i14 = 127;
            } else if (i13 != 3) {
                i14 = 255;
            } else {
                i14 = 0;
            }
            return Color.argb(i14, i10 > 1 ? 255 : 0, i11 > 1 ? 255 : 0, i12 > 1 ? 255 : 0);
        }

        public void f(boolean z6, boolean z10, boolean z11, int i10, boolean z12, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            this.defined = true;
            this.visible = z6;
            this.rowLock = z10;
            this.priority = i10;
            this.relativePositioning = z12;
            this.verticalAnchor = i11;
            this.horizontalAnchor = i12;
            this.anchorId = i15;
            int i18 = i13 + 1;
            if (this.rowCount != i18) {
                this.rowCount = i18;
                while (true) {
                    if ((!z10 || this.rolledUpCaptions.size() < this.rowCount) && this.rolledUpCaptions.size() < 15) {
                        break;
                    } else {
                        this.rolledUpCaptions.remove(0);
                    }
                }
            }
            if (i16 != 0 && this.windowStyleId != i16) {
                this.windowStyleId = i16;
                int i19 = i16 - 1;
                q(WINDOW_STYLE_FILL[i19], COLOR_TRANSPARENT, WINDOW_STYLE_WORD_WRAP[i19], 0, WINDOW_STYLE_PRINT_DIRECTION[i19], WINDOW_STYLE_SCROLL_DIRECTION[i19], WINDOW_STYLE_JUSTIFICATION[i19]);
            }
            if (i17 == 0 || this.penStyleId == i17) {
                return;
            }
            this.penStyleId = i17;
            int i20 = i17 - 1;
            m(0, 1, 1, false, false, PEN_STYLE_EDGE_TYPE[i20], PEN_STYLE_FONT_STYLE[i20]);
            n(COLOR_SOLID_WHITE, PEN_STYLE_BACKGROUND[i20], COLOR_SOLID_BLACK);
        }

        public boolean i() {
            return this.defined;
        }

        public boolean k() {
            return this.visible;
        }

        public void p(boolean z6) {
            this.visible = z6;
        }

        public void q(int i10, int i11, boolean z6, int i12, int i13, int i14, int i15) {
            this.windowFillColor = i10;
            this.justification = i15;
        }

        public void a(char c7) {
            if (c7 != '\n') {
                this.captionStringBuilder.append(c7);
                return;
            }
            this.rolledUpCaptions.add(d());
            this.captionStringBuilder.clear();
            if (this.italicsStartPosition != -1) {
                this.italicsStartPosition = 0;
            }
            if (this.underlineStartPosition != -1) {
                this.underlineStartPosition = 0;
            }
            if (this.foregroundColorStartPosition != -1) {
                this.foregroundColorStartPosition = 0;
            }
            if (this.backgroundColorStartPosition != -1) {
                this.backgroundColorStartPosition = 0;
            }
            while (true) {
                if ((!this.rowLock || this.rolledUpCaptions.size() < this.rowCount) && this.rolledUpCaptions.size() < 15) {
                    return;
                } else {
                    this.rolledUpCaptions.remove(0);
                }
            }
        }

        public void b() {
            int length = this.captionStringBuilder.length();
            if (length > 0) {
                this.captionStringBuilder.delete(length - 1, length);
            }
        }

        public SpannableString d() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.captionStringBuilder);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.italicsStartPosition != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.italicsStartPosition, length, 33);
                }
                if (this.underlineStartPosition != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.underlineStartPosition, length, 33);
                }
                if (this.foregroundColorStartPosition != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.foregroundColor), this.foregroundColorStartPosition, length, 33);
                }
                if (this.backgroundColorStartPosition != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.backgroundColor), this.backgroundColorStartPosition, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void e() {
            this.rolledUpCaptions.clear();
            this.captionStringBuilder.clear();
            this.italicsStartPosition = -1;
            this.underlineStartPosition = -1;
            this.foregroundColorStartPosition = -1;
            this.backgroundColorStartPosition = -1;
            this.row = 0;
        }

        public void m(int i10, int i11, int i12, boolean z6, boolean z10, int i13, int i14) {
            if (this.italicsStartPosition != -1) {
                if (!z6) {
                    this.captionStringBuilder.setSpan(new StyleSpan(2), this.italicsStartPosition, this.captionStringBuilder.length(), 33);
                    this.italicsStartPosition = -1;
                }
            } else if (z6) {
                this.italicsStartPosition = this.captionStringBuilder.length();
            }
            if (this.underlineStartPosition == -1) {
                if (z10) {
                    this.underlineStartPosition = this.captionStringBuilder.length();
                }
            } else {
                if (z10) {
                    return;
                }
                this.captionStringBuilder.setSpan(new UnderlineSpan(), this.underlineStartPosition, this.captionStringBuilder.length(), 33);
                this.underlineStartPosition = -1;
            }
        }

        public void n(int i10, int i11, int i12) {
            if (this.foregroundColorStartPosition != -1 && this.foregroundColor != i10) {
                this.captionStringBuilder.setSpan(new ForegroundColorSpan(this.foregroundColor), this.foregroundColorStartPosition, this.captionStringBuilder.length(), 33);
            }
            if (i10 != COLOR_SOLID_WHITE) {
                this.foregroundColorStartPosition = this.captionStringBuilder.length();
                this.foregroundColor = i10;
            }
            if (this.backgroundColorStartPosition != -1 && this.backgroundColor != i11) {
                this.captionStringBuilder.setSpan(new BackgroundColorSpan(this.backgroundColor), this.backgroundColorStartPosition, this.captionStringBuilder.length(), 33);
            }
            if (i11 != COLOR_SOLID_BLACK) {
                this.backgroundColorStartPosition = this.captionStringBuilder.length();
                this.backgroundColor = i11;
            }
        }

        public void o(int i10, int i11) {
            if (this.row != i10) {
                a('\n');
            }
            this.row = i10;
        }

        public b() {
            l();
        }

        @Nullable
        public a c() {
            Layout.Alignment alignment;
            float f;
            float f6;
            int i10;
            int i11;
            if (j()) {
                return null;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            boolean z6 = false;
            for (int i12 = 0; i12 < this.rolledUpCaptions.size(); i12++) {
                spannableStringBuilder.append((CharSequence) this.rolledUpCaptions.get(i12));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) d());
            int i13 = this.justification;
            if (i13 != 0) {
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (i13 != 3) {
                            throw new IllegalArgumentException("Unexpected justification value: " + this.justification);
                        }
                        alignment = Layout.Alignment.ALIGN_NORMAL;
                    } else {
                        alignment = Layout.Alignment.ALIGN_CENTER;
                    }
                } else {
                    alignment = Layout.Alignment.ALIGN_OPPOSITE;
                }
            } else {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            }
            Layout.Alignment alignment2 = alignment;
            if (this.relativePositioning) {
                f = this.horizontalAnchor / 99.0f;
                f6 = this.verticalAnchor / 99.0f;
            } else {
                f = this.horizontalAnchor / 209.0f;
                f6 = this.verticalAnchor / 74.0f;
            }
            float f7 = (f * 0.9f) + 0.05f;
            float f10 = (f6 * 0.9f) + 0.05f;
            int i14 = this.anchorId;
            if (i14 / 3 == 0) {
                i10 = 0;
            } else if (i14 / 3 == 1) {
                i10 = 1;
            } else {
                i10 = 2;
            }
            if (i14 % 3 == 0) {
                i11 = 0;
            } else if (i14 % 3 == 1) {
                i11 = 1;
            } else {
                i11 = 2;
            }
            if (this.windowFillColor != COLOR_SOLID_BLACK) {
                z6 = true;
            }
            return new a(spannableStringBuilder, alignment2, f10, 0, i10, f7, i11, -3.4028235E38f, z6, this.windowFillColor, this.priority);
        }

        public boolean j() {
            if (i() && (!this.rolledUpCaptions.isEmpty() || this.captionStringBuilder.length() != 0)) {
                return false;
            }
            return true;
        }

        public void l() {
            e();
            this.defined = false;
            this.visible = false;
            this.priority = 4;
            this.relativePositioning = false;
            this.verticalAnchor = 0;
            this.horizontalAnchor = 0;
            this.anchorId = 0;
            this.rowCount = 15;
            this.rowLock = true;
            this.justification = 0;
            this.windowStyleId = 0;
            this.penStyleId = 0;
            int i10 = COLOR_SOLID_BLACK;
            this.windowFillColor = i10;
            this.foregroundColor = COLOR_SOLID_WHITE;
            this.backgroundColor = i10;
        }
    }

    private void A() {
        for (int i10 = 0; i10 < 8; i10++) {
            this.cueInfoBuilders[i10].l();
        }
    }

    private void o(int i10) {
        if (i10 <= 7) {
            return;
        }
        if (i10 <= 15) {
            this.captionChannelPacketData.r(8);
        } else if (i10 <= 23) {
            this.captionChannelPacketData.r(16);
        } else if (i10 <= 31) {
            this.captionChannelPacketData.r(24);
        }
    }

    @Override // com.google.android.exoplayer2.text.cea.e
    protected boolean g() {
        return this.cues != this.lastCues;
    }

    /* JADX INFO: renamed from: com.google.android.exoplayer2.text.cea.c$c, reason: collision with other inner class name */
    private static final class C0181c {
        int currentIndex = 0;
        public final byte[] packetData;
        public final int packetSize;
        public final int sequenceNumber;

        public C0181c(int i10, int i11) {
            this.sequenceNumber = i10;
            this.packetSize = i11;
            this.packetData = new byte[(i11 * 2) - 1];
        }
    }

    private void k() {
        if (this.currentDtvCcPacket == null) {
            return;
        }
        z();
        this.currentDtvCcPacket = null;
    }

    private List<com.google.android.exoplayer2.text.b> l() {
        a aVarC;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < 8; i10++) {
            if (!this.cueInfoBuilders[i10].j() && this.cueInfoBuilders[i10].k() && (aVarC = this.cueInfoBuilders[i10].c()) != null) {
                arrayList.add(aVarC);
            }
        }
        Collections.sort(arrayList, a.LEAST_IMPORTANT_FIRST);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            arrayList2.add(((a) arrayList.get(i11)).cue);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    private void m(int i10) {
        if (i10 != 0) {
            if (i10 == 3) {
                this.cues = l();
            }
            if (i10 == 8) {
                this.currentCueInfoBuilder.b();
                return;
            }
            switch (i10) {
                case 12:
                    A();
                    break;
                case 13:
                    this.currentCueInfoBuilder.a('\n');
                    break;
                case 14:
                    break;
                default:
                    if (i10 >= 17 && i10 <= 23) {
                        t.i(TAG, "Currently unsupported COMMAND_EXT1 Command: " + i10);
                        this.captionChannelPacketData.r(8);
                    } else if (i10 >= 24 && i10 <= 31) {
                        t.i(TAG, "Currently unsupported COMMAND_P16 Command: " + i10);
                        this.captionChannelPacketData.r(16);
                    } else {
                        t.i(TAG, "Invalid C0 command: " + i10);
                    }
                    break;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void n(int i10) {
        int i11 = 1;
        switch (i10) {
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
                int i12 = i10 - 128;
                if (this.currentWindow != i12) {
                    this.currentWindow = i12;
                    this.currentCueInfoBuilder = this.cueInfoBuilders[i12];
                }
                break;
            case 136:
                while (i11 <= 8) {
                    if (this.captionChannelPacketData.g()) {
                        this.cueInfoBuilders[8 - i11].e();
                    }
                    i11++;
                }
                break;
            case 137:
                for (int i13 = 1; i13 <= 8; i13++) {
                    if (this.captionChannelPacketData.g()) {
                        this.cueInfoBuilders[8 - i13].p(true);
                    }
                }
                break;
            case 138:
                while (i11 <= 8) {
                    if (this.captionChannelPacketData.g()) {
                        this.cueInfoBuilders[8 - i11].p(false);
                    }
                    i11++;
                }
                break;
            case 139:
                for (int i14 = 1; i14 <= 8; i14++) {
                    if (this.captionChannelPacketData.g()) {
                        b bVar = this.cueInfoBuilders[8 - i14];
                        bVar.p(!bVar.k());
                    }
                }
                break;
            case COMMAND_DLW /* 140 */:
                while (i11 <= 8) {
                    if (this.captionChannelPacketData.g()) {
                        this.cueInfoBuilders[8 - i11].l();
                    }
                    i11++;
                }
                break;
            case 141:
                this.captionChannelPacketData.r(8);
                break;
            case 142:
                break;
            case COMMAND_RST /* 143 */:
                A();
                break;
            case COMMAND_SPA /* 144 */:
                if (this.currentCueInfoBuilder.i()) {
                    v();
                } else {
                    this.captionChannelPacketData.r(16);
                }
                break;
            case COMMAND_SPC /* 145 */:
                if (this.currentCueInfoBuilder.i()) {
                    w();
                } else {
                    this.captionChannelPacketData.r(24);
                }
                break;
            case COMMAND_SPL /* 146 */:
                if (this.currentCueInfoBuilder.i()) {
                    x();
                } else {
                    this.captionChannelPacketData.r(16);
                }
                break;
            case 147:
            case TarConstants.CHKSUM_OFFSET /* 148 */:
            case 149:
            case TextFieldImplKt.AnimationDuration /* 150 */:
            default:
                t.i(TAG, "Invalid C1 command: " + i10);
                break;
            case 151:
                if (this.currentCueInfoBuilder.i()) {
                    y();
                } else {
                    this.captionChannelPacketData.r(32);
                }
                break;
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case COMMAND_DF6 /* 158 */:
            case 159:
                int i15 = i10 - 152;
                q(i15);
                if (this.currentWindow != i15) {
                    this.currentWindow = i15;
                    this.currentCueInfoBuilder = this.cueInfoBuilders[i15];
                }
                break;
        }
    }

    private void p(int i10) {
        if (i10 <= 135) {
            this.captionChannelPacketData.r(32);
            return;
        }
        if (i10 <= COMMAND_RST) {
            this.captionChannelPacketData.r(40);
        } else if (i10 <= 159) {
            this.captionChannelPacketData.r(2);
            this.captionChannelPacketData.r(this.captionChannelPacketData.h(6) * 8);
        }
    }

    private void q(int i10) {
        b bVar = this.cueInfoBuilders[i10];
        this.captionChannelPacketData.r(2);
        boolean zG = this.captionChannelPacketData.g();
        boolean zG2 = this.captionChannelPacketData.g();
        boolean zG3 = this.captionChannelPacketData.g();
        int iH = this.captionChannelPacketData.h(3);
        boolean zG4 = this.captionChannelPacketData.g();
        int iH2 = this.captionChannelPacketData.h(7);
        int iH3 = this.captionChannelPacketData.h(8);
        int iH4 = this.captionChannelPacketData.h(4);
        int iH5 = this.captionChannelPacketData.h(4);
        this.captionChannelPacketData.r(2);
        int iH6 = this.captionChannelPacketData.h(6);
        this.captionChannelPacketData.r(2);
        bVar.f(zG, zG2, zG3, iH, zG4, iH2, iH3, iH5, iH6, iH4, this.captionChannelPacketData.h(3), this.captionChannelPacketData.h(3));
    }

    private void r(int i10) {
        if (i10 == 127) {
            this.currentCueInfoBuilder.a((char) 9835);
        } else {
            this.currentCueInfoBuilder.a((char) (i10 & 255));
        }
    }

    private void s(int i10) {
        this.currentCueInfoBuilder.a((char) (i10 & 255));
    }

    private void t(int i10) {
        if (i10 == 32) {
            this.currentCueInfoBuilder.a(' ');
        }
        if (i10 == 33) {
            this.currentCueInfoBuilder.a((char) 160);
            return;
        }
        if (i10 == 37) {
            this.currentCueInfoBuilder.a((char) 8230);
            return;
        }
        if (i10 == 42) {
            this.currentCueInfoBuilder.a((char) 352);
            return;
        }
        if (i10 == 44) {
            this.currentCueInfoBuilder.a((char) 338);
            return;
        }
        if (i10 == 63) {
            this.currentCueInfoBuilder.a((char) 376);
            return;
        }
        if (i10 == 57) {
            this.currentCueInfoBuilder.a((char) 8482);
            return;
        }
        if (i10 == 58) {
            this.currentCueInfoBuilder.a((char) 353);
            return;
        }
        if (i10 == 60) {
            this.currentCueInfoBuilder.a((char) 339);
            return;
        }
        if (i10 == 61) {
            this.currentCueInfoBuilder.a((char) 8480);
            return;
        }
        switch (i10) {
            case 48:
                this.currentCueInfoBuilder.a((char) 9608);
                break;
            case 49:
                this.currentCueInfoBuilder.a((char) 8216);
                break;
            case 50:
                this.currentCueInfoBuilder.a((char) 8217);
                break;
            case 51:
                this.currentCueInfoBuilder.a((char) 8220);
                break;
            case 52:
                this.currentCueInfoBuilder.a((char) 8221);
                break;
            case 53:
                this.currentCueInfoBuilder.a((char) 8226);
                break;
            default:
                switch (i10) {
                    case 118:
                        this.currentCueInfoBuilder.a((char) 8539);
                        break;
                    case 119:
                        this.currentCueInfoBuilder.a((char) 8540);
                        break;
                    case 120:
                        this.currentCueInfoBuilder.a((char) 8541);
                        break;
                    case 121:
                        this.currentCueInfoBuilder.a((char) 8542);
                        break;
                    case 122:
                        this.currentCueInfoBuilder.a((char) 9474);
                        break;
                    case 123:
                        this.currentCueInfoBuilder.a((char) 9488);
                        break;
                    case 124:
                        this.currentCueInfoBuilder.a((char) 9492);
                        break;
                    case 125:
                        this.currentCueInfoBuilder.a((char) 9472);
                        break;
                    case 126:
                        this.currentCueInfoBuilder.a((char) 9496);
                        break;
                    case 127:
                        this.currentCueInfoBuilder.a((char) 9484);
                        break;
                    default:
                        t.i(TAG, "Invalid G2 character: " + i10);
                        break;
                }
                break;
        }
    }

    private void u(int i10) {
        if (i10 == 160) {
            this.currentCueInfoBuilder.a((char) 13252);
            return;
        }
        t.i(TAG, "Invalid G3 character: " + i10);
        this.currentCueInfoBuilder.a('_');
    }

    private void v() {
        this.currentCueInfoBuilder.m(this.captionChannelPacketData.h(4), this.captionChannelPacketData.h(2), this.captionChannelPacketData.h(2), this.captionChannelPacketData.g(), this.captionChannelPacketData.g(), this.captionChannelPacketData.h(3), this.captionChannelPacketData.h(3));
    }

    private void w() {
        int iH = b.h(this.captionChannelPacketData.h(2), this.captionChannelPacketData.h(2), this.captionChannelPacketData.h(2), this.captionChannelPacketData.h(2));
        int iH2 = b.h(this.captionChannelPacketData.h(2), this.captionChannelPacketData.h(2), this.captionChannelPacketData.h(2), this.captionChannelPacketData.h(2));
        this.captionChannelPacketData.r(2);
        this.currentCueInfoBuilder.n(iH, iH2, b.g(this.captionChannelPacketData.h(2), this.captionChannelPacketData.h(2), this.captionChannelPacketData.h(2)));
    }

    private void x() {
        this.captionChannelPacketData.r(4);
        int iH = this.captionChannelPacketData.h(4);
        this.captionChannelPacketData.r(2);
        this.currentCueInfoBuilder.o(iH, this.captionChannelPacketData.h(6));
    }

    private void y() {
        int iH = b.h(this.captionChannelPacketData.h(2), this.captionChannelPacketData.h(2), this.captionChannelPacketData.h(2), this.captionChannelPacketData.h(2));
        int iH2 = this.captionChannelPacketData.h(2);
        int iG = b.g(this.captionChannelPacketData.h(2), this.captionChannelPacketData.h(2), this.captionChannelPacketData.h(2));
        if (this.captionChannelPacketData.g()) {
            iH2 |= 4;
        }
        boolean zG = this.captionChannelPacketData.g();
        int iH3 = this.captionChannelPacketData.h(2);
        int iH4 = this.captionChannelPacketData.h(2);
        int iH5 = this.captionChannelPacketData.h(2);
        this.captionChannelPacketData.r(8);
        this.currentCueInfoBuilder.q(iH, iG, zG, iH2, iH3, iH4, iH5);
    }

    private void z() {
        C0181c c0181c = this.currentDtvCcPacket;
        if (c0181c.currentIndex != (c0181c.packetSize * 2) - 1) {
            t.b(TAG, "DtvCcPacket ended prematurely; size is " + ((this.currentDtvCcPacket.packetSize * 2) - 1) + ", but current index is " + this.currentDtvCcPacket.currentIndex + " (sequence number " + this.currentDtvCcPacket.sequenceNumber + ");");
        }
        b0 b0Var = this.captionChannelPacketData;
        C0181c c0181c2 = this.currentDtvCcPacket;
        b0Var.o(c0181c2.packetData, c0181c2.currentIndex);
        boolean z6 = false;
        while (this.captionChannelPacketData.b() > 0) {
            int iH = this.captionChannelPacketData.h(3);
            int iH2 = this.captionChannelPacketData.h(5);
            if (iH == 7) {
                this.captionChannelPacketData.r(2);
                iH = this.captionChannelPacketData.h(6);
                if (iH < 7) {
                    t.i(TAG, "Invalid extended service number: " + iH);
                }
            }
            if (iH2 == 0) {
                if (iH == 0) {
                    break;
                }
                t.i(TAG, "serviceNumber is non-zero (" + iH + ") when blockSize is 0");
                break;
            }
            if (iH != this.selectedServiceNumber) {
                this.captionChannelPacketData.s(iH2);
            } else {
                int iE = this.captionChannelPacketData.e() + (iH2 * 8);
                while (this.captionChannelPacketData.e() < iE) {
                    int iH3 = this.captionChannelPacketData.h(8);
                    if (iH3 == 16) {
                        int iH4 = this.captionChannelPacketData.h(8);
                        if (iH4 <= 31) {
                            o(iH4);
                        } else {
                            if (iH4 <= 127) {
                                t(iH4);
                            } else if (iH4 <= 159) {
                                p(iH4);
                            } else if (iH4 <= 255) {
                                u(iH4);
                            } else {
                                t.i(TAG, "Invalid extended command: " + iH4);
                            }
                            z6 = true;
                        }
                    } else if (iH3 <= 31) {
                        m(iH3);
                    } else {
                        if (iH3 <= 127) {
                            r(iH3);
                        } else if (iH3 <= 159) {
                            n(iH3);
                        } else if (iH3 <= 255) {
                            s(iH3);
                        } else {
                            t.i(TAG, "Invalid base command: " + iH3);
                        }
                        z6 = true;
                    }
                }
            }
        }
        if (z6) {
            this.cues = l();
        }
    }

    @Override // com.google.android.exoplayer2.text.cea.e
    protected i a() {
        List<com.google.android.exoplayer2.text.b> list = this.cues;
        this.lastCues = list;
        return new f((List) com.google.android.exoplayer2.util.a.e(list));
    }

    @Override // com.google.android.exoplayer2.text.cea.e
    protected void b(n nVar) {
        ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(nVar.data);
        this.ccData.N(byteBuffer.array(), byteBuffer.limit());
        while (this.ccData.a() >= 3) {
            int iD = this.ccData.D();
            int i10 = iD & 3;
            boolean z6 = (iD & 4) == 4;
            byte bD = (byte) this.ccData.D();
            byte bD2 = (byte) this.ccData.D();
            if (i10 == 2 || i10 == 3) {
                if (z6) {
                    if (i10 == 3) {
                        k();
                        int i11 = (bD & 192) >> 6;
                        int i12 = this.previousSequenceNumber;
                        if (i12 != -1 && i11 != (i12 + 1) % 4) {
                            A();
                            t.i(TAG, "Sequence number discontinuity. previous=" + this.previousSequenceNumber + " current=" + i11);
                        }
                        this.previousSequenceNumber = i11;
                        int i13 = bD & Utf8.REPLACEMENT_BYTE;
                        if (i13 == 0) {
                            i13 = 64;
                        }
                        C0181c c0181c = new C0181c(i11, i13);
                        this.currentDtvCcPacket = c0181c;
                        byte[] bArr = c0181c.packetData;
                        int i14 = c0181c.currentIndex;
                        c0181c.currentIndex = i14 + 1;
                        bArr[i14] = bD2;
                    } else {
                        com.google.android.exoplayer2.util.a.a(i10 == 2);
                        C0181c c0181c2 = this.currentDtvCcPacket;
                        if (c0181c2 == null) {
                            t.c(TAG, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = c0181c2.packetData;
                            int i15 = c0181c2.currentIndex;
                            bArr2[i15] = bD;
                            c0181c2.currentIndex = i15 + 2;
                            bArr2[i15 + 1] = bD2;
                        }
                    }
                    C0181c c0181c3 = this.currentDtvCcPacket;
                    if (c0181c3.currentIndex == (c0181c3.packetSize * 2) - 1) {
                        k();
                    }
                }
            }
        }
    }

    public c(int i10, @Nullable List<byte[]> list) {
        this.selectedServiceNumber = i10 == -1 ? 1 : i10;
        this.isWideAspectRatio = list != null && com.google.android.exoplayer2.util.e.f(list);
        this.cueInfoBuilders = new b[8];
        for (int i11 = 0; i11 < 8; i11++) {
            this.cueInfoBuilders[i11] = new b();
        }
        this.currentCueInfoBuilder = this.cueInfoBuilders[0];
    }

    @Override // com.google.android.exoplayer2.text.cea.e
    @Nullable
    /* JADX INFO: renamed from: c */
    public /* bridge */ /* synthetic */ n dequeueInputBuffer() throws k {
        return super.dequeueInputBuffer();
    }

    @Override // com.google.android.exoplayer2.text.cea.e
    @Nullable
    /* JADX INFO: renamed from: d */
    public /* bridge */ /* synthetic */ o dequeueOutputBuffer() throws k {
        return super.dequeueOutputBuffer();
    }

    @Override // com.google.android.exoplayer2.text.cea.e, com.google.android.exoplayer2.decoder.d
    public void flush() {
        super.flush();
        this.cues = null;
        this.lastCues = null;
        this.currentWindow = 0;
        this.currentCueInfoBuilder = this.cueInfoBuilders[0];
        A();
        this.currentDtvCcPacket = null;
    }

    @Override // com.google.android.exoplayer2.text.cea.e
    /* JADX INFO: renamed from: h */
    public /* bridge */ /* synthetic */ void queueInputBuffer(n nVar) throws k {
        super.queueInputBuffer(nVar);
    }

    @Override // com.google.android.exoplayer2.text.cea.e, com.google.android.exoplayer2.decoder.d
    public /* bridge */ /* synthetic */ void release() {
        super.release();
    }

    @Override // com.google.android.exoplayer2.text.cea.e, com.google.android.exoplayer2.text.j
    public /* bridge */ /* synthetic */ void setPositionUs(long j6) {
        super.setPositionUs(j6);
    }
}
