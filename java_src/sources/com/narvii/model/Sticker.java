package com.narvii.model;

import android.text.TextUtils;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.narvii.media.IEditorSticker;
import com.narvii.util.LenientObject;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.emojione.EmojionePng;
import java.util.ArrayList;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public class Sticker extends NVObject implements IEditorSticker, LenientObject {
    public static final String MOOD_STICKER_PREFIX = "e/";
    public static final String STICKER_SCHEME = "ndcsticker://";

    @JsonProperty("iconV2")
    public String icon;
    public boolean isGift;
    public String name;

    @JsonProperty("smallIconV2")
    public String smallIcon;
    public int sourceType;
    public int status;
    public String stickerCollectionId;
    public String stickerId;
    public int stickerStatus = 0;

    @JsonProperty("mediumIconV2")
    public String thumbnail;

    public Sticker() {
    }

    @Override // com.narvii.util.LenientObject
    public int checkLenientPart(Object obj) {
        if (obj != null && obj.hashCode() == hashCode()) {
            if (obj == this) {
                return 0;
            }
            if (obj instanceof Sticker) {
                Sticker sticker = (Sticker) obj;
                ArrayList arrayList = new ArrayList();
                arrayList.add(Integer.valueOf(Utils.compareLenientObject(sticker.icon, this.icon)));
                arrayList.add(Integer.valueOf(Utils.compareLenientObject(sticker.thumbnail, this.thumbnail)));
                arrayList.add(Integer.valueOf(Utils.compareLenientObject(sticker.smallIcon, this.smallIcon)));
                if (arrayList.contains(2)) {
                    return 2;
                }
                return arrayList.contains(1) ? 1 : 0;
            }
        }
        return 2;
    }

    @Override // com.narvii.media.IEditorSticker
    @Nullable
    public String collectionId() {
        return this.stickerCollectionId;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.stickerId;
    }

    @Override // com.narvii.model.NVObject
    public boolean isDisabled() {
        return this.status == 9;
    }

    public boolean isGift() {
        return this.isGift;
    }

    @Override // com.narvii.util.LenientObject
    public boolean isNormalPartEqual(Object obj) {
        if (obj == null || obj.hashCode() != hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Sticker)) {
            return false;
        }
        Sticker sticker = (Sticker) obj;
        return sticker.status == this.status && Utils.isEquals(sticker.stickerId, this.stickerId) && Utils.isEquals(sticker.name, this.name) && Utils.isEquals(sticker.stickerCollectionId, this.stickerCollectionId) && Utils.isEquals(Boolean.valueOf(sticker.isGift), Boolean.valueOf(this.isGift));
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 113;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return this.stickerCollectionId;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }

    @Override // com.narvii.media.IEditorSticker
    public int stickerStatus() {
        return this.stickerStatus;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    public Sticker(String str) {
        this.stickerId = MOOD_STICKER_PREFIX + StringUtils.byteArrayToHexString(str.getBytes());
    }

    public static boolean isEmpty(Sticker sticker) {
        return sticker == null || TextUtils.isEmpty(sticker.id());
    }

    public boolean isLocalMood() {
        String str = this.stickerId;
        return str != null && str.startsWith(MOOD_STICKER_PREFIX);
    }

    @Override // com.narvii.util.LenientObject
    public int checkEqual(Object obj) {
        if (!isNormalPartEqual(obj)) {
            return 2;
        }
        return checkLenientPart(obj);
    }

    public boolean equals(Object obj) {
        if (checkEqual(obj) == 0) {
            return true;
        }
        return false;
    }

    public String getMoodUnicode() {
        if (isLocalMood() && this.stickerId.length() >= 2) {
            return new String(StringUtils.hex2bytes(this.stickerId.substring(2)));
        }
        return null;
    }

    public String getStickerPath() {
        if (isLocalMood()) {
            return "assets://" + EmojionePng.getAssetsPath(getMoodUnicode());
        }
        return this.smallIcon;
    }
}
