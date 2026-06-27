package com.narvii.pre_editing.player;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: PausePriority.kt */
/* loaded from: classes3.dex */
public final class PausePriority {
    public static final int BACKGROUND = 10;
    public static final Companion Companion = new Companion(null);
    public static final int IDLE = 0;
    public static final int SEEK = 30;
    public static final int SURFACE_CREATED = 5;
    public static final int TRIM = 40;
    public static final int USER_PAUSE = 50;

    /* compiled from: PausePriority.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
