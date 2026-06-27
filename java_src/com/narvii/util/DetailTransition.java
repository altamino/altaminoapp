package com.narvii.util;

import android.transition.ChangeBounds;
import android.transition.ChangeClipBounds;
import android.transition.ChangeTransform;
import android.transition.TransitionSet;

/* loaded from: classes3.dex */
public class DetailTransition extends TransitionSet {
    public DetailTransition() {
        setOrdering(0);
        addTransition(new ChangeTransform());
        addTransition(new ChangeBounds());
        addTransition(new ChangeClipBounds());
    }
}
