package com.narvii.media.online.audio.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.asset.IAsset;
import com.narvii.asset.IAssetHost;
import com.narvii.asset.NVAsset;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class AssetData extends NVObject implements IAssetHost {

    @JsonIgnore
    private NVObject cacheRefObject;

    @JsonDeserialize(contentAs = AssetCategory.class)
    public List<AssetCategory> categoryList;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public String id;
    public String objectId;
    public int objectType;
    public JsonNode refObject;
    public List<String> searchKeywords;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.id;
    }

    public NVObject getRefObject() {
        if (this.cacheRefObject == null) {
            this.cacheRefObject = parseRefObject(this.objectType, this.refObject);
        }
        return this.cacheRefObject;
    }

    private NVObject parseRefObject(int i, JsonNode jsonNode) {
        if (jsonNode == null) {
            return null;
        }
        try {
            if (i == 101) {
                return (NVObject) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNode, Sound.class);
            }
            if (i == 133 || i == 134) {
                return (NVObject) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNode, NVAsset.class);
            }
            Log.e("Unknown asset item ref object type: " + jsonNode);
            return null;
        } catch (Exception e) {
            Log.e("asset item ref object parse error: ", e);
            return null;
        }
    }

    @Override // com.narvii.model.NVObject
    public boolean isAccessibleByUser(User user) {
        NVObject refObject = getRefObject();
        if (refObject != null) {
            return refObject.isAccessibleByUser(user);
        }
        return super.isAccessibleByUser(user);
    }

    @Override // com.narvii.asset.IAssetHost
    public IAsset getIAsset() {
        Cloneable refObject = getRefObject();
        if (refObject instanceof IAsset) {
            return (IAsset) refObject;
        }
        return null;
    }
}
