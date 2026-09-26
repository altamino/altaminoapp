package androidx.media3.extractor.text.cea;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import androidx.compose.runtime.ComposerKt;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleDecoderException;
import androidx.media3.extractor.text.SubtitleInputBuffer;
import androidx.media3.extractor.text.SubtitleOutputBuffer;
import com.google.common.base.c;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import com.narvii.poweruser.history.ModerationHistory;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class Cea608Decoder extends CeaDecoder {
    private static final int CC_FIELD_FLAG = 1;
    private static final byte CC_IMPLICIT_DATA_HEADER = -4;
    private static final int CC_MODE_PAINT_ON = 3;
    private static final int CC_MODE_POP_ON = 2;
    private static final int CC_MODE_ROLL_UP = 1;
    private static final int CC_MODE_UNKNOWN = 0;
    private static final int CC_TYPE_FLAG = 2;
    private static final int CC_VALID_FLAG = 4;
    private static final byte CTRL_BACKSPACE = 33;
    private static final byte CTRL_CARRIAGE_RETURN = 45;
    private static final byte CTRL_DELETE_TO_END_OF_ROW = 36;
    private static final byte CTRL_END_OF_CAPTION = 47;
    private static final byte CTRL_ERASE_DISPLAYED_MEMORY = 44;
    private static final byte CTRL_ERASE_NON_DISPLAYED_MEMORY = 46;
    private static final byte CTRL_RESUME_CAPTION_LOADING = 32;
    private static final byte CTRL_RESUME_DIRECT_CAPTIONING = 41;
    private static final byte CTRL_RESUME_TEXT_DISPLAY = 43;
    private static final byte CTRL_ROLL_UP_CAPTIONS_2_ROWS = 37;
    private static final byte CTRL_ROLL_UP_CAPTIONS_3_ROWS = 38;
    private static final byte CTRL_ROLL_UP_CAPTIONS_4_ROWS = 39;
    private static final byte CTRL_TEXT_RESTART = 42;
    private static final int DEFAULT_CAPTIONS_ROW_COUNT = 4;
    public static final long MIN_DATA_CHANNEL_TIMEOUT_MS = 16000;
    private static final int NTSC_CC_CHANNEL_1 = 0;
    private static final int NTSC_CC_CHANNEL_2 = 1;
    private static final int NTSC_CC_FIELD_1 = 0;
    private static final int NTSC_CC_FIELD_2 = 1;
    private static final int STYLE_ITALICS = 7;
    private static final int STYLE_UNCHANGED = 8;
    private static final String TAG = "Cea608Decoder";
    private int captionMode;
    private int captionRowCount;

    @Nullable
    private List<Cue> cues;
    private boolean isCaptionValid;
    private boolean isInCaptionService;
    private long lastCueUpdateUs;

    @Nullable
    private List<Cue> lastCues;
    private final int packetLength;
    private byte repeatableControlCc1;
    private byte repeatableControlCc2;
    private boolean repeatableControlSet;
    private final int selectedChannel;
    private final int selectedField;
    private final long validDataChannelTimeoutUs;
    private static final int[] ROW_INDICES = {11, 1, 3, 12, 14, 5, 7, 9};
    private static final int[] COLUMN_INDICES = {0, 4, 8, 12, 16, 20, 24, 28};
    private static final int[] STYLE_COLORS = {-1, -16711936, -16776961, -16711681, SupportMenu.CATEGORY_MASK, InputDeviceCompat.SOURCE_ANY, -65281};
    private static final int[] BASIC_CHARACTER_SET = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};
    private static final int[] SPECIAL_CHARACTER_SET = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD};
    private static final int[] SPECIAL_ES_FR_CHARACTER_SET = {193, 201, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, 203, 235, ComposerKt.referenceKey, 207, 239, 212, 217, 249, 219, 171, 187};
    private static final int[] SPECIAL_PT_DE_CHARACTER_SET = {195, 227, ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER, ComposerKt.providerMapsKey, 236, 210, 242, ThirdPartyAccountBaseFragment.API_ERR_EMAIL, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
    private static final boolean[] ODD_PARITY_BYTE_TABLE = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    private final ParsableByteArray ccData = new ParsableByteArray();
    private final ArrayList<CueBuilder> cueBuilders = new ArrayList<>();
    private CueBuilder currentCueBuilder = new CueBuilder(0, 4);
    private int currentChannel = 0;

    private static final class CueBuilder {
        private static final int BASE_ROW = 15;
        private static final int SCREEN_CHARWIDTH = 32;
        private int captionMode;
        private int captionRowCount;
        private int indent;
        private int row;
        private int tabOffset;
        private final List<CueStyle> cueStyles = new ArrayList();
        private final List<SpannableString> rolledUpCaptions = new ArrayList();
        private final StringBuilder captionStringBuilder = new StringBuilder();

        private static void n(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12) {
            if (i12 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i12), i10, i11, 33);
        }

        public void l(int i10) {
            this.captionMode = i10;
        }

        public void m(int i10) {
            this.captionRowCount = i10;
        }

        private static class CueStyle {
            public int start;
            public final int style;
            public final boolean underline;

            public CueStyle(int i10, boolean z6, int i11) {
                this.style = i10;
                this.underline = z6;
                this.start = i11;
            }
        }

        private SpannableString h() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.captionStringBuilder);
            int length = spannableStringBuilder.length();
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = 0;
            int i15 = 0;
            boolean z6 = false;
            while (i14 < this.cueStyles.size()) {
                CueStyle cueStyle = this.cueStyles.get(i14);
                boolean z10 = cueStyle.underline;
                int i16 = cueStyle.style;
                if (i16 != 8) {
                    boolean z11 = i16 == 7;
                    if (i16 != 7) {
                        i13 = Cea608Decoder.STYLE_COLORS[i16];
                    }
                    z6 = z11;
                }
                int i17 = cueStyle.start;
                i14++;
                if (i17 != (i14 < this.cueStyles.size() ? this.cueStyles.get(i14).start : length)) {
                    if (i10 != -1 && !z10) {
                        q(spannableStringBuilder, i10, i17);
                        i10 = -1;
                    } else if (i10 == -1 && z10) {
                        i10 = i17;
                    }
                    if (i11 != -1 && !z6) {
                        o(spannableStringBuilder, i11, i17);
                        i11 = -1;
                    } else if (i11 == -1 && z6) {
                        i11 = i17;
                    }
                    if (i13 != i12) {
                        n(spannableStringBuilder, i15, i17, i12);
                        i12 = i13;
                        i15 = i17;
                    }
                }
            }
            if (i10 != -1 && i10 != length) {
                q(spannableStringBuilder, i10, length);
            }
            if (i11 != -1 && i11 != length) {
                o(spannableStringBuilder, i11, length);
            }
            if (i15 != length) {
                n(spannableStringBuilder, i15, length, i12);
            }
            return new SpannableString(spannableStringBuilder);
        }

        private static void o(SpannableStringBuilder spannableStringBuilder, int i10, int i11) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i10, i11, 33);
        }

        private static void q(SpannableStringBuilder spannableStringBuilder, int i10, int i11) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i10, i11, 33);
        }

        public void e(char c7) {
            if (this.captionStringBuilder.length() < 32) {
                this.captionStringBuilder.append(c7);
            }
        }

        public void f() {
            int length = this.captionStringBuilder.length();
            if (length > 0) {
                this.captionStringBuilder.delete(length - 1, length);
                for (int size = this.cueStyles.size() - 1; size >= 0; size--) {
                    CueStyle cueStyle = this.cueStyles.get(size);
                    int i10 = cueStyle.start;
                    if (i10 != length) {
                        return;
                    }
                    cueStyle.start = i10 - 1;
                }
            }
        }

        @Nullable
        public Cue g(int i10) {
            float f;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i11 = 0; i11 < this.rolledUpCaptions.size(); i11++) {
                spannableStringBuilder.append((CharSequence) this.rolledUpCaptions.get(i11));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) h());
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int i12 = this.indent + this.tabOffset;
            int length = (32 - i12) - spannableStringBuilder.length();
            int i13 = i12 - length;
            if (i10 == Integer.MIN_VALUE) {
                i10 = (this.captionMode != 2 || (Math.abs(i13) >= 3 && length >= 0)) ? (this.captionMode != 2 || i13 <= 0) ? 0 : 2 : 1;
            }
            if (i10 != 1) {
                if (i10 == 2) {
                    i12 = 32 - length;
                }
                f = ((i12 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f = 0.5f;
            }
            int i14 = this.row;
            if (i14 > 7) {
                i14 -= 17;
            } else if (this.captionMode == 1) {
                i14 -= this.captionRowCount - 1;
            }
            return new Cue.Builder().o(spannableStringBuilder).p(Layout.Alignment.ALIGN_NORMAL).h(i14, 1).k(f).l(i10).a();
        }

        public boolean i() {
            return this.cueStyles.isEmpty() && this.rolledUpCaptions.isEmpty() && this.captionStringBuilder.length() == 0;
        }

        public void j(int i10) {
            this.captionMode = i10;
            this.cueStyles.clear();
            this.rolledUpCaptions.clear();
            this.captionStringBuilder.setLength(0);
            this.row = 15;
            this.indent = 0;
            this.tabOffset = 0;
        }

        public void k() {
            this.rolledUpCaptions.add(h());
            this.captionStringBuilder.setLength(0);
            this.cueStyles.clear();
            int iMin = Math.min(this.captionRowCount, this.row);
            while (this.rolledUpCaptions.size() >= iMin) {
                this.rolledUpCaptions.remove(0);
            }
        }

        public void p(int i10, boolean z6) {
            this.cueStyles.add(new CueStyle(i10, z6, this.captionStringBuilder.length()));
        }

        public CueBuilder(int i10, int i11) {
            j(i10);
            this.captionRowCount = i11;
        }
    }

    private static boolean A(byte b7) {
        return (b7 & 240) == 16;
    }

    private boolean B(boolean z6, byte b7, byte b10) {
        if (!z6 || !A(b7)) {
            this.repeatableControlSet = false;
        } else {
            if (this.repeatableControlSet && this.repeatableControlCc1 == b7 && this.repeatableControlCc2 == b10) {
                this.repeatableControlSet = false;
                return true;
            }
            this.repeatableControlSet = true;
            this.repeatableControlCc1 = b7;
            this.repeatableControlCc2 = b10;
        }
        return false;
    }

    private static boolean C(byte b7) {
        return (b7 & 246) == 20;
    }

    private static boolean D(byte b7, byte b10) {
        return (b7 & 247) == 17 && (b10 & 240) == 48;
    }

    private static boolean E(byte b7, byte b10) {
        return (b7 & 247) == 23 && b10 >= 33 && b10 <= 35;
    }

    private static boolean F(byte b7) {
        return 1 <= b7 && b7 <= 15;
    }

    private static int m(byte b7) {
        return (b7 >> 3) & 1;
    }

    private static boolean v(byte b7) {
        return (b7 & 224) == 0;
    }

    private static boolean w(byte b7, byte b10) {
        return (b7 & 246) == 18 && (b10 & 224) == 32;
    }

    private static boolean x(byte b7, byte b10) {
        return (b7 & 247) == 17 && (b10 & 240) == 32;
    }

    private static boolean y(byte b7, byte b10) {
        return (b7 & 246) == 20 && (b10 & 240) == 32;
    }

    private static boolean z(byte b7, byte b10) {
        return (b7 & 240) == 16 && (b10 & 192) == 64;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    protected boolean g() {
        return this.cues != this.lastCues;
    }

    @Override // androidx.media3.decoder.Decoder
    public String getName() {
        return TAG;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.decoder.Decoder
    public void release() {
    }

    private void H() {
        this.currentCueBuilder.j(this.captionMode);
        this.cueBuilders.clear();
        this.cueBuilders.add(this.currentCueBuilder);
    }

    private void I(int i10) {
        int i11 = this.captionMode;
        if (i11 == i10) {
            return;
        }
        this.captionMode = i10;
        if (i10 == 3) {
            for (int i12 = 0; i12 < this.cueBuilders.size(); i12++) {
                this.cueBuilders.get(i12).l(i10);
            }
            return;
        }
        H();
        if (i11 == 3 || i10 == 1 || i10 == 0) {
            this.cues = Collections.emptyList();
        }
    }

    private void J(int i10) {
        this.captionRowCount = i10;
        this.currentCueBuilder.m(i10);
    }

    private boolean K() {
        return (this.validDataChannelTimeoutUs == -9223372036854775807L || this.lastCueUpdateUs == -9223372036854775807L || f() - this.lastCueUpdateUs < this.validDataChannelTimeoutUs) ? false : true;
    }

    private static char l(byte b7) {
        return (char) BASIC_CHARACTER_SET[(b7 & 127) - 32];
    }

    private List<Cue> n() {
        int size = this.cueBuilders.size();
        ArrayList arrayList = new ArrayList(size);
        int iMin = 2;
        for (int i10 = 0; i10 < size; i10++) {
            Cue cueG = this.cueBuilders.get(i10).g(Integer.MIN_VALUE);
            arrayList.add(cueG);
            if (cueG != null) {
                iMin = Math.min(iMin, cueG.positionAnchor);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i11 = 0; i11 < size; i11++) {
            Cue cue = (Cue) arrayList.get(i11);
            if (cue != null) {
                if (cue.positionAnchor != iMin) {
                    cue = (Cue) Assertions.e(this.cueBuilders.get(i11).g(iMin));
                }
                arrayList2.add(cue);
            }
        }
        return arrayList2;
    }

    private static char o(byte b7) {
        return (char) SPECIAL_ES_FR_CHARACTER_SET[b7 & c.US];
    }

    private static char p(byte b7) {
        return (char) SPECIAL_PT_DE_CHARACTER_SET[b7 & c.US];
    }

    private static char q(byte b7, byte b10) {
        return (b7 & 1) == 0 ? o(b10) : p(b10);
    }

    private static char r(byte b7) {
        return (char) SPECIAL_CHARACTER_SET[b7 & c.SI];
    }

    private void s(byte b7) {
        this.currentCueBuilder.e(' ');
        this.currentCueBuilder.p((b7 >> 1) & 7, (b7 & 1) == 1);
    }

    private void t(byte b7) {
        if (b7 == 32) {
            I(2);
            return;
        }
        if (b7 == 41) {
            I(3);
            return;
        }
        switch (b7) {
            case 37:
                I(1);
                J(2);
                break;
            case 38:
                I(1);
                J(3);
                break;
            case 39:
                I(1);
                J(4);
                break;
            default:
                int i10 = this.captionMode;
                if (i10 != 0) {
                    if (b7 != 33) {
                        switch (b7) {
                            case 44:
                                this.cues = Collections.emptyList();
                                int i11 = this.captionMode;
                                if (i11 == 1 || i11 == 3) {
                                    H();
                                }
                                break;
                            case 45:
                                if (i10 == 1 && !this.currentCueBuilder.i()) {
                                    this.currentCueBuilder.k();
                                    break;
                                }
                                break;
                            case 46:
                                H();
                                break;
                            case 47:
                                this.cues = n();
                                H();
                                break;
                        }
                    } else {
                        this.currentCueBuilder.f();
                        break;
                    }
                }
                break;
        }
    }

    private void u(byte b7, byte b10) {
        int i10 = ROW_INDICES[b7 & 7];
        if ((b10 & 32) != 0) {
            i10++;
        }
        if (i10 != this.currentCueBuilder.row) {
            if (this.captionMode != 1 && !this.currentCueBuilder.i()) {
                CueBuilder cueBuilder = new CueBuilder(this.captionMode, this.captionRowCount);
                this.currentCueBuilder = cueBuilder;
                this.cueBuilders.add(cueBuilder);
            }
            this.currentCueBuilder.row = i10;
        }
        boolean z6 = (b10 & c.DLE) == 16;
        boolean z10 = (b10 & 1) == 1;
        int i11 = (b10 >> 1) & 7;
        this.currentCueBuilder.p(z6 ? 8 : i11, z10);
        if (z6) {
            this.currentCueBuilder.indent = COLUMN_INDICES[i11];
        }
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    protected Subtitle a() {
        List<Cue> list = this.cues;
        this.lastCues = list;
        return new CeaSubtitle((List) Assertions.e(list));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0063  */
    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    protected void b(SubtitleInputBuffer subtitleInputBuffer) {
        boolean z6;
        ByteBuffer byteBuffer = (ByteBuffer) Assertions.e(subtitleInputBuffer.data);
        this.ccData.S(byteBuffer.array(), byteBuffer.limit());
        boolean z10 = false;
        while (true) {
            int iA = this.ccData.a();
            int i10 = this.packetLength;
            if (iA < i10) {
                break;
            }
            int iH = i10 == 2 ? -4 : this.ccData.H();
            int iH2 = this.ccData.H();
            int iH3 = this.ccData.H();
            if ((iH & 2) == 0 && (iH & 1) == this.selectedField) {
                byte b7 = (byte) (iH2 & 127);
                byte b10 = (byte) (iH3 & 127);
                if (b7 != 0 || b10 != 0) {
                    boolean z11 = this.isCaptionValid;
                    if ((iH & 4) == 4) {
                        boolean[] zArr = ODD_PARITY_BYTE_TABLE;
                        if (zArr[iH2] && zArr[iH3]) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                    } else {
                        z6 = false;
                    }
                    this.isCaptionValid = z6;
                    if (!B(z6, b7, b10)) {
                        if (this.isCaptionValid) {
                            G(b7, b10);
                            if (this.isInCaptionService && L(b7)) {
                                if (!v(b7)) {
                                    this.currentCueBuilder.e(l(b7));
                                    if ((b10 & 224) != 0) {
                                        this.currentCueBuilder.e(l(b10));
                                    }
                                } else if (D(b7, b10)) {
                                    this.currentCueBuilder.e(r(b10));
                                } else if (w(b7, b10)) {
                                    this.currentCueBuilder.f();
                                    this.currentCueBuilder.e(q(b7, b10));
                                } else if (x(b7, b10)) {
                                    s(b10);
                                } else if (z(b7, b10)) {
                                    u(b7, b10);
                                } else if (E(b7, b10)) {
                                    this.currentCueBuilder.tabOffset = b10 - 32;
                                } else if (y(b7, b10)) {
                                    t(b10);
                                }
                                z10 = true;
                            }
                        } else if (z11) {
                            H();
                            z10 = true;
                        }
                    }
                }
            }
        }
        if (z10) {
            int i11 = this.captionMode;
            if (i11 == 1 || i11 == 3) {
                this.cues = n();
                this.lastCueUpdateUs = f();
            }
        }
    }

    public Cea608Decoder(String str, int i10, long j6) {
        long j10;
        int i11;
        if (j6 > 0) {
            j10 = j6 * 1000;
        } else {
            j10 = -9223372036854775807L;
        }
        this.validDataChannelTimeoutUs = j10;
        if ("application/x-mp4-cea-608".equals(str)) {
            i11 = 2;
        } else {
            i11 = 3;
        }
        this.packetLength = i11;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        Log.i(TAG, "Invalid channel. Defaulting to CC1.");
                        this.selectedChannel = 0;
                        this.selectedField = 0;
                    } else {
                        this.selectedChannel = 1;
                        this.selectedField = 1;
                    }
                } else {
                    this.selectedChannel = 0;
                    this.selectedField = 1;
                }
            } else {
                this.selectedChannel = 1;
                this.selectedField = 0;
            }
        } else {
            this.selectedChannel = 0;
            this.selectedField = 0;
        }
        I(0);
        H();
        this.isInCaptionService = true;
        this.lastCueUpdateUs = -9223372036854775807L;
    }

    private void G(byte b7, byte b10) {
        if (F(b7)) {
            this.isInCaptionService = false;
            return;
        }
        if (C(b7)) {
            if (b10 != 32 && b10 != 47) {
                switch (b10) {
                    case 37:
                    case 38:
                    case 39:
                        break;
                    default:
                        switch (b10) {
                            case 42:
                            case 43:
                                this.isInCaptionService = false;
                                break;
                        }
                }
            }
            this.isInCaptionService = true;
        }
    }

    private boolean L(byte b7) {
        if (v(b7)) {
            this.currentChannel = m(b7);
        }
        if (this.currentChannel == this.selectedChannel) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    @Nullable
    /* JADX INFO: renamed from: c */
    public /* bridge */ /* synthetic */ SubtitleInputBuffer dequeueInputBuffer() throws SubtitleDecoderException {
        return super.dequeueInputBuffer();
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.decoder.Decoder
    @Nullable
    /* JADX INFO: renamed from: d */
    public SubtitleOutputBuffer dequeueOutputBuffer() throws SubtitleDecoderException {
        SubtitleOutputBuffer subtitleOutputBufferE;
        SubtitleOutputBuffer subtitleOutputBufferDequeueOutputBuffer = super.dequeueOutputBuffer();
        if (subtitleOutputBufferDequeueOutputBuffer != null) {
            return subtitleOutputBufferDequeueOutputBuffer;
        }
        if (K() && (subtitleOutputBufferE = e()) != null) {
            this.cues = Collections.emptyList();
            this.lastCueUpdateUs = -9223372036854775807L;
            subtitleOutputBufferE.o(f(), a(), Long.MAX_VALUE);
            return subtitleOutputBufferE;
        }
        return null;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.decoder.Decoder
    public void flush() {
        super.flush();
        this.cues = null;
        this.lastCues = null;
        I(0);
        J(4);
        H();
        this.isCaptionValid = false;
        this.repeatableControlSet = false;
        this.repeatableControlCc1 = (byte) 0;
        this.repeatableControlCc2 = (byte) 0;
        this.currentChannel = 0;
        this.isInCaptionService = true;
        this.lastCueUpdateUs = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    /* JADX INFO: renamed from: h */
    public /* bridge */ /* synthetic */ void queueInputBuffer(SubtitleInputBuffer subtitleInputBuffer) throws SubtitleDecoderException {
        super.queueInputBuffer(subtitleInputBuffer);
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.extractor.text.SubtitleDecoder
    public /* bridge */ /* synthetic */ void setPositionUs(long j6) {
        super.setPositionUs(j6);
    }
}
