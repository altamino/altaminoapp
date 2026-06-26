.class public Lcom/narvii/modulization/Module;
.super Ljava/lang/Object;
.source "Module.java"


# static fields
.field public static final CONFIG_MODULE_KEY:Ljava/lang/String; = "module"

.field public static final MODULE_CATALOG:Ljava/lang/String; = "catalog"

.field public static final MODULE_CHAT:Ljava/lang/String; = "chat"

.field public static final MODULE_EXTERNAL_CONTENT:Ljava/lang/String; = "externalContent"

.field public static final MODULE_FEATURED:Ljava/lang/String; = "featured"

.field public static final MODULE_INFLUENCER:Ljava/lang/String; = "influencer"

.field public static final MODULE_POSTS:Ljava/lang/String; = "post"

.field public static final MODULE_RANKING:Ljava/lang/String; = "ranking"

.field public static final MODULE_SHARED_FOLDER:Ljava/lang/String; = "sharedFolder"

.field public static final MODULE_TOPIC_CATEGORY:Ljava/lang/String; = "topicCategories"

.field public static final albumManagePath:[Ljava/lang/String;

.field public static final avChatProtectionEnablePath:[Ljava/lang/String;

.field public static final featuredMemberEnabledPath:[Ljava/lang/String;

.field public static final featuredPostEnabledPath:[Ljava/lang/String;

.field public static final isAudio2ChatEnabledPath:[Ljava/lang/String;

.field public static final isAudioChatEnabledPath:[Ljava/lang/String;

.field public static final isScreenRoomEnabledPath:[Ljava/lang/String;

.field public static final isVideoChatEnabledPath:[Ljava/lang/String;

.field public static final photoUploadPath:[Ljava/lang/String;

.field public static final publicChatRoomEnabledPath:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "module"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "sharedFolder"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v6, 0x2

    const-string v7, "uploadPrivilege"

    aput-object v7, v1, v6

    .line 20
    sput-object v1, Lcom/narvii/modulization/Module;->photoUploadPath:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    const-string v2, "albumManagePrivilege"

    aput-object v2, v1, v6

    .line 21
    sput-object v1, Lcom/narvii/modulization/Module;->albumManagePath:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "chat"

    aput-object v2, v1, v3

    const-string v4, "avChat"

    aput-object v4, v1, v5

    const-string v7, "audioEnabled"

    aput-object v7, v1, v6

    .line 23
    sput-object v1, Lcom/narvii/modulization/Module;->isAudioChatEnabledPath:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    const-string v7, "audio2Enabled"

    aput-object v7, v1, v6

    .line 24
    sput-object v1, Lcom/narvii/modulization/Module;->isAudio2ChatEnabledPath:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    const-string v7, "screeningRoomEnabled"

    aput-object v7, v1, v6

    .line 25
    sput-object v1, Lcom/narvii/modulization/Module;->isScreenRoomEnabledPath:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    const-string v7, "videoEnabled"

    aput-object v7, v1, v6

    .line 26
    sput-object v1, Lcom/narvii/modulization/Module;->isVideoChatEnabledPath:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v4, v0, v5

    const-string v1, "privacyProtectionEnabled"

    aput-object v1, v0, v6

    .line 27
    sput-object v0, Lcom/narvii/modulization/Module;->avChatProtectionEnablePath:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "featured"

    aput-object v1, v0, v3

    const-string v2, "postEnabled"

    aput-object v2, v0, v5

    .line 28
    sput-object v0, Lcom/narvii/modulization/Module;->featuredPostEnabledPath:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v2, "memberEnabled"

    aput-object v2, v0, v5

    .line 29
    sput-object v0, Lcom/narvii/modulization/Module;->featuredMemberEnabledPath:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "publicChatRoomEnabled"

    aput-object v1, v0, v5

    .line 30
    sput-object v0, Lcom/narvii/modulization/Module;->publicChatRoomEnabledPath:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
