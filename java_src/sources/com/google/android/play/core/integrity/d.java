package com.google.android.play.core.integrity;

import android.net.Network;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes7.dex */
public abstract class d {

    public static abstract class a {
        public abstract d a();

        public abstract a b(long j6);

        public abstract a c(String str);
    }

    public static a b() {
        return new p();
    }

    @Nullable
    @RequiresApi
    public abstract Network a();

    @Nullable
    public abstract Long c();

    public abstract String d();
}
