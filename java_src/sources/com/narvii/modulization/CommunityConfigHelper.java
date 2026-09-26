package com.narvii.modulization;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.gms.common.internal.ImagesContract;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.model.LeaderBoardItem;
import com.narvii.model.Media;
import com.narvii.modulization.entry.Privilege;
import com.narvii.modulization.page.Page;
import com.narvii.navigator.Navigator;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.statistics.constants.EventConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import qa.y;

/* JADX INFO: loaded from: classes7.dex */
public class CommunityConfigHelper {
    public static final int INVITE_PERMISSION_EVERYONE = 1;
    public static final int INVITE_PERMISSION_LEADERS = 2;
    int cid;
    CommunityService communityService;
    NVContext context;

    public static class InlineMapping {
        public Bundle args;
        public Class<? extends NVFragment> component;
    }

    public CommunityConfigHelper(NVContext nVContext, int i10) {
        this.context = nVContext;
        ConfigService configService = (ConfigService) nVContext.getService("config");
        if (i10 > 0) {
            this.cid = i10;
        } else {
            this.cid = configService.getCommunityId();
        }
        this.communityService = (CommunityService) nVContext.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
    }

    public boolean getModuleBoolean(String... strArr) {
        return JacksonUtils.nodeBoolean(getModuleNode(), strArr);
    }

    public JsonNode getModuleNode(String... strArr) {
        JsonNode jsonNodeNodePath;
        ObjectNode node = getNode();
        if (node == null || (jsonNodeNodePath = JacksonUtils.nodePath(node, Module.CONFIG_MODULE_KEY)) == null) {
            return null;
        }
        return JacksonUtils.nodePath(jsonNodeNodePath, strArr);
    }

    public InlineMapping inlineMapping(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("ndc://")) {
            try {
                Intent intentIntentMapping = ((Navigator) this.context.getService("navigator")).intentMapping(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                if (intentIntentMapping.getComponent() != null && this.context.getContext().getPackageName().equals(intentIntentMapping.getComponent().getPackageName()) && intentIntentMapping.hasExtra("fragment")) {
                    if (intentIntentMapping.hasExtra("__communityId") && intentIntentMapping.getIntExtra("__communityId", 0) != this.cid) {
                        Log.e("inline mapping to another community is not supported");
                        return null;
                    }
                    Class clsLoadClass = this.context.getContext().getClassLoader().loadClass(intentIntentMapping.getStringExtra("fragment"));
                    if (NVFragment.class.isAssignableFrom(clsLoadClass)) {
                        InlineMapping inlineMapping = new InlineMapping();
                        inlineMapping.component = clsLoadClass;
                        Bundle extras = intentIntentMapping.getExtras();
                        inlineMapping.args = extras;
                        extras.remove("fragment");
                        inlineMapping.args.remove("__communityId");
                        return inlineMapping;
                    }
                }
            } catch (Exception e) {
                Log.e("fail to inline mapping " + str, e);
                return null;
            }
        } else {
            if (str.startsWith(y.HTTP) || str.startsWith(y.HTTPS)) {
                try {
                    Intent intentIntentMapping2 = ((Navigator) this.context.getService("navigator")).intentMapping(new Intent("android.intent.action.VIEW", Uri.parse("http://www.google.com/")));
                    Class clsLoadClass2 = this.context.getContext().getClassLoader().loadClass(intentIntentMapping2.getStringExtra("fragment"));
                    InlineMapping inlineMapping2 = new InlineMapping();
                    inlineMapping2.component = clsLoadClass2;
                    Bundle extras2 = intentIntentMapping2.getExtras();
                    inlineMapping2.args = extras2;
                    extras2.remove("fragment");
                    inlineMapping2.args.remove("__communityId");
                    inlineMapping2.args.putString(ImagesContract.URL, str);
                    return inlineMapping2;
                } catch (Exception e2) {
                    Log.e("fail to inline mapping " + str, e2);
                    return null;
                }
            }
            Log.e("fail to inline mapping " + str);
        }
        return null;
    }

