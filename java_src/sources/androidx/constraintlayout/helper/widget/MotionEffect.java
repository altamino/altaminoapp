package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.constraintlayout.motion.widget.KeyAttributes;
import androidx.constraintlayout.motion.widget.KeyPosition;
import androidx.constraintlayout.motion.widget.MotionController;
import androidx.constraintlayout.motion.widget.MotionHelper;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;

/* JADX INFO: loaded from: classes10.dex */
public class MotionEffect extends MotionHelper {
    public static final int AUTO = -1;
    public static final int EAST = 2;
    public static final int NORTH = 0;
    public static final int SOUTH = 1;
    public static final String TAG = "FadeMove";
    private static final int UNSET = -1;
    public static final int WEST = 3;
    private int fadeMove;
    private float motionEffectAlpha;
    private int motionEffectEnd;
    private int motionEffectStart;
    private boolean motionEffectStrictMove;
    private int motionEffectTranslationX;
    private int motionEffectTranslationY;
    private int viewTransitionId;

    public MotionEffect(Context context) {
        super(context);
        this.motionEffectAlpha = 0.1f;
        this.motionEffectStart = 49;
        this.motionEffectEnd = 50;
        this.motionEffectTranslationX = 0;
        this.motionEffectTranslationY = 0;
        this.motionEffectStrictMove = true;
        this.viewTransitionId = -1;
        this.fadeMove = -1;
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelper
    public boolean x() {
        return true;
    }

    public MotionEffect(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.motionEffectAlpha = 0.1f;
        this.motionEffectStart = 49;
        this.motionEffectEnd = 50;
        this.motionEffectTranslationX = 0;
        this.motionEffectTranslationY = 0;
        this.motionEffectStrictMove = true;
        this.viewTransitionId = -1;
        this.fadeMove = -1;
        F(context, attrs);
    }

    private void F(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.MotionEffect);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R.styleable.MotionEffect_motionEffect_start) {
                    int i11 = typedArrayObtainStyledAttributes.getInt(index, this.motionEffectStart);
                    this.motionEffectStart = i11;
                    this.motionEffectStart = Math.max(Math.min(i11, 99), 0);
                } else if (index == R.styleable.MotionEffect_motionEffect_end) {
                    int i12 = typedArrayObtainStyledAttributes.getInt(index, this.motionEffectEnd);
                    this.motionEffectEnd = i12;
                    this.motionEffectEnd = Math.max(Math.min(i12, 99), 0);
                } else if (index == R.styleable.MotionEffect_motionEffect_translationX) {
                    this.motionEffectTranslationX = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.motionEffectTranslationX);
                } else if (index == R.styleable.MotionEffect_motionEffect_translationY) {
                    this.motionEffectTranslationY = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.motionEffectTranslationY);
                } else if (index == R.styleable.MotionEffect_motionEffect_alpha) {
                    this.motionEffectAlpha = typedArrayObtainStyledAttributes.getFloat(index, this.motionEffectAlpha);
                } else if (index == R.styleable.MotionEffect_motionEffect_move) {
                    this.fadeMove = typedArrayObtainStyledAttributes.getInt(index, this.fadeMove);
                } else if (index == R.styleable.MotionEffect_motionEffect_strict) {
                    this.motionEffectStrictMove = typedArrayObtainStyledAttributes.getBoolean(index, this.motionEffectStrictMove);
                } else if (index == R.styleable.MotionEffect_motionEffect_viewTransition) {
                    this.viewTransitionId = typedArrayObtainStyledAttributes.getResourceId(index, this.viewTransitionId);
                }
            }
            int i13 = this.motionEffectStart;
            int i14 = this.motionEffectEnd;
            if (i13 == i14) {
                if (i13 > 0) {
                    this.motionEffectStart = i13 - 1;
                } else {
                    this.motionEffectEnd = i14 + 1;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0161  */
    /* JADX WARN: Code duplicated, block: B:88:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:90:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:93:0x01db  */
    /* JADX WARN: Code duplicated, block: B:95:0x01e4  */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0185, code lost:
    
        if (r14 == 0.0f) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0199, code lost:
    
        if (r14 == 0.0f) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01a9, code lost:
    
        if (r15 == 0.0f) goto L58;
     */
    @Override // androidx.constraintlayout.motion.widget.MotionHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void D(MotionLayout motionLayout, HashMap<View, MotionController> controllerMap) {
        KeyAttributes keyAttributes;
        KeyAttributes keyAttributes2;
        KeyAttributes keyAttributes3;
        int i10;
        HashMap<View, MotionController> map = controllerMap;
        View[] viewArrN = n((ConstraintLayout) getParent());
        if (viewArrN == null) {
            Log.v(TAG, Debug.a() + " views = null");
            return;
        }
        KeyAttributes keyAttributes4 = new KeyAttributes();
        KeyAttributes keyAttributes5 = new KeyAttributes();
        keyAttributes4.R("alpha", Float.valueOf(this.motionEffectAlpha));
        keyAttributes5.R("alpha", Float.valueOf(this.motionEffectAlpha));
        keyAttributes4.g(this.motionEffectStart);
        keyAttributes5.g(this.motionEffectEnd);
        KeyPosition keyPosition = new KeyPosition();
        keyPosition.g(this.motionEffectStart);
        keyPosition.m(0);
        keyPosition.n("percentX", 0);
        keyPosition.n("percentY", 0);
        KeyPosition keyPosition2 = new KeyPosition();
        keyPosition2.g(this.motionEffectEnd);
        keyPosition2.m(0);
        keyPosition2.n("percentX", 1);
        keyPosition2.n("percentY", 1);
        KeyAttributes keyAttributes6 = null;
        if (this.motionEffectTranslationX > 0) {
            keyAttributes = new KeyAttributes();
            keyAttributes2 = new KeyAttributes();
            keyAttributes.R("translationX", Integer.valueOf(this.motionEffectTranslationX));
            keyAttributes.g(this.motionEffectEnd);
            keyAttributes2.R("translationX", 0);
            keyAttributes2.g(this.motionEffectEnd - 1);
        } else {
            keyAttributes = null;
            keyAttributes2 = null;
        }
        if (this.motionEffectTranslationY > 0) {
            keyAttributes6 = new KeyAttributes();
            keyAttributes3 = new KeyAttributes();
            keyAttributes6.R("translationY", Integer.valueOf(this.motionEffectTranslationY));
            keyAttributes6.g(this.motionEffectEnd);
            keyAttributes3.R("translationY", 0);
            keyAttributes3.g(this.motionEffectEnd - 1);
        } else {
            keyAttributes3 = null;
        }
        int i11 = this.fadeMove;
        if (i11 == -1) {
            int[] iArr = new int[4];
            for (View view : viewArrN) {
                MotionController motionController = map.get(view);
                if (motionController != null) {
                    float fN = motionController.n() - motionController.t();
                    float fO = motionController.o() - motionController.u();
                    if (fO < 0.0f) {
                        iArr[1] = iArr[1] + 1;
                    }
                    if (fO > 0.0f) {
                        iArr[0] = iArr[0] + 1;
                    }
                    if (fN > 0.0f) {
                        iArr[3] = iArr[3] + 1;
                    }
                    if (fN < 0.0f) {
                        iArr[2] = iArr[2] + 1;
                    }
                }
            }
            int i12 = iArr[0];
            i11 = 0;
            for (int i13 = 1; i13 < 4; i13++) {
                int i14 = iArr[i13];
                if (i12 < i14) {
                    i12 = i14;
                    i11 = i13;
                }
            }
        }
        int i15 = 0;
        while (i15 < viewArrN.length) {
            MotionController motionController2 = map.get(viewArrN[i15]);
            if (motionController2 != null) {
                float fN2 = motionController2.n() - motionController2.t();
                float fO2 = motionController2.o() - motionController2.u();
                if (i11 == 0) {
                    if (fO2 > 0.0f) {
                        if (this.motionEffectStrictMove) {
                        }
                    }
                    i10 = this.viewTransitionId;
                    if (i10 == -1) {
                        motionController2.a(keyAttributes4);
                        motionController2.a(keyAttributes5);
                        motionController2.a(keyPosition);
                        motionController2.a(keyPosition2);
                        if (this.motionEffectTranslationX > 0) {
                            motionController2.a(keyAttributes);
                            motionController2.a(keyAttributes2);
                        }
                        if (this.motionEffectTranslationY > 0) {
                            motionController2.a(keyAttributes6);
                            motionController2.a(keyAttributes3);
                        }
                    } else {
                        motionLayout.A(i10, motionController2);
                    }
                } else if (i11 == 1) {
                    if (fO2 < 0.0f) {
                        if (this.motionEffectStrictMove) {
                        }
                    }
                    i10 = this.viewTransitionId;
                    if (i10 == -1) {
                        motionController2.a(keyAttributes4);
                        motionController2.a(keyAttributes5);
                        motionController2.a(keyPosition);
                        motionController2.a(keyPosition2);
                        if (this.motionEffectTranslationX > 0) {
                            motionController2.a(keyAttributes);
                            motionController2.a(keyAttributes2);
                        }
                        if (this.motionEffectTranslationY > 0) {
                            motionController2.a(keyAttributes6);
                            motionController2.a(keyAttributes3);
                        }
                    } else {
                        motionLayout.A(i10, motionController2);
                    }
                } else if (i11 == 2) {
                    if (fN2 < 0.0f) {
                        if (this.motionEffectStrictMove) {
                        }
                    }
                    i10 = this.viewTransitionId;
                    if (i10 == -1) {
                        motionController2.a(keyAttributes4);
                        motionController2.a(keyAttributes5);
                        motionController2.a(keyPosition);
                        motionController2.a(keyPosition2);
                        if (this.motionEffectTranslationX > 0) {
                            motionController2.a(keyAttributes);
                            motionController2.a(keyAttributes2);
                        }
                        if (this.motionEffectTranslationY > 0) {
                            motionController2.a(keyAttributes6);
                            motionController2.a(keyAttributes3);
                        }
                    } else {
                        motionLayout.A(i10, motionController2);
                    }
                } else if (i11 != 3 || fN2 <= 0.0f || (this.motionEffectStrictMove && fO2 != 0.0f)) {
                    i10 = this.viewTransitionId;
                    if (i10 == -1) {
                        motionController2.a(keyAttributes4);
                        motionController2.a(keyAttributes5);
                        motionController2.a(keyPosition);
                        motionController2.a(keyPosition2);
                        if (this.motionEffectTranslationX > 0) {
                            motionController2.a(keyAttributes);
                            motionController2.a(keyAttributes2);
                        }
                        if (this.motionEffectTranslationY > 0) {
                            motionController2.a(keyAttributes6);
                            motionController2.a(keyAttributes3);
                        }
                    } else {
                        motionLayout.A(i10, motionController2);
                    }
                }
            }
            i15++;
            map = controllerMap;
        }
    }

    public MotionEffect(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.motionEffectAlpha = 0.1f;
        this.motionEffectStart = 49;
        this.motionEffectEnd = 50;
        this.motionEffectTranslationX = 0;
        this.motionEffectTranslationY = 0;
        this.motionEffectStrictMove = true;
        this.viewTransitionId = -1;
        this.fadeMove = -1;
        F(context, attrs);
    }
}
