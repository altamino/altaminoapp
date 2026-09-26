package androidx.constraintlayout.core.motion.utils;

import com.google.common.base.c;

/* JADX INFO: loaded from: classes10.dex */
public final /* synthetic */ class a {
    static {
        String str = TypedValues.CycleType.NAME;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static int a(String str) {
        byte b7;
        str.hashCode();
        switch (str.hashCode()) {
            case -1310311125:
                b7 = !str.equals("easing") ? (byte) -1 : (byte) 0;
                break;
            case -1249320806:
                b7 = !str.equals("rotationX") ? (byte) -1 : (byte) 1;
                break;
            case -1249320805:
                b7 = !str.equals("rotationY") ? (byte) -1 : (byte) 2;
                break;
            case -1249320804:
                b7 = !str.equals("rotationZ") ? (byte) -1 : (byte) 3;
                break;
            case -1225497657:
                b7 = !str.equals("translationX") ? (byte) -1 : (byte) 4;
                break;
            case -1225497656:
                b7 = !str.equals("translationY") ? (byte) -1 : (byte) 5;
                break;
            case -1225497655:
                b7 = !str.equals("translationZ") ? (byte) -1 : (byte) 6;
                break;
            case -1001078227:
                b7 = !str.equals("progress") ? (byte) -1 : (byte) 7;
                break;
            case -987906986:
                b7 = !str.equals("pivotX") ? (byte) -1 : (byte) 8;
                break;
            case -987906985:
                b7 = !str.equals("pivotY") ? (byte) -1 : (byte) 9;
                break;
            case -908189618:
                b7 = !str.equals("scaleX") ? (byte) -1 : (byte) 10;
                break;
            case -908189617:
                b7 = !str.equals("scaleY") ? (byte) -1 : c.VT;
                break;
            case 92909918:
                b7 = !str.equals("alpha") ? (byte) -1 : c.FF;
                break;
            case 579057826:
                b7 = !str.equals("curveFit") ? (byte) -1 : c.CR;
                break;
            case 803192288:
                b7 = !str.equals("pathRotate") ? (byte) -1 : c.SO;
                break;
            case 1941332754:
                b7 = !str.equals("visibility") ? (byte) -1 : c.SI;
                break;
            default:
                b7 = -1;
                break;
        }
        switch (b7) {
            case 0:
                return 420;
            case 1:
                return 308;
            case 2:
                return 309;
            case 3:
                return 310;
            case 4:
                return 304;
            case 5:
                return 305;
            case 6:
                return 306;
            case 7:
                return 315;
            case 8:
                return 313;
            case 9:
                return 314;
            case 10:
                return 311;
            case 11:
                return 312;
            case 12:
                return TypedValues.CycleType.TYPE_ALPHA;
            case 13:
                return 401;
            case 14:
                return TypedValues.CycleType.TYPE_PATH_ROTATE;
            case 15:
                return TypedValues.CycleType.TYPE_VISIBILITY;
            default:
                return -1;
        }
    }
}
