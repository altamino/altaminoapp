package com.narvii.post;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.model.Media;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import java.util.List;

/* loaded from: classes3.dex */
public class BackgroundUtils {
    public static int getBackgroundColor(ObjectNode objectNode) {
        String strNodeString = JacksonUtils.nodeString(objectNode, TtmlNode.TAG_STYLE, TtmlNode.ATTR_TTS_BACKGROUND_COLOR);
        if (strNodeString == null) {
            return 0;
        }
        try {
            return StringUtils.parseColor(strNodeString);
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static void setBackgroundColor(ObjectNode objectNode, int i) {
        JsonNode jsonNode;
        if (i == 0) {
            if (objectNode == null || (jsonNode = objectNode.get(TtmlNode.TAG_STYLE)) == null) {
                return;
            }
            ((ObjectNode) jsonNode).remove(TtmlNode.ATTR_TTS_BACKGROUND_COLOR);
            return;
        }
        if (objectNode == null) {
            return;
        }
        JsonNode jsonNodeCreateObjectNode = objectNode.get(TtmlNode.TAG_STYLE);
        if (jsonNodeCreateObjectNode == null) {
            jsonNodeCreateObjectNode = JacksonUtils.createObjectNode();
        }
        ((ObjectNode) jsonNodeCreateObjectNode).put(TtmlNode.ATTR_TTS_BACKGROUND_COLOR, StringUtils.formatColor(i));
        objectNode.put(TtmlNode.TAG_STYLE, jsonNodeCreateObjectNode);
    }

    public static Media getBackgroundMedia(ObjectNode objectNode) {
        Media[] backgroundMediaArray = getBackgroundMediaArray(objectNode);
        if (backgroundMediaArray != null && backgroundMediaArray.length > 0) {
            return backgroundMediaArray[0];
        }
        return null;
    }

    public static Media[] getBackgroundMediaArray(ObjectNode objectNode) {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(objectNode, TtmlNode.TAG_STYLE, "backgroundMediaList");
        if (jsonNodeNodePath != null && jsonNodeNodePath.isArray()) {
            try {
                Media[] mediaArr = (Media[]) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, Media[].class);
                if (mediaArr == null) {
                    return null;
                }
                if (mediaArr.length > 0) {
                    return mediaArr;
                }
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static void setBackgroundMediaList(ObjectNode objectNode, List<Media> list) {
        if (objectNode == null) {
            return;
        }
        JsonNode jsonNodeCreateObjectNode = objectNode.get(TtmlNode.TAG_STYLE);
        if (jsonNodeCreateObjectNode == null) {
            jsonNodeCreateObjectNode = JacksonUtils.createObjectNode();
        }
        ((ObjectNode) jsonNodeCreateObjectNode).put("backgroundMediaList", JacksonUtils.DEFAULT_MAPPER.valueToTree(list));
        objectNode.put(TtmlNode.TAG_STYLE, jsonNodeCreateObjectNode);
    }
}
