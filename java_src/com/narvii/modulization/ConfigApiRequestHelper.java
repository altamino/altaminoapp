package com.narvii.modulization;

import android.text.TextUtils;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.app.NVContext;
import com.narvii.modulization.entry.Privilege;
import com.narvii.modulization.page.Page;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.ranking.RankingLevel;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class ConfigApiRequestHelper {
    public static final String CONFIG_PATH = "community/configuration";
    public static final String ENABLED = "enabled";
    public static final String PATH_KEY = "path";
    public static final String VALUE_KEY = "value";
    int cid;
    NVContext nvContext;

    private ApiRequest.Builder getBuilder() {
        return ApiRequest.builder().post().communityId(this.cid).path(CONFIG_PATH);
    }

    private String joinPath(String... strArr) {
        return TextUtils.join(".", strArr);
    }

    public ConfigApiRequestHelper(NVContext nVContext, int i) {
        this.nvContext = nVContext;
        this.cid = i;
    }

    public ApiRequest getActiveModuleRequest(String str) {
        return getBuilder().param(PATH_KEY, joinPath(Module.CONFIG_MODULE_KEY, str, ENABLED)).param("value", true).build();
    }

    public ApiRequest getDeactiveModuleRequest(String str) {
        return getBuilder().param(PATH_KEY, joinPath(Module.CONFIG_MODULE_KEY, str, ENABLED)).param("value", false).build();
    }

    public ApiRequest getGeneralPropertyEnabledRequest(String[] strArr, String str, boolean z) {
        String str2;
        ApiRequest.Builder builder = getBuilder();
        StringBuilder sb = new StringBuilder();
        sb.append("general.");
        sb.append(joinPath(strArr));
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        } else {
            str2 = "." + str;
        }
        sb.append(str2);
        return builder.param(PATH_KEY, sb.toString()).param("value", Boolean.valueOf(z)).build();
    }

    public ApiRequest getModulePropertyEnabledRequest(String[] strArr, String str, boolean z) {
        String str2;
        ApiRequest.Builder builder = getBuilder();
        StringBuilder sb = new StringBuilder();
        sb.append("module.");
        sb.append(joinPath(strArr));
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        } else {
            str2 = "." + str;
        }
        sb.append(str2);
        return builder.param(PATH_KEY, sb.toString()).param("value", Boolean.valueOf(z)).build();
    }

    public ApiRequest getChangePrivilegeRequest(String str, Privilege privilege) {
        return getBuilder().param(PATH_KEY, str).param("value", JacksonUtils.DEFAULT_MAPPER.valueToTree(privilege)).build();
    }

    public ApiRequest getChangeRankingEnabledRequest(int i, boolean z) {
        return getBuilder().param(PATH_KEY, joinPath(Module.CONFIG_MODULE_KEY, joinPath(ConfigPath.RANKING_LEADERBOARD_LIST_PATH) + "[id=" + i + "]", ENABLED)).param("value", Boolean.valueOf(z)).build();
    }

    public ApiRequest getAddPageRequest(String str, String str2, String str3) {
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        if (!TextUtils.isEmpty(str2)) {
            objectNodeCreateObjectNode.put("alias", str2);
        }
        if (!TextUtils.isEmpty(str)) {
            objectNodeCreateObjectNode.put("originalTitle", str);
        }
        objectNodeCreateObjectNode.put("url", str3);
        return getBuilder().param(PATH_KEY, "page.customList").param("action", "add").param("value", objectNodeCreateObjectNode).build();
    }

    public ApiRequest getChangeSidePanelIconColor(int i) {
        return getBuilder().param(PATH_KEY, joinPath("appearance", "leftSidePanel", TtmlNode.TAG_STYLE, "iconColor")).param("value", StringUtils.formatColor(i)).build();
    }

    public ApiRequest getRemoveSidePanelIconColor() {
        return getBuilder().param(PATH_KEY, joinPath("appearance", "leftSidePanel", TtmlNode.TAG_STYLE, "iconColor")).param("action", "delete").build();
    }

    public ApiRequest getChangeSidePanelPagesRequest(ArrayNode arrayNode, ArrayNode arrayNode2) {
        String[] strArr = {"appearance", "leftSidePanel", "navigation"};
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("level1", arrayNode);
        objectNodeCreateObjectNode.put("level2", arrayNode2);
        return getBuilder().param(PATH_KEY, joinPath(strArr)).param("value", objectNodeCreateObjectNode).build();
    }

    public ApiRequest getChangePageAliasRequest(Page page, String str) {
        boolean z;
        List<Page> defaultPageList = new CommunityConfigHelper(this.nvContext, this.cid).getDefaultPageList();
        if (defaultPageList != null) {
            Iterator<Page> it = defaultPageList.iterator();
            while (it.hasNext()) {
                if (Utils.isStringEquals(it.next().id, page.id)) {
                    z = true;
                    break;
                }
            }
            z = false;
        } else {
            z = false;
        }
        ApiRequest.Builder builder = getBuilder();
        StringBuilder sb = new StringBuilder();
        sb.append(z ? "page.defaultList" : "page.customList");
        sb.append("[id=");
        sb.append(page.id);
        sb.append("].alias");
        return builder.param(PATH_KEY, sb.toString()).param("value", str).build();
    }

    public ApiRequest getChangePageAliasRequest(Page page, String str, boolean z) {
        boolean z2;
        List<Page> defaultPageList = new CommunityConfigHelper(this.nvContext, this.cid).getDefaultPageList();
        if (defaultPageList != null) {
            Iterator<Page> it = defaultPageList.iterator();
            while (it.hasNext()) {
                if (Utils.isStringEquals(it.next().id, page.id)) {
                    z2 = true;
                    break;
                }
            }
            z2 = false;
        } else {
            z2 = false;
        }
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        StringBuilder sb = new StringBuilder();
        sb.append(z2 ? "page.defaultList" : "page.customList");
        sb.append("[id=");
        sb.append(page.id);
        sb.append("].alias");
        objectNodeCreateObjectNode.put(PATH_KEY, sb.toString());
        objectNodeCreateObjectNode.put("value", str);
        arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode);
        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode2.put(PATH_KEY, "appearance.homePage.navigation[id=" + page.id + "].isStartPage");
        objectNodeCreateObjectNode2.put("value", z);
        arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode2);
        return getBuilder().param("batch", arrayNodeCreateArrayNode).build();
    }

    public ApiRequest getChangeHomePageLayoutRequest(List<Page> list, String str) {
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        if (list == null) {
            return null;
        }
        for (Page page : list) {
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode.put("id", page.id);
            if (str != null && Utils.isStringEquals(page.id, str)) {
                objectNodeCreateObjectNode.put("isStartPage", true);
            }
            arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode);
        }
        return getBuilder().param(PATH_KEY, "appearance.homePage.navigation").param("value", arrayNodeCreateArrayNode).build();
    }

    public ApiRequest getAddPageAtHomeRequest(Page page) {
        return getBuilder().param(PATH_KEY, "appearance.homePage.navigation").param("action", "add").param("value", JacksonUtils.createObjectNode().put("id", page.id)).build();
    }

    public ApiRequest getRemoveCustomizePageListRequest(List<String> list) {
        if (list == null) {
            return null;
        }
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        for (String str : list) {
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode.put(PATH_KEY, "page.customList[id=" + str + "]");
            objectNodeCreateObjectNode.put("action", "delete");
            arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode);
        }
        return getBuilder().param("batch", arrayNodeCreateArrayNode).build();
    }

    public ApiRequest getChangeFeaturedLayoutRequest(int i) {
        return getBuilder().param(PATH_KEY, "module." + joinPath(ConfigPath.FEATURED_LAYOUT)).param("value", Integer.valueOf(i)).build();
    }

    public ApiRequest getChangeLeaderboardBackgroundRequest(String str, String str2) {
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        ArrayNode arrayNodeCreateArrayNode2 = JacksonUtils.createArrayNode();
        arrayNodeCreateArrayNode.add(arrayNodeCreateArrayNode2);
        arrayNodeCreateArrayNode2.add(100);
        arrayNodeCreateArrayNode2.add(str2);
        arrayNodeCreateArrayNode2.add((String) null);
        return getBuilder().param(PATH_KEY, str).param("value", arrayNodeCreateArrayNode).build();
    }

    public ApiRequest getRemoveLeaderboardBackgroundRequest(String str) {
        return getBuilder().param(PATH_KEY, str).param("action", "delete").build();
    }

    public ApiRequest getResetRankingTableRequest() {
        return getBuilder().param(PATH_KEY, joinPath(Module.CONFIG_MODULE_KEY, Module.MODULE_RANKING, "rankingTable")).param("value", JacksonUtils.createArrayNode()).build();
    }

    public ApiRequest getChangeRankingTableRequest(List<RankingLevel> list) {
        if (list == null) {
            return null;
        }
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        for (RankingLevel rankingLevel : list) {
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode.put(PATH_KEY, "module.ranking.rankingTable[id=" + rankingLevel.id + "].title");
            objectNodeCreateObjectNode.put("value", rankingLevel.title);
            arrayNodeCreateArrayNode.add(objectNodeCreateObjectNode);
        }
        return getBuilder().param("batch", arrayNodeCreateArrayNode).build();
    }
}
