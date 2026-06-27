package com.narvii.post;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.model.Media;
import com.narvii.model.api.CoverPost;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class CoverUtils {
    public static void setCoverMedia(CoverPost coverPost, int i) {
        ObjectNode extensions = coverPost.getExtensions();
        if (extensions == null) {
            return;
        }
        if (i == -1) {
            JsonNode jsonNode = extensions.get(TtmlNode.TAG_STYLE);
            if (jsonNode != null) {
                ((ObjectNode) jsonNode).remove("coverMediaIndexList");
                return;
            }
            return;
        }
        int size = CollectionUtils.getSize(coverPost.getMediaList());
        if (i < 0 || i >= size) {
            Log.e("cover", "media list size: " + size + " and index is " + i);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i));
        JsonNode jsonNodeCreateObjectNode = extensions.get(TtmlNode.TAG_STYLE);
        if (jsonNodeCreateObjectNode == null) {
            jsonNodeCreateObjectNode = JacksonUtils.createObjectNode();
        }
        ((ObjectNode) jsonNodeCreateObjectNode).put("coverMediaIndexList", JacksonUtils.DEFAULT_MAPPER.valueToTree(arrayList));
        extensions.put(TtmlNode.TAG_STYLE, jsonNodeCreateObjectNode);
    }

    public static Media getCoverMedia(CoverPost coverPost) {
        List<Media> mediaList = coverPost.getMediaList();
        int coverMediaIndex = getCoverMediaIndex(coverPost);
        if (mediaList == null || coverMediaIndex < 0 || coverMediaIndex >= mediaList.size()) {
            return null;
        }
        return mediaList.get(coverMediaIndex);
    }

    public static int getCoverMediaIndex(CoverPost coverPost) {
        JsonNode jsonNodeNodePath;
        List<Media> mediaList = coverPost.getMediaList();
        if (CollectionUtils.getSize(mediaList) != 0 && (jsonNodeNodePath = JacksonUtils.nodePath(coverPost.getExtensions(), TtmlNode.TAG_STYLE, "coverMediaIndexList")) != null && jsonNodeNodePath.isArray()) {
            try {
                Integer[] numArr = (Integer[]) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, Integer[].class);
                if (numArr != null && numArr.length > 0) {
                    int iIntValue = numArr[0].intValue();
                    if (mediaList != null && iIntValue >= 0) {
                        if (iIntValue < mediaList.size()) {
                            return iIntValue;
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    public static void setCoverMedia(ObjectNode objectNode, List<Media> list) {
        if (objectNode == null) {
            return;
        }
        JsonNode jsonNodeCreateObjectNode = objectNode.get(TtmlNode.TAG_STYLE);
        if (jsonNodeCreateObjectNode == null) {
            jsonNodeCreateObjectNode = JacksonUtils.createObjectNode();
        }
        ((ObjectNode) jsonNodeCreateObjectNode).put("coverMediaList", JacksonUtils.DEFAULT_MAPPER.valueToTree(list));
        objectNode.put(TtmlNode.TAG_STYLE, jsonNodeCreateObjectNode);
    }

    public static Media getCoverMedia(ObjectNode objectNode) {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(objectNode, TtmlNode.TAG_STYLE, "coverMediaList");
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
}
