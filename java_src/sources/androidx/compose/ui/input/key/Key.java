package androidx.compose.ui.input.key;

import androidx.compose.material.TextFieldImplKt;
import androidx.compose.runtime.ComposerKt;
import androidx.renderscript.ScriptIntrinsicBLAS;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import com.narvii.model.User;
import com.narvii.poweruser.history.ModerationHistory;
import com.narvii.util.http.ApiService;
import com.narvii.util.ws.WsMessage;
import i.a;
import io.agora.rtc.Constants;
import kotlin.jvm.internal.k;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.compressors.bzip2.BZip2Constants;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class Key {
    private final long keyCode;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Unknown = Key_androidKt.a(0);
    private static final long SoftLeft = Key_androidKt.a(1);
    private static final long SoftRight = Key_androidKt.a(2);
    private static final long Home = Key_androidKt.a(3);
    private static final long Back = Key_androidKt.a(4);
    private static final long Help = Key_androidKt.a(259);
    private static final long NavigatePrevious = Key_androidKt.a(260);
    private static final long NavigateNext = Key_androidKt.a(261);
    private static final long NavigateIn = Key_androidKt.a(262);
    private static final long NavigateOut = Key_androidKt.a(TarConstants.VERSION_OFFSET);
    private static final long SystemNavigationUp = Key_androidKt.a(280);
    private static final long SystemNavigationDown = Key_androidKt.a(281);
    private static final long SystemNavigationLeft = Key_androidKt.a(282);
    private static final long SystemNavigationRight = Key_androidKt.a(283);
    private static final long Call = Key_androidKt.a(5);
    private static final long EndCall = Key_androidKt.a(6);
    private static final long DirectionUp = Key_androidKt.a(19);
    private static final long DirectionDown = Key_androidKt.a(20);
    private static final long DirectionLeft = Key_androidKt.a(21);
    private static final long DirectionRight = Key_androidKt.a(22);
    private static final long DirectionCenter = Key_androidKt.a(23);
    private static final long DirectionUpLeft = Key_androidKt.a(268);
    private static final long DirectionDownLeft = Key_androidKt.a(269);
    private static final long DirectionUpRight = Key_androidKt.a(270);
    private static final long DirectionDownRight = Key_androidKt.a(271);
    private static final long VolumeUp = Key_androidKt.a(24);
    private static final long VolumeDown = Key_androidKt.a(25);
    private static final long Power = Key_androidKt.a(26);
    private static final long Camera = Key_androidKt.a(27);
    private static final long Clear = Key_androidKt.a(28);
    private static final long Zero = Key_androidKt.a(7);
    private static final long One = Key_androidKt.a(8);
    private static final long Two = Key_androidKt.a(9);
    private static final long Three = Key_androidKt.a(10);
    private static final long Four = Key_androidKt.a(11);
    private static final long Five = Key_androidKt.a(12);
    private static final long Six = Key_androidKt.a(13);
    private static final long Seven = Key_androidKt.a(14);
    private static final long Eight = Key_androidKt.a(15);
    private static final long Nine = Key_androidKt.a(16);
    private static final long Plus = Key_androidKt.a(81);
    private static final long Minus = Key_androidKt.a(69);
    private static final long Multiply = Key_androidKt.a(17);
    private static final long Equals = Key_androidKt.a(70);
    private static final long Pound = Key_androidKt.a(18);
    private static final long A = Key_androidKt.a(29);
    private static final long B = Key_androidKt.a(30);
    private static final long C = Key_androidKt.a(31);
    private static final long D = Key_androidKt.a(32);
    private static final long E = Key_androidKt.a(33);
    private static final long F = Key_androidKt.a(34);
    private static final long G = Key_androidKt.a(35);
    private static final long H = Key_androidKt.a(36);
    private static final long I = Key_androidKt.a(37);
    private static final long J = Key_androidKt.a(38);
    private static final long K = Key_androidKt.a(39);
    private static final long L = Key_androidKt.a(40);
    private static final long M = Key_androidKt.a(41);
    private static final long N = Key_androidKt.a(42);
    private static final long O = Key_androidKt.a(43);
    private static final long P = Key_androidKt.a(44);
    private static final long Q = Key_androidKt.a(45);
    private static final long R = Key_androidKt.a(46);
    private static final long S = Key_androidKt.a(47);
    private static final long T = Key_androidKt.a(48);
    private static final long U = Key_androidKt.a(49);
    private static final long V = Key_androidKt.a(50);
    private static final long W = Key_androidKt.a(51);
    private static final long X = Key_androidKt.a(52);
    private static final long Y = Key_androidKt.a(53);
    private static final long Z = Key_androidKt.a(54);
    private static final long Comma = Key_androidKt.a(55);
    private static final long Period = Key_androidKt.a(56);
    private static final long AltLeft = Key_androidKt.a(57);
    private static final long AltRight = Key_androidKt.a(58);
    private static final long ShiftLeft = Key_androidKt.a(59);
    private static final long ShiftRight = Key_androidKt.a(60);
    private static final long Tab = Key_androidKt.a(61);
    private static final long Spacebar = Key_androidKt.a(62);
    private static final long Symbol = Key_androidKt.a(63);
    private static final long Browser = Key_androidKt.a(64);
    private static final long Envelope = Key_androidKt.a(65);
    private static final long Enter = Key_androidKt.a(66);
    private static final long Backspace = Key_androidKt.a(67);
    private static final long Delete = Key_androidKt.a(112);
    private static final long Escape = Key_androidKt.a(111);
    private static final long CtrlLeft = Key_androidKt.a(113);
    private static final long CtrlRight = Key_androidKt.a(114);
    private static final long CapsLock = Key_androidKt.a(115);
    private static final long ScrollLock = Key_androidKt.a(116);
    private static final long MetaLeft = Key_androidKt.a(117);
    private static final long MetaRight = Key_androidKt.a(118);
    private static final long Function = Key_androidKt.a(119);
    private static final long PrintScreen = Key_androidKt.a(120);
    private static final long Break = Key_androidKt.a(121);
    private static final long MoveHome = Key_androidKt.a(122);
    private static final long MoveEnd = Key_androidKt.a(123);
    private static final long Insert = Key_androidKt.a(124);
    private static final long Cut = Key_androidKt.a(277);
    private static final long Copy = Key_androidKt.a(278);
    private static final long Paste = Key_androidKt.a(279);
    private static final long Grave = Key_androidKt.a(68);
    private static final long LeftBracket = Key_androidKt.a(71);
    private static final long RightBracket = Key_androidKt.a(72);
    private static final long Slash = Key_androidKt.a(76);
    private static final long Backslash = Key_androidKt.a(73);
    private static final long Semicolon = Key_androidKt.a(74);
    private static final long Apostrophe = Key_androidKt.a(75);
    private static final long At = Key_androidKt.a(77);
    private static final long Number = Key_androidKt.a(78);
    private static final long HeadsetHook = Key_androidKt.a(79);
    private static final long Focus = Key_androidKt.a(80);
    private static final long Menu = Key_androidKt.a(82);
    private static final long Notification = Key_androidKt.a(83);
    private static final long Search = Key_androidKt.a(84);
    private static final long PageUp = Key_androidKt.a(92);
    private static final long PageDown = Key_androidKt.a(93);
    private static final long PictureSymbols = Key_androidKt.a(94);
    private static final long SwitchCharset = Key_androidKt.a(95);
    private static final long ButtonA = Key_androidKt.a(96);
    private static final long ButtonB = Key_androidKt.a(97);
    private static final long ButtonC = Key_androidKt.a(98);
    private static final long ButtonX = Key_androidKt.a(99);
    private static final long ButtonY = Key_androidKt.a(100);
    private static final long ButtonZ = Key_androidKt.a(101);
    private static final long ButtonL1 = Key_androidKt.a(102);
    private static final long ButtonR1 = Key_androidKt.a(103);
    private static final long ButtonL2 = Key_androidKt.a(104);
    private static final long ButtonR2 = Key_androidKt.a(105);
    private static final long ButtonThumbLeft = Key_androidKt.a(106);
    private static final long ButtonThumbRight = Key_androidKt.a(107);
    private static final long ButtonStart = Key_androidKt.a(108);
    private static final long ButtonSelect = Key_androidKt.a(109);
    private static final long ButtonMode = Key_androidKt.a(110);
    private static final long Button1 = Key_androidKt.a(188);
    private static final long Button2 = Key_androidKt.a(189);
    private static final long Button3 = Key_androidKt.a(190);
    private static final long Button4 = Key_androidKt.a(191);
    private static final long Button5 = Key_androidKt.a(192);
    private static final long Button6 = Key_androidKt.a(193);
    private static final long Button7 = Key_androidKt.a(194);
    private static final long Button8 = Key_androidKt.a(195);
    private static final long Button9 = Key_androidKt.a(196);
    private static final long Button10 = Key_androidKt.a(197);
    private static final long Button11 = Key_androidKt.a(198);
    private static final long Button12 = Key_androidKt.a(199);
    private static final long Button13 = Key_androidKt.a(200);
    private static final long Button14 = Key_androidKt.a(201);
    private static final long Button15 = Key_androidKt.a(202);
    private static final long Button16 = Key_androidKt.a(203);
    private static final long Forward = Key_androidKt.a(125);
    private static final long F1 = Key_androidKt.a(131);
    private static final long F2 = Key_androidKt.a(132);
    private static final long F3 = Key_androidKt.a(133);
    private static final long F4 = Key_androidKt.a(134);
    private static final long F5 = Key_androidKt.a(135);
    private static final long F6 = Key_androidKt.a(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST);
    private static final long F7 = Key_androidKt.a(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE);
    private static final long F8 = Key_androidKt.a(138);
    private static final long F9 = Key_androidKt.a(WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE);
    private static final long F10 = Key_androidKt.a(140);
    private static final long F11 = Key_androidKt.a(ScriptIntrinsicBLAS.LEFT);
    private static final long F12 = Key_androidKt.a(ScriptIntrinsicBLAS.RIGHT);
    private static final long NumLock = Key_androidKt.a(143);
    private static final long NumPad0 = Key_androidKt.a(144);
    private static final long NumPad1 = Key_androidKt.a(145);
    private static final long NumPad2 = Key_androidKt.a(146);
    private static final long NumPad3 = Key_androidKt.a(147);
    private static final long NumPad4 = Key_androidKt.a(TarConstants.CHKSUM_OFFSET);
    private static final long NumPad5 = Key_androidKt.a(149);
    private static final long NumPad6 = Key_androidKt.a(TextFieldImplKt.AnimationDuration);
    private static final long NumPad7 = Key_androidKt.a(Constants.ERR_PUBLISH_STREAM_CDN_ERROR);
    private static final long NumPad8 = Key_androidKt.a(Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT);
    private static final long NumPad9 = Key_androidKt.a(Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED);
    private static final long NumPadDivide = Key_androidKt.a(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR);
    private static final long NumPadMultiply = Key_androidKt.a(155);
    private static final long NumPadSubtract = Key_androidKt.a(Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED);
    private static final long NumPadAdd = Key_androidKt.a(Constants.ERR_MODULE_NOT_FOUND);
    private static final long NumPadDot = Key_androidKt.a(158);
    private static final long NumPadComma = Key_androidKt.a(159);
    private static final long NumPadEnter = Key_androidKt.a(160);
    private static final long NumPadEquals = Key_androidKt.a(161);
    private static final long NumPadLeftParenthesis = Key_androidKt.a(162);
    private static final long NumPadRightParenthesis = Key_androidKt.a(163);
    private static final long MediaPlay = Key_androidKt.a(126);
    private static final long MediaPause = Key_androidKt.a(127);
    private static final long MediaPlayPause = Key_androidKt.a(85);
    private static final long MediaStop = Key_androidKt.a(86);
    private static final long MediaRecord = Key_androidKt.a(130);
    private static final long MediaNext = Key_androidKt.a(87);
    private static final long MediaPrevious = Key_androidKt.a(88);
    private static final long MediaRewind = Key_androidKt.a(89);
    private static final long MediaFastForward = Key_androidKt.a(90);
    private static final long MediaClose = Key_androidKt.a(128);
    private static final long MediaAudioTrack = Key_androidKt.a(222);
    private static final long MediaEject = Key_androidKt.a(129);
    private static final long MediaTopMenu = Key_androidKt.a(226);
    private static final long MediaSkipForward = Key_androidKt.a(272);
    private static final long MediaSkipBackward = Key_androidKt.a(273);
    private static final long MediaStepForward = Key_androidKt.a(274);
    private static final long MediaStepBackward = Key_androidKt.a(275);
    private static final long MicrophoneMute = Key_androidKt.a(91);
    private static final long VolumeMute = Key_androidKt.a(164);
    private static final long Info = Key_androidKt.a(165);
    private static final long ChannelUp = Key_androidKt.a(166);
    private static final long ChannelDown = Key_androidKt.a(167);
    private static final long ZoomIn = Key_androidKt.a(168);
    private static final long ZoomOut = Key_androidKt.a(169);
    private static final long Tv = Key_androidKt.a(170);
    private static final long Window = Key_androidKt.a(171);
    private static final long Guide = Key_androidKt.a(172);
    private static final long Dvr = Key_androidKt.a(173);
    private static final long Bookmark = Key_androidKt.a(174);
    private static final long Captions = Key_androidKt.a(175);
    private static final long Settings = Key_androidKt.a(176);
    private static final long TvPower = Key_androidKt.a(177);
    private static final long TvInput = Key_androidKt.a(178);
    private static final long SetTopBoxPower = Key_androidKt.a(179);
    private static final long SetTopBoxInput = Key_androidKt.a(180);
    private static final long AvReceiverPower = Key_androidKt.a(181);
    private static final long AvReceiverInput = Key_androidKt.a(182);
    private static final long ProgramRed = Key_androidKt.a(183);
    private static final long ProgramGreen = Key_androidKt.a(184);
    private static final long ProgramYellow = Key_androidKt.a(185);
    private static final long ProgramBlue = Key_androidKt.a(186);
    private static final long AppSwitch = Key_androidKt.a(187);
    private static final long LanguageSwitch = Key_androidKt.a(ComposerKt.providerMapsKey);
    private static final long MannerMode = Key_androidKt.a(ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER);
    private static final long Toggle2D3D = Key_androidKt.a(ComposerKt.referenceKey);
    private static final long Contacts = Key_androidKt.a(207);
    private static final long Calendar = Key_androidKt.a(208);
    private static final long Music = Key_androidKt.a(209);
    private static final long Calculator = Key_androidKt.a(210);
    private static final long ZenkakuHankaru = Key_androidKt.a(211);
    private static final long Eisu = Key_androidKt.a(212);
    private static final long Muhenkan = Key_androidKt.a(ThirdPartyAccountBaseFragment.API_ERR_EMAIL);
    private static final long Henkan = Key_androidKt.a(214);
    private static final long KatakanaHiragana = Key_androidKt.a(ThirdPartyAccountBaseFragment.API_ERR_EMAIL_TAKEN);
    private static final long Yen = Key_androidKt.a(216);
    private static final long Ro = Key_androidKt.a(217);
    private static final long Kana = Key_androidKt.a(218);
    private static final long Assist = Key_androidKt.a(219);
    private static final long BrightnessDown = Key_androidKt.a(220);
    private static final long BrightnessUp = Key_androidKt.a(221);
    private static final long Sleep = Key_androidKt.a(223);
    private static final long WakeUp = Key_androidKt.a(224);
    private static final long SoftSleep = Key_androidKt.a(276);
    private static final long Pairing = Key_androidKt.a(225);
    private static final long LastChannel = Key_androidKt.a(229);
    private static final long TvDataService = Key_androidKt.a(ApiService.API_ERR_USER_NOT_IN_COMMUNITY);
    private static final long VoiceAssist = Key_androidKt.a(231);
    private static final long TvRadioService = Key_androidKt.a(232);
    private static final long TvTeletext = Key_androidKt.a(233);
    private static final long TvNumberEntry = Key_androidKt.a(234);
    private static final long TvTerrestrialAnalog = Key_androidKt.a(235);
    private static final long TvTerrestrialDigital = Key_androidKt.a(236);
    private static final long TvSatellite = Key_androidKt.a(237);
    private static final long TvSatelliteBs = Key_androidKt.a(238);
    private static final long TvSatelliteCs = Key_androidKt.a(239);
    private static final long TvSatelliteService = Key_androidKt.a(240);
    private static final long TvNetwork = Key_androidKt.a(241);
    private static final long TvAntennaCable = Key_androidKt.a(242);
    private static final long TvInputHdmi1 = Key_androidKt.a(243);
    private static final long TvInputHdmi2 = Key_androidKt.a(244);
    private static final long TvInputHdmi3 = Key_androidKt.a(245);
    private static final long TvInputHdmi4 = Key_androidKt.a(246);
    private static final long TvInputComposite1 = Key_androidKt.a(247);
    private static final long TvInputComposite2 = Key_androidKt.a(248);
    private static final long TvInputComponent1 = Key_androidKt.a(249);
    private static final long TvInputComponent2 = Key_androidKt.a(250);
    private static final long TvInputVga1 = Key_androidKt.a(ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD);
    private static final long TvAudioDescription = Key_androidKt.a(252);
    private static final long TvAudioDescriptionMixingVolumeUp = Key_androidKt.a(User.USER_ROLE_NEWS_FEED);
    private static final long TvAudioDescriptionMixingVolumeDown = Key_androidKt.a(254);
    private static final long TvZoomMode = Key_androidKt.a(255);
    private static final long TvContentsMenu = Key_androidKt.a(256);
    private static final long TvMediaContextMenu = Key_androidKt.a(257);
    private static final long TvTimerProgramming = Key_androidKt.a(BZip2Constants.MAX_ALPHA_SIZE);
    private static final long StemPrimary = Key_androidKt.a(264);
    private static final long Stem1 = Key_androidKt.a(265);
    private static final long Stem2 = Key_androidKt.a(266);
    private static final long Stem3 = Key_androidKt.a(ModerationHistory.OP_ADMIN_SEND_WARNING_TO_USER);
    private static final long AllApps = Key_androidKt.a(284);
    private static final long Refresh = Key_androidKt.a(285);
    private static final long ThumbsUp = Key_androidKt.a(286);
    private static final long ThumbsDown = Key_androidKt.a(287);
    private static final long ProfileSwitch = Key_androidKt.a(288);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final long a() {
            return Key.Back;
        }

        public final long b() {
            return Key.DirectionCenter;
        }

        public final long c() {
            return Key.DirectionDown;
        }

        public final long d() {
            return Key.DirectionLeft;
        }

        public final long e() {
            return Key.DirectionRight;
        }

        public final long f() {
            return Key.DirectionUp;
        }

        public final long g() {
            return Key.Enter;
        }

        public final long h() {
            return Key.Escape;
        }

        public final long i() {
            return Key.NumPadEnter;
        }

        public final long j() {
            return Key.Tab;
        }
    }

    public static long k(long j6) {
        return j6;
    }

    public static boolean l(long j6, Object obj) {
        return (obj instanceof Key) && j6 == ((Key) obj).p();
    }

    public static final boolean m(long j6, long j10) {
        return j6 == j10;
    }

    public static int n(long j6) {
        return a.a(j6);
    }

    public boolean equals(Object obj) {
        return l(this.keyCode, obj);
    }

    public int hashCode() {
        return n(this.keyCode);
    }

    public final /* synthetic */ long p() {
        return this.keyCode;
    }

    @NotNull
    public static String o(long j6) {
        return "Key code: " + j6;
    }

    @NotNull
    public String toString() {
        return o(this.keyCode);
    }
}
