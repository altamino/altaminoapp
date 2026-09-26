package com.narvii.video.model;

import android.graphics.PointF;
import androidx.core.view.ViewCompat;
import com.narvii.app.NVApplication;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public class Caption extends BaseAttachmentInfoPack {
    public String fontObjectId;
    public String fontPath;
    public float fontSize;
    public boolean hasShadow;
    public boolean hasStroke;
    public PointF shadowOffset;
    public float strokeWidth;
    public String styleId;
    public String styleObjectId;
    public String text;
    public int strokeColor = ViewCompat.MEASURED_STATE_MASK;
    public int shadowColor = 1711276032;
    public int textColor = -1;
    public boolean isBold = true;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Caption caption = (Caption) obj;
        if (this.textColor != caption.textColor || this.hasStroke != caption.hasStroke || this.strokeColor != caption.strokeColor || this.hasShadow != caption.hasShadow || this.shadowColor != caption.shadowColor || Float.compare(caption.fontSize, this.fontSize) != 0 || Float.compare(caption.strokeWidth, this.strokeWidth) != 0 || Float.compare(caption.scaleX, this.scaleX) != 0 || Float.compare(caption.scaleY, this.scaleY) != 0 || Float.compare(caption.rotation, this.rotation) != 0 || Float.compare(caption.zValue, this.zValue) != 0 || this.isBold != caption.isBold) {
            return false;
        }
        String str = this.text;
        if (str == null ? caption.text != null : !str.equals(caption.text)) {
            return false;
        }
        PointF pointF = this.shadowOffset;
        if (pointF == null ? caption.shadowOffset != null : !pointF.equals(caption.shadowOffset)) {
            return false;
        }
        String str2 = this.styleId;
        if (str2 == null ? caption.styleId != null : !str2.equals(caption.styleId)) {
            return false;
        }
        String str3 = this.styleObjectId;
        if (str3 == null ? caption.styleObjectId != null : !str3.equals(caption.styleObjectId)) {
            return false;
        }
        String str4 = this.fontPath;
        if (str4 == null ? caption.fontPath != null : !str4.equals(caption.fontPath)) {
            return false;
        }
        String str5 = this.fontObjectId;
        if (str5 == null ? caption.fontObjectId != null : !str5.equals(caption.fontObjectId)) {
            return false;
        }
        PointF pointF2 = this.anchor;
        if (pointF2 == null ? caption.anchor != null : !pointF2.equals(caption.anchor)) {
            return false;
        }
        PointF pointF3 = this.translation;
        PointF pointF4 = caption.translation;
        if (pointF3 != null) {
            return pointF3.equals(pointF4);
        }
        return pointF4 == null;
    }

    @Override // com.narvii.video.model.BaseClipInfoPack
    public String getTrackContent() {
        return this.text;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Caption m1638clone() {
        return (Caption) JacksonUtils.readAs(JacksonUtils.writeAsString(this), Caption.class);
    }

    public int hashCode() {
        String str = this.text;
        int iHashCode = (((((((((((str != null ? str.hashCode() : 0) * 31) + this.textColor) * 31) + (this.hasStroke ? 1 : 0)) * 31) + this.strokeColor) * 31) + (this.hasShadow ? 1 : 0)) * 31) + this.shadowColor) * 31;
        PointF pointF = this.shadowOffset;
        int iHashCode2 = (iHashCode + (pointF != null ? pointF.hashCode() : 0)) * 31;
        String str2 = this.styleId;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.styleObjectId;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.fontPath;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.fontObjectId;
        int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31;
        float f = this.fontSize;
        int iFloatToIntBits = (iHashCode6 + (f != 0.0f ? Float.floatToIntBits(f) : 0)) * 31;
        float f6 = this.strokeWidth;
        int iFloatToIntBits2 = (iFloatToIntBits + (f6 != 0.0f ? Float.floatToIntBits(f6) : 0)) * 31;
        float f7 = this.scaleX;
        int iFloatToIntBits3 = (iFloatToIntBits2 + (f7 != 0.0f ? Float.floatToIntBits(f7) : 0)) * 31;
        float f10 = this.scaleY;
        int iFloatToIntBits4 = (iFloatToIntBits3 + (f10 != 0.0f ? Float.floatToIntBits(f10) : 0)) * 31;
        PointF pointF2 = this.anchor;
        int iHashCode7 = (iFloatToIntBits4 + (pointF2 != null ? pointF2.hashCode() : 0)) * 31;
        PointF pointF3 = this.translation;
        int iHashCode8 = (iHashCode7 + (pointF3 != null ? pointF3.hashCode() : 0)) * 31;
        float f11 = this.rotation;
        int iFloatToIntBits5 = (iHashCode8 + (f11 != 0.0f ? Float.floatToIntBits(f11) : 0)) * 31;
        float f12 = this.zValue;
        return ((iFloatToIntBits5 + (f12 != 0.0f ? Float.floatToIntBits(f12) : 0)) * 31) + (this.isBold ? 1 : 0);
    }

    public Caption() {
        NVApplication nVApplicationInstance = NVApplication.instance();
        this.strokeWidth = Utils.dpToPx(nVApplicationInstance, 4.0f);
        this.fontSize = Utils.dpToPx(nVApplicationInstance, 18.0f);
        this.shadowOffset = new PointF(0.0f, -Utils.dpToPx(nVApplicationInstance, 2.0f));
    }

    @Override // com.narvii.video.model.BaseAttachmentInfoPack, com.narvii.video.interfaces.ITimelineClip
    @NotNull
    public Caption copy() {
        return m1638clone();
    }
}
