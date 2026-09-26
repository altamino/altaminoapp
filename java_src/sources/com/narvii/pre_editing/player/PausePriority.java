package com.narvii.pre_editing.player;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class PausePriority {
    public static final int BACKGROUND = 10;

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int IDLE = 0;
    public static final int SEEK = 30;
    public static final int SURFACE_CREATED = 5;
    public static final int TRIM = 40;
    public static final int USER_PAUSE = 50;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }
}
