package com.narvii.modulization.entry;

import android.text.TextUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.wallet.MembershipService;
import java.util.HashMap;

/* JADX INFO: loaded from: classes11.dex */
public class EntryManager {
    public static final String[] CHAT_PUBLIC_CHAT_PATH;
    public static final String[] CHAT_PUBLIC_GO_LIVE_PATH;
    public static final String ENTRY_BLOG = "blog";
    public static final String ENTRY_CHAT_PUBLIC_CHATROOMS = "chat_publicChat";
    public static final String ENTRY_DRAFT = "draft";
    public static final String ENTRY_GO_LIVE = "go_live";
    public static final String ENTRY_IMAGE_POST = "image";
    public static final String ENTRY_LINK_POST = "webLink";
    public static final String ENTRY_POLL = "poll";
    public static final String ENTRY_POST_PUBLIC_CHATROOMS = "post_publicChat";
    public static final String ENTRY_QUEATION = "question";
    public static final String ENTRY_QUIZZES = "quiz";
    public static final String ENTRY_WIKI = "wikiEntry";
    public static final String[] POST_ENTRY_BLOGPOST_PATH;
    public static final String[] POST_ENTRY_IMAGEPOST_PATH;
    public static final String[] POST_ENTRY_POLLPOST_PATH;
    public static final String[] POST_ENTRY_PUBLIC_CHAT_PATH;
    public static final String[] POST_ENTRY_QUESTIONPOST_PATH;
    public static final String[] POST_ENTRY_QUIZPOST_PATH;
    public static final String[] POST_ENTRY_WEB_LINKPOST_PATH;
    public static final String[] POST_ENTRY_WIKI_ENTRYPOST_PATH;
    public static HashMap<String, EntryItem> entryItemHashMap = new HashMap<>();
    private static HashMap<String, String[]> entryPathHashMap;
    int cid;
    public CommunityConfigHelper communityConfigHelper;
    NVContext nvContext;

    public EntryManager(NVContext nVContext) {
        this.nvContext = nVContext;
        int communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
        this.cid = communityId;
        this.communityConfigHelper = new CommunityConfigHelper(nVContext, communityId);
    }

    private boolean isEntryEnabled(User user, String... strArr) {
        boolean z6 = false;
        if (!this.communityConfigHelper.isPostEnabled()) {
            return false;
        }
        EntrySetting entrySetting = getEntrySetting(strArr);
        if (entrySetting == null) {
            return true;
        }
        if (!entrySetting.enabled) {
            return false;
        }
        if (user != null && user.isCurator()) {
            z6 = true;
        }
        return entrySetting.getPrivilegeType() == 3 ? z6 : entrySetting.enabled;
    }

    public EntryEligibleCheckResult canUserChat(User user) {
        return canUserChat(user, false);
    }

    static {
        HashMap<String, String[]> map = new HashMap<>();
        entryPathHashMap = map;
        String[] strArr = {Module.MODULE_POSTS, "postType", "image"};
        POST_ENTRY_IMAGEPOST_PATH = strArr;
        String[] strArr2 = {Module.MODULE_POSTS, "postType", "blog"};
        POST_ENTRY_BLOGPOST_PATH = strArr2;
        String[] strArr3 = {Module.MODULE_POSTS, "postType", "quiz"};
        POST_ENTRY_QUIZPOST_PATH = strArr3;
        String[] strArr4 = {Module.MODULE_POSTS, "postType", "question"};
        POST_ENTRY_QUESTIONPOST_PATH = strArr4;
        String[] strArr5 = {Module.MODULE_POSTS, "postType", ENTRY_LINK_POST};
        POST_ENTRY_WEB_LINKPOST_PATH = strArr5;
        String[] strArr6 = {Module.MODULE_POSTS, "postType", ENTRY_POLL};
        POST_ENTRY_POLLPOST_PATH = strArr6;
        String[] strArr7 = {Module.MODULE_POSTS, "postType", "catalogEntry"};
        POST_ENTRY_WIKI_ENTRYPOST_PATH = strArr7;
        String[] strArr8 = {Module.MODULE_POSTS, "postType", "publicChatRooms"};
        POST_ENTRY_PUBLIC_CHAT_PATH = strArr8;
        String[] strArr9 = {"chat", "publicChat"};
        CHAT_PUBLIC_CHAT_PATH = strArr9;
        String[] strArr10 = {Module.MODULE_POSTS, "postType", "liveMode"};
        CHAT_PUBLIC_GO_LIVE_PATH = strArr10;
        map.put(ENTRY_POST_PUBLIC_CHATROOMS, strArr8);
        entryPathHashMap.put("image", strArr);
        entryPathHashMap.put("blog", strArr2);
        entryPathHashMap.put("quiz", strArr3);
        entryPathHashMap.put(ENTRY_LINK_POST, strArr5);
        entryPathHashMap.put(ENTRY_POLL, strArr6);
        entryPathHashMap.put("question", strArr4);
        entryPathHashMap.put(ENTRY_WIKI, strArr7);
        entryPathHashMap.put(ENTRY_CHAT_PUBLIC_CHATROOMS, strArr9);
        entryPathHashMap.put(ENTRY_GO_LIVE, strArr10);
        HashMap<String, EntryItem> map2 = entryItemHashMap;
        int i10 = R.string.post_type_public_chat;
        int i11 = R.color.chat_theme_color;
        int i12 = R.drawable.ic_page_public_chat;
        int i13 = R.string.compose_hint_chat;
        map2.put(ENTRY_POST_PUBLIC_CHATROOMS, new EntryItem(i10, i11, i12, i13));
        entryItemHashMap.put(ENTRY_CHAT_PUBLIC_CHATROOMS, new EntryItem(i10, i11, i12, i13));
        entryItemHashMap.put(ENTRY_GO_LIVE, new EntryItem(R.string.chat_go_live, R.color.go_live_theme_color, R.drawable.ic_chat_go_live, R.string._empty));
        entryItemHashMap.put("image", new EntryItem(R.string.post_type_image_post, R.color.page_image_post, R.drawable.ic_page_image_post, R.string.compose_hint_image_post));
        entryItemHashMap.put("blog", new EntryItem(R.string.post_type_blog, R.color.page_blog, R.drawable.ic_page_blog, R.string.compose_hint_blog));
        entryItemHashMap.put("quiz", new EntryItem(R.string.post_type_quiz, R.color.page_quizzes, R.drawable.ic_page_quizzes, R.string.compose_hint_quiz));
        entryItemHashMap.put(ENTRY_LINK_POST, new EntryItem(R.string.post_type_link, R.color.page_link_post, R.drawable.ic_page_link_posts, R.string.compose_hint_link));
        entryItemHashMap.put(ENTRY_POLL, new EntryItem(R.string.post_type_poll, R.color.page_poll, R.drawable.ic_page_poll, R.string.compose_hint_poll));
        entryItemHashMap.put("question", new EntryItem(R.string.post_type_question, R.color.page_question, R.drawable.ic_page_questions, R.string.compose_hint_question));
        entryItemHashMap.put(ENTRY_WIKI, new EntryItem(R.string.post_type_wiki_entry, R.color.page_wiki, R.drawable.ic_page_wiki, R.string.compose_hint_item));
        entryItemHashMap.put(ENTRY_DRAFT, new EntryItem(R.string.compose_draft, R.color.page_draft, R.drawable.ic_draft, 0));
    }