    public boolean isAudio2ChatEnable() {
        return getModuleBoolean(false, Module.isAudio2ChatEnabledPath);
    }

    public boolean isPremiumFeatureEnabled() {
        return true;
    }

    private List<Page> buildPageList(JsonNode jsonNode) {
        String strTextValue;
        Page page;
        if (jsonNode == null || jsonNode.size() <= 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        if (getDefaultPageList() != null) {
            for (Page page2 : getDefaultPageList()) {
                map.put(page2.id, page2);
            }
        }
        if (getCustomPageList() != null) {
            for (Page page3 : getCustomPageList()) {
                map.put(page3.id, page3);
            }
        }
        int size = jsonNode.size();
        String str = null;
        for (int i10 = 0; i10 < size; i10++) {
            try {
                strTextValue = jsonNode.get(i10).get("id").textValue();
                try {
                    page = (Page) map.get(strTextValue);
                } catch (Exception unused) {
                    page = null;
                }
            } catch (Exception unused2) {
                strTextValue = null;
            }
            if (page != null) {
                arrayList.add(page);
            } else if (strTextValue != null) {
                str = strTextValue;
            }
        }
        if (str != null) {
            Log.e("missing pageId in community " + this.cid + ": " + str);
        }
        return arrayList;
    }

    public Set<String> getCustomPageUrlSet() {
        HashSet hashSet = new HashSet();
        List<Page> customPageList = getCustomPageList();
        if (customPageList != null) {
            Iterator<Page> it = customPageList.iterator();
            while (it.hasNext()) {
                String str = it.next().url;
                if (str != null) {
                    hashSet.add(str);
                }
            }
        }
        return hashSet;
    }

    public int getFeaturedLayout() {
        return getModuleInt(ConfigPath.FEATURED_LAYOUT);
    }

    public JsonNode getLeaderboardRankingNode(int i10) {
        JsonNode moduleNode = getModuleNode(ConfigPath.RANKING_LEADERBOARD_LIST_PATH);
        if (moduleNode == null || !moduleNode.isArray()) {
            return null;
        }
        try {
            JsonNode[] jsonNodeArr = (JsonNode[]) JacksonUtils.DEFAULT_MAPPER.treeToValue(moduleNode, JsonNode[].class);
            if (jsonNodeArr == null) {
                return null;
            }
            for (JsonNode jsonNode : jsonNodeArr) {
                if (JacksonUtils.nodeInt(jsonNode, "type") == i10) {
                    return jsonNode;
                }
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public ObjectNode getNode() {
        Community community = this.communityService.getCommunity(this.cid);
        if (community == null) {
            return null;
        }
        return community.configuration;
    }

    public boolean isAvChatProtectionEnabled() {
        return getModuleBoolean(Module.avChatProtectionEnablePath);
    }

    public boolean isChatSpamProtectionEnabled() {
        return getModuleBoolean(ConfigPath.CHAT_SPAM_PROTECTION);
    }

    public boolean isModuleEnabled(String str) {
        return getModuleBoolean(str, ConfigApiRequestHelper.ENABLED);
    }

    public boolean isScreenRoomEnable() {
        return this.cid == 0 || getModuleBoolean(Module.isScreenRoomEnabledPath);
    }

    public boolean isVideoChatEnable() {
        return getModuleBoolean(Module.isVideoChatEnabledPath);
    }

    public boolean isVoiceChatEnable() {
        return this.cid == 0 || getModuleBoolean(Module.isAudioChatEnabledPath);
    }

    private boolean isFeaturedEnabled() {
        if (getModuleNode() == null) {
            return true;
        }
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_FEATURED, ConfigApiRequestHelper.ENABLED);
    }

    public List<Page> getCustomPageList() {
        return JacksonUtils.readListAs(String.valueOf(JacksonUtils.nodePath(getNode(), "page", "customList")), Page.class);
    }

    public List<Page> getDefaultPageList() {
        return JacksonUtils.readListAs(String.valueOf(JacksonUtils.nodePath(getNode(), "page", "defaultList")), Page.class);
    }

    public List<Page> getHomePageList() {
        return buildPageList(JacksonUtils.nodePath(getNode(), "appearance", "homePage", NotificationCompat.CATEGORY_NAVIGATION));
    }

    public int getInvitePermissionType() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(getNode(), "general", "invitePermission");
        if (jsonNodeNodePath == null) {
            return 2;
        }
        return jsonNodeNodePath.asInt();
    }

    public List<Integer> getJoinedMainTopicIdList() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(getNode(), "general", "joinedTopicIdList");
        if (jsonNodeNodePath == null) {
            return null;
        }
        return JacksonUtils.readListAs(jsonNodeNodePath.toString(), Integer.class);
    }

    public List<LeaderBoardItem> getLeaderBoardList() {
        LeaderBoardItem leaderBoardItem;
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(getNode(), Module.CONFIG_MODULE_KEY, Module.MODULE_RANKING, "leaderboardList");
        if (jsonNodeNodePath == null || jsonNodeNodePath.size() <= 1) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jsonNodeNodePath.size(); i10++) {
            if (jsonNodeNodePath.get(i10).get(ConfigApiRequestHelper.ENABLED).booleanValue()) {
                try {
                    leaderBoardItem = (LeaderBoardItem) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath.get(i10), LeaderBoardItem.class);
                } catch (JsonProcessingException e) {
                    e.printStackTrace();
                    leaderBoardItem = null;
                }
                if (leaderBoardItem != null) {
                    arrayList.add(leaderBoardItem);
                }
            }
        }
        return arrayList;
    }

    public Media getLeaderboadBackground(int i10) {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(getLeaderboardRankingNode(i10), "style", "backgroundMediaList");
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

    public int getLeftSideColor() {
        try {
            return StringUtils.parseColor(JacksonUtils.nodePath(getNode(), "appearance", "leftSidePanel", "style", "iconColor").asText());
        } catch (Exception unused) {
            return 0;
        }
    }

    public List<Page> getLeftSidePanelLv1List() {
        return buildPageList(JacksonUtils.nodePath(getNode(), "appearance", "leftSidePanel", NotificationCompat.CATEGORY_NAVIGATION, "level1"));
    }

    public List<Page> getLeftSidePanelLv2List() {
        return buildPageList(JacksonUtils.nodePath(getNode(), "appearance", "leftSidePanel", NotificationCompat.CATEGORY_NAVIGATION, "level2"));
    }

    public boolean getModuleBoolean(boolean z6, String... strArr) {
        return JacksonUtils.nodeBoolean(getModuleNode(), z6, strArr);
    }

    public int getModuleInt(String... strArr) {
        return JacksonUtils.nodeInt(getModuleNode(), strArr);
    }

    public String getModuleString(String... strArr) {
        return JacksonUtils.nodeString(getModuleNode(), strArr);
    }

    public Privilege getPrivilege(String... strArr) {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(getNode(), strArr);
        Privilege privilege = new Privilege();
        if (jsonNodeNodePath != null) {
            try {
                return (Privilege) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, Privilege.class);
            } catch (JsonProcessingException e) {
                Log.e(e.getMessage());
                return privilege;
            }
        }
        return privilege;
    }

    public Integer getStartPageIndex() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(getNode(), "appearance", "homePage", NotificationCompat.CATEGORY_NAVIGATION);
        Integer numValueOf = null;
        if (jsonNodeNodePath != null && jsonNodeNodePath.size() > 0) {
            int size = jsonNodeNodePath.size();
            for (int i10 = 0; i10 < size; i10++) {
                try {
                    JsonNode jsonNode = jsonNodeNodePath.get(i10);
                    JsonNode jsonNode2 = jsonNode.get("isStartPage");
                    if (jsonNode2 != null && jsonNode2.booleanValue()) {
                        int iIndexOfId = Utils.indexOfId(getHomePageList(), jsonNode.get("id").textValue());
                        if (iIndexOfId >= 0) {
                            numValueOf = Integer.valueOf(iIndexOfId);
                        }
                        return numValueOf;
                    }
                } catch (Exception unused) {
                }
            }
        }
        return numValueOf;
    }

    public String getWelcomeMessageText() {
        return JacksonUtils.nodeString(getNode(), "general", "welcomeMessage", "text");
    }

    public boolean isAvatarChatEnable() {
        if (isAvatarEnabled() && isAudio2ChatEnable()) {
            return true;
        }
        return false;
    }

    public boolean isAvatarEnabled() {
        return JacksonUtils.nodeBoolean(getNode(), "general", "avatarEnabled");
    }

    public boolean isCatalogCutaionEnable() {
        if (getModuleNode() == null) {
            return true;
        }
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_CATALOG, "curationEnabled");
    }

    public boolean isCatalogEnable() {
        if (getModuleNode() == null) {
            return true;
        }
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_CATALOG, ConfigApiRequestHelper.ENABLED);
    }

    public boolean isChatEnabled() {
        if (getModuleNode() == null) {
            return true;
        }
        return JacksonUtils.nodeBoolean(getModuleNode(), "chat", ConfigApiRequestHelper.ENABLED);
    }

    public boolean isFeaturedChatThreadEnabled() {
        if (getModuleNode() == null) {
            return true;
        }
        if (JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_FEATURED, "publicChatRoomEnabled") && isFeaturedEnabled()) {
            return true;
        }
        return false;
    }

    public boolean isFeaturedMemberEnabled() {
        if (getModuleNode() == null) {
            return true;
        }
        if (JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_FEATURED, "memberEnabled") && isFeaturedEnabled()) {
            return true;
        }
        return false;
    }

    public boolean isFeaturedPostEnabled() {
        if (getModuleNode() == null) {
            return true;
        }
        if (JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_FEATURED, "postEnabled") && isFeaturedEnabled()) {
            return true;
        }
        return false;
    }

    public boolean isLeaderBoardEnable() {
        return JacksonUtils.nodeBoolean(getNode(), Module.CONFIG_MODULE_KEY, Module.MODULE_RANKING, "leaderboardEnabled");
    }

    public boolean isLeaderboardEnabled(int i10) {
        return JacksonUtils.nodeBoolean(getLeaderboardRankingNode(i10), ConfigApiRequestHelper.ENABLED);
    }

    public boolean isPostBlogEnabled() {
        if (getModuleNode() == null) {
            return true;
        }
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_POSTS, "postType", "blog", ConfigApiRequestHelper.ENABLED);
    }

    public boolean isPostEnabled() {
        if (getModuleNode() == null) {
            return true;
        }
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_POSTS, ConfigApiRequestHelper.ENABLED);
    }

    public boolean isPostStoryEnabled() {
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_POSTS, "postType", EventConstants.PostType.STORY, ConfigApiRequestHelper.ENABLED);
    }

    public boolean isPublicChatEnabled() {
        if (getModuleNode() == null) {
            return true;
        }
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_POSTS, "postType", "publicChatRooms", ConfigApiRequestHelper.ENABLED);
    }

    public boolean isRankingModuleEnabled() {
        return isModuleEnabled(Module.MODULE_RANKING);
    }

    public boolean isSpeedDialDisabled() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(getNode(), "general", "speedDialDisabled");
        if (jsonNodeNodePath == null) {
            return false;
        }
        return jsonNodeNodePath.asBoolean();
    }

    public boolean isTopicCategoryEnabled() {
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_TOPIC_CATEGORY, ConfigApiRequestHelper.ENABLED);
    }

    public boolean isVideoUploadEnabled() {
        if (JacksonUtils.nodeInt(getNode(), "general", "videoUploadPolicy") == 1) {
            return true;
        }
        return false;
    }

    public boolean welcomeMessageEnabled() {
        return JacksonUtils.nodeBoolean(getNode(), "general", "welcomeMessage", ConfigApiRequestHelper.ENABLED);
    }

    public JsonNode getModuleNode() {
        return JacksonUtils.nodePath(getNode(), Module.CONFIG_MODULE_KEY);
    }

    public CommunityConfigHelper(NVContext nVContext) {
        this(nVContext, 0);
    }
}
