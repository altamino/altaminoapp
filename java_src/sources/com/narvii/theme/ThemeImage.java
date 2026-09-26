package com.narvii.theme;

import com.narvii.util.JacksonUtils;

/* JADX INFO: loaded from: classes9.dex */
public class ThemeImage {
    public float height;
    public float[] imageMatrix;
    public String path;
    public float width;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f2753x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f2754y;

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ThemeImage m1632clone() {
        return (ThemeImage) JacksonUtils.readAs(JacksonUtils.writeAsString(this), getClass());
    }

    public String toString() {
        return "x=" + this.f2753x + ",y=" + this.f2754y + ",width=" + this.width + ",height=" + this.height + ",path=" + this.path + ", matrix=" + this.imageMatrix;
    }
}
