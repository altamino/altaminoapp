package com.narvii.util;

import android.transition.ChangeBounds;
import android.transition.ChangeClipBounds;
import android.transition.ChangeTransform;
import android.transition.TransitionSet;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
public class DetailTransition extends TransitionSet {
    public DetailTransition() {
        setOrdering(0);
        addTransition(new ChangeTransform());
        addTransition(new ChangeBounds());
        addTransition(new ChangeClipBounds());
    }
}
