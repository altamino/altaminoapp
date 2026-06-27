package com.narvii.amino.speeddial.mode;

/* loaded from: classes2.dex */
public class LiveItemSpec {
    public int backgroundColor;
    public String backgroundUrl;
    public int iconId;
    public int titleId;

    public LiveItemSpec(int i, int i2, int i3) {
        this(i, i2, i3, null);
    }

    public LiveItemSpec(int i, int i2, int i3, String str) {
        this.iconId = i;
        this.titleId = i2;
        this.backgroundColor = i3;
        this.backgroundUrl = str;
    }
}
