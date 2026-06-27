package com.narvii.master.search.model;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.headlines.Headline;
import com.narvii.headlines.HeadlineListResponse;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.story.StoryTopic;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.JacksonUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@JsonDeserialize(using = SearchResultSectionDeserialize.class)
/* loaded from: classes3.dex */
public class GlobalSearchResultSection {
    public static final String SECTION_TYPE_POST = "POST";
    public static final String SECTION_TYPE_STORY = "STORY";
    public static final String SECTION_TYPE_TOPIC = "TOPIC";
    public HashMap<Integer, Community> communityInfoMapping;
    public int hitsTotal;
    public int objectSubType;
    public int objectType;
    public ArrayList<NVObject> resultList;
    public String sectionType;
    public HashMap<Integer, User> userProfileMapping;

    public static class SearchResultSectionDeserialize extends JsonDeserializer<GlobalSearchResultSection> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public GlobalSearchResultSection deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Class cls;
            JsonNode jsonNode = (JsonNode) jsonParser.readValueAsTree();
            int iNodeInt = JacksonUtils.nodeInt(jsonNode, -1, ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE);
            int iNodeInt2 = JacksonUtils.nodeInt(jsonNode, -1, "objectSubType");
            int iNodeInt3 = JacksonUtils.nodeInt(jsonNode, -1, "hitsTotal");
            String strNodeString = JacksonUtils.nodeString(jsonNode, "sectionType");
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(jsonNode, "resultList");
            JsonNode jsonNodeNodePath2 = JacksonUtils.nodePath(jsonNode, "communityInfoMapping");
            JsonNode jsonNodeNodePath3 = JacksonUtils.nodePath(jsonNode, "userProfileMapping");
            GlobalSearchResultSection globalSearchResultSection = new GlobalSearchResultSection();
            globalSearchResultSection.objectType = iNodeInt;
            globalSearchResultSection.objectSubType = iNodeInt2;
            globalSearchResultSection.sectionType = strNodeString;
            globalSearchResultSection.hitsTotal = iNodeInt3;
            if (jsonNodeNodePath2 != null) {
                globalSearchResultSection.communityInfoMapping = (HashMap) JacksonUtils.DEFAULT_MAPPER.convertValue(jsonNodeNodePath2, new TypeReference<Map<Integer, Community>>() { // from class: com.narvii.master.search.model.GlobalSearchResultSection.SearchResultSectionDeserialize.1
                });
            }
            if (jsonNodeNodePath3 != null) {
                globalSearchResultSection.userProfileMapping = (HashMap) JacksonUtils.DEFAULT_MAPPER.convertValue(jsonNodeNodePath3, new TypeReference<Map<Integer, User>>() { // from class: com.narvii.master.search.model.GlobalSearchResultSection.SearchResultSectionDeserialize.2
                });
            }
            if (iNodeInt != 1) {
                cls = iNodeInt != 128 ? null : StoryTopic.class;
            } else {
                cls = Blog.class;
            }
            if (cls == null) {
                globalSearchResultSection.resultList = null;
            } else if (iNodeInt == 1 && iNodeInt2 == 9) {
                ArrayList listUsing = JacksonUtils.readListUsing(jsonNodeNodePath != null ? jsonNodeNodePath.toString() : null, new Blog.BlogDeserializer());
                globalSearchResultSection.resultList = new ArrayList<>();
                if (listUsing != null) {
                    globalSearchResultSection.resultList.addAll(listUsing);
                }
            } else if (iNodeInt == 1) {
                ArrayList listAs = JacksonUtils.readListAs(jsonNodeNodePath != null ? jsonNodeNodePath.toString() : null, Headline.class);
                globalSearchResultSection.resultList = new ArrayList<>();
                if (listAs != null) {
                    HeadlineListResponse headlineListResponse = new HeadlineListResponse();
                    headlineListResponse.headlinePostList = listAs;
                    List<Feed> list = headlineListResponse.list();
                    if (list != null) {
                        globalSearchResultSection.resultList.addAll(list);
                    }
                }
            } else {
                globalSearchResultSection.resultList = (ArrayList) JacksonUtils.DEFAULT_MAPPER.readValue(jsonNodeNodePath == null ? "" : jsonNodeNodePath.toString(), JacksonUtils.DEFAULT_MAPPER.getTypeFactory().constructCollectionType(ArrayList.class, cls));
            }
            return globalSearchResultSection;
        }
    }
}
