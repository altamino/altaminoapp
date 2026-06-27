package com.narvii.theme;

import com.narvii.util.JacksonUtils;

/* loaded from: classes3.dex */
public class ThemeImage {
    public float height;
    public float[] imageMatrix;
    public String path;
    public float width;
    public float x;
    public float y;

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ThemeImage m56clone() {
        return (ThemeImage) JacksonUtils.readAs(JacksonUtils.writeAsString(this), ThemeImage.class);
    }

    public String toString() {
        return "x=" + this.x + ",y=" + this.y + ",width=" + this.width + ",height=" + this.height + ",path=" + this.path + ", matrix=" + this.imageMatrix;
    }
}
