package com.narvii.cropping;

/* JADX INFO: loaded from: classes10.dex */
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

    public String getBgColor() {
        return this.bgColor;
    }

    public String getDynamicPath() {
        return this.dynamicPath;
    }

    public int getRotateAngle() {
        return this.rotateAngle;
    }

    public float getScale() {
        return this.scale;
    }

    public float getTransformX() {
        return this.transformX;
    }

    public float getTransformY() {
        return this.transformY;
    }

    public boolean isDynamic() {
        return this.dynamic;
    }

    public void setBgColor(String str) {
        this.bgColor = str;
    }

    public void setDynamic(boolean z6) {
        this.dynamic = z6;
    }

    public void setDynamicPath(String str) {
        this.dynamicPath = str;
    }

    public void setRotateAngle(int i10) {
        this.rotateAngle = i10;
    }

    public void setScale(float f) {
        this.scale = f;
    }

    public void setTransformX(float f) {
        this.transformX = f;
    }

    public void setTransformY(float f) {
        this.transformY = f;
    }

    public CroppingData(String str, float f, int i10, float f6, float f7, String str2, boolean z6, String str3) {
        this.orgVideoPath = str;
        this.scale = f;
        this.rotateAngle = i10;
        this.transformX = f6;
        this.transformY = f7;
        this.bgColor = str2;
        this.dynamic = z6;
        this.dynamicPath = str3;
    }

    public CroppingData(String str, float f, int i10, float f6, float f7, String str2, boolean z6, String str3, float f10, float f11) {
        this.orgVideoPath = str;
        this.scale = f;
        this.rotateAngle = i10;
        this.transformX = f6;
        this.transformY = f7;
        this.bgColor = str2;
        this.dynamic = z6;
        this.dynamicPath = str3;
        this.transformXRatio = f10;
        this.transformYRatio = f11;
    }
}
