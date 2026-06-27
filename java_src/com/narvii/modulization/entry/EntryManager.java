package com.narvii.modulization.entry;

import android.text.TextUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.wallet.MembershipService;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class EntryManager {
    public static final String ENTRY_BLOG = "blog";
    public static final String ENTRY_CHAT_PUBLIC_CHATROOMS = "chat_publicChat";
    public static final String ENTRY_DRAFT = "draft";
    public static final String ENTRY_GO_LIVE = "go_live";
    public static final String ENTRY_IMAGE_POST = "image";
    public static final String ENTRY_POST_PUBLIC_CHATROOMS = "post_publicChat";
    public static final String ENTRY_SCREEN_ROOM = "screen_room";
    public static final String ENTRY_STORY = "story";
    public static final String ENTRY_WIKI = "wikiEntry";
    int cid;
    public CommunityConfigHelper communityConfigHelper;
    NVContext nvContext;
    public static HashMap<String, EntryItem> entryItemHashMap = new HashMap<>();
    private static HashMap<String, String[]> entryPathHashMap = new HashMap<>();
    public static final String[] POST_ENTRY_STORYPOST_PATH = {Module.MODULE_POSTS, "postType", "story"};
    public static final String[] POST_ENTRY_IMAGEPOST_PATH = {Module.MODULE_POSTS, "postType", "image"};
    public static final String[] POST_ENTRY_BLOGPOST_PATH = {Module.MODULE_POSTS, "postType", "blog"};
    public static final String ENTRY_QUIZZES = "quiz";
    public static final String[] POST_ENTRY_QUIZPOST_PATH = {Module.MODULE_POSTS, "postType", ENTRY_QUIZZES};
    public static final String ENTRY_QUEATION = "question";
    public static final String[] POST_ENTRY_QUESTIONPOST_PATH = {Module.MODULE_POSTS, "postType", ENTRY_QUEATION};
    public static final String ENTRY_LINK_POST = "webLink";
    public static final String[] POST_ENTRY_WEB_LINKPOST_PATH = {Module.MODULE_POSTS, "postType", ENTRY_LINK_POST};
    public static final String ENTRY_POLL = "poll";
    public static final String[] POST_ENTRY_POLLPOST_PATH = {Module.MODULE_POSTS, "postType", ENTRY_POLL};
    public static final String[] POST_ENTRY_WIKI_ENTRYPOST_PATH = {Module.MODULE_POSTS, "postType", "catalogEntry"};
    public static final String[] POST_ENTRY_PUBLIC_CHAT_PATH = {Module.MODULE_POSTS, "postType", "publicChatRooms"};
    public static final String[] CHAT_PUBLIC_CHAT_PATH = {"chat", "publicChat"};
    public static final String[] CHAT_PUBLIC_GO_LIVE_PATH = {Module.MODULE_POSTS, "postType", "liveMode"};

    static {
        entryPathHashMap.put("story", POST_ENTRY_STORYPOST_PATH);
        entryPathHashMap.put(ENTRY_POST_PUBLIC_CHATROOMS, POST_ENTRY_PUBLIC_CHAT_PATH);
        entryPathHashMap.put("image", POST_ENTRY_IMAGEPOST_PATH);
        entryPathHashMap.put("blog", POST_ENTRY_BLOGPOST_PATH);
        entryPathHashMap.put(ENTRY_QUIZZES, POST_ENTRY_QUIZPOST_PATH);
        entryPathHashMap.put(ENTRY_LINK_POST, POST_ENTRY_WEB_LINKPOST_PATH);
        entryPathHashMap.put(ENTRY_POLL, POST_ENTRY_POLLPOST_PATH);
        entryPathHashMap.put(ENTRY_QUEATION, POST_ENTRY_QUESTIONPOST_PATH);
        entryPathHashMap.put(ENTRY_WIKI, POST_ENTRY_WIKI_ENTRYPOST_PATH);
        entryPathHashMap.put(ENTRY_CHAT_PUBLIC_CHATROOMS, CHAT_PUBLIC_CHAT_PATH);
        entryPathHashMap.put(ENTRY_GO_LIVE, CHAT_PUBLIC_GO_LIVE_PATH);
        entryItemHashMap.put(ENTRY_POST_PUBLIC_CHATROOMS, new EntryItem(R.string.post_type_public_chat, R.color.chat_theme_color, R.drawable.ic_page_public_chat, R.string.compose_hint_chat));
        entryItemHashMap.put(ENTRY_CHAT_PUBLIC_CHATROOMS, new EntryItem(R.string.post_type_public_chat, R.color.chat_theme_color, R.drawable.ic_page_public_chat, R.string.compose_hint_chat));
        entryItemHashMap.put("story", new EntryItem(R.string.post_type_story, R.color.page_story, R.drawable.ic_page_story, R.string.compose_hint_story));
        entryItemHashMap.put(ENTRY_GO_LIVE, new EntryItem(R.string.chat_go_live, R.color.go_live_theme_color, R.drawable.ic_chat_go_live, R.string._empty));
        entryItemHashMap.put("image", new EntryItem(R.string.post_type_image_post, R.color.page_image_post, R.drawable.ic_page_image_post, R.string.compose_hint_image_post));
        entryItemHashMap.put("blog", new EntryItem(R.string.post_type_blog, R.color.page_blog, R.drawable.ic_page_blog, R.string.compose_hint_blog));
        entryItemHashMap.put(ENTRY_QUIZZES, new EntryItem(R.string.post_type_quiz, R.color.page_quizzes, R.drawable.ic_page_quizzes, R.string.compose_hint_quiz));
        entryItemHashMap.put(ENTRY_LINK_POST, new EntryItem(R.string.post_type_link, R.color.page_link_post, R.drawable.ic_page_link_posts, R.string.compose_hint_link));
        entryItemHashMap.put(ENTRY_POLL, new EntryItem(R.string.post_type_poll, R.color.page_poll, R.drawable.ic_page_poll, R.string.compose_hint_poll));
        entryItemHashMap.put(ENTRY_QUEATION, new EntryItem(R.string.post_type_question, R.color.page_question, R.drawable.ic_page_questions, R.string.compose_hint_question));
        entryItemHashMap.put(ENTRY_WIKI, new EntryItem(R.string.post_type_wiki_entry, R.color.page_wiki, R.drawable.ic_page_wiki, R.string.compose_hint_item));
        entryItemHashMap.put(ENTRY_DRAFT, new EntryItem(R.string.compose_draft, R.color.page_draft, R.drawable.ic_draft, 0));
    }

    public EntryManager(NVContext nVContext) {
        this.nvContext = nVContext;
        this.cid = ((ConfigService) nVContext.getService("config")).getCommunityId();
        this.communityConfigHelper = new CommunityConfigHelper(nVContext, this.cid);
    }

    public EntryManager(NVContext nVContext, int i) {
        this.nvContext = nVContext;
        this.cid = i;
        this.communityConfigHelper = new CommunityConfigHelper(nVContext, i);
    }

    public static String[] getEntryPath(String str) {
        return entryPathHashMap.get(str);
    }

    public static EntryItem getEntryItem(String str) {
        return entryItemHashMap.get(str);
    }

    public EntrySetting getEntrySetting(String... strArr) {
        JsonNode moduleNode = this.communityConfigHelper.getModuleNode(strArr);
        EntrySetting entrySetting = new EntrySetting();
        if (moduleNode != null) {
            try {
                return (EntrySetting) JacksonUtils.DEFAULT_MAPPER.treeToValue(moduleNode, EntrySetting.class);
            } catch (JsonProcessingException e) {
                Log.e(e.getMessage());
            }
        }
        return entrySetting;
    }

    private boolean isEntryEnabled(User user, String... strArr) {
        if (!this.communityConfigHelper.isPostEnabled()) {
            return false;
        }
        EntrySetting entrySetting = getEntrySetting(strArr);
        if (entrySetting == null) {
            return true;
        }
        if (entrySetting.enabled) {
            return entrySetting.getPrivilegeType() == 3 ? user != null && user.isCurator() : entrySetting.enabled;
        }
        return false;
    }

    public boolean isEntryEnabled(User user, String str) {
        if (TextUtils.isEmpty(str) || (!ENTRY_DRAFT.equals(str) && entryPathHashMap.get(str) == null)) {
            return false;
        }
        if (ENTRY_DRAFT.equals(str)) {
            return true;
        }
        if ((!"story".equals(str) || isStoryEnabled()) && this.communityConfigHelper.isPostEnabled()) {
            return isEntryEnabled(user, entryPathHashMap.get(str));
        }
        return false;
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
        int i = user.level;
        boolean zIsCurator = user.isCurator();
        Privilege privilege = entrySetting.privilege;
        int i2 = privilege.type;
        if (i2 == 1) {
            entryEligibleCheckResult.isEligible = true;
        } else if (i2 == 3) {
            entryEligibleCheckResult.isEligible = zIsCurator;
        } else if (i2 == 2) {
            entryEligibleCheckResult.isEligible = zIsCurator || i >= privilege.minLevel;
        } else if (i2 == 4) {
            entryEligibleCheckResult.isEligible = ((MembershipService) this.nvContext.getService("membership")).isMembership();
            entryEligibleCheckResult.needMembership = true;
        } else if (i2 == 5) {
            User userProfile = ((AccountService) this.nvContext.getService("account")).getUserProfile(((ConfigService) this.nvContext.getService("config")).getCommunityId());
            entryEligibleCheckResult.isEligible = userProfile == null || userProfile.membersCount >= entrySetting.privilege.minLevel;
        }
        if (!entryEligibleCheckResult.isEligible) {
            Privilege privilege2 = entrySetting.privilege;
            int i3 = privilege2.minLevel;
            entryEligibleCheckResult.minLevel = i3;
            if (i3 > 0) {
                entryEligibleCheckResult.errorString = this.nvContext.getContext().getString(privilege2.type == 5 ? R.string.chat_entry_limit : R.string.post_entry_limit, Integer.valueOf(entrySetting.privilege.minLevel));
            }
        }
        return entryEligibleCheckResult;
    }

    public static boolean isStoryEnabled() {
        if (NVApplication.CLIENT_TYPE == 101) {
            return Arrays.binarySearch(new int[]{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 1025496, 1052901, 1235054, 2623638, 2918978, 3434136, 3618093, 3763070, 4810365, 5079556, 5536081, 5545260, 5794101, 6115961, 6795945, 6872133, 7170320, 7435248, 7561451, 9304562, 10635149, 10854887, 12126645, 13806255, 13882408, 14807249, 16326590, 16481536, 16684770, 17005077, 17595602, 17702030, 17717710, 18601371, 18769934, 19665645, 21879052, 22920873, 23642660, 23728884, 24443225, 26832479, 27315468, 27320248, 27364483, 28095891, 29226853, 29691591, 29840211, 31388966, 32805925, 33161328, 33637233, 33709377, 34793073, 35349368, 36113276, 36873849, 38577468, 39120414, 39343456, 39953004, 41001082, 42179212, 42504671, 43169197, 44382721, 44486328, 44782162, 46707117, 47434461, 48892191, 49376372, 49475378, 49778584, 49943996, 50307330, 50895490, 51200054, 51502556, 52388835, 53482706, 54900357, 54989834, 56254467, 56643733, 56854446, 57514185, 58328235, 58987162, 59182627, 59184465, 59849240, 62311596, 63458351, 63726048, 63794674, 64112096, 67586527, 67684557, 69004189, 69250485, 69407815, 69458781, 70509347, 70691440, 71927970, 72220284, 72332094, 72697002, 74132253, 74613308, 75713139, 78670965, 79589330, 79880176, 80029004, 80459214, 80879609, 81303266, 81473105, 82015214, 82409998, 83396189, 84509541, 84776610, 86492223, 86519701, 86744009, 87532438, 87857825, 89340747, 93148157, 93227299, 93269945, 93328651, 93371196, 93622187, 94003318, 94905451, 94957337, 97945585, 98256738, 99140453, 99693239, 99817505, 102066263, 102292403, 102814645, 103000848, 103382617, 105894570, 106308575, 107265677, 107451828, 109445678, 109949692, 110571520, 111295440, 111447306, 112645152, 113867556, 114381531, 116093485, 116493629, 116551415, 116950499, 117630578, 117635182, 118423274, 118560473, 119993951, 120478621, 122700946, 126358391, 127240680, 127332146, 128313663, 128351380, 128584049, 129160235, 129306178, 129792907, 130054335, 131909763, 133322622, 133411448, 133937342, 135492936, 136942404, 137229817, 138220763, 138543080, 138939117, 140098481, 141928484, 142150934, 142469428, 142651485, 144313656, 144321393, 144339917, 146137766, 147065627, 147177032, 147550968, 148573685, 149718884, 152086810, 152563289, 152941957, 153683817, 154501166, 155398189, 156542274, 157296277, 157365963, 157478823, 157590170, 158557962, 158674318, 159371163, 159453251, 159930707, 160874751, 162237125, 163824059, 164427886, 164743414, 165160697, 165356468, 166247801, 169761289, 170473224, 170581029, 171306336, 171802120, 172349881, 172976915, 173354989, 173430617, 174098596, 175314882, 175875997, 176560075, 177535895, 177645276, 181520665, 181637292, 182384946, 182594964, 183141791, 184613417, 185489701, 186416462, 187177095, 187529954, 187918703, 187944109, 188008603, 188099851, 188134442, 188401679, 189461426, 190215580, 190408455, 191485550, 192825021, 193320657, 193552437, 194275341, 195570892, 196684241, 198113073, 198396773, 198641964, 198687438, 198813835, 199364586, 201106588, 203308058, 205241129, 206487841, 207767313, 207827957, 207859977, 208052164, 208420590, 208474654, 210006656, 210127143, 210801681, 211275521, 211616436, 211663547, 213394494, 214517128, 214924547, 215067101, 216065373, 217159815, 217615056, 217977273, 218902774, 219280721, 219550951, 220155198, 220203844, 220474164, 223034513, 223625607, 225346323, 225781937, 227549816, 227720125, 228302996, 229068291, 229568464, 230187346, 231629506, 231930935, 233332503, 233374319, 234212745, 235196899, 236153262, 236991378, 237300235, 237406644, 238813261, 239279149, 240013193, 241051880, 241138450, 242004029, 242238269, 242625110, 242746993, 242762048, 243108929, 243665489, 244001498, 244166265, 244304829, 244374421, 244691577, 244975041, 246569197, 247897095, 247999247, 248767455, 249805027, 250443674, 250485228, 250794481, 250948626, 253273948, 254414219, 255022587, 256748769, 259225708, 259296333, 259298577, 259462299, 259939521, 261502631, 262064730, 262211474, 262615674, 263054275, 263182861, 264403137, 265063165, 265140219, 266973087, 267649403, 268057751, 268192904, 155353317, 81922710, 145652175, 250791119, 44485556, 166607915, 42621700, 245393157, 7888145, 5298342, 173498823, 229291613, 252508015, 112707892, 61576600, 100079247, 239184647, 150588716, 75396919, 71893015, 220434013, 257792502, 58381031, 138678479, 185086222, 114220348, 176770496, 140874481, 12156057, 146533809, 77401645, 102851518, 226808465, 68447210, 11955728, 256751506, 114247986, 132481028, 142302146, 41065685, 244512135, 22044228, 166361572, 241117532, 31249695, 56013409, 134947877, 32512948, 157850345, 15316527, 25393304, 40234698, 6247080, 156823674, 4371122, 106419552, 67144886, 33611560, 70677369, 238103569, 232180985, 87981349, 204946522, 224165469, 193484641, 202247760, 231564087, 224703264, 151516313, 124682854, 75056920, 17283520, 27116510, 10189659, 171886567, 210680554, 95848762, 135278249, 99586130, 176661159, 253306775, 243107587, 77760116, 229982260, 206976886, 23585105, 102846112, 180050703, 133469884, 228943914, 112800332, 54775358, 118515922, 191335523, 162782834, 225603745, 176519240, 67078016, 22620227, 5250099, 260159437, 166908228, 242584574, 50796487, 124600604, 259932764, 7805841, 22827196, 86674752, 160388858, 138341362, 4092349, 232192915, 262879262, 82062371, 117481812, 16736694, 264404870, 172227066, 222306780, 175155138, 109549952, 2034842, 253141411, 175538490, 114455374, 179772571, 253523965, 141593743, 139410905, 119125816, 237512301, 264431688, 109443784, 160323736, 98661067, 23364456, 163915792, 191724158, 127780710, 91061198, 188309119, 252927963, 29567626, 66090748, 21493520, 89994383, 225419114, 70202652, 113435488, 38605383, 58051685, 34375233, 204588196, 72286195, 83350524, 69631890, 209699788, 214678652, 254083853, 151188840, 231541346, 155690148, 246522817, 216547668, 115624951, 266648941, 32653095, 176535932, 170878763, 144126889, 267097661, 20046899, 160999902, 152875523, 82037717, 236682959, 57944078, 67819435, 209605740, 174085944, 64722780, 147756793, 68511679, 7490546, 222951075, 198006837, 200350201, 130642578, 178401984, 14171957, 93427243, 233596329, 89676702, 41094810, 217119661, 41457159, 186282774, 261114707, 110180673, 170097154, 219466781, 179655839, 225000439, 240592958, 104190758, 211999729, 115925181, 115914145, 39382391, 193389039, 135152162, 222908671, 82994867, 20635140, 159722833, 173462938, 57344434, 148453237, 2031511, 149145012, 236608616, 77037263, 184160058, 190762990, 153133878, 263145865, 215578921, 97215649, 185494023, 239695626, 111072276, 207964771, 43943423, 165521414, 236835113, 1737880, 12078277, 91300291, 14864209, 70095123, 254676341, 68699867, 93612177, 67540495, 260087828, 224992867, 68994418, 219111878, 178085103, 25098796, 178210336, 199767922, 62039068, 60461430, 148484093, 14291459, 151890700, 206274863, 78169306, 197128238, 6953663, 143293231, 216411767, 218776210}, ((ConfigService) NVApplication.instance().getService("config")).getCommunityId()) >= 0;
        }
        return true;
    }

    public EntryEligibleCheckResult canUserChat(User user) {
        return canUserChat(user, false);
    }

    public EntryEligibleCheckResult canUserChat(User user, boolean z) {
        return canCurUserPost(user, z ? ENTRY_GO_LIVE : ENTRY_POST_PUBLIC_CHATROOMS);
    }
}
