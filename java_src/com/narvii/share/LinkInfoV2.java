package com.narvii.share;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.util.JacksonUtils;

/* loaded from: classes3.dex */
public class LinkInfoV2 {
    public ObjectNode extensions;
    public LinkInfo linkInfoCache;
    public String path;

    public LinkInfo getInnerLinkInfo() {
        LinkInfo linkInfo = this.linkInfoCache;
        if (linkInfo != null) {
            return linkInfo;
        }
        try {
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "linkInfo");
            if (jsonNodeNodePath == null) {
                return null;
            }
            return (LinkInfo) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, LinkInfo.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
