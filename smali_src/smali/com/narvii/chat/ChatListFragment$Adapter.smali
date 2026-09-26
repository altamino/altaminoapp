.class public Lcom/narvii/chat/ChatListFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/ChatMessage;",
        "Lcom/narvii/chat/MessageListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field adViewBkp:Lai/medialab/medialabads2/banners/MediaLabAdView;

.field existedMessageId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/ChatListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/ChatListFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->existedMessageId:Ljava/util/HashSet;

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->adViewBkp:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 16
    const/4 v0, 0x1

    .line 17
    .line 18
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->D(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/config/ConfigService;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 26
    move-result p1

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 32
    :cond_0
    return-void
.end method

.method static synthetic access$600(Lcom/narvii/chat/ChatListFragment$Adapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/chat/ChatListFragment$Adapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/chat/ChatListFragment$Adapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method private getMappedMessage(Ljava/lang/String;)Lcom/narvii/model/ChatMessage;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Lcom/narvii/model/ChatMessage;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v3

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    return-object v2

    .line 40
    :cond_2
    return-object v1
.end method

.method private isCurrentChatMessageAccessible(Lcom/narvii/model/ChatMessage;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lcom/narvii/chat/ChatListFragment;->A(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatHelper;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Lcom/narvii/chat/util/ChatHelper;->getStickerCollectionSummary(Lcom/narvii/model/ChatMessage;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/narvii/model/Sticker;->isDisabled()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    :cond_1
    if-eqz v2, :cond_3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDisabled()Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    :cond_2
    return v0

    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->F(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/User;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 51
    move-result p1

    .line 52
    return p1
.end method

.method static bridge synthetic m(Lcom/narvii/chat/ChatListFragment$Adapter;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->showMessageDetailPage(Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method private openImageDetail(Lcom/narvii/model/ChatMessage;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/Media;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 6
    .line 7
    iget v1, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 8
    .line 9
    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 10
    .line 11
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    const-class v3, Lcom/narvii/media/MediaGalleryOptionActivity;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .line 34
    const-string v2, "parent"

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    const-string v2, "parentClass"

    .line 44
    .line 45
    const-class v3, Lcom/narvii/model/ChatMessage;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 49
    .line 50
    const-string v2, "list"

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    const-string/jumbo v1, "showCheckHD"

    .line 60
    const/4 v2, 0x1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    const/4 v1, 0x0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 68
    move-result p1

    .line 69
    .line 70
    if-nez p1, :cond_0

    .line 71
    .line 72
    const-string p1, "hideShareBar"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    :cond_0
    invoke-static {p0, v0}, Lcom/narvii/chat/ChatListFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method private openStickerChatMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/monetization/sticker/StickerDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string/jumbo v2, "threadId"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    const-string v1, "message"

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v0}, Lcom/narvii/chat/ChatListFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showMessageDetailPage(Lcom/narvii/model/ChatMessage;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->openStickerChatMessage(Lcom/narvii/model/ChatMessage;)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_1
    iget v0, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 16
    .line 17
    const/16 v1, 0x64

    .line 18
    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->openImageDetail(Lcom/narvii/model/ChatMessage;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->hasMedia()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    const-class v1, Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {v0, p1, v1}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 60
    .line 61
    .line 62
    invoke-static {v0, p1}, Lcom/narvii/chat/ChatListFragment;->Y(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatMessage;)V

    .line 63
    :goto_0
    return-void
.end method

.method private tryFixMessageCreatedTime(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService;->getOutBoundCreatedTime(Lcom/narvii/model/ChatMessage;)Ljava/util/Date;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 14
    .line 15
    :goto_0
    iput-object v0, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 16
    return-object p1
.end method

.method private updateThreadBubble(Lcom/narvii/model/ChatBubble;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/ChatListFragment$Adapter;->updateThreadBubble(Lcom/narvii/model/ChatBubble;Z)V

    return-void
.end method

.method private updateThreadBubble(Lcom/narvii/model/ChatBubble;Z)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 3
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/narvii/model/ChatThread;->chatBubbles:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/narvii/model/ChatThread;->chatBubbles:Ljava/util/Map;

    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 6
    invoke-static {v1}, Lcom/narvii/chat/ChatListFragment;->w(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7
    iget-boolean v1, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 8
    new-instance p1, Lcom/narvii/model/ChatBubble;

    invoke-direct {p1}, Lcom/narvii/model/ChatBubble;-><init>()V

    const-string p2, "default"

    iput-object p2, p1, Lcom/narvii/model/ChatBubble;->id:Ljava/lang/String;

    .line 9
    :cond_2
    iget-object p2, v0, Lcom/narvii/model/ChatThread;->chatBubbles:Ljava/util/Map;

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->w(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 10
    invoke-static {p2, p1}, Lcom/narvii/chat/ChatListFragment;->O(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatBubble;)V

    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 11
    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method


# virtual methods
.method appendNewChatMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->isCurrentChatMessageAccessible(Lcom/narvii/model/ChatMessage;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->existedMessageId:Ljava/util/HashSet;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 32
    .line 33
    const/16 v1, 0x64

    .line 34
    .line 35
    if-ne v0, v1, :cond_1

    .line 36
    .line 37
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0}, Lcom/narvii/chat/ChatListFragment$Adapter;->getMappedMessage(Ljava/lang/String;)Lcom/narvii/model/ChatMessage;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget v0, v0, Lcom/narvii/model/ChatMessage;->type:I

    .line 46
    .line 47
    iget v1, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 48
    .line 49
    if-ne v0, v1, :cond_2

    .line 50
    :cond_1
    return-void

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Lcom/narvii/chat/ChatListFragment;->w(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Lcom/narvii/chat/ChatListFragment;->K(Lcom/narvii/chat/ChatListFragment;)Z

    .line 74
    move-result v1

    .line 75
    const/4 v2, 0x1

    .line 76
    .line 77
    if-nez v1, :cond_3

    .line 78
    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isUserContentMessage()Z

    .line 83
    move-result v0

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->J(Lcom/narvii/chat/ChatListFragment;)I

    .line 91
    move-result v1

    .line 92
    add-int/2addr v1, v2

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v1}, Lcom/narvii/chat/ChatListFragment;->R(Lcom/narvii/chat/ChatListFragment;I)V

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->a0(Lcom/narvii/chat/ChatListFragment;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    move-result v0

    .line 109
    .line 110
    if-nez v0, :cond_4

    .line 111
    .line 112
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->existedMessageId:Ljava/util/HashSet;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->A(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatHelper;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/util/ChatHelper;->appendNewMessageWithSort(Ljava/util/List;Lcom/narvii/model/ChatMessage;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getBubbleId()Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    if-eqz v0, :cond_5

    .line 139
    .line 140
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->y(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getBubbleId()Ljava/lang/String;

    .line 152
    move-result-object v3

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 158
    .line 159
    .line 160
    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->z(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 165
    move-result-object v1

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getBubbleVersion()I

    .line 169
    move-result v3

    .line 170
    .line 171
    .line 172
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    move-result-object v3

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    goto :goto_0

    .line 178
    .line 179
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 180
    .line 181
    .line 182
    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->y(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 193
    .line 194
    .line 195
    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->z(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    .line 196
    move-result-object v0

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    :goto_0
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 206
    .line 207
    const/16 v1, 0x74

    .line 208
    .line 209
    if-ne v0, v1, :cond_6

    .line 210
    goto :goto_1

    .line 211
    :cond_6
    const/4 v2, 0x0

    .line 212
    .line 213
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 217
    move-result-object v0

    .line 218
    .line 219
    if-nez v0, :cond_7

    .line 220
    const/4 v0, 0x0

    .line 221
    goto :goto_2

    .line 222
    .line 223
    :cond_7
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 227
    move-result-object v0

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    .line 234
    :goto_2
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 235
    move-result-object v1

    .line 236
    .line 237
    .line 238
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    move-result v0

    .line 240
    .line 241
    if-eqz v0, :cond_8

    .line 242
    .line 243
    iget p1, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 244
    .line 245
    const/16 v0, 0x66

    .line 246
    .line 247
    if-eq p1, v0, :cond_9

    .line 248
    .line 249
    const/16 v0, 0x65

    .line 250
    .line 251
    if-ne p1, v0, :cond_8

    .line 252
    goto :goto_3

    .line 253
    .line 254
    :cond_8
    if-eqz v2, :cond_a

    .line 255
    .line 256
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    .line 260
    move-result-object p1

    .line 261
    .line 262
    .line 263
    invoke-static {p0, p1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->sendGetThreadRequest(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    :cond_a
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    .line 267
    return-void
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v2, "/chat/thread/"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "/message"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x2

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    const-string/jumbo v2, "v"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    const-string/jumbo p1, "start0"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/ChatMessage;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/ChatMessage;

    return-object v0
.end method

.method protected filterDuplicate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatMessage;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatMessage;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/FilterHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/util/FilterHelper;->keepBlockedUser()Lcom/narvii/util/FilterHelper;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    const/4 p1, 0x0

    .line 21
    return-object p1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_6

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/model/ChatMessage;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {v3}, Lcom/narvii/chat/ChatListFragment;->A(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatHelper;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v1}, Lcom/narvii/chat/util/ChatHelper;->getStickerCollectionSummary(Lcom/narvii/model/ChatMessage;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/narvii/model/Sticker;->isDisabled()Z

    .line 63
    move-result v2

    .line 64
    .line 65
    if-nez v2, :cond_3

    .line 66
    .line 67
    :cond_2
    if-eqz v3, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDisabled()Z

    .line 71
    move-result v2

    .line 72
    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 77
    :cond_4
    const/4 v2, 0x2

    .line 78
    .line 79
    if-eq p2, v2, :cond_5

    .line 80
    .line 81
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->existedMessageId:Ljava/util/HashSet;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 89
    move-result v2

    .line 90
    .line 91
    if-eqz v2, :cond_5

    .line 92
    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 95
    .line 96
    :cond_5
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->existedMessageId:Ljava/util/HashSet;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    iget-boolean v1, v1, Lcom/narvii/model/ChatMessage;->isHidden:Z

    .line 106
    .line 107
    if-eqz v1, :cond_1

    .line 108
    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 111
    goto :goto_0

    .line 112
    :cond_6
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/model/ChatMessage;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 14
    move-result p1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->hashCode()I

    .line 20
    move-result p1

    .line 21
    :goto_0
    int-to-long v0, p1

    .line 22
    return-wide v0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 26
    move-result p1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItemId(I)J

    .line 31
    move-result-wide v0

    .line 32
    return-wide v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 6

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 5
    .line 6
    const/16 v1, 0x65

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/16 v1, 0x67

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    move v0, v2

    .line 23
    .line 24
    :cond_1
    const/16 v1, 0xd

    .line 25
    const/4 v3, 0x3

    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x2

    .line 28
    .line 29
    if-eqz v0, :cond_7

    .line 30
    .line 31
    if-eq v0, v4, :cond_6

    .line 32
    .line 33
    if-eq v0, v5, :cond_5

    .line 34
    .line 35
    if-eq v0, v3, :cond_3

    .line 36
    const/4 p1, 0x4

    .line 37
    .line 38
    if-eq v0, p1, :cond_2

    .line 39
    .line 40
    .line 41
    packed-switch v0, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    packed-switch v0, :pswitch_data_1

    .line 45
    .line 46
    .line 47
    packed-switch v0, :pswitch_data_2

    .line 48
    return v2

    .line 49
    :pswitch_0
    return v1

    .line 50
    .line 51
    :pswitch_1
    const/16 p1, 0xc

    .line 52
    return p1

    .line 53
    .line 54
    :pswitch_2
    const/16 p1, 0x9

    .line 55
    return p1

    .line 56
    :pswitch_3
    const/4 p1, 0x6

    .line 57
    :pswitch_4
    return p1

    .line 58
    :cond_2
    return v5

    .line 59
    .line 60
    :cond_3
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    const-string v0, "ndcsticker://e/"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    move-result p1

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    const/16 p1, 0xa

    .line 73
    return p1

    .line 74
    .line 75
    :cond_4
    const/16 p1, 0xb

    .line 76
    return p1

    .line 77
    .line 78
    :cond_5
    const/16 p1, 0x8

    .line 79
    return p1

    .line 80
    :cond_6
    const/4 p1, 0x5

    .line 81
    return p1

    .line 82
    :cond_7
    const/4 v0, 0x0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 86
    move-result v0

    .line 87
    .line 88
    if-nez v0, :cond_8

    .line 89
    const/4 p1, 0x7

    .line 90
    return p1

    .line 91
    .line 92
    .line 93
    :cond_8
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->hasMedia()Z

    .line 94
    move-result v0

    .line 95
    .line 96
    iget-object v2, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    if-nez v0, :cond_b

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->hasLinkSnippet()Z

    .line 105
    move-result v0

    .line 106
    .line 107
    if-eqz v0, :cond_9

    .line 108
    return v1

    .line 109
    .line 110
    .line 111
    :cond_9
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isReplyMessage()Z

    .line 112
    move-result p1

    .line 113
    .line 114
    if-eqz p1, :cond_a

    .line 115
    .line 116
    const/16 p1, 0xe

    .line 117
    return p1

    .line 118
    :cond_a
    return v4

    .line 119
    .line 120
    .line 121
    :cond_b
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    .line 126
    move-result p1

    .line 127
    .line 128
    if-eqz p1, :cond_c

    .line 129
    return v5

    .line 130
    :cond_c
    return v3

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    :pswitch_data_1
    .packed-switch 0x7a
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    :pswitch_data_2
    .packed-switch 0xff01
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x3

    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget v5, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 17
    .line 18
    if-ne v5, v2, :cond_0

    .line 19
    move v7, v3

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    if-ne v5, v3, :cond_2

    .line 23
    .line 24
    iget v0, v0, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 25
    .line 26
    if-le v0, v1, :cond_1

    .line 27
    move v0, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v0, v4

    .line 30
    :goto_0
    move v7, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move v7, v4

    .line 33
    .line 34
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 37
    .line 38
    iget-object v5, p1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v6, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 41
    .line 42
    if-nez v6, :cond_3

    .line 43
    .line 44
    const-wide/16 v8, 0x0

    .line 45
    goto :goto_2

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    .line 49
    move-result-wide v8

    .line 50
    .line 51
    .line 52
    :goto_2
    invoke-virtual {v0, v5, v8, v9}, Lcom/narvii/chat/core/ChatService;->setReadTime(Ljava/lang/String;J)V

    .line 53
    .line 54
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 55
    .line 56
    const/16 v5, 0x65

    .line 57
    .line 58
    if-eq v0, v5, :cond_4

    .line 59
    .line 60
    const/16 v5, 0x67

    .line 61
    .line 62
    if-ne v0, v5, :cond_5

    .line 63
    .line 64
    :cond_4
    iget-object v5, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    move-result v5

    .line 69
    .line 70
    if-nez v5, :cond_5

    .line 71
    move v8, v4

    .line 72
    goto :goto_3

    .line 73
    :cond_5
    move v8, v0

    .line 74
    .line 75
    :goto_3
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->A(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatHelper;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iget-object v5, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 82
    .line 83
    .line 84
    invoke-static {v5}, Lcom/narvii/chat/ChatListFragment;->C(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatThread;

    .line 85
    move-result-object v5

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 89
    move-result-object v6

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v5, v6}, Lcom/narvii/chat/util/ChatHelper;->getHostLabelName(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v6

    .line 94
    .line 95
    .line 96
    const v0, 0x7f0d00de

    .line 97
    const/4 v9, 0x0

    .line 98
    .line 99
    if-eqz v8, :cond_c

    .line 100
    .line 101
    if-eq v8, v3, :cond_b

    .line 102
    .line 103
    if-eq v8, v2, :cond_c

    .line 104
    .line 105
    if-eq v8, v1, :cond_c

    .line 106
    const/4 v1, 0x4

    .line 107
    .line 108
    if-eq v8, v1, :cond_c

    .line 109
    .line 110
    const/16 v1, 0x77

    .line 111
    .line 112
    .line 113
    const v5, 0x7f0d00cf

    .line 114
    .line 115
    if-eq v8, v1, :cond_a

    .line 116
    .line 117
    .line 118
    packed-switch v8, :pswitch_data_0

    .line 119
    .line 120
    .line 121
    packed-switch v8, :pswitch_data_1

    .line 122
    .line 123
    .line 124
    packed-switch v8, :pswitch_data_2

    .line 125
    .line 126
    .line 127
    packed-switch v8, :pswitch_data_3

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    .line 131
    move-result v1

    .line 132
    .line 133
    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 139
    move-result-object p2

    .line 140
    .line 141
    check-cast p2, Lcom/narvii/chat/ChatMessageItem;

    .line 142
    .line 143
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 144
    .line 145
    iget-object p3, p3, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 148
    .line 149
    if-nez v0, :cond_6

    .line 150
    goto :goto_4

    .line 151
    .line 152
    :cond_6
    iget-object v9, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    :goto_4
    invoke-static {p3, v9}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    move-result p3

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, p1, p3, v3, v6}, Lcom/narvii/chat/ChatMessageItem;->setMessage(Lcom/narvii/model/ChatMessage;ZZLjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, v7}, Lcom/narvii/chat/ChatMessageItem;->setShowNickname(Z)V

    .line 163
    return-object p2

    .line 164
    .line 165
    :pswitch_0
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$000(Lcom/narvii/chat/ChatListFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    if-eqz p1, :cond_7

    .line 172
    .line 173
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 174
    .line 175
    .line 176
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$100(Lcom/narvii/chat/ChatListFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 177
    move-result-object p1

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Lai/medialab/medialabads2/banners/MediaLabAdView;->showPreloadedAd()Z

    .line 181
    move-result p1

    .line 182
    .line 183
    if-eqz p1, :cond_7

    .line 184
    .line 185
    const-string p1, "FeedDetailFragment"

    .line 186
    .line 187
    const-string p2, "MediaLab MedRect - New ad view ready"

    .line 188
    .line 189
    .line 190
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 194
    move-result-object p1

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 198
    move-result-object p1

    .line 199
    .line 200
    .line 201
    const p2, 0x7f070056

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 205
    move-result p1

    .line 206
    .line 207
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 208
    mul-int/2addr p1, v2

    .line 209
    .line 210
    sget-object p3, Lai/medialab/medialabads2/data/AdSize;->MEDIUM_RECTANGLE:Lai/medialab/medialabads2/data/AdSize;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 214
    move-result-object v0

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3, v0}, Lai/medialab/medialabads2/data/AdSize;->getHeightPx(Landroid/content/Context;)I

    .line 218
    move-result p3

    .line 219
    add-int/2addr p1, p3

    .line 220
    const/4 p3, -0x1

    .line 221
    .line 222
    .line 223
    invoke-direct {p2, p3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 224
    .line 225
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 226
    .line 227
    .line 228
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$200(Lcom/narvii/chat/ChatListFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 229
    move-result-object p1

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    .line 234
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 235
    .line 236
    .line 237
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$300(Lcom/narvii/chat/ChatListFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 238
    move-result-object p1

    .line 239
    .line 240
    .line 241
    invoke-static {p1}, Lcom/narvii/util/MLUtilsKt;->centerMRECView(Lai/medialab/medialabads2/banners/MediaLabAdView;)Lw7/l0;

    .line 242
    .line 243
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 244
    .line 245
    .line 246
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$400(Lcom/narvii/chat/ChatListFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 247
    move-result-object p1

    .line 248
    .line 249
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->adViewBkp:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 250
    .line 251
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 252
    .line 253
    .line 254
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$500(Lcom/narvii/chat/ChatListFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 255
    move-result-object p1

    .line 256
    return-object p1

    .line 257
    .line 258
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->adViewBkp:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 259
    return-object p1

    .line 260
    .line 261
    .line 262
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    .line 263
    move-result p1

    .line 264
    .line 265
    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    move-result-object p1

    .line 268
    .line 269
    .line 270
    const v0, 0x7f0d00d6

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0, v0, p3, p2, p1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 274
    move-result-object p1

    .line 275
    .line 276
    .line 277
    const p2, 0x7f0a0e4a

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 281
    move-result-object p2

    .line 282
    .line 283
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    return-object p1

    .line 288
    .line 289
    .line 290
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    .line 291
    move-result v0

    .line 292
    .line 293
    .line 294
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    move-result-object v0

    .line 296
    .line 297
    .line 298
    const v1, 0x7f0d00ef

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, v1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 302
    move-result-object p2

    .line 303
    .line 304
    check-cast p2, Lcom/narvii/chat/ChatWelcomeItem;

    .line 305
    .line 306
    new-instance p3, Lcom/narvii/chat/ChatListFragment$Adapter$2;

    .line 307
    .line 308
    .line 309
    invoke-direct {p3, p0}, Lcom/narvii/chat/ChatListFragment$Adapter$2;-><init>(Lcom/narvii/chat/ChatListFragment$Adapter;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p2, p3}, Lcom/narvii/chat/ChatWelcomeItem;->setExpandedClickListener(Lcom/narvii/chat/ChatWelcomeItem$ExpandedClickListener;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p2, p1}, Lcom/narvii/chat/ChatWelcomeItem;->setChatMessage(Lcom/narvii/model/ChatMessage;)V

    .line 316
    .line 317
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 321
    move-result p1

    .line 322
    .line 323
    if-eqz p1, :cond_8

    .line 324
    .line 325
    const/16 v4, 0x8

    .line 326
    .line 327
    .line 328
    :cond_8
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 329
    return-object p2

    .line 330
    .line 331
    .line 332
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    .line 333
    move-result v0

    .line 334
    .line 335
    .line 336
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    move-result-object v0

    .line 338
    .line 339
    .line 340
    const v1, 0x7f0d00ee

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0, v1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 344
    move-result-object p2

    .line 345
    .line 346
    check-cast p2, Lcom/narvii/chat/ChatTimeItem;

    .line 347
    .line 348
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 349
    .line 350
    .line 351
    invoke-virtual {p2, p1}, Lcom/narvii/chat/ChatTimeItem;->setTime(Ljava/util/Date;)V

    .line 352
    return-object p2

    .line 353
    .line 354
    .line 355
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    .line 356
    move-result v0

    .line 357
    .line 358
    .line 359
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 360
    move-result-object v0

    .line 361
    .line 362
    .line 363
    invoke-virtual {p0, v5, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 364
    move-result-object p2

    .line 365
    .line 366
    check-cast p2, Lcom/narvii/chat/ChatInfoItem;

    .line 367
    .line 368
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 369
    .line 370
    .line 371
    invoke-virtual {p3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 372
    move-result-object p3

    .line 373
    .line 374
    .line 375
    invoke-virtual {p2, p3, p1}, Lcom/narvii/chat/ChatInfoItem;->setMessage(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatMessage;)V

    .line 376
    .line 377
    iget-object p1, p2, Lcom/narvii/chat/ChatInfoItem;->text:Landroid/widget/TextView;

    .line 378
    .line 379
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 380
    .line 381
    .line 382
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    .line 384
    iget-object p1, p2, Lcom/narvii/chat/ChatInfoItem;->text:Landroid/widget/TextView;

    .line 385
    .line 386
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 387
    .line 388
    .line 389
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 390
    move-result-object p3

    .line 391
    .line 392
    .line 393
    const v0, 0x7f08091e

    .line 394
    .line 395
    .line 396
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 397
    move-result-object p3

    .line 398
    .line 399
    .line 400
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    return-object p2

    .line 402
    .line 403
    .line 404
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    .line 405
    move-result v1

    .line 406
    .line 407
    .line 408
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    move-result-object v1

    .line 410
    .line 411
    .line 412
    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 413
    move-result-object p2

    .line 414
    .line 415
    check-cast p2, Lcom/narvii/chat/ChatMessageItem;

    .line 416
    .line 417
    iget-object p3, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 418
    .line 419
    if-eqz p3, :cond_9

    .line 420
    .line 421
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 422
    .line 423
    iget-object v0, v0, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    .line 424
    .line 425
    iget-object p3, p3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    invoke-static {v0, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 429
    move-result p3

    .line 430
    .line 431
    if-eqz p3, :cond_9

    .line 432
    goto :goto_5

    .line 433
    :cond_9
    move v3, v4

    .line 434
    .line 435
    .line 436
    :goto_5
    invoke-virtual {p2, p1, v3, v4, v6}, Lcom/narvii/chat/ChatMessageItem;->setMessage(Lcom/narvii/model/ChatMessage;ZZLjava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {p2, v7}, Lcom/narvii/chat/ChatMessageItem;->setShowNickname(Z)V

    .line 440
    .line 441
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 442
    .line 443
    .line 444
    invoke-virtual {p1, v9}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setDoubleClickListener(Lcom/narvii/monetization/bubble/BubbleViewContainer$DoubleClickListener;)V

    .line 445
    .line 446
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->avatar:Lcom/narvii/widget/NVImageView;

    .line 447
    .line 448
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 449
    .line 450
    .line 451
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    .line 453
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->resend:Landroid/view/View;

    .line 454
    .line 455
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 456
    .line 457
    .line 458
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    return-object p2

    .line 460
    .line 461
    .line 462
    :cond_a
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    .line 463
    move-result v0

    .line 464
    .line 465
    .line 466
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 467
    move-result-object v0

    .line 468
    .line 469
    .line 470
    invoke-virtual {p0, v5, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 471
    move-result-object p2

    .line 472
    .line 473
    check-cast p2, Lcom/narvii/chat/ChatInfoItem;

    .line 474
    .line 475
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 476
    .line 477
    .line 478
    invoke-virtual {p3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 479
    move-result-object p3

    .line 480
    .line 481
    .line 482
    invoke-virtual {p2, p3, p1}, Lcom/narvii/chat/ChatInfoItem;->setMessage(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatMessage;)V

    .line 483
    return-object p2

    .line 484
    .line 485
    .line 486
    :cond_b
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    .line 487
    move-result v0

    .line 488
    .line 489
    .line 490
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 491
    move-result-object v0

    .line 492
    .line 493
    .line 494
    const v1, 0x7f0d00e5

    .line 495
    .line 496
    .line 497
    invoke-virtual {p0, v1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 498
    move-result-object p2

    .line 499
    .line 500
    check-cast p2, Lcom/narvii/chat/ChatMessageItem;

    .line 501
    .line 502
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 503
    .line 504
    iget-object p3, p3, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    .line 505
    .line 506
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 507
    .line 508
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 512
    move-result p3

    .line 513
    .line 514
    .line 515
    invoke-virtual {p2, p1, p3, v4, v6}, Lcom/narvii/chat/ChatMessageItem;->setMessage(Lcom/narvii/model/ChatMessage;ZZLjava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {p2, v7}, Lcom/narvii/chat/ChatMessageItem;->setShowNickname(Z)V

    .line 519
    .line 520
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 521
    .line 522
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 523
    .line 524
    .line 525
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    .line 527
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 528
    .line 529
    .line 530
    invoke-virtual {p1, v9}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setDoubleClickListener(Lcom/narvii/monetization/bubble/BubbleViewContainer$DoubleClickListener;)V

    .line 531
    .line 532
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->avatar:Lcom/narvii/widget/NVImageView;

    .line 533
    .line 534
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 535
    .line 536
    .line 537
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    .line 539
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->resend:Landroid/view/View;

    .line 540
    .line 541
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 542
    .line 543
    .line 544
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    return-object p2

    .line 546
    .line 547
    .line 548
    :cond_c
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    .line 549
    move-result v1

    .line 550
    .line 551
    .line 552
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 553
    move-result-object v1

    .line 554
    .line 555
    .line 556
    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 557
    move-result-object p2

    .line 558
    .line 559
    check-cast p2, Lcom/narvii/chat/ChatMessageItem;

    .line 560
    .line 561
    .line 562
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 563
    move-result-object p3

    .line 564
    .line 565
    if-eqz p3, :cond_d

    .line 566
    .line 567
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 568
    .line 569
    .line 570
    invoke-static {p3}, Lcom/narvii/chat/ChatListFragment;->y(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    .line 571
    move-result-object p3

    .line 572
    .line 573
    .line 574
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 575
    move-result-object v0

    .line 576
    .line 577
    .line 578
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    move-result-object p3

    .line 580
    .line 581
    check-cast p3, Ljava/lang/String;

    .line 582
    .line 583
    iput-object p3, p1, Lcom/narvii/model/ChatMessage;->chatBubbleId:Ljava/lang/String;

    .line 584
    .line 585
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 586
    .line 587
    .line 588
    invoke-static {p3}, Lcom/narvii/chat/ChatListFragment;->z(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    .line 589
    move-result-object p3

    .line 590
    .line 591
    .line 592
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 593
    move-result-object v0

    .line 594
    .line 595
    .line 596
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    move-result-object p3

    .line 598
    .line 599
    if-eqz p3, :cond_d

    .line 600
    .line 601
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 602
    .line 603
    .line 604
    invoke-static {p3}, Lcom/narvii/chat/ChatListFragment;->z(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    .line 605
    move-result-object p3

    .line 606
    .line 607
    .line 608
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 609
    move-result-object v0

    .line 610
    .line 611
    .line 612
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    move-result-object p3

    .line 614
    .line 615
    check-cast p3, Ljava/lang/Integer;

    .line 616
    .line 617
    .line 618
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 619
    move-result p3

    .line 620
    .line 621
    iput p3, p1, Lcom/narvii/model/ChatMessage;->chatBubbleVersion:I

    .line 622
    .line 623
    :cond_d
    iget-object p3, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 624
    .line 625
    if-eqz p3, :cond_e

    .line 626
    .line 627
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 628
    .line 629
    iget-object v0, v0, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    .line 630
    .line 631
    iget-object p3, p3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    invoke-static {v0, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 635
    move-result p3

    .line 636
    .line 637
    if-eqz p3, :cond_e

    .line 638
    move v2, v3

    .line 639
    goto :goto_6

    .line 640
    :cond_e
    move v2, v4

    .line 641
    :goto_6
    const/4 v3, 0x0

    .line 642
    const/4 v4, 0x0

    .line 643
    .line 644
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 645
    .line 646
    .line 647
    invoke-static {p3}, Lcom/narvii/chat/ChatListFragment;->E(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatBubble;

    .line 648
    move-result-object v5

    .line 649
    move-object v0, p2

    .line 650
    move-object v1, p1

    .line 651
    .line 652
    .line 653
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/chat/ChatMessageItem;->setMessage(Lcom/narvii/model/ChatMessage;ZZZLcom/narvii/model/ChatBubble;Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {p2, v7}, Lcom/narvii/chat/ChatMessageItem;->setShowNickname(Z)V

    .line 657
    .line 658
    iget-object p3, p2, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 659
    .line 660
    iget-object p3, p3, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 661
    .line 662
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 663
    .line 664
    .line 665
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    .line 667
    iget-object p3, p2, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 668
    .line 669
    iget-object p3, p3, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 670
    .line 671
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 672
    .line 673
    .line 674
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 675
    .line 676
    iget-object p3, p2, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    .line 677
    .line 678
    new-instance v0, Lcom/narvii/chat/ChatListFragment$Adapter$1;

    .line 679
    .line 680
    .line 681
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter$1;-><init>(Lcom/narvii/chat/ChatListFragment$Adapter;Lcom/narvii/model/ChatMessage;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {p3, v0}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setDoubleClickListener(Lcom/narvii/monetization/bubble/BubbleViewContainer$DoubleClickListener;)V

    .line 685
    .line 686
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->moodSticker:Lcom/narvii/widget/EmojioneView;

    .line 687
    .line 688
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 689
    .line 690
    .line 691
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    .line 693
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->moodSticker:Lcom/narvii/widget/EmojioneView;

    .line 694
    .line 695
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 696
    .line 697
    .line 698
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 699
    .line 700
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    .line 701
    .line 702
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 703
    .line 704
    .line 705
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    .line 707
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    .line 708
    .line 709
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 710
    .line 711
    .line 712
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 713
    .line 714
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->avatar:Lcom/narvii/widget/NVImageView;

    .line 715
    .line 716
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 717
    .line 718
    .line 719
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    .line 721
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->avatar:Lcom/narvii/widget/NVImageView;

    .line 722
    .line 723
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 724
    .line 725
    .line 726
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 727
    .line 728
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->resend:Landroid/view/View;

    .line 729
    .line 730
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 731
    .line 732
    .line 733
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    .line 735
    if-nez v8, :cond_f

    .line 736
    .line 737
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 738
    .line 739
    .line 740
    invoke-virtual {p2, p1}, Lcom/narvii/chat/ChatMessageItem;->setMentionedUserClickedListener(Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;)V

    .line 741
    goto :goto_7

    .line 742
    .line 743
    .line 744
    :cond_f
    invoke-virtual {p2, v9}, Lcom/narvii/chat/ChatMessageItem;->setMentionedUserClickedListener(Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;)V

    .line 745
    .line 746
    :goto_7
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 747
    .line 748
    .line 749
    invoke-virtual {p2, p1}, Lcom/narvii/chat/ChatMessageItem;->setOnSeeAllClickedListener(Lcom/narvii/chat/ChatMessageItem$OnSeeAllClickedListener;)V

    .line 750
    return-object p2

    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    :pswitch_data_2
    .packed-switch 0x7a
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    :pswitch_data_3
    .packed-switch 0xff01
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method insertAdUnitMessage(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ChatMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/remoteconfig/a;->k()Lcom/google/firebase/remoteconfig/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "AM_2985_android_ads_on_chat_thread_screen"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/a;->i(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/util/Date;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    move-result-wide v1

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 22
    .line 23
    new-instance v1, Lcom/narvii/model/ChatMessage;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 27
    .line 28
    .line 29
    const v2, 0xff04

    .line 30
    .line 31
    iput v2, v1, Lcom/narvii/model/ChatMessage;->type:I

    .line 32
    .line 33
    iput-object v0, v1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    return-void
.end method

.method insertInviteMessage(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ChatMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 17
    const/4 v1, 0x2

    .line 18
    .line 19
    if-ne v0, v1, :cond_4

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget v0, v0, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 28
    const/4 v1, 0x5

    .line 29
    .line 30
    if-ge v0, v1, :cond_4

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    iget v0, v0, Lcom/narvii/model/ChatThread;->condition:I

    .line 67
    const/4 v1, 0x1

    .line 68
    .line 69
    if-ne v0, v1, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->H(Lcom/narvii/chat/ChatListFragment;)Ljava/util/Date;

    .line 75
    move-result-object v0

    .line 76
    const/4 v1, 0x0

    .line 77
    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->H(Lcom/narvii/chat/ChatListFragment;)Ljava/util/Date;

    .line 84
    move-result-object v0

    .line 85
    goto :goto_0

    .line 86
    .line 87
    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 89
    move-result v0

    .line 90
    .line 91
    if-nez v0, :cond_1

    .line 92
    .line 93
    new-instance v0, Ljava/util/Date;

    .line 94
    .line 95
    .line 96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 97
    move-result-wide v2

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 101
    .line 102
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 103
    .line 104
    .line 105
    invoke-static {v2, v0}, Lcom/narvii/chat/ChatListFragment;->Q(Lcom/narvii/chat/ChatListFragment;Ljava/util/Date;)V

    .line 106
    goto :goto_0

    .line 107
    .line 108
    .line 109
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 117
    .line 118
    .line 119
    invoke-static {v2, v0}, Lcom/narvii/chat/ChatListFragment;->Q(Lcom/narvii/chat/ChatListFragment;Ljava/util/Date;)V

    .line 120
    .line 121
    :goto_0
    new-instance v2, Lcom/narvii/model/ChatMessage;

    .line 122
    .line 123
    .line 124
    invoke-direct {v2}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 125
    .line 126
    const-string v3, ""

    .line 127
    .line 128
    iput-object v3, v2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    const v3, 0xff03

    .line 132
    .line 133
    iput v3, v2, Lcom/narvii/model/ChatMessage;->type:I

    .line 134
    .line 135
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 139
    move-result-object v3

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    .line 143
    move-result-object v3

    .line 144
    .line 145
    iput-object v3, v2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 146
    .line 147
    iput-object v0, v2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 151
    move-result v3

    .line 152
    .line 153
    if-nez v3, :cond_2

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    goto :goto_2

    .line 158
    .line 159
    .line 160
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 161
    move-result v3

    .line 162
    .line 163
    if-ge v1, v3, :cond_4

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    move-result-object v3

    .line 168
    .line 169
    check-cast v3, Lcom/narvii/model/ChatMessage;

    .line 170
    .line 171
    iget-object v3, v3, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 175
    move-result-wide v3

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 179
    move-result-wide v5

    .line 180
    .line 181
    cmp-long v3, v3, v5

    .line 182
    .line 183
    if-gtz v3, :cond_3

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 187
    goto :goto_2

    .line 188
    .line 189
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 190
    goto :goto_1

    .line 191
    :cond_4
    :goto_2
    return-void
.end method

.method insertTimestamps(Ljava/util/ArrayList;JZ)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ChatMessage;",
            ">;JZ)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v0

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 31
    move-result-wide v2

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v4

    .line 36
    .line 37
    add-int/lit8 v4, v4, -0x2

    .line 38
    .line 39
    .line 40
    :goto_1
    const v5, 0xff01

    .line 41
    .line 42
    if-ltz v4, :cond_4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v6

    .line 47
    .line 48
    check-cast v6, Lcom/narvii/model/ChatMessage;

    .line 49
    .line 50
    iget-object v7, v6, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 51
    .line 52
    if-nez v7, :cond_2

    .line 53
    goto :goto_2

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    .line 57
    move-result-wide v7

    .line 58
    add-long/2addr v2, p2

    .line 59
    .line 60
    cmp-long v2, v7, v2

    .line 61
    .line 62
    if-ltz v2, :cond_3

    .line 63
    .line 64
    new-instance v2, Lcom/narvii/model/ChatMessage;

    .line 65
    .line 66
    .line 67
    invoke-direct {v2}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 68
    .line 69
    iput v5, v2, Lcom/narvii/model/ChatMessage;->type:I

    .line 70
    .line 71
    iget-object v3, v6, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 72
    .line 73
    iput-object v3, v2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 74
    .line 75
    add-int/lit8 v3, v4, 0x1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 81
    :cond_3
    move-wide v2, v7

    .line 82
    .line 83
    :goto_2
    add-int/lit8 v4, v4, -0x1

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_4
    if-eqz p4, :cond_5

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    new-instance p2, Lcom/narvii/model/ChatMessage;

    .line 91
    .line 92
    .line 93
    invoke-direct {p2}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 94
    .line 95
    iput v5, p2, Lcom/narvii/model/ChatMessage;->type:I

    .line 96
    .line 97
    iput-object v0, p2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 103
    :cond_5
    return v1
.end method

.method insertWelcomeMessage(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ChatMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->L(Lcom/narvii/chat/ChatListFragment;)Ljava/util/Date;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->L(Lcom/narvii/chat/ChatListFragment;)Ljava/util/Date;

    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Ljava/util/Date;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    move-result-wide v2

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v0}, Lcom/narvii/chat/ChatListFragment;->T(Lcom/narvii/chat/ChatListFragment;Ljava/util/Date;)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v0}, Lcom/narvii/chat/ChatListFragment;->T(Lcom/narvii/chat/ChatListFragment;Ljava/util/Date;)V

    .line 51
    .line 52
    :goto_0
    new-instance v2, Lcom/narvii/model/ChatMessage;

    .line 53
    .line 54
    .line 55
    invoke-direct {v2}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 56
    .line 57
    const-string v3, ""

    .line 58
    .line 59
    iput-object v3, v2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    .line 95
    .line 96
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    move-result v3

    .line 98
    .line 99
    if-nez v3, :cond_2

    .line 100
    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    iget-object v4, v2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    iget-object v4, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 115
    move-result-object v4

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    .line 119
    move-result-object v4

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 123
    move-result-object v4

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v4, ": "

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v3

    .line 136
    .line 137
    iput-object v3, v2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 138
    .line 139
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    iget-object v4, v2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    iget-object v4, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 153
    move-result-object v4

    .line 154
    .line 155
    iget-object v4, v4, Lcom/narvii/model/ChatThread;->content:Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    invoke-static {v4}, Lcom/narvii/util/text/TextUtils;->compactContent(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object v4

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v3

    .line 167
    .line 168
    iput-object v3, v2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    const v3, 0xff02

    .line 172
    .line 173
    iput v3, v2, Lcom/narvii/model/ChatMessage;->type:I

    .line 174
    .line 175
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 179
    move-result-object v3

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    .line 183
    move-result-object v3

    .line 184
    .line 185
    iput-object v3, v2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 186
    .line 187
    iput-object v0, v2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 188
    .line 189
    .line 190
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 191
    move-result v3

    .line 192
    .line 193
    if-ge v1, v3, :cond_4

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    move-result-object v3

    .line 198
    .line 199
    check-cast v3, Lcom/narvii/model/ChatMessage;

    .line 200
    .line 201
    iget-object v3, v3, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 205
    move-result-wide v3

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 209
    move-result-wide v5

    .line 210
    .line 211
    cmp-long v3, v3, v5

    .line 212
    .line 213
    if-gtz v3, :cond_3

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 217
    goto :goto_2

    .line 218
    .line 219
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 220
    goto :goto_1

    .line 221
    :cond_4
    :goto_2
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMeAccessibleToThisChat()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/chat/ChatFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/chat/ChatFragment;->isMeAccessibleToThisChat()Z

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x1

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 41
    const/4 v2, 0x2

    .line 42
    .line 43
    if-eq v0, v2, :cond_1

    .line 44
    return v1

    .line 45
    .line 46
    :cond_1
    const-string v0, "account"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    if-nez v2, :cond_2

    .line 65
    const/4 v2, 0x0

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_2
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    move-result v0

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    return v1

    .line 84
    .line 85
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    iget-boolean v0, v0, Lcom/narvii/model/ChatThread;->needHidden:Z

    .line 100
    .line 101
    if-nez v0, :cond_4

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    const/4 v1, 0x0

    .line 104
    :goto_1
    return v1
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/ChatMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    iput-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 36
    .line 37
    iget-object v2, v1, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lcom/narvii/chat/core/ChatService;->getOutboundMessages(Ljava/lang/String;)Ljava/util/List;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 49
    move-result v2

    .line 50
    .line 51
    if-lez v2, :cond_9

    .line 52
    .line 53
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    const-wide/16 v4, 0x0

    .line 63
    move-wide v6, v4

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v8

    .line 68
    .line 69
    if-eqz v8, :cond_6

    .line 70
    .line 71
    .line 72
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v8

    .line 74
    .line 75
    check-cast v8, Lcom/narvii/model/ChatMessage;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 79
    move-result-object v9

    .line 80
    .line 81
    iget-object v10, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 82
    .line 83
    iget-object v10, v10, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    invoke-static {v9, v10}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    move-result v9

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 91
    move-result v10

    .line 92
    .line 93
    if-eqz v10, :cond_3

    .line 94
    .line 95
    if-eqz v9, :cond_3

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 99
    move-result v9

    .line 100
    const/4 v10, 0x1

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v9, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-direct {p0, v8}, Lcom/narvii/chat/ChatListFragment$Adapter;->tryFixMessageCreatedTime(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    .line 107
    move-result-object v8

    .line 108
    .line 109
    iget-object v8, v8, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 110
    .line 111
    if-nez v8, :cond_4

    .line 112
    move-wide v8, v4

    .line 113
    goto :goto_1

    .line 114
    .line 115
    .line 116
    :cond_4
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    .line 117
    move-result-wide v8

    .line 118
    .line 119
    :goto_1
    cmp-long v10, v6, v4

    .line 120
    .line 121
    if-nez v10, :cond_5

    .line 122
    goto :goto_2

    .line 123
    .line 124
    :cond_5
    cmp-long v10, v8, v6

    .line 125
    .line 126
    if-gez v10, :cond_2

    .line 127
    :goto_2
    move-wide v6, v8

    .line 128
    goto :goto_0

    .line 129
    .line 130
    :cond_6
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 134
    .line 135
    .line 136
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    .line 140
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    move-result v1

    .line 142
    .line 143
    if-eqz v1, :cond_8

    .line 144
    .line 145
    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    check-cast v1, Lcom/narvii/model/ChatMessage;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 153
    move-result v3

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 157
    move-result v3

    .line 158
    .line 159
    if-nez v3, :cond_7

    .line 160
    .line 161
    iget-object v3, v1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 162
    .line 163
    if-eqz v3, :cond_7

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 167
    move-result-wide v3

    .line 168
    .line 169
    cmp-long v3, v3, v6

    .line 170
    .line 171
    if-lez v3, :cond_7

    .line 172
    .line 173
    .line 174
    invoke-direct {p0, v1}, Lcom/narvii/chat/ChatListFragment$Adapter;->tryFixMessageCreatedTime(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    .line 175
    move-result-object v1

    .line 176
    .line 177
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    goto :goto_3

    .line 182
    .line 183
    :cond_8
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    .line 184
    .line 185
    sget-object v1, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/narvii/chat/util/ChatHelper$Companion;->getMESSAGE_COMPARATOR()Ljava/util/Comparator;

    .line 189
    move-result-object v1

    .line 190
    .line 191
    .line 192
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 193
    goto :goto_4

    .line 194
    .line 195
    :cond_9
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 199
    .line 200
    :goto_4
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    .line 201
    .line 202
    .line 203
    const-wide/32 v1, 0xdbba0

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    .line 207
    move-result v3

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/narvii/chat/ChatListFragment$Adapter;->insertTimestamps(Ljava/util/ArrayList;JZ)I

    .line 211
    .line 212
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 213
    .line 214
    .line 215
    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->X(Lcom/narvii/chat/ChatListFragment;)Z

    .line 216
    move-result v0

    .line 217
    .line 218
    if-eqz v0, :cond_a

    .line 219
    .line 220
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v0}, Lcom/narvii/chat/ChatListFragment$Adapter;->insertWelcomeMessage(Ljava/util/ArrayList;)V

    .line 224
    .line 225
    :cond_a
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v0}, Lcom/narvii/chat/ChatListFragment$Adapter;->insertInviteMessage(Ljava/util/ArrayList;)V

    .line 229
    .line 230
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, v0}, Lcom/narvii/chat/ChatListFragment$Adapter;->insertAdUnitMessage(Ljava/util/ArrayList;)V

    .line 234
    .line 235
    .line 236
    :goto_5
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 237
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    instance-of v0, p3, Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_13

    .line 2
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/ChatMessage;

    const/4 v1, 0x0

    if-nez p5, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a0291

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_d

    .line 4
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a0290

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0171

    const-string v3, "Chat Thread"

    if-ne v1, v2, :cond_4

    .line 6
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "MessageUserIcon"

    .line 7
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 8
    iget-object v4, v0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    :cond_2
    invoke-virtual {p1, v4}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 10
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->U(Lcom/narvii/chat/ChatListFragment;)Z

    move-result p1

    if-nez p1, :cond_3

    return v5

    .line 11
    :cond_3
    new-instance p1, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;

    invoke-direct {p1, p0}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 12
    invoke-virtual {p2}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    iget-object p3, v0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    new-instance p4, Lcom/narvii/chat/ChatListFragment$Adapter$3;

    invoke-direct {p4, p0, v0}, Lcom/narvii/chat/ChatListFragment$Adapter$3;-><init>(Lcom/narvii/chat/ChatListFragment$Adapter;Lcom/narvii/model/ChatMessage;)V

    invoke-virtual {p1, p2, p3, v3, p4}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;->showUserInfoInChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    return v5

    .line 13
    :cond_4
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a02bf

    if-eq v1, v2, :cond_c

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a098b

    if-ne v1, v2, :cond_5

    goto/16 :goto_1

    .line 14
    :cond_5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a02b7

    if-ne v1, v2, :cond_8

    .line 15
    iget p1, v0, Lcom/narvii/model/ChatMessage;->_status:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_7

    iget p1, v0, Lcom/narvii/model/ChatMessage;->_errorCode:I

    const/16 p2, 0x1068

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 16
    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->hasMemberShipExpired()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-direct {p1, p2}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "Sticker (Dialog)"

    goto :goto_0

    :cond_6
    const-string p2, "Chat Bubble (Dialog)"

    :goto_0
    iput-object p2, p1, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return v5

    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 20
    invoke-virtual {p1, v0}, Lcom/narvii/chat/ChatListFragment;->resend(Lcom/narvii/model/ChatMessage;)V

    return v5

    .line 21
    :cond_8
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0e51

    if-ne v1, v2, :cond_b

    .line 22
    iget v1, v0, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_13

    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 23
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->U(Lcom/narvii/chat/ChatListFragment;)Z

    move-result p1

    if-nez p1, :cond_9

    return v5

    .line 24
    :cond_9
    iget-object p1, v0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_a

    return v5

    :cond_a
    const-string p2, "Source"

    .line 25
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    return v5

    .line 27
    :cond_b
    iget v0, v0, Lcom/narvii/model/ChatMessage;->type:I

    const v1, 0xff03

    if-ne v0, v1, :cond_13

    .line 28
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "InviteButton"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    const-class p1, Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 29
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 30
    invoke-virtual {p2}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "id"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "key_open_invite_list"

    .line 31
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 32
    invoke-virtual {p2}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "prefetch"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "customFinishAnimIn"

    const p3, 0x7f010010

    .line 33
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "customFinishAnimOut"

    const p3, 0x7f010011

    .line 34
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    const-string p3, "__fromGlobalChat"

    .line 35
    invoke-virtual {p2, p3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    const-string p3, "__community"

    .line 36
    invoke-virtual {p2, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 38
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f01000e

    const p3, 0x7f01000f

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v5

    .line 39
    :cond_c
    :goto_1
    invoke-direct {p0, v0}, Lcom/narvii/chat/ChatListFragment$Adapter;->openStickerChatMessage(Lcom/narvii/model/ChatMessage;)V

    goto/16 :goto_3

    .line 40
    :cond_d
    :goto_2
    iget v2, v0, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_e

    iget-object v2, v0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 41
    invoke-direct {p0, v0}, Lcom/narvii/chat/ChatListFragment$Adapter;->openImageDetail(Lcom/narvii/model/ChatMessage;)V

    return v5

    .line 42
    :cond_e
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->hasMedia()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 43
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object p1

    const-class p2, Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {p1, v0, p2}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    return v5

    .line 44
    :cond_f
    iget v2, v0, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_11

    iget-object v2, v0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget v2, v0, Lcom/narvii/model/ChatMessage;->_status:I

    if-nez v2, :cond_11

    .line 45
    invoke-virtual {v0, v4}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    if-nez p1, :cond_10

    const-class p1, Lcom/narvii/chat/ChatMessageItemDetailFragment;

    .line 46
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "chatMessage"

    .line 47
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "seeAll"

    .line 48
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p2, "showDisabled"

    .line 49
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    return v5

    :cond_10
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 51
    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    invoke-virtual {p1, v0, p4, v5}, Lcom/narvii/chat/audio/AudioHelper;->handleChatBubbleClick(Lcom/narvii/model/ChatMessage;Landroid/view/View;Z)V

    return v5

    .line 52
    :cond_11
    invoke-virtual {v0, v4}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 53
    invoke-static {p1, v0}, Lcom/narvii/chat/ChatListFragment;->Y(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatMessage;)V

    return v5

    .line 54
    :cond_12
    instance-of v1, p4, Lcom/narvii/chat/ChatMessageItem;

    if-eqz v1, :cond_13

    move-object v1, p4

    check-cast v1, Lcom/narvii/chat/ChatMessageItem;

    invoke-virtual {v1}, Lcom/narvii/chat/ChatMessageItem;->isExpandable()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 55
    invoke-static {p1, v0}, Lcom/narvii/chat/ChatListFragment;->Y(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatMessage;)V

    return v5

    .line 56
    :cond_13
    :goto_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 1
    instance-of v0, p3, Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_15

    .line 2
    check-cast p3, Lcom/narvii/model/ChatMessage;

    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->w(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p5, :cond_1

    .line 4
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p4

    const p5, 0x7f0a0171

    if-ne p4, p5, :cond_1

    iget-object p4, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 5
    invoke-static {p4}, Lcom/narvii/chat/ChatListFragment;->C(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p4}, Lcom/narvii/chat/ChatListFragment;->C(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object p4

    iget p4, p4, Lcom/narvii/model/ChatThread;->type:I

    if-eqz p4, :cond_0

    iget-object p4, p3, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz p4, :cond_0

    .line 6
    invoke-virtual {p4}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p4, "chatInput"

    invoke-virtual {p1, p4}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p4, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 8
    invoke-static {p4, p2}, Lcom/narvii/chat/ChatListFragment;->M(Lcom/narvii/chat/ChatListFragment;Z)V

    .line 9
    check-cast p1, Lcom/narvii/chat/input/ChatInputFragment;

    iget-object p3, p3, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    invoke-virtual {p1, p3}, Lcom/narvii/chat/input/ChatInputFragment;->onUserMentionedByLongClick(Lcom/narvii/model/User;)V

    .line 10
    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputFragment;->scrollChatListToBottom()V

    :cond_0
    return p2

    .line 11
    :cond_1
    iget p4, p3, Lcom/narvii/model/ChatMessage;->type:I

    .line 12
    iget-object p5, p3, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p5, :cond_4

    iget-object p5, p3, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p3}, Lcom/narvii/model/ChatMessage;->hasMedia()Z

    move-result p5

    if-eqz p5, :cond_4

    :cond_2
    if-eqz p4, :cond_3

    const/4 p5, 0x3

    if-eq p4, p5, :cond_3

    const/4 p5, 0x4

    if-eq p4, p5, :cond_3

    if-ne p4, v0, :cond_4

    :cond_3
    move p4, p2

    goto :goto_0

    :cond_4
    move p4, v1

    .line 13
    :goto_0
    invoke-virtual {p3}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    move-result p5

    if-nez p5, :cond_5

    iget p5, p3, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v2, 0x64

    if-ne p5, v2, :cond_5

    iget-object p5, p3, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_5

    move p5, p2

    goto :goto_1

    :cond_5
    move p5, v1

    .line 14
    :goto_1
    iget-object v2, p3, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p3}, Lcom/narvii/model/ChatMessage;->hasMedia()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, p2

    goto :goto_2

    :cond_6
    move v2, v1

    .line 15
    :goto_2
    iget-object v3, p3, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    const/4 v4, 0x0

    if-nez v3, :cond_7

    move-object v3, v4

    goto :goto_3

    :cond_7
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_3
    invoke-static {v3, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iget-object v5, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 16
    invoke-virtual {v5}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 17
    invoke-virtual {v5, p1}, Lcom/narvii/model/ChatThread;->isHostOrCoHost(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget v5, v5, Lcom/narvii/model/ChatThread;->type:I

    if-ne v5, v0, :cond_8

    move v0, p2

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    if-nez v3, :cond_a

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move v0, v1

    goto :goto_6

    :cond_a
    :goto_5
    move v0, p2

    .line 18
    :goto_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v5, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_b

    const-string v2, "copy"

    .line 20
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f120348

    .line 21
    invoke-virtual {v5, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    :cond_b
    if-eqz p4, :cond_c

    const-string p4, "reply"

    .line 22
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p4, 0x7f120ff7

    .line 23
    invoke-virtual {v5, p4, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 24
    :cond_c
    invoke-virtual {p3}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    move-result p4

    if-eqz p4, :cond_e

    .line 25
    invoke-virtual {p3}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    move-result-object p4

    if-nez p4, :cond_d

    goto :goto_7

    .line 26
    :cond_d
    invoke-virtual {p4}, Lcom/narvii/model/Sticker;->isLocalMood()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p4, v4}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p4

    if-eqz p4, :cond_e

    .line 27
    new-instance p4, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p4, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p4, p3}, Lcom/narvii/chat/util/ChatHelper;->getStickerCollectionSummary(Lcom/narvii/model/ChatMessage;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object p4

    if-eqz p4, :cond_e

    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 29
    iget-object v2, v2, Lcom/narvii/chat/ChatListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {v2, p4}, Lcom/narvii/monetization/sticker/StickerHelper;->isStickerCollectionValid(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p4, v4}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p4

    if-eqz p4, :cond_e

    :goto_7
    const-string p4, "saveAsFavorite"

    .line 30
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p4, 0x7f120089

    .line 31
    invoke-virtual {v5, p4, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    :cond_e
    const-string p4, "detail"

    .line 32
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p4, 0x7f120290

    .line 33
    invoke-virtual {v5, p4, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    if-eqz p5, :cond_f

    const-string p4, "saveImage"

    .line 34
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p4, 0x7f12103c

    .line 35
    invoke-virtual {v5, p4, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    :cond_f
    if-eqz v0, :cond_10

    const-string p4, "delete"

    .line 36
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p4, 0x7f1203a0

    .line 37
    invoke-virtual {v5, p4, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 38
    :cond_10
    iget-object p4, p3, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-nez p4, :cond_11

    goto :goto_8

    :cond_11
    iget-object v4, p4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_8
    invoke-static {v4, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 39
    invoke-virtual {p3}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 40
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->A(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatHelper;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/narvii/chat/util/ChatHelper;->getStickerCollectionSummary(Lcom/narvii/model/ChatMessage;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 41
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->canBeFlagged()Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_12
    const-string p1, "flag"

    .line 42
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f120781

    .line 43
    invoke-virtual {v5, p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    :cond_13
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 44
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->w(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->w(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "advanced"

    .line 45
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f12009d

    .line 46
    invoke-virtual {v5, p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 47
    :cond_14
    new-instance p1, Lcom/narvii/chat/ChatListFragment$Adapter$4;

    invoke-direct {p1, p0, v3, p3}, Lcom/narvii/chat/ChatListFragment$Adapter$4;-><init>(Lcom/narvii/chat/ChatListFragment$Adapter;Ljava/util/ArrayList;Lcom/narvii/model/ChatMessage;)V

    invoke-virtual {v5, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 48
    invoke-virtual {v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return p2

    .line 49
    :cond_15
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/ChatCoHostNotificationWrapper;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    move-object v1, v0

    .line 8
    .line 9
    check-cast v1, Lcom/narvii/model/ChatCoHostNotificationWrapper;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/narvii/model/ChatCoHostNotificationWrapper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/model/ChatCoHostNotificationWrapper;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/model/ChatCoHostNotificationWrapper;->chatThread:Lcom/narvii/model/ChatThread;

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/narvii/chat/ChatListFragment;->N(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatThread;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    .line 26
    .line 27
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    instance-of v0, v0, Lcom/narvii/model/ChatMessage;

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    if-eqz v0, :cond_7

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iget-object v2, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_7

    .line 47
    .line 48
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 49
    .line 50
    const-string/jumbo v2, "update"

    .line 51
    .line 52
    if-ne v0, v2, :cond_5

    .line 53
    .line 54
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->list()Ljava/util/List;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    if-nez v2, :cond_1

    .line 63
    return-void

    .line 64
    :cond_1
    move v2, v1

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->list()Ljava/util/List;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    .line 71
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 72
    move-result v3

    .line 73
    .line 74
    if-ge v2, v3, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->list()Ljava/util/List;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    .line 81
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v3

    .line 83
    .line 84
    check-cast v3, Lcom/narvii/model/ChatMessage;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->list()Ljava/util/List;

    .line 88
    move-result-object v4

    .line 89
    .line 90
    .line 91
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v4

    .line 93
    .line 94
    check-cast v4, Lcom/narvii/model/ChatMessage;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 98
    move-result v4

    .line 99
    .line 100
    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object v4

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 106
    move-result v5

    .line 107
    .line 108
    .line 109
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v5

    .line 111
    .line 112
    .line 113
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    move-result v4

    .line 115
    .line 116
    if-eqz v4, :cond_2

    .line 117
    .line 118
    iget-object v4, v0, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 119
    .line 120
    if-eqz v4, :cond_2

    .line 121
    .line 122
    iput-object v4, v3, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 123
    goto :goto_1

    .line 124
    .line 125
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 126
    goto :goto_0

    .line 127
    .line 128
    :cond_3
    :goto_1
    iget v2, v0, Lcom/narvii/model/ChatMessage;->_status:I

    .line 129
    .line 130
    if-nez v2, :cond_4

    .line 131
    .line 132
    iget-object v2, v0, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    move-result v2

    .line 137
    .line 138
    if-nez v2, :cond_4

    .line 139
    .line 140
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->existedMessageId:Ljava/util/HashSet;

    .line 141
    .line 142
    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    .line 149
    goto :goto_2

    .line 150
    .line 151
    :cond_5
    const-string v2, "delete"

    .line 152
    .line 153
    if-ne v0, v2, :cond_6

    .line 154
    .line 155
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 156
    .line 157
    iget-object v0, v0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, p1, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 164
    goto :goto_2

    .line 165
    .line 166
    .line 167
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    .line 168
    .line 169
    :cond_7
    :goto_2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 170
    .line 171
    instance-of v2, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 172
    const/4 v3, 0x0

    .line 173
    .line 174
    if-eqz v2, :cond_d

    .line 175
    .line 176
    check-cast v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 177
    .line 178
    iget-object p1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->threadId:Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/narvii/model/ChatBubbleNotificationWrapper;->id()Ljava/lang/String;

    .line 182
    move-result-object v2

    .line 183
    .line 184
    iget v4, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->action:I

    .line 185
    const/4 v5, 0x1

    .line 186
    .line 187
    if-ne v4, v5, :cond_8

    .line 188
    move v1, v5

    .line 189
    .line 190
    :cond_8
    iget-object v4, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    .line 194
    move-result-object v4

    .line 195
    .line 196
    .line 197
    invoke-static {p1, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    move-result p1

    .line 199
    .line 200
    if-nez p1, :cond_c

    .line 201
    .line 202
    iget-boolean p1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->applyForAll:Z

    .line 203
    .line 204
    if-eqz p1, :cond_9

    .line 205
    goto :goto_4

    .line 206
    .line 207
    :cond_9
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 208
    .line 209
    .line 210
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->E(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatBubble;

    .line 211
    move-result-object p1

    .line 212
    .line 213
    if-nez p1, :cond_a

    .line 214
    move-object p1, v3

    .line 215
    goto :goto_3

    .line 216
    .line 217
    :cond_a
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 218
    .line 219
    .line 220
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->E(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatBubble;

    .line 221
    move-result-object p1

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 225
    move-result-object p1

    .line 226
    .line 227
    .line 228
    :goto_3
    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    move-result p1

    .line 230
    .line 231
    if-eqz p1, :cond_11

    .line 232
    .line 233
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 234
    .line 235
    iget-object v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 236
    .line 237
    .line 238
    invoke-static {p1, v1}, Lcom/narvii/chat/ChatListFragment;->O(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatBubble;)V

    .line 239
    .line 240
    iget p1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->action:I

    .line 241
    .line 242
    if-ne p1, v5, :cond_b

    .line 243
    .line 244
    iget-object p1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 245
    .line 246
    iget-boolean p1, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 247
    .line 248
    if-nez p1, :cond_b

    .line 249
    .line 250
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 251
    .line 252
    .line 253
    invoke-static {p1, v3}, Lcom/narvii/chat/ChatListFragment;->O(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatBubble;)V

    .line 254
    .line 255
    :cond_b
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 256
    .line 257
    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 258
    .line 259
    if-eqz p1, :cond_11

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    .line 263
    .line 264
    goto/16 :goto_7

    .line 265
    .line 266
    :cond_c
    :goto_4
    iget-object p1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 267
    .line 268
    .line 269
    invoke-direct {p0, p1, v1}, Lcom/narvii/chat/ChatListFragment$Adapter;->updateThreadBubble(Lcom/narvii/model/ChatBubble;Z)V

    .line 270
    .line 271
    goto/16 :goto_7

    .line 272
    .line 273
    :cond_d
    instance-of v2, v0, Lcom/narvii/model/ChatBubble;

    .line 274
    .line 275
    if-eqz v2, :cond_f

    .line 276
    .line 277
    iget-object v0, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 278
    .line 279
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 280
    .line 281
    .line 282
    invoke-static {v1}, Lcom/narvii/chat/ChatListFragment;->E(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatBubble;

    .line 283
    move-result-object v1

    .line 284
    .line 285
    if-nez v1, :cond_e

    .line 286
    goto :goto_5

    .line 287
    .line 288
    :cond_e
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 289
    .line 290
    .line 291
    invoke-static {v1}, Lcom/narvii/chat/ChatListFragment;->E(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatBubble;

    .line 292
    move-result-object v1

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 296
    move-result-object v3

    .line 297
    .line 298
    .line 299
    :goto_5
    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 300
    move-result v0

    .line 301
    .line 302
    if-eqz v0, :cond_11

    .line 303
    .line 304
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 307
    .line 308
    .line 309
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->updateThreadBubble(Lcom/narvii/model/ChatBubble;)V

    .line 310
    goto :goto_7

    .line 311
    .line 312
    :cond_f
    instance-of v2, v0, Lcom/narvii/influencer/FanClub;

    .line 313
    .line 314
    if-eqz v2, :cond_11

    .line 315
    .line 316
    check-cast v0, Lcom/narvii/influencer/FanClub;

    .line 317
    .line 318
    iget-object v0, v0, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 319
    .line 320
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 324
    move-result-object v2

    .line 325
    .line 326
    if-nez v2, :cond_10

    .line 327
    move-object v2, v3

    .line 328
    goto :goto_6

    .line 329
    .line 330
    :cond_10
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 334
    move-result-object v2

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 338
    move-result-object v2

    .line 339
    .line 340
    .line 341
    :goto_6
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 342
    move-result v0

    .line 343
    .line 344
    if-eqz v0, :cond_11

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->isMeAccessibleToThisChat()Z

    .line 348
    move-result v0

    .line 349
    .line 350
    if-nez v0, :cond_11

    .line 351
    .line 352
    const-string v0, "account"

    .line 353
    .line 354
    .line 355
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 356
    move-result-object v0

    .line 357
    .line 358
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 359
    .line 360
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 363
    .line 364
    iget-object p1, p1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, p1}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    .line 368
    move-result-object p1

    .line 369
    .line 370
    if-eqz p1, :cond_11

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->isActive()Z

    .line 374
    move-result p1

    .line 375
    .line 376
    if-eqz p1, :cond_11

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0, v1, v3}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 380
    :cond_11
    :goto_7
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageListResponse;I)V
    .locals 9

    .line 2
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "start0"

    if-ne v2, v0, :cond_1

    iget-object v0, p2, Lcom/narvii/chat/MessageListResponse;->messageList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->w(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p2, Lcom/narvii/chat/MessageListResponse;->messageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatMessage;

    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 4
    iget-object v3, v2, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-static {v2}, Lcom/narvii/chat/ChatListFragment;->I(Lcom/narvii/chat/ChatListFragment;)I

    move-result v2

    iget-object v4, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v4}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/narvii/chat/core/ChatService;->isCurThreadUnread(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v2}, Lcom/narvii/chat/ChatListFragment;->A(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/chat/util/ChatHelper;->isThreadUnread(Lcom/narvii/model/ChatThread;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 5
    invoke-static {v2}, Lcom/narvii/chat/ChatListFragment;->B(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatRequestHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v3}, Lcom/narvii/chat/ChatListFragment;->I(Lcom/narvii/chat/ChatListFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v4}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsReadRequest(ILjava/lang/String;Lcom/narvii/model/ChatMessage;)V

    .line 6
    :cond_1
    iget-object v0, p2, Lcom/narvii/chat/MessageListResponse;->messageList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ChatMessage;

    .line 8
    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->getBubbleId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 10
    invoke-static {v3}, Lcom/narvii/chat/ChatListFragment;->y(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 11
    invoke-static {v3}, Lcom/narvii/chat/ChatListFragment;->y(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->getBubbleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 12
    invoke-static {v3}, Lcom/narvii/chat/ChatListFragment;->z(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->getBubbleVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 13
    invoke-static {v3}, Lcom/narvii/chat/ChatListFragment;->y(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 14
    invoke-static {v3}, Lcom/narvii/chat/ChatListFragment;->z(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 15
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 17
    invoke-virtual {v5}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v5

    move v6, v5

    :goto_1
    if-ltz v5, :cond_8

    if-ge v6, v2, :cond_8

    .line 18
    invoke-interface {v0, v6}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 19
    instance-of v8, v7, Lcom/narvii/model/ChatMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_7

    .line 20
    :try_start_1
    check-cast v7, Lcom/narvii/model/ChatMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    sub-int v4, v6, v5

    if-ltz v4, :cond_6

    if-ge v4, v2, :cond_6

    :try_start_2
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 21
    invoke-virtual {v2}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    move-object v4, v7

    goto :goto_4

    :catch_0
    move-object v4, v7

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_1
    move v6, v3

    goto :goto_3

    :cond_8
    move v2, v1

    move v6, v3

    goto :goto_4

    :catch_2
    :goto_3
    move v2, v1

    .line 22
    :goto_4
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    if-eqz v4, :cond_b

    .line 23
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result p1

    move p2, v1

    :goto_5
    if-ge p2, p1, :cond_a

    .line 24
    invoke-interface {v0, p2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v4, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_a
    move p2, v3

    :goto_6
    if-eq p2, v3, :cond_b

    if-eq p2, v6, :cond_b

    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 25
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    :cond_b
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 26
    iget-boolean p2, p1, Lcom/narvii/chat/ChatListFragment;->scrollToBottomFlag:Z

    if-eqz p2, :cond_c

    .line 27
    iput-boolean v1, p1, Lcom/narvii/chat/ChatListFragment;->scrollToBottomFlag:Z

    .line 28
    invoke-virtual {p1}, Lcom/narvii/chat/ChatListFragment;->scrollToBottom()V

    :cond_c
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/chat/MessageListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/ChatListFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageListResponse;I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    return-object v0
.end method

.method protected removeIdEqualsObject(Lcom/narvii/model/ChatMessage;)I
    .locals 1

    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 2
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->removeIdEqualsObject(Ljava/util/Collection;Lcom/narvii/model/NVObject;)I

    move-result p1

    return p1
.end method

.method protected bridge synthetic removeIdEqualsObject(Lcom/narvii/model/NVObject;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/ChatMessage;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->removeIdEqualsObject(Lcom/narvii/model/ChatMessage;)I

    move-result p1

    return p1
.end method

.method resetChatList()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->abortRequests()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->resetList()V

    .line 14
    return-void
.end method

.method public resetList()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->existedMessageId:Ljava/util/HashSet;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 9
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/chat/MessageListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/chat/MessageListResponse;

    return-object v0
.end method
