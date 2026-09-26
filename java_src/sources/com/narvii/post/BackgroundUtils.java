package com.narvii.post;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.model.Media;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class BackgroundUtils {
    public static int getBackgroundColor(ObjectNode objectNode) {
        String strNodeString = JacksonUtils.nodeString(objectNode, "style", "backgroundColor");
        if (strNodeString == null) {
            return 0;
        }
        try {
            return StringUtils.parseColor(strNodeString);
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static Media[] getBackgroundMediaArray(ObjectNode objectNode) {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(objectNode, "style", "backgroundMediaList");
        if (jsonNodeNodePath != null && jsonNodeNodePath.isArray()) {
            try {
                Media[] mediaArr = (Media[]) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, Media[].class);
                if (mediaArr != null && mediaArr.length > 0) {
                    return mediaArr;
                }
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static void setBackgroundColor(ObjectNode objectNode, int i10) {
        JsonNode jsonNode;
        if (i10 == 0) {
            if (objectNode == null || (jsonNode = objectNode.get("style")) == null) {
                return;
            }
            ((ObjectNode) jsonNode).remove("backgroundColor");
            return;
        }
        if (objectNode == null) {
            return;
        }
        JsonNode jsonNodeCreateObjectNode = objectNode.get("style");
        if (jsonNodeCreateObjectNode == null) {
            jsonNodeCreateObjectNode = JacksonUtils.createObjectNode();
        }
        ((ObjectNode) jsonNodeCreateObjectNode).put("backgroundColor", StringUtils.formatColor(i10));
        objectNode.put("style", jsonNodeCreateObjectNode);
    }

    public static void setBackgroundMediaList(ObjectNode objectNode, List<Media> list) {
        if (objectNode == null) {
            return;
        }
        JsonNode jsonNodeCreateObjectNode = objectNode.get("style");
        if (jsonNodeCreateObjectNode == null) {
            jsonNodeCreateObjectNode = JacksonUtils.createObjectNode();
        }
        ((ObjectNode) jsonNodeCreateObjectNode).put("backgroundMediaList", JacksonUtils.DEFAULT_MAPPER.valueToTree(list));
        objectNode.put("style", jsonNodeCreateObjectNode);
    }

    public static Media getBackgroundMedia(ObjectNode objectNode) {
        Media[] backgroundMediaArray = getBackgroundMediaArray(objectNode);
        if (backgroundMediaArray == null || backgroundMediaArray.length <= 0) {
            return null;
        }
        return backgroundMediaArray[0];
    }
}
