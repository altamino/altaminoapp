package androidx.constraintlayout.motion.widget;

import java.util.HashSet;

/* JADX INFO: loaded from: classes10.dex */
abstract class KeyPositionBase extends Key {
    protected static final float SELECTION_SLOPE = 20.0f;
    int mCurveFit = Key.UNSET;

    @Override // androidx.constraintlayout.motion.widget.Key
    void d(HashSet<String> attributes) {
    }

    KeyPositionBase() {
    }
}
