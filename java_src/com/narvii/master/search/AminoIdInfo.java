package com.narvii.master.search;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.JacksonUtils;
import java.io.IOException;

@JsonDeserialize(using = AminoIdInfoDeserializer.class)
/* loaded from: classes3.dex */
public class AminoIdInfo extends NVObject {
    public String aminoId;
    public String objectId;
    public int objectType;
    public NVObject refObject;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return -1;
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
        return this.objectId;
    }

    public static class AminoIdInfoDeserializer extends JsonDeserializer<AminoIdInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public AminoIdInfo deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            JsonNode jsonNode = (JsonNode) jsonParser.readValueAsTree();
            int iNodeInt = JacksonUtils.nodeInt(jsonNode, -1, ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE);
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(jsonNode, "refObject");
            AminoIdInfo aminoIdInfo = new AminoIdInfo();
            aminoIdInfo.objectType = iNodeInt;
            aminoIdInfo.aminoId = JacksonUtils.nodeString(jsonNode, "aminoId");
            aminoIdInfo.objectId = JacksonUtils.nodeString(jsonNode, ModerationHistoryBaseFragment.PARAMS_OBJECT_ID);
            if (iNodeInt == 0) {
                aminoIdInfo.refObject = (NVObject) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, User.class);
                return aminoIdInfo;
            }
            if (iNodeInt != 16) {
                return null;
            }
            aminoIdInfo.refObject = (NVObject) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, Community.class);
            return aminoIdInfo;
        }
    }
}
