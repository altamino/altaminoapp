package com.narvii.post;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.model.Media;
import com.narvii.model.api.CoverPost;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class CoverUtils {
    public static Media getCoverMedia(CoverPost coverPost) {
        List<Media> mediaList = coverPost.getMediaList();
        int coverMediaIndex = getCoverMediaIndex(coverPost);
        if (mediaList == null || coverMediaIndex < 0 || coverMediaIndex >= mediaList.size()) {
            return null;
        }
        return mediaList.get(coverMediaIndex);
    }

    public static void setCoverMedia(CoverPost coverPost, int i10) {
        ObjectNode extensions = coverPost.getExtensions();
        if (extensions == null) {
            return;
        }
        if (i10 == -1) {
            JsonNode jsonNode = extensions.get("style");
            if (jsonNode != null) {
                ((ObjectNode) jsonNode).remove("coverMediaIndexList");
                return;
            }
            return;
        }
        int size = CollectionUtils.getSize(coverPost.getMediaList());
        if (i10 < 0 || i10 >= size) {
            Log.e("cover", "media list size: " + size + " and index is " + i10);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i10));
        JsonNode jsonNodeCreateObjectNode = extensions.get("style");
        if (jsonNodeCreateObjectNode == null) {
            jsonNodeCreateObjectNode = JacksonUtils.createObjectNode();
        }
        ((ObjectNode) jsonNodeCreateObjectNode).put("coverMediaIndexList", JacksonUtils.DEFAULT_MAPPER.valueToTree(arrayList));
        extensions.put("style", jsonNodeCreateObjectNode);
    }

    public static int getCoverMediaIndex(CoverPost coverPost) {
        JsonNode jsonNodeNodePath;
        List<Media> mediaList = coverPost.getMediaList();
        if (CollectionUtils.getSize(mediaList) != 0 && (jsonNodeNodePath = JacksonUtils.nodePath(coverPost.getExtensions(), "style", "coverMediaIndexList")) != null && jsonNodeNodePath.isArray()) {
            try {
                Integer[] numArr = (Integer[]) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, Integer[].class);
                if (numArr != null && numArr.length > 0) {
                    int iIntValue = numArr[0].intValue();
                    if (mediaList != null && iIntValue >= 0 && iIntValue < mediaList.size()) {
                        return iIntValue;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    public static Media getCoverMedia(ObjectNode objectNode) {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(objectNode, "style", "coverMediaList");
        if (jsonNodeNodePath != null && jsonNodeNodePath.isArray()) {
            try {
                Media[] mediaArr = (Media[]) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, Media[].class);
                if (mediaArr != null && mediaArr.length > 0) {
                    return mediaArr[0];
                }
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static void setCoverMedia(ObjectNode objectNode, List<Media> list) {
        if (objectNode == null) {
            return;
        }
        JsonNode jsonNodeCreateObjectNode = objectNode.get("style");
        if (jsonNodeCreateObjectNode == null) {
            jsonNodeCreateObjectNode = JacksonUtils.createObjectNode();
        }
        ((ObjectNode) jsonNodeCreateObjectNode).put("coverMediaList", JacksonUtils.DEFAULT_MAPPER.valueToTree(list));
        objectNode.put("style", jsonNodeCreateObjectNode);
    }
}
