package com.narvii.model;

import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes3.dex */
public class BubbleSlot {
    public int align;
    public String path;
    public String stickerId;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f2486x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f2487y;

    public BubbleSlot() {
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
        return bubbleSlot.f2486x == this.f2486x && bubbleSlot.f2487y == this.f2487y && bubbleSlot.align == this.align && Utils.isEquals(this.path, bubbleSlot.path) && Utils.isEquals(this.stickerId, bubbleSlot.stickerId);
    }

    public BubbleSlot(String str, int i10, int i11) {
        this.f2486x = i10;
        this.f2487y = i11;
        this.path = str;
    }
}
