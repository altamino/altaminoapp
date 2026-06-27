package com.narvii.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class BubbleInfo {
    public static final int DIRECTION_BOTTOM = 4;
    public static final int DIRECTION_LEFT = 2;
    public static final int DIRECTION_RIGHT = 3;
    public static final int DIRECTION_TOP = 1;
    public static final String ELEMENT_TYPE_BG = "background";

    @JsonDeserialize(contentAs = SlotPoint.class)
    public List<SlotPoint> allowedSlots;

    @JsonProperty("backgroundPath")
    public String backgroundPath;

    @JsonDeserialize(using = JacksonUtils.ColorDeserializer.class)
    @JsonSerialize(using = JacksonUtils.ColorSerializer.class)
    public int color;
    public List<Integer> contentInsets;
    public String coverImage;
    public String id;

    @JsonDeserialize(using = JacksonUtils.ColorDeserializer.class)
    @JsonSerialize(using = JacksonUtils.ColorSerializer.class)
    public int linkColor;
    public String name;
    public String previewBackgroundUrl;
    public List<BubbleSlot> slots;
    public String templateId;
    public int version;
    public int vertexInset;
    public List<Integer> zoomPoint;

    public String getPath(SlotPoint slotPoint) {
        BubbleSlot slotByPosition = getSlotByPosition(slotPoint);
        if (slotByPosition == null) {
            return null;
        }
        return slotByPosition.path;
    }

    public BubbleSlot getSlotByPosition(SlotPoint slotPoint) {
        if (slotPoint == null) {
            return null;
        }
        return getSlotByPosition(slotPoint.getSlotKey());
    }

    public BubbleSlot getSlotByPosition(String str) {
        List<BubbleSlot> list = this.slots;
        if (list == null) {
            return null;
        }
        for (BubbleSlot bubbleSlot : list) {
            if (Utils.isEqualsNotNull(SlotPoint.getSlotKey(bubbleSlot.align, bubbleSlot.x, bubbleSlot.y), str)) {
                return bubbleSlot;
            }
        }
        return null;
    }

    public String getPath(String str) {
        if ("background".equals(str)) {
            return this.backgroundPath;
        }
        List<BubbleSlot> list = this.slots;
        if (list == null) {
            return null;
        }
        for (BubbleSlot bubbleSlot : list) {
            if (Utils.isEqualsNotNull(str, SlotPoint.getSlotKey(bubbleSlot.align, bubbleSlot.x, bubbleSlot.y))) {
                return bubbleSlot.path;
            }
        }
        return null;
    }

    public int getTextColor() {
        return this.color;
    }

    public int getLinkColor() {
        return this.linkColor;
    }

    public String getBubbleUploadId() {
        return this.templateId;
    }

    public void updateSlot(SlotPoint slotPoint, Sticker sticker, String str) {
        if (this.slots == null) {
            this.slots = new ArrayList();
        }
        if (slotPoint == null) {
            Log.e("BubbleService", "the point is null");
            return;
        }
        BubbleSlot slotByPosition = getSlotByPosition(slotPoint);
        if (slotByPosition == null) {
            slotByPosition = new BubbleSlot();
            this.slots.add(slotByPosition);
        }
        if (sticker != null) {
            slotByPosition.x = slotPoint.x;
            slotByPosition.y = slotPoint.y;
            slotByPosition.align = slotPoint.align;
            slotByPosition.stickerId = sticker.stickerId;
            if (str == null) {
                str = sticker.getStickerPath();
            }
            slotByPosition.path = str;
            return;
        }
        this.slots.remove(slotByPosition);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BubbleInfo)) {
            return false;
        }
        BubbleInfo bubbleInfo = (BubbleInfo) obj;
        if (Utils.isEquals(bubbleInfo.id, this.id) && Utils.isEquals(bubbleInfo.backgroundPath, this.backgroundPath)) {
            return Utils.isEquals(this.slots, bubbleInfo.slots) || (CollectionUtils.isEmpty(this.slots) && CollectionUtils.isEmpty(bubbleInfo.slots));
        }
        return false;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BubbleInfo m45clone() {
        return (BubbleInfo) JacksonUtils.readAs(JacksonUtils.writeAsString(this), BubbleInfo.class);
    }
}