    public static EntryItem getEntryItem(String str) {
        return entryItemHashMap.get(str);
    }

    public static String[] getEntryPath(String str) {
        return entryPathHashMap.get(str);
    }

    public EntryEligibleCheckResult canCurUserPost(User user, String str) {
        EntryEligibleCheckResult entryEligibleCheckResult = new EntryEligibleCheckResult();
        entryEligibleCheckResult.isEligible = false;
        if (user == null) {
            return entryEligibleCheckResult;
        }
        if (ENTRY_DRAFT.equals(str)) {
            entryEligibleCheckResult.isEligible = true;
            return entryEligibleCheckResult;
        }
        EntrySetting entrySetting = getEntrySetting(entryPathHashMap.get(str));
        if (entrySetting == null) {
            entryEligibleCheckResult.isEligible = true;
            return entryEligibleCheckResult;
        }
        if (entrySetting.privilege == null) {
            entryEligibleCheckResult.isEligible = true;
            return entryEligibleCheckResult;
        }
        int i10 = user.level;
        boolean zIsCurator = user.isCurator();
        Privilege privilege = entrySetting.privilege;
        int i11 = privilege.type;
        if (i11 == 1) {
            entryEligibleCheckResult.isEligible = true;
        } else if (i11 == 3) {
            entryEligibleCheckResult.isEligible = zIsCurator;
        } else if (i11 == 2) {
            entryEligibleCheckResult.isEligible = zIsCurator || i10 >= privilege.minLevel;
        } else if (i11 == 4) {
            entryEligibleCheckResult.isEligible = ((MembershipService) this.nvContext.getService("membership")).isMembership();
            entryEligibleCheckResult.needMembership = true;
        } else if (i11 == 5) {
            User userProfile = ((AccountService) this.nvContext.getService("account")).getUserProfile(((ConfigService) this.nvContext.getService("config")).getCommunityId());
            entryEligibleCheckResult.isEligible = userProfile == null || userProfile.membersCount >= entrySetting.privilege.minLevel;
        }
        if (!entryEligibleCheckResult.isEligible) {
            Privilege privilege2 = entrySetting.privilege;
            int i12 = privilege2.minLevel;
            entryEligibleCheckResult.minLevel = i12;
            if (i12 > 0) {
                entryEligibleCheckResult.errorString = this.nvContext.getContext().getString(privilege2.type == 5 ? R.string.chat_entry_limit : R.string.post_entry_limit, Integer.valueOf(entrySetting.privilege.minLevel));
            }
        }
        return entryEligibleCheckResult;
    }

    public EntryEligibleCheckResult canUserChat(User user, boolean z6) {
        return canCurUserPost(user, z6 ? ENTRY_GO_LIVE : ENTRY_POST_PUBLIC_CHATROOMS);
    }

    public EntrySetting getEntrySetting(String... strArr) {
        JsonNode moduleNode = this.communityConfigHelper.getModuleNode(strArr);
        EntrySetting entrySetting = new EntrySetting();
        if (moduleNode == null) {
            return entrySetting;
        }
        try {
            return (EntrySetting) JacksonUtils.DEFAULT_MAPPER.treeToValue(moduleNode, EntrySetting.class);
        } catch (JsonProcessingException e) {
            Log.e(e.getMessage());
            return entrySetting;
        }
    }

    public EntryManager(NVContext nVContext, int i10) {
        this.nvContext = nVContext;
        this.cid = i10;
        this.communityConfigHelper = new CommunityConfigHelper(nVContext, i10);
    }

    public boolean isEntryEnabled(User user, String str) {
        if (TextUtils.isEmpty(str) || (!ENTRY_DRAFT.equals(str) && entryPathHashMap.get(str) == null)) {
            return false;
        }
        if (ENTRY_DRAFT.equals(str)) {
            return true;
        }
        if (this.communityConfigHelper.isPostEnabled()) {
            return isEntryEnabled(user, entryPathHashMap.get(str));
        }
        return false;
    }
}
