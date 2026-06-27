package com.narvii.modulization;

/* loaded from: classes3.dex */
public class Module {
    public static final String MODULE_CATALOG = "catalog";
    public static final String MODULE_CHAT = "chat";
    public static final String MODULE_EXTERNAL_CONTENT = "externalContent";
    public static final String MODULE_INFLUENCER = "influencer";
    public static final String MODULE_POSTS = "post";
    public static final String MODULE_RANKING = "ranking";
    public static final String MODULE_TOPIC_CATEGORY = "topicCategories";
    public static final String CONFIG_MODULE_KEY = "module";
    public static final String MODULE_SHARED_FOLDER = "sharedFolder";
    public static final String[] photoUploadPath = {CONFIG_MODULE_KEY, MODULE_SHARED_FOLDER, "uploadPrivilege"};
    public static final String[] albumManagePath = {CONFIG_MODULE_KEY, MODULE_SHARED_FOLDER, "albumManagePrivilege"};
    public static final String[] isAudioChatEnabledPath = {"chat", "avChat", "audioEnabled"};
    public static final String[] isAudio2ChatEnabledPath = {"chat", "avChat", "audio2Enabled"};
    public static final String[] isScreenRoomEnabledPath = {"chat", "avChat", "screeningRoomEnabled"};
    public static final String[] isVideoChatEnabledPath = {"chat", "avChat", "videoEnabled"};
    public static final String[] avChatProtectionEnablePath = {"chat", "avChat", "privacyProtectionEnabled"};
    public static final String MODULE_FEATURED = "featured";
    public static final String[] featuredPostEnabledPath = {MODULE_FEATURED, "postEnabled"};
    public static final String[] featuredMemberEnabledPath = {MODULE_FEATURED, "memberEnabled"};
    public static final String[] publicChatRoomEnabledPath = {MODULE_FEATURED, "publicChatRoomEnabled"};
}
