package com.narvii.post;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.model.Media;
import com.narvii.util.JacksonUtils;

/* loaded from: classes3.dex */
public class StoryUtils {
    public static Media getStoryCoverImageMedia(ObjectNode objectNode) {
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
