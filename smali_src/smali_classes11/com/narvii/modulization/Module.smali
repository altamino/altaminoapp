.class public Lcom/narvii/modulization/Module;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .locals 3

    const-string/jumbo v0, "uploadPrivilege"

    const-string v1, "module"

    const-string/jumbo v2, "sharedFolder"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/modulization/Module;->photoUploadPath:[Ljava/lang/String;

    const-string v0, "albumManagePrivilege"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/modulization/Module;->albumManagePath:[Ljava/lang/String;

    const-string v0, "audioEnabled"

    const-string v1, "chat"

    const-string v2, "avChat"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/modulization/Module;->isAudioChatEnabledPath:[Ljava/lang/String;

    const-string v0, "audio2Enabled"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/modulization/Module;->isAudio2ChatEnabledPath:[Ljava/lang/String;

    const-string/jumbo v0, "screeningRoomEnabled"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/modulization/Module;->isScreenRoomEnabledPath:[Ljava/lang/String;

    const-string/jumbo v0, "videoEnabled"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/modulization/Module;->isVideoChatEnabledPath:[Ljava/lang/String;

    const-string/jumbo v0, "privacyProtectionEnabled"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/modulization/Module;->avChatProtectionEnablePath:[Ljava/lang/String;

    const-string/jumbo v0, "postEnabled"

    const-string v1, "featured"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/modulization/Module;->featuredPostEnabledPath:[Ljava/lang/String;

    const-string v0, "memberEnabled"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/modulization/Module;->featuredMemberEnabledPath:[Ljava/lang/String;

    const-string/jumbo v0, "publicChatRoomEnabled"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/modulization/Module;->publicChatRoomEnabledPath:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
