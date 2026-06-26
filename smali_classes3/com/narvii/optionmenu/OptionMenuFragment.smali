.class public Lcom/narvii/optionmenu/OptionMenuFragment;
.super Lcom/narvii/app/NVFragment;
.source "OptionMenuFragment.java"


# static fields
.field private static final OPTION_MENU_TYPE_CHAT_MESSAGE:I = 0x3

.field private static final OPTION_MENU_TYPE_COMMENT:I = 0x4

.field private static final OPTION_MENU_TYPE_FEED:I = 0x1

.field private static final OPTION_MENU_TYPE_OTHER:I = 0x0

.field private static final OPTION_MENU_TYPE_SHARE_FILE:I = 0x2

.field private static final OPTION_MENU_TYPE_USER:I = 0x5


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private chatService:Lcom/narvii/chat/core/ChatService;

.field private communityService:Lcom/narvii/community/CommunityService;

.field private config:Lcom/narvii/config/ConfigService;

.field private fontAwesomeView:Lcom/narvii/widget/FontAwesomeView;

.field private isAnnouncement:Z

.field private media:Lcom/narvii/model/Media;

.field private parent:Lcom/narvii/model/NVObject;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/optionmenu/OptionMenuFragment;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->setPopupMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/optionmenu/OptionMenuFragment;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/optionmenu/OptionMenuFragment;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->flag()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/optionmenu/OptionMenuFragment;)Lcom/narvii/model/Media;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/optionmenu/OptionMenuFragment;Lcom/narvii/model/Media;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/optionmenu/OptionMenuFragment;->uploadToShareFolder(Lcom/narvii/model/Media;)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/optionmenu/OptionMenuFragment;)Lcom/narvii/model/NVObject;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/optionmenu/OptionMenuFragment;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/optionmenu/OptionMenuFragment;->delete(Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/optionmenu/OptionMenuFragment;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->saveImage()V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/optionmenu/OptionMenuFragment;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->share()V

    return-void
.end method

.method private checkCommunityAvailability()Z
    .locals 4

    const-string v0, "config"

    .line 423
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->config:Lcom/narvii/config/ConfigService;

    .line 424
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 425
    new-instance v1, Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 426
    new-instance v2, Lcom/narvii/optionmenu/OptionMenuFragment$6;

    invoke-direct {v2, p0}, Lcom/narvii/optionmenu/OptionMenuFragment$6;-><init>(Lcom/narvii/optionmenu/OptionMenuFragment;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private checkType()I
    .locals 5

    .line 183
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "parentClass"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "parent"

    .line 184
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    .line 187
    :try_start_0
    const-class v2, Lcom/narvii/model/Feed;

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    .line 188
    new-instance v0, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v0}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    iput-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    return v4

    .line 190
    :cond_1
    const-class v2, Lcom/narvii/model/ChatMessage;

    if-ne v0, v2, :cond_2

    .line 191
    const-class v0, Lcom/narvii/model/ChatMessage;

    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    iput-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    const/4 v0, 0x3

    return v0

    .line 193
    :cond_2
    const-class v2, Lcom/narvii/model/SharedFile;

    if-ne v0, v2, :cond_3

    .line 194
    const-class v0, Lcom/narvii/model/SharedFile;

    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    iput-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    const/4 v0, 0x2

    return v0

    .line 196
    :cond_3
    const-class v2, Lcom/narvii/model/Comment;

    if-ne v0, v2, :cond_4

    .line 197
    const-class v0, Lcom/narvii/model/Comment;

    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    iput-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    const/4 v0, 0x4

    return v0

    .line 199
    :cond_4
    const-class v2, Lcom/narvii/model/Item;

    if-ne v0, v2, :cond_5

    .line 200
    new-instance v0, Lcom/narvii/model/Feed$FeedDeserializer;

    invoke-direct {v0}, Lcom/narvii/model/Feed$FeedDeserializer;-><init>()V

    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readUsing(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    iput-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    return v4

    .line 202
    :cond_5
    const-class v2, Lcom/narvii/model/User;

    if-ne v0, v2, :cond_6

    .line 203
    const-class v0, Lcom/narvii/model/User;

    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    iput-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    const/4 v0, 0x5

    return v0

    .line 206
    :cond_6
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->communityService:Lcom/narvii/community/CommunityService;

    invoke-virtual {v1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_7
    return v3
.end method

.method private delete(Lcom/narvii/model/ChatMessage;)V
    .locals 4

    .line 306
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    iget p1, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService;->recallMessage(I)Z

    goto :goto_0

    .line 309
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 310
    new-instance v1, Lcom/narvii/optionmenu/OptionMenuFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/narvii/optionmenu/OptionMenuFragment$3;-><init>(Lcom/narvii/optionmenu/OptionMenuFragment;Lcom/narvii/model/ChatMessage;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 317
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 318
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/chat/thread/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/message/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 319
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v1, "api"

    .line 320
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 321
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_0
    return-void
.end method

.method private flag()V
    .locals 2

    .line 410
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->checkCommunityAvailability()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    .line 414
    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->url:Ljava/lang/String;

    .line 415
    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->refMediaUrl(Ljava/lang/String;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    instance-of v1, v1, Lcom/narvii/model/ChatMessage;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/video/NVFullScreenVideoActivity;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 417
    invoke-virtual {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->screenShotFlag(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 419
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    return-void
.end method

.method private isMine(Lcom/narvii/model/NVObject;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)Lcom/narvii/optionmenu/OptionMenuFragment;
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-static {p0, p1, p2, v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Z)Lcom/narvii/optionmenu/OptionMenuFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Z)Lcom/narvii/optionmenu/OptionMenuFragment;
    .locals 3

    .line 99
    new-instance v0, Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-direct {v0}, Lcom/narvii/optionmenu/OptionMenuFragment;-><init>()V

    .line 100
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "media"

    .line 101
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "parent"

    .line 102
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "parentClass"

    .line 103
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "isAnnouncement"

    .line 104
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private saveImage()V
    .locals 2

    .line 343
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 344
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    const/16 v1, 0x6c

    .line 345
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 346
    invoke-virtual {v0, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    return-void
.end method

.method private setPopupMenu()V
    .locals 3

    .line 136
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->fontAwesomeView:Lcom/narvii/widget/FontAwesomeView;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 137
    invoke-direct {p0, v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->setupMenus(Landroid/widget/PopupMenu;)V

    .line 138
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 139
    new-instance v1, Lcom/narvii/optionmenu/OptionMenuFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/optionmenu/OptionMenuFragment$2;-><init>(Lcom/narvii/optionmenu/OptionMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 179
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method private setupMenus(Landroid/widget/PopupMenu;)V
    .locals 7

    .line 218
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f0f0cfe

    invoke-interface {v0, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->isAnnouncement:Z

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v0, 0x7f0f0f2a

    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void

    .line 226
    :cond_1
    iget v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->type:I

    const v2, 0x7f0f06d5

    const v3, 0x7f0f0fa2

    if-eqz v0, :cond_f

    const/4 v4, 0x1

    if-eq v0, v4, :cond_c

    const/4 v5, 0x2

    if-eq v0, v5, :cond_10

    const/4 v5, 0x3

    const v6, 0x7f0f0fdd

    if-eq v0, v5, :cond_7

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    goto/16 :goto_4

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    invoke-direct {p0, v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->userIsMe(Lcom/narvii/model/NVObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    invoke-static {v0, v2}, Lcom/narvii/share/ShareDialog;->showUploadAlbumOption(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 278
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v1, v6, v1, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 281
    :cond_3
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    invoke-direct {p0, v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->isMine(Lcom/narvii/model/NVObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 264
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 265
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1, v3, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 268
    :cond_5
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 270
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isImage()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 271
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v1, v3, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 244
    :cond_7
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    invoke-direct {p0, v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->isMine(Lcom/narvii/model/NVObject;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 245
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    invoke-static {v0, v2}, Lcom/narvii/share/ShareDialog;->showUploadAlbumOption(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 246
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1, v6, v1, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 248
    :cond_8
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f0f0348

    invoke-interface {v0, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 250
    :cond_9
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 252
    :goto_1
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 253
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    .line 254
    :goto_2
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    instance-of v0, v0, Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_b

    if-eqz v4, :cond_b

    .line 255
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f0f0094

    invoke-interface {v0, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 257
    :cond_b
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isImage()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 258
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v1, v3, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_4

    .line 228
    :cond_c
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    invoke-direct {p0, v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->isMine(Lcom/narvii/model/NVObject;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 229
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 230
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1, v3, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_3

    .line 233
    :cond_d
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 235
    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isImage()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 236
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v1, v3, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_4

    .line 286
    :cond_f
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 287
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isImage()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 288
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v1, v3, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_10
    :goto_4
    return-void
.end method

.method private share()V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    instance-of v0, v0, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->sharePost()V

    goto :goto_0

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->shareVideo()V

    goto :goto_0

    .line 366
    :cond_1
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->shareImage()V

    :goto_0
    return-void
.end method

.method private shareImage()V
    .locals 6

    .line 382
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    instance-of v0, v0, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 383
    new-instance v0, Lcom/narvii/share/SharePayload;

    invoke-direct {v0}, Lcom/narvii/share/SharePayload;-><init>()V

    .line 384
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/share/SharePayload;->mediaUrl:Ljava/lang/String;

    const-string v1, "community"

    .line 385
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/CommunityService;

    const-string v2, "config"

    .line 386
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 387
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 388
    new-instance v1, Lcom/narvii/share/ShareDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/narvii/share/ShareDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/SharePayload;)V

    const/4 v0, 0x0

    .line 389
    new-instance v2, Lcom/narvii/share/ShareButtonSaveImage;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/share/ShareButtonSaveImage;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/share/ShareDialog;->setCustomButton(ILcom/narvii/share/ShareButtonCustomInfo;)V

    .line 390
    invoke-virtual {v1}, Lcom/narvii/share/ShareDialog;->show()V

    return-void

    .line 393
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    invoke-direct {p0, v1}, Lcom/narvii/optionmenu/OptionMenuFragment;->isMine(Lcom/narvii/model/NVObject;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    instance-of v3, v1, Lcom/narvii/model/ChatMessage;

    if-nez v3, :cond_3

    instance-of v3, v1, Lcom/narvii/model/Comment;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 397
    :cond_1
    instance-of v1, v1, Lcom/narvii/model/Feed;

    if-eqz v1, :cond_2

    .line 398
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    iget-object v3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    new-instance v4, Lcom/narvii/optionmenu/OptionMenuFragment$5;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/narvii/optionmenu/OptionMenuFragment$5;-><init>(Lcom/narvii/optionmenu/OptionMenuFragment;Lcom/narvii/app/NVContext;)V

    invoke-static {v1, v2, v3, v0, v4}, Lcom/narvii/share/ShareDialog;->getShareDialogFromMedia(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/util/List;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Lcom/narvii/share/ShareDialog;->show()V

    goto :goto_1

    .line 405
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    iget-object v4, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    invoke-static {v1, v3, v4, v0, v2}, Lcom/narvii/share/ShareDialog;->getShareDialogFromMedia(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/util/List;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/share/ShareDialog;->show()V

    goto :goto_1

    .line 396
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    iget-object v4, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    invoke-static {v1, v3, v4, v0, v2}, Lcom/narvii/share/ShareDialog;->getShareDialogFromMedia(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/util/List;Lcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/share/ShareDialog;->show()V

    :goto_1
    return-void
.end method

.method private sharePost()V
    .locals 4

    .line 372
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    check-cast v1, Lcom/narvii/model/Feed;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/share/ShareDialog;->getShareDialogFromFeed(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZLcom/narvii/share/BaseShareButtonRepost;)Lcom/narvii/share/ShareDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/share/ShareDialog;->show()V

    return-void
.end method

.method private shareVideo()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    instance-of v0, v0, Lcom/narvii/model/Comment;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->parent:Lcom/narvii/model/NVObject;

    check-cast v1, Lcom/narvii/model/Comment;

    invoke-static {v0, v1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromComment(Lcom/narvii/app/NVContext;Lcom/narvii/model/Comment;)Lcom/narvii/share/ShareDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/share/ShareDialog;->show()V

    :cond_0
    return-void
.end method

.method private uploadToShareFolder(Lcom/narvii/model/Media;)V
    .locals 3

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v1, Lcom/narvii/util/CheckEligibleHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/CheckEligibleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 329
    new-instance v2, Lcom/narvii/optionmenu/OptionMenuFragment$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/narvii/optionmenu/OptionMenuFragment$4;-><init>(Lcom/narvii/optionmenu/OptionMenuFragment;Ljava/util/ArrayList;Lcom/narvii/model/Media;)V

    const-string p1, "shared-folder"

    const-string v0, "image-upload"

    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/util/CheckEligibleHelper;->checkEligible(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private userIsMe(Lcom/narvii/model/NVObject;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "account"

    .line 112
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/account/AccountService;

    iput-object p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string p3, "community"

    .line 113
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/community/CommunityService;

    iput-object p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->communityService:Lcom/narvii/community/CommunityService;

    const-string p3, "config"

    .line 114
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/config/ConfigService;

    iput-object p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->config:Lcom/narvii/config/ConfigService;

    const-string p3, "chat"

    .line 115
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/chat/core/ChatService;

    iput-object p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 116
    invoke-direct {p0}, Lcom/narvii/optionmenu/OptionMenuFragment;->checkType()I

    move-result p3

    iput p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->type:I

    const-string p3, "media"

    .line 117
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-class v0, Lcom/narvii/model/Media;

    invoke-static {p3, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Media;

    iput-object p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    .line 118
    iget-object p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    iget-object p3, p3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->url:Ljava/lang/String;

    const/4 p3, 0x0

    const-string v0, "isAnnouncement"

    .line 119
    invoke-virtual {p0, v0, p3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->isAnnouncement:Z

    const v0, 0x7f0b02c7

    .line 120
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPermissionGranted(I)V
    .locals 1

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_0

    .line 353
    new-instance p1, Lcom/narvii/media/SaveImageHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/media/SaveImageHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 354
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    invoke-virtual {p1, v0}, Lcom/narvii/media/SaveImageHelper;->save(Lcom/narvii/model/Media;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09004e

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/FontAwesomeView;

    iput-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->fontAwesomeView:Lcom/narvii/widget/FontAwesomeView;

    .line 127
    iget-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->fontAwesomeView:Lcom/narvii/widget/FontAwesomeView;

    new-instance p2, Lcom/narvii/optionmenu/OptionMenuFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/optionmenu/OptionMenuFragment$1;-><init>(Lcom/narvii/optionmenu/OptionMenuFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMedia(Lcom/narvii/model/Media;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment;->media:Lcom/narvii/model/Media;

    return-void
.end method
