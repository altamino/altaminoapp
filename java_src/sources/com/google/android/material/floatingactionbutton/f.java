package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import androidx.annotation.AnimatorRes;
import androidx.annotation.Nullable;
import e3.h;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
interface f {
    @Nullable
    h a();

    boolean b();

    @AnimatorRes
    int c();

    AnimatorSet d();

    void e(@Nullable ExtendedFloatingActionButton.j jVar);

    void f(@Nullable h hVar);

    void g();

    void h();

    void i();

    List<Animator.AnimatorListener> j();

    void onAnimationStart(Animator animator);
}
