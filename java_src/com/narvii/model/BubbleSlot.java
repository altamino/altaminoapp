package com.narvii.model;

import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class BubbleSlot {
    public int align;
    public String path;
    public String stickerId;
    public int x;
    public int y;

    public BubbleSlot() {
    }

    public BubbleSlot(String str, int i, int i2) {
        this.x = i;
        this.y = i2;
        this.path = str;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BubbleSlot)) {
            return false;
        }
        BubbleSlot bubbleSlot = (BubbleSlot) obj;
        return bubbleSlot.x == this.x && bubbleSlot.y == this.y && bubbleSlot.align == this.align && Utils.isEquals(this.path, bubbleSlot.path) && Utils.isEquals(this.stickerId, bubbleSlot.stickerId);
    }
}
