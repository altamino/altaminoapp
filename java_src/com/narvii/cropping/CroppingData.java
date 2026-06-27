package com.narvii.cropping;

/* loaded from: classes2.dex */
public class CroppingData {
    public String bgColor;
    public boolean dynamic;
    public String dynamicPath;
    public String orgVideoPath;
    public int rotateAngle;
    public float scale;
    public float transformX;
    public float transformXRatio;
    public float transformY;
    public float transformYRatio;

    public CroppingData() {
    }

    public CroppingData(String str, float f, int i, float f2, float f3, String str2, boolean z, String str3) {
        this.orgVideoPath = str;
        this.scale = f;
        this.rotateAngle = i;
        this.transformX = f2;
        this.transformY = f3;
        this.bgColor = str2;
        this.dynamic = z;
        this.dynamicPath = str3;
    }

    public CroppingData(String str, float f, int i, float f2, float f3, String str2, boolean z, String str3, float f4, float f5) {
        this.orgVideoPath = str;
        this.scale = f;
        this.rotateAngle = i;
        this.transformX = f2;
        this.transformY = f3;
        this.bgColor = str2;
        this.dynamic = z;
        this.dynamicPath = str3;
        this.transformXRatio = f4;
        this.transformYRatio = f5;
    }

    public float getScale() {
        return this.scale;
    }

    public void setScale(float f) {
        this.scale = f;
    }

    public int getRotateAngle() {
        return this.rotateAngle;
    }

    public void setRotateAngle(int i) {
        this.rotateAngle = i;
    }

    public float getTransformX() {
        return this.transformX;
    }

    public void setTransformX(float f) {
        this.transformX = f;
    }

    public float getTransformY() {
        return this.transformY;
    }

    public void setTransformY(float f) {
        this.transformY = f;
    }

    public String getBgColor() {
        return this.bgColor;
    }

    public void setBgColor(String str) {
        this.bgColor = str;
    }

    public boolean isDynamic() {
        return this.dynamic;
    }

    public void setDynamic(boolean z) {
        this.dynamic = z;
    }

    public String getDynamicPath() {
        return this.dynamicPath;
    }

    public void setDynamicPath(String str) {
        this.dynamicPath = str;
    }
}
