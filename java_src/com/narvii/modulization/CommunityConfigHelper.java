package com.narvii.modulization;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
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
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes3.dex */
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

    public boolean isPremiumFeatureEnabled() {
        return true;
    }

    public CommunityConfigHelper(NVContext nVContext, int i) {
        this.context = nVContext;
        ConfigService configService = (ConfigService) nVContext.getService("config");
        if (i > 0) {
            this.cid = i;
        } else {
            this.cid = configService.getCommunityId();
        }
        this.communityService = (CommunityService) nVContext.getService("community");
    }

    public CommunityConfigHelper(NVContext nVContext) {
        this(nVContext, 0);
    }

    public ObjectNode getNode() {
        Community community = this.communityService.getCommunity(this.cid);
        if (community == null) {
            return null;
        }
        return community.configuration;
    }

    public List<LeaderBoardItem> getLeaderBoardList() {
        LeaderBoardItem leaderBoardItem;
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(getNode(), Module.CONFIG_MODULE_KEY, Module.MODULE_RANKING, "leaderboardList");
        if (jsonNodeNodePath == null || jsonNodeNodePath.size() <= 1) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jsonNodeNodePath.size(); i++) {
            if (jsonNodeNodePath.get(i).get(ConfigApiRequestHelper.ENABLED).booleanValue()) {
                try {
                    leaderBoardItem = (LeaderBoardItem) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath.get(i), LeaderBoardItem.class);
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

    public List<Page> getHomePageList() {
        return buildPageList(JacksonUtils.nodePath(getNode(), "appearance", "homePage", "navigation"));
    }

    public Integer getStartPageIndex() {
        JsonNode jsonNode;
        JsonNode jsonNode2;
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(getNode(), "appearance", "homePage", "navigation");
        Integer numValueOf = null;
        if (jsonNodeNodePath != null && jsonNodeNodePath.size() > 0) {
            int size = jsonNodeNodePath.size();
            for (int i = 0; i < size; i++) {
                try {
                    jsonNode = jsonNodeNodePath.get(i);
                    jsonNode2 = jsonNode.get("isStartPage");
                } catch (Exception unused) {
                }
                if (jsonNode2 != null && jsonNode2.booleanValue()) {
                    int iIndexOfId = Utils.indexOfId(getHomePageList(), jsonNode.get("id").textValue());
                    if (iIndexOfId >= 0) {
                        numValueOf = Integer.valueOf(iIndexOfId);
                    }
                    return numValueOf;
                }
            }
        }
        return numValueOf;
    }

    public List<Page> getLeftSidePanelLv1List() {
        return buildPageList(JacksonUtils.nodePath(getNode(), "appearance", "leftSidePanel", "navigation", "level1"));
    }

    public List<Page> getLeftSidePanelLv2List() {
        return buildPageList(JacksonUtils.nodePath(getNode(), "appearance", "leftSidePanel", "navigation", "level2"));
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.narvii.modulization.page.Page> buildPageList(com.fasterxml.jackson.databind.JsonNode r9) {
        /*
            r8 = this;
            if (r9 == 0) goto L9f
            int r0 = r9.size()
            if (r0 <= 0) goto L9f
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.HashMap r1 = new java.util.HashMap
            r1.<init>()
            java.util.List r2 = r8.getDefaultPageList()
            if (r2 == 0) goto L32
            java.util.List r2 = r8.getDefaultPageList()
            java.util.Iterator r2 = r2.iterator()
        L20:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L32
            java.lang.Object r3 = r2.next()
            com.narvii.modulization.page.Page r3 = (com.narvii.modulization.page.Page) r3
            java.lang.String r4 = r3.id
            r1.put(r4, r3)
            goto L20
        L32:
            java.util.List r2 = r8.getCustomPageList()
            if (r2 == 0) goto L52
            java.util.List r2 = r8.getCustomPageList()
            java.util.Iterator r2 = r2.iterator()
        L40:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L52
            java.lang.Object r3 = r2.next()
            com.narvii.modulization.page.Page r3 = (com.narvii.modulization.page.Page) r3
            java.lang.String r4 = r3.id
            r1.put(r4, r3)
            goto L40
        L52:
            r2 = 0
            int r3 = r9.size()
            r4 = 0
            r5 = r4
        L59:
            if (r2 >= r3) goto L7e
            com.fasterxml.jackson.databind.JsonNode r6 = r9.get(r2)     // Catch: java.lang.Exception -> L70
            java.lang.String r7 = "id"
            com.fasterxml.jackson.databind.JsonNode r6 = r6.get(r7)     // Catch: java.lang.Exception -> L70
            java.lang.String r6 = r6.textValue()     // Catch: java.lang.Exception -> L70
            java.lang.Object r7 = r1.get(r6)     // Catch: java.lang.Exception -> L71
            com.narvii.modulization.page.Page r7 = (com.narvii.modulization.page.Page) r7     // Catch: java.lang.Exception -> L71
            goto L72
        L70:
            r6 = r4
        L71:
            r7 = r4
        L72:
            if (r7 == 0) goto L78
            r0.add(r7)
            goto L7b
        L78:
            if (r6 == 0) goto L7b
            r5 = r6
        L7b:
            int r2 = r2 + 1
            goto L59
        L7e:
            if (r5 == 0) goto L9e
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r1 = "missing pageId in community "
            r9.append(r1)
            int r1 = r8.cid
            r9.append(r1)
            java.lang.String r1 = ": "
            r9.append(r1)
            r9.append(r5)
            java.lang.String r9 = r9.toString()
            com.narvii.util.Log.e(r9)
        L9e:
            return r0
        L9f:
            java.util.List r9 = java.util.Collections.EMPTY_LIST
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.modulization.CommunityConfigHelper.buildPageList(com.fasterxml.jackson.databind.JsonNode):java.util.List");
    }

    public List<Page> getDefaultPageList() {
        return JacksonUtils.readListAs(String.valueOf(JacksonUtils.nodePath(getNode(), "page", "defaultList")), Page.class);
    }

    public List<Page> getCustomPageList() {
        return JacksonUtils.readListAs(String.valueOf(JacksonUtils.nodePath(getNode(), "page", "customList")), Page.class);
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

    public int getLeftSideColor() {
        try {
            return StringUtils.parseColor(JacksonUtils.nodePath(getNode(), "appearance", "leftSidePanel", TtmlNode.TAG_STYLE, "iconColor").asText());
        } catch (Exception unused) {
            return 0;
        }
    }

    public InlineMapping inlineMapping(String str) throws ClassNotFoundException {
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
                        inlineMapping.args = intentIntentMapping.getExtras();
                        inlineMapping.args.remove("fragment");
                        inlineMapping.args.remove("__communityId");
                        return inlineMapping;
                    }
                }
            } catch (Exception e) {
                Log.e("fail to inline mapping " + str, e);
                return null;
            }
        } else {
            if (str.startsWith("http://") || str.startsWith("https://")) {
                try {
                    Intent intentIntentMapping2 = ((Navigator) this.context.getService("navigator")).intentMapping(new Intent("android.intent.action.VIEW", Uri.parse("http://www.google.com/")));
                    Class clsLoadClass2 = this.context.getContext().getClassLoader().loadClass(intentIntentMapping2.getStringExtra("fragment"));
                    InlineMapping inlineMapping2 = new InlineMapping();
                    inlineMapping2.component = clsLoadClass2;
                    inlineMapping2.args = intentIntentMapping2.getExtras();
                    inlineMapping2.args.remove("fragment");
                    inlineMapping2.args.remove("__communityId");
                    inlineMapping2.args.putString("url", str);
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

    public boolean isModuleEnabled(String str) {
        return getModuleBoolean(str, ConfigApiRequestHelper.ENABLED);
    }

    public boolean isRankingModuleEnabled() {
        return isModuleEnabled(Module.MODULE_RANKING);
    }

    public boolean isLeaderBoardEnable() {
        return JacksonUtils.nodeBoolean(getNode(), Module.CONFIG_MODULE_KEY, Module.MODULE_RANKING, "leaderboardEnabled");
    }

    public boolean getModuleBoolean(String... strArr) {
        return JacksonUtils.nodeBoolean(getModuleNode(), strArr);
    }

    public boolean getModuleBoolean(boolean z, String... strArr) {
        return JacksonUtils.nodeBoolean(getModuleNode(), z, strArr);
    }

    public String getModuleString(String... strArr) {
        return JacksonUtils.nodeString(getModuleNode(), strArr);
    }

    public int getModuleInt(String... strArr) {
        return JacksonUtils.nodeInt(getModuleNode(), strArr);
    }

    public JsonNode getModuleNode(String... strArr) {
        JsonNode jsonNodeNodePath;
        ObjectNode node = getNode();
        if (node == null || (jsonNodeNodePath = JacksonUtils.nodePath(node, Module.CONFIG_MODULE_KEY)) == null) {
            return null;
        }
        return JacksonUtils.nodePath(jsonNodeNodePath, strArr);
    }

    public JsonNode getModuleNode() {
        return JacksonUtils.nodePath(getNode(), Module.CONFIG_MODULE_KEY);
    }

    public boolean isLeaderboardEnabled(int i) {
        return JacksonUtils.nodeBoolean(getLeaderboardRankingNode(i), ConfigApiRequestHelper.ENABLED);
    }

    public Media getLeaderboadBackground(int i) {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(getLeaderboardRankingNode(i), TtmlNode.TAG_STYLE, "backgroundMediaList");
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

    public JsonNode getLeaderboardRankingNode(int i) {
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
                if (JacksonUtils.nodeInt(jsonNode, "type") == i) {
                    return jsonNode;
                }
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public int getFeaturedLayout() {
        return getModuleInt(ConfigPath.FEATURED_LAYOUT);
    }

    public boolean isChatSpamProtectionEnabled() {
        return getModuleBoolean(ConfigPath.CHAT_SPAM_PROTECTION);
    }

    public boolean isSpeedDialDisabled() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(getNode(), "general", "speedDialDisabled");
        if (jsonNodeNodePath == null) {
            return false;
        }
        return jsonNodeNodePath.asBoolean();
    }

    public boolean isVideoUploadEnabled() {
        return JacksonUtils.nodeInt(getNode(), "general", "videoUploadPolicy") == 1;
    }

    public boolean welcomeMessageEnabled() {
        return JacksonUtils.nodeBoolean(getNode(), "general", "welcomeMessage", ConfigApiRequestHelper.ENABLED);
    }

    public String getWelcomeMessageText() {
        return JacksonUtils.nodeString(getNode(), "general", "welcomeMessage", MimeTypes.BASE_TYPE_TEXT);
    }

    public List<Integer> getJoinedMainTopicIdList() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(getNode(), "general", "joinedTopicIdList");
        if (jsonNodeNodePath == null) {
            return null;
        }
        return JacksonUtils.readListAs(jsonNodeNodePath.toString(), Integer.class);
    }

    public boolean isTopicCategoryEnabled() {
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_TOPIC_CATEGORY, ConfigApiRequestHelper.ENABLED);
    }

    public boolean isPostEnabled() {
        if (getModuleNode() == null) {
            return true;
        }
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_POSTS, ConfigApiRequestHelper.ENABLED);
    }

    public boolean isChatEnabled() {
        if (getModuleNode() == null) {
            return true;
        }
        return JacksonUtils.nodeBoolean(getModuleNode(), "chat", ConfigApiRequestHelper.ENABLED);
    }

    private boolean isFeaturedEnabled() {
        if (getModuleNode() == null) {
            return true;
        }
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_FEATURED, ConfigApiRequestHelper.ENABLED);
    }

    public boolean isFeaturedPostEnabled() {
        if (getModuleNode() == null) {
            return true;
        }
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_FEATURED, "postEnabled") && isFeaturedEnabled();
    }

    public boolean isFeaturedMemberEnabled() {
        if (getModuleNode() == null) {
            return true;
        }
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_FEATURED, "memberEnabled") && isFeaturedEnabled();
    }

    public boolean isFeaturedChatThreadEnabled() {
        if (getModuleNode() == null) {
            return true;
        }
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_FEATURED, "publicChatRoomEnabled") && isFeaturedEnabled();
    }

    public boolean isPostBlogEnabled() {
        if (getModuleNode() == null) {
            return true;
        }
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_POSTS, "postType", "blog", ConfigApiRequestHelper.ENABLED);
    }

    public boolean isPublicChatEnabled() {
        if (getModuleNode() == null) {
            return true;
        }
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_POSTS, "postType", "publicChatRooms", ConfigApiRequestHelper.ENABLED);
    }

    public boolean isCatalogEnable() {
        if (getModuleNode() == null) {
            return true;
        }
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_CATALOG, ConfigApiRequestHelper.ENABLED);
    }

    public boolean isCatalogCutaionEnable() {
        if (getModuleNode() == null) {
            return true;
        }
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_CATALOG, "curationEnabled");
    }

    public Privilege getPrivilege(String... strArr) {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(getNode(), strArr);
        Privilege privilege = new Privilege();
        if (jsonNodeNodePath != null) {
            try {
                return (Privilege) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, Privilege.class);
            } catch (JsonProcessingException e) {
                Log.e(e.getMessage());
            }
        }
        return privilege;
    }

    public boolean isVoiceChatEnable() {
        return this.cid == 0 || getModuleBoolean(Module.isAudioChatEnabledPath);
    }

    public boolean isAudio2ChatEnable() {
        return getModuleBoolean(false, Module.isAudio2ChatEnabledPath);
    }

    public boolean isVideoChatEnable() {
        return getModuleBoolean(Module.isVideoChatEnabledPath);
    }

    public boolean isAvatarChatEnable() {
        return isAvatarEnabled() && isAudio2ChatEnable();
    }

    public boolean isScreenRoomEnable() {
        return this.cid == 0 || getModuleBoolean(Module.isScreenRoomEnabledPath);
    }

    public boolean isAvChatProtectionEnabled() {
        return getModuleBoolean(Module.avChatProtectionEnablePath);
    }

    public int getInvitePermissionType() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(getNode(), "general", "invitePermission");
        if (jsonNodeNodePath == null) {
            return 2;
        }
        return jsonNodeNodePath.asInt();
    }

    public boolean isAvatarEnabled() {
        return JacksonUtils.nodeBoolean(getNode(), "general", "avatarEnabled");
    }

    public boolean isPostStoryEnabled() {
        return JacksonUtils.nodeBoolean(getModuleNode(), Module.MODULE_POSTS, "postType", "story", ConfigApiRequestHelper.ENABLED);
    }
}
