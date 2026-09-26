package com.google.firebase.encoders.proto;

/* JADX INFO: loaded from: classes10.dex */
public @interface d {

    public enum a {
        DEFAULT,
        SIGNED,
        FIXED
    }

    a intEncoding() default a.DEFAULT;

    int tag();
}
