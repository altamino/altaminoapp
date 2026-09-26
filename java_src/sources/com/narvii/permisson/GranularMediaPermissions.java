package com.narvii.permisson;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public enum GranularMediaPermissions {
    READ_MEDIA_IMAGES,
    READ_MEDIA_VIDEO,
    READ_MEDIA_AUDIO;

    private static final /* synthetic */ z7.a $ENTRIES = z7.b.a(values());

    @NotNull
    public static z7.a<GranularMediaPermissions> getEntries() {
        return $ENTRIES;
    }
}
