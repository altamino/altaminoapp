package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.motion.Motion;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.narvii.util.ws.WsMessage;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public class Transition implements TypedValues {
    static final int ANTICIPATE = 6;
    static final int BOUNCE = 4;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    public static final int END = 1;
    public static final int INTERPOLATED = 2;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    static final int LINEAR = 3;
    static final int OVERSHOOT = 5;
    private static final int SPLINE_STRING = -1;
    public static final int START = 0;
    HashMap<Integer, HashMap<String, KeyPosition>> keyPositions = new HashMap<>();
    private HashMap<String, WidgetState> state = new HashMap<>();
    TypedBundle mBundle = new TypedBundle();
    private int mDefaultInterpolator = 0;
    private String mDefaultInterpolatorString = null;
    private Easing mEasing = null;
    private int mAutoTransition = 0;
    private int mDuration = WsMessage.LIVE_LAYER_USER_JOINED_EVENT;
    private float mStagger = 0.0f;

    static class KeyPosition {
        int frame;
        String target;
        int type;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        float f131x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        float f132y;

        public KeyPosition(String str, int i10, int i11, float f, float f6) {
            this.target = str;
            this.frame = i10;
            this.type = i11;
            this.f131x = f;
            this.f132y = f6;
        }
    }

    static class WidgetState {
        Motion motionControl;
        KeyCache myKeyCache = new KeyCache();
        int myParentHeight = -1;
        int myParentWidth = -1;
        WidgetFrame start = new WidgetFrame();
        WidgetFrame end = new WidgetFrame();
        WidgetFrame interpolated = new WidgetFrame();
        MotionWidget motionWidgetStart = new MotionWidget(this.start);
        MotionWidget motionWidgetEnd = new MotionWidget(this.end);
        MotionWidget motionWidgetInterpolated = new MotionWidget(this.interpolated);

        public WidgetState() {
            Motion motion = new Motion(this.motionWidgetStart);
            this.motionControl = motion;
            motion.c(this.motionWidgetStart);
            this.motionControl.b(this.motionWidgetEnd);
        }
    }
}
