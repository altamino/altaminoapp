.class public Lcom/narvii/chat/ChatListFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "ChatListFragment.java"

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

    .line 645
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 646
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 643
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->existedMessageId:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 647
    iput v0, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 648
    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$500(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/config/ConfigService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-nez p1, :cond_0

    .line 649
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$1800(Lcom/narvii/chat/ChatListFragment$Adapter;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 639
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->replyToMessage(Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/narvii/chat/ChatListFragment$Adapter;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 639
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->showMessageDetailPage(Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/narvii/chat/ChatListFragment$Adapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 639
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/narvii/chat/ChatListFragment$Adapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 639
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/narvii/chat/ChatListFragment$Adapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 639
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private getMappedMessage(Ljava/lang/String;)Lcom/narvii/model/ChatMessage;
    .locals 4

    .line 750
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ChatMessage;

    .line 754
    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method private isCurrentChatMessageAccessible(Lcom/narvii/model/ChatMessage;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 765
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 766
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    move-result-object v1

    .line 767
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v2}, Lcom/narvii/chat/ChatListFragment;->access$600(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/narvii/chat/util/ChatHelper;->getStickerCollectionSummary(Lcom/narvii/model/ChatMessage;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 770
    invoke-virtual {v1}, Lcom/narvii/model/Sticker;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return v0

    .line 774
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->access$1000(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    return p1
.end method

.method private openImageDetail(Lcom/narvii/model/ChatMessage;)V
    .locals 4

    .line 1543
    new-instance v0, Lcom/narvii/model/Media;

    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 1544
    iget v1, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 1545
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 1546
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1547
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1548
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/narvii/media/MediaGalleryOptionActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1550
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "parent"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1551
    const-class v2, Lcom/narvii/model/ChatMessage;

    const-string v3, "parentClass"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1552
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "showCheckHD"

    .line 1553
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 1554
    invoke-virtual {p1, v2}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "hideShareBar"

    .line 1555
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1557
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openStickerChatMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 3

    .line 1561
    const-class v0, Lcom/narvii/monetization/sticker/StickerDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1562
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "threadId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1563
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1564
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private replyToMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "chatInput"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/narvii/chat/input/ChatInputFragment;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->onReplybyLongClick(Lcom/narvii/model/ChatMessage;)V

    :cond_1
    return-void
.end method

.method private showMessageDetailPage(Lcom/narvii/model/ChatMessage;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1531
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1532
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->openStickerChatMessage(Lcom/narvii/model/ChatMessage;)V

    goto :goto_0

    .line 1533
    :cond_1
    iget v0, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1534
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->openImageDetail(Lcom/narvii/model/ChatMessage;)V

    goto :goto_0

    .line 1535
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1536
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v0

    const-class v1, Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {v0, p1, v1}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1538
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0, p1}, Lcom/narvii/chat/ChatListFragment;->access$1900(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatMessage;)V

    :goto_0
    return-void
.end method

.method private tryFixMessageCreatedTime(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object v0, v0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService;->getOutBoundCreatedTime(Lcom/narvii/model/ChatMessage;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 965
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    :goto_0
    iput-object v0, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    return-object p1
.end method

.method private updateThreadBubble(Lcom/narvii/model/ChatBubble;)V
    .locals 1

    const/4 v0, 0x0

    .line 936
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/ChatListFragment$Adapter;->updateThreadBubble(Lcom/narvii/model/ChatBubble;Z)V

    return-void
.end method

.method private updateThreadBubble(Lcom/narvii/model/ChatBubble;Z)V
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    .line 944
    iget-object v1, v0, Lcom/narvii/model/ChatThread;->chatBubbles:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 945
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/narvii/model/ChatThread;->chatBubbles:Ljava/util/Map;

    .line 947
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v1}, Lcom/narvii/chat/ChatListFragment;->access$700(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 948
    iget-boolean v1, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 949
    new-instance p1, Lcom/narvii/model/ChatBubble;

    invoke-direct {p1}, Lcom/narvii/model/ChatBubble;-><init>()V

    const-string p2, "default"

    .line 950
    iput-object p2, p1, Lcom/narvii/model/ChatBubble;->id:Ljava/lang/String;

    .line 952
    :cond_2
    iget-object p2, v0, Lcom/narvii/model/ChatThread;->chatBubbles:Ljava/util/Map;

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->access$700(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    :cond_3
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p2, p1}, Lcom/narvii/chat/ChatListFragment;->access$1402(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatBubble;)Lcom/narvii/model/ChatBubble;

    .line 955
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    if-eqz p1, :cond_4

    .line 956
    invoke-virtual {p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method


# virtual methods
.method appendNewChatMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 5

    .line 706
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->isCurrentChatMessageAccessible(Lcom/narvii/model/ChatMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 710
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->existedMessageId:Ljava/util/HashSet;

    .line 711
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 712
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_1

    .line 715
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/narvii/chat/ChatListFragment$Adapter;->getMappedMessage(Ljava/lang/String;)Lcom/narvii/model/ChatMessage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 716
    iget v0, v0, Lcom/narvii/model/ChatMessage;->type:I

    iget v3, p1, Lcom/narvii/model/ChatMessage;->type:I

    if-ne v0, v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    return-void

    .line 724
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v3}, Lcom/narvii/chat/ChatListFragment;->access$700(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 725
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v3}, Lcom/narvii/chat/ChatListFragment;->access$200(Lcom/narvii/chat/ChatListFragment;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isUserContentMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 726
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->access$308(Lcom/narvii/chat/ChatListFragment;)I

    .line 727
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->access$400(Lcom/narvii/chat/ChatListFragment;)V

    .line 729
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 730
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->existedMessageId:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->access$600(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/narvii/chat/util/ChatHelper;->appendNewMessageWithSort(Ljava/util/List;Lcom/narvii/model/ChatMessage;)Ljava/util/List;

    .line 733
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getBubbleId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 734
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->access$800(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getBubbleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->access$900(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getBubbleVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 737
    :cond_6
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->access$800(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->access$900(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    :goto_1
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v3, 0x74

    if-ne v0, v3, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 741
    :goto_2
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget p1, p1, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v3, 0x66

    if-eq p1, v3, :cond_a

    const/16 v3, 0x65

    if-ne p1, v3, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_4
    if-nez v1, :cond_b

    if-eqz v0, :cond_c

    .line 744
    :cond_b
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->sendGetThreadRequest(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 746
    :cond_c
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1160
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 1161
    invoke-virtual {v2}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 1162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "v"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-eqz p1, :cond_0

    const-string p1, "start0"

    .line 1164
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1166
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

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

    .line 1149
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

    .line 670
    new-instance v0, Lcom/narvii/util/FilterHelper;

    invoke-direct {v0, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0}, Lcom/narvii/util/FilterHelper;->keepBlockedUser()Lcom/narvii/util/FilterHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 676
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 677
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 678
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatMessage;

    .line 679
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 680
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    move-result-object v2

    .line 681
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v3}, Lcom/narvii/chat/ChatListFragment;->access$600(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/narvii/chat/util/ChatHelper;->getStickerCollectionSummary(Lcom/narvii/model/ChatMessage;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 684
    invoke-virtual {v2}, Lcom/narvii/model/Sticker;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 685
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_4
    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    .line 690
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->existedMessageId:Ljava/util/HashSet;

    .line 691
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 692
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 694
    :cond_5
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->existedMessageId:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 697
    iget-boolean v1, v1, Lcom/narvii/model/ChatMessage;->isHidden:Z

    if-eqz v1, :cond_1

    .line 698
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_6
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1134
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1135
    instance-of v1, v0, Lcom/narvii/model/ChatMessage;

    if-eqz v1, :cond_1

    .line 1136
    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 1137
    iget p1, v0, Lcom/narvii/model/ChatMessage;->clientRefId:I

    if-nez p1, :cond_0

    .line 1138
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    int-to-long v0, p1

    return-wide v0

    .line 1143
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 5

    .line 1176
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 1177
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x65

    if-eq v0, v2, :cond_0

    const/16 v2, 0x67

    if-ne v0, v2, :cond_1

    .line 1181
    :cond_0
    iget-object v2, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v2, :cond_3

    const/4 p1, 0x4

    if-eq v0, p1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    return v1

    :pswitch_0
    const/16 p1, 0xc

    return p1

    :pswitch_1
    const/16 p1, 0x9

    return p1

    :pswitch_2
    const/4 p1, 0x6

    :pswitch_3
    return p1

    :cond_2
    return v4

    .line 1214
    :cond_3
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string v0, "ndcsticker://e/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0xa

    return p1

    :cond_4
    const/16 p1, 0xb

    return p1

    :cond_5
    const/16 p1, 0x8

    return p1

    :cond_6
    const/4 p1, 0x5

    return p1

    :cond_7
    const/4 v0, 0x0

    .line 1188
    invoke-virtual {p1, v0}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x7

    return p1

    .line 1191
    :cond_8
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->hasMedia()Z

    move-result v0

    .line 1192
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    if-nez v0, :cond_b

    .line 1194
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->hasLinkSnippet()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0xd

    return p1

    .line 1197
    :cond_9
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isReplyMessage()Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 p1, 0xe

    return p1

    :cond_a
    return v3

    .line 1202
    :cond_b
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_c

    return v4

    :cond_c
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xff01
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

    .line 1262
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 1265
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 1267
    iget v5, v0, Lcom/narvii/model/ChatThread;->type:I

    if-ne v5, v2, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    if-ne v5, v3, :cond_2

    .line 1270
    iget v0, v0, Lcom/narvii/model/ChatThread;->membersCount:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 1275
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object v0, v0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    iget-object v5, p1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    iget-object v6, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    if-nez v6, :cond_3

    const-wide/16 v8, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    :goto_2
    invoke-virtual {v0, v5, v8, v9}, Lcom/narvii/chat/core/ChatService;->setReadTime(Ljava/lang/String;J)V

    .line 1277
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v5, 0x65

    if-eq v0, v5, :cond_4

    const/16 v5, 0x67

    if-ne v0, v5, :cond_5

    .line 1281
    :cond_4
    iget-object v5, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    move v8, v0

    .line 1286
    :goto_3
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->access$600(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatHelper;

    move-result-object v0

    iget-object v5, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v5}, Lcom/narvii/chat/ChatListFragment;->access$1300(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v5

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/narvii/chat/util/ChatHelper;->getHostLabelName(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f0b00c8

    const/4 v9, 0x0

    if-eqz v8, :cond_b

    if-eq v8, v3, :cond_a

    if-eq v8, v2, :cond_b

    if-eq v8, v1, :cond_b

    const/4 v1, 0x4

    if-eq v8, v1, :cond_b

    const/16 v1, 0x77

    const v2, 0x7f0b00b9

    if-eq v8, v1, :cond_9

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    packed-switch v8, :pswitch_data_3

    .line 1414
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/ChatMessageItem;

    .line 1415
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object p3, p3, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    iget-object v9, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_4
    invoke-static {p3, v9}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p2, p1, p3, v3, v6}, Lcom/narvii/chat/ChatMessageItem;->setMessage(Lcom/narvii/model/ChatMessage;ZZLjava/lang/String;)V

    .line 1416
    invoke-virtual {p2, v7}, Lcom/narvii/chat/ChatMessageItem;->setShowNickname(Z)V

    return-object p2

    :pswitch_0
    const v0, 0x7f0b00c0

    .line 1391
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p3, p2, p1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090b58

    .line 1392
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    :pswitch_1
    const v0, 0x7f0b00d9

    .line 1376
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/ChatWelcomeItem;

    .line 1377
    new-instance p3, Lcom/narvii/chat/ChatListFragment$Adapter$2;

    invoke-direct {p3, p0}, Lcom/narvii/chat/ChatListFragment$Adapter$2;-><init>(Lcom/narvii/chat/ChatListFragment$Adapter;)V

    invoke-virtual {p2, p3}, Lcom/narvii/chat/ChatWelcomeItem;->setExpandedClickListener(Lcom/narvii/chat/ChatWelcomeItem$ExpandedClickListener;)V

    .line 1386
    invoke-virtual {p2, p1}, Lcom/narvii/chat/ChatWelcomeItem;->setChatMessage(Lcom/narvii/model/ChatMessage;)V

    .line 1387
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 v4, 0x8

    :cond_7
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object p2

    :pswitch_2
    const v0, 0x7f0b00d8

    .line 1371
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/ChatTimeItem;

    .line 1372
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/ChatTimeItem;->setTime(Ljava/util/Date;)V

    return-object p2

    .line 1354
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/ChatInfoItem;

    .line 1355
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/narvii/chat/ChatInfoItem;->setMessage(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatMessage;)V

    .line 1356
    iget-object p1, p2, Lcom/narvii/chat/ChatInfoItem;->text:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1357
    iget-object p1, p2, Lcom/narvii/chat/ChatInfoItem;->text:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f080721

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2

    .line 1404
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/ChatMessageItem;

    .line 1405
    iget-object p3, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz p3, :cond_8

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object v0, v0, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    iget-object p3, p3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {p2, p1, v3, v4, v6}, Lcom/narvii/chat/ChatMessageItem;->setMessage(Lcom/narvii/model/ChatMessage;ZZLjava/lang/String;)V

    .line 1406
    invoke-virtual {p2, v7}, Lcom/narvii/chat/ChatMessageItem;->setShowNickname(Z)V

    .line 1407
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    invoke-virtual {p1, v9}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setDoubleClickListener(Lcom/narvii/monetization/bubble/BubbleViewContainer$DoubleClickListener;)V

    .line 1408
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->avatar:Lcom/narvii/widget/NVImageView;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1409
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->resend:Landroid/view/View;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    .line 1349
    :cond_9
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/ChatInfoItem;

    .line 1350
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/narvii/chat/ChatInfoItem;->setMessage(Lcom/narvii/model/ChatThread;Lcom/narvii/model/ChatMessage;)V

    return-object p2

    :cond_a
    const v0, 0x7f0b00cf

    .line 1361
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/ChatMessageItem;

    .line 1362
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object p3, p3, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p2, p1, p3, v4, v6}, Lcom/narvii/chat/ChatMessageItem;->setMessage(Lcom/narvii/model/ChatMessage;ZZLjava/lang/String;)V

    .line 1363
    invoke-virtual {p2, v7}, Lcom/narvii/chat/ChatMessageItem;->setShowNickname(Z)V

    .line 1364
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1365
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    invoke-virtual {p1, v9}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setDoubleClickListener(Lcom/narvii/monetization/bubble/BubbleViewContainer$DoubleClickListener;)V

    .line 1366
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->avatar:Lcom/narvii/widget/NVImageView;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1367
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->resend:Landroid/view/View;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    .line 1293
    :cond_b
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->getItemType(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/ChatMessageItem;

    .line 1295
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 1296
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p3}, Lcom/narvii/chat/ChatListFragment;->access$800(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p1, Lcom/narvii/model/ChatMessage;->chatBubbleId:Ljava/lang/String;

    .line 1297
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p3}, Lcom/narvii/chat/ChatListFragment;->access$900(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 1298
    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p3}, Lcom/narvii/chat/ChatListFragment;->access$900(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p1, Lcom/narvii/model/ChatMessage;->chatBubbleVersion:I

    .line 1301
    :cond_c
    iget-object p3, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz p3, :cond_d

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object v0, v0, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    iget-object p3, p3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    const/4 v2, 0x1

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    :goto_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object p3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 1302
    invoke-static {p3}, Lcom/narvii/chat/ChatListFragment;->access$1400(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatBubble;

    move-result-object v5

    move-object v0, p2

    move-object v1, p1

    .line 1301
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/chat/ChatMessageItem;->setMessage(Lcom/narvii/model/ChatMessage;ZZZLcom/narvii/model/ChatBubble;Ljava/lang/String;)V

    .line 1303
    invoke-virtual {p2, v7}, Lcom/narvii/chat/ChatMessageItem;->setShowNickname(Z)V

    .line 1304
    iget-object p3, p2, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    iget-object p3, p3, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1305
    iget-object p3, p2, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    iget-object p3, p3, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1306
    iget-object p3, p2, Lcom/narvii/chat/ChatMessageItem;->bubbleContainer:Lcom/narvii/monetization/bubble/BubbleViewContainer;

    new-instance v0, Lcom/narvii/chat/ChatListFragment$Adapter$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter$1;-><init>(Lcom/narvii/chat/ChatListFragment$Adapter;Lcom/narvii/model/ChatMessage;)V

    invoke-virtual {p3, v0}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setDoubleClickListener(Lcom/narvii/monetization/bubble/BubbleViewContainer$DoubleClickListener;)V

    .line 1312
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->moodSticker:Lcom/narvii/widget/EmojioneView;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1313
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->moodSticker:Lcom/narvii/widget/EmojioneView;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1314
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1315
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->chatStickerView:Lcom/narvii/widget/ChatStickerView;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1316
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->avatar:Lcom/narvii/widget/NVImageView;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1317
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->avatar:Lcom/narvii/widget/NVImageView;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1318
    iget-object p1, p2, Lcom/narvii/chat/ChatMessageItem;->resend:Landroid/view/View;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v8, :cond_e

    .line 1320
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/ChatMessageItem;->setMentionedUserClickedListener(Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;)V

    goto :goto_7

    .line 1322
    :cond_e
    invoke-virtual {p2, v9}, Lcom/narvii/chat/ChatMessageItem;->setMentionedUserClickedListener(Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;)V

    .line 1324
    :goto_7
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/ChatMessageItem;->setOnSeeAllClickedListener(Lcom/narvii/chat/ChatMessageItem$OnSeeAllClickedListener;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x34
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

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
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

    :pswitch_data_2
    .packed-switch 0x7a
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xff01
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method insertInviteMessage(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ChatMessage;",
            ">;)V"
        }
    .end annotation

    .line 1094
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->membersCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 1095
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object v1, v0, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 1096
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->condition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1098
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->access$1700(Lcom/narvii/chat/ChatListFragment;)Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->access$1700(Lcom/narvii/chat/ChatListFragment;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 1100
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1101
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1102
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v2, v0}, Lcom/narvii/chat/ChatListFragment;->access$1702(Lcom/narvii/chat/ChatListFragment;Ljava/util/Date;)Ljava/util/Date;

    goto :goto_0

    .line 1104
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatMessage;

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 1105
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v2, v0}, Lcom/narvii/chat/ChatListFragment;->access$1702(Lcom/narvii/chat/ChatListFragment;Ljava/util/Date;)Ljava/util/Date;

    .line 1107
    :goto_0
    new-instance v2, Lcom/narvii/model/ChatMessage;

    invoke-direct {v2}, Lcom/narvii/model/ChatMessage;-><init>()V

    const-string v3, ""

    .line 1108
    iput-object v3, v2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    const v3, 0xff03

    .line 1109
    iput v3, v2, Lcom/narvii/model/ChatMessage;->type:I

    .line 1110
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object v3

    iput-object v3, v2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 1111
    iput-object v0, v2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 1112
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1113
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1115
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1116
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/ChatMessage;

    .line 1117
    iget-object v3, v3, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 1118
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_3

    .line 1119
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method insertTimestamps(Ljava/util/ArrayList;JZ)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ChatMessage;",
            ">;JZ)I"
        }
    .end annotation

    .line 1033
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1036
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatMessage;

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1037
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1038
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    :goto_1
    const v5, 0xff01

    if-ltz v4, :cond_4

    .line 1039
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/ChatMessage;

    .line 1040
    iget-object v7, v6, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    if-nez v7, :cond_2

    goto :goto_2

    .line 1042
    :cond_2
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    add-long/2addr v2, p2

    cmp-long v9, v7, v2

    if-ltz v9, :cond_3

    .line 1044
    new-instance v2, Lcom/narvii/model/ChatMessage;

    invoke-direct {v2}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 1045
    iput v5, v2, Lcom/narvii/model/ChatMessage;->type:I

    .line 1046
    iget-object v3, v6, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    iput-object v3, v2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    add-int/lit8 v3, v4, 0x1

    .line 1047
    invoke-virtual {p1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    :cond_3
    move-wide v2, v7

    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    if-eqz v0, :cond_5

    .line 1053
    new-instance p2, Lcom/narvii/model/ChatMessage;

    invoke-direct {p2}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 1054
    iput v5, p2, Lcom/narvii/model/ChatMessage;->type:I

    .line 1055
    iput-object v0, p2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 1056
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_5
    return v1
.end method

.method insertWelcomeMessage(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ChatMessage;",
            ">;)V"
        }
    .end annotation

    .line 1064
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->access$1600(Lcom/narvii/chat/ChatListFragment;)Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->access$1600(Lcom/narvii/chat/ChatListFragment;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 1066
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1067
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1068
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v2, v0}, Lcom/narvii/chat/ChatListFragment;->access$1602(Lcom/narvii/chat/ChatListFragment;Ljava/util/Date;)Ljava/util/Date;

    goto :goto_0

    .line 1070
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatMessage;

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 1071
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v2, v0}, Lcom/narvii/chat/ChatListFragment;->access$1602(Lcom/narvii/chat/ChatListFragment;Ljava/util/Date;)Ljava/util/Date;

    .line 1073
    :goto_0
    new-instance v2, Lcom/narvii/model/ChatMessage;

    invoke-direct {v2}, Lcom/narvii/model/ChatMessage;-><init>()V

    const-string v3, ""

    .line 1074
    iput-object v3, v2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 1075
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1076
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v4}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 1078
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v4}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v4

    iget-object v4, v4, Lcom/narvii/model/ChatThread;->content:Ljava/lang/String;

    invoke-static {v4}, Lcom/narvii/util/text/TextUtils;->compactContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    const v3, 0xff02

    .line 1079
    iput v3, v2, Lcom/narvii/model/ChatMessage;->type:I

    .line 1080
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object v3

    iput-object v3, v2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 1081
    iput-object v0, v2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 1082
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1083
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/ChatMessage;

    .line 1084
    iget-object v3, v3, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 1085
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_3

    .line 1086
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

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

    .line 922
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatFragment;->isMeAccessibleToThisChat()Z

    move-result v0

    return v0

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const-string v0, "account"

    .line 928
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 929
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v2}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v2}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 932
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget-boolean v0, v0, Lcom/narvii/model/ChatThread;->needHidden:Z

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

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

    .line 1129
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 11

    .line 971
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 973
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    goto/16 :goto_5

    .line 974
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 975
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    goto/16 :goto_5

    .line 977
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    .line 978
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object v2, v1, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v1}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/narvii/chat/core/ChatService;->getOutboundMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 979
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 981
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 983
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/model/ChatMessage;

    .line 985
    invoke-virtual {v8}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object v10, v10, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 986
    iget v10, v8, Lcom/narvii/model/ChatMessage;->clientRefId:I

    if-eqz v10, :cond_3

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    .line 987
    invoke-virtual {v2, v10, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 989
    :cond_3
    invoke-direct {p0, v8}, Lcom/narvii/chat/ChatListFragment$Adapter;->tryFixMessageCreatedTime(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    move-result-object v8

    .line 990
    iget-object v8, v8, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    if-nez v8, :cond_4

    move-wide v8, v4

    goto :goto_1

    .line 991
    :cond_4
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    :goto_1
    cmp-long v10, v6, v4

    if-nez v10, :cond_5

    goto :goto_2

    :cond_5
    cmp-long v10, v8, v6

    if-gez v10, :cond_2

    :goto_2
    move-wide v6, v8

    goto :goto_0

    .line 998
    :cond_6
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1000
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatMessage;

    .line 1001
    iget v3, v1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    if-eqz v3, :cond_7

    .line 1003
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v5, v3, v6

    if-lez v5, :cond_7

    .line 1004
    invoke-direct {p0, v1}, Lcom/narvii/chat/ChatListFragment$Adapter;->tryFixMessageCreatedTime(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    move-result-object v1

    .line 1005
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1008
    :cond_8
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    sget-object v1, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    invoke-virtual {v1}, Lcom/narvii/chat/util/ChatHelper$Companion;->getMESSAGE_COMPARATOR()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_4

    .line 1010
    :cond_9
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1012
    :goto_4
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    const-wide/32 v1, 0xdbba0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/narvii/chat/ChatListFragment$Adapter;->insertTimestamps(Ljava/util/ArrayList;JZ)I

    .line 1013
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->access$1500(Lcom/narvii/chat/ChatListFragment;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1014
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/narvii/chat/ChatListFragment$Adapter;->insertWelcomeMessage(Ljava/util/ArrayList;)V

    .line 1016
    :cond_a
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->l:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/narvii/chat/ChatListFragment$Adapter;->insertInviteMessage(Ljava/util/ArrayList;)V

    .line 1018
    :goto_5
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1425
    instance-of v0, p3, Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_13

    .line 1426
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/ChatMessage;

    const/4 v1, 0x0

    if-nez p5, :cond_0

    return v1

    .line 1429
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0901da

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_d

    .line 1430
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0901d9

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    .line 1455
    :cond_1
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0900e4

    const-string v3, "Chat Thread"

    if-ne v1, v2, :cond_4

    .line 1456
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "MessageUserIcon"

    .line 1457
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 1458
    :cond_2
    invoke-virtual {p1, v4}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 1459
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1460
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$2000(Lcom/narvii/chat/ChatListFragment;)Z

    move-result p1

    if-nez p1, :cond_3

    return v5

    .line 1463
    :cond_3
    new-instance p1, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;

    invoke-direct {p1, p0}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1464
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p2}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    iget-object p3, v0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    new-instance p4, Lcom/narvii/chat/ChatListFragment$Adapter$3;

    invoke-direct {p4, p0, v0}, Lcom/narvii/chat/ChatListFragment$Adapter$3;-><init>(Lcom/narvii/chat/ChatListFragment$Adapter;Lcom/narvii/model/ChatMessage;)V

    invoke-virtual {p1, p2, p3, v3, p4}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;->showUserInfoInChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    return v5

    .line 1484
    :cond_4
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090207

    if-eq v1, v2, :cond_c

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090722

    if-ne v1, v2, :cond_5

    goto/16 :goto_1

    .line 1486
    :cond_5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090200

    if-ne v1, v2, :cond_8

    .line 1487
    iget p1, v0, Lcom/narvii/model/ChatMessage;->_status:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_7

    iget p1, v0, Lcom/narvii/model/ChatMessage;->_errorCode:I

    const/16 p2, 0x1068

    if-ne p1, p2, :cond_7

    .line 1488
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->hasMemberShipExpired()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1489
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-direct {p1, p2}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1490
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "Sticker (Dialog)"

    goto :goto_0

    :cond_6
    const-string p2, "Chat Bubble (Dialog)"

    :goto_0
    iput-object p2, p1, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 1491
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return v5

    .line 1495
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/ChatListFragment;->resend(Lcom/narvii/model/ChatMessage;)V

    return v5

    .line 1497
    :cond_8
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090b5b

    if-ne v1, v2, :cond_b

    .line 1498
    iget v1, v0, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_13

    .line 1499
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$2000(Lcom/narvii/chat/ChatListFragment;)Z

    move-result p1

    if-nez p1, :cond_9

    return v5

    .line 1502
    :cond_9
    iget-object p1, v0, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_a

    return v5

    :cond_a
    const-string p2, "Source"

    .line 1504
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1505
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v5

    .line 1508
    :cond_b
    iget v0, v0, Lcom/narvii/model/ChatMessage;->type:I

    const v1, 0xff03

    if-ne v0, v1, :cond_13

    .line 1510
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "InviteButton"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1511
    const-class p1, Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1512
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p2}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "id"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "key_open_invite_list"

    .line 1513
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1514
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p2}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "prefetch"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0x7f010010

    const-string p3, "customFinishAnimIn"

    .line 1515
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const p2, 0x7f010011

    const-string p3, "customFinishAnimOut"

    .line 1516
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1517
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    const-string p3, "__fromGlobalChat"

    invoke-virtual {p2, p3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1518
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    const-string p3, "__community"

    invoke-virtual {p2, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1519
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 1520
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f01000e

    const p3, 0x7f01000f

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v5

    .line 1485
    :cond_c
    :goto_1
    invoke-direct {p0, v0}, Lcom/narvii/chat/ChatListFragment$Adapter;->openStickerChatMessage(Lcom/narvii/model/ChatMessage;)V

    goto/16 :goto_3

    .line 1431
    :cond_d
    :goto_2
    iget v2, v0, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_e

    iget-object v2, v0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 1432
    invoke-direct {p0, v0}, Lcom/narvii/chat/ChatListFragment$Adapter;->openImageDetail(Lcom/narvii/model/ChatMessage;)V

    return v5

    .line 1434
    :cond_e
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->hasMedia()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1435
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object p1

    const-class p2, Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {p1, v0, p2}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v5

    .line 1437
    :cond_f
    iget v2, v0, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_11

    iget-object v2, v0, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget v2, v0, Lcom/narvii/model/ChatMessage;->_status:I

    if-nez v2, :cond_11

    .line 1438
    invoke-virtual {v0, v4}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 1439
    const-class p1, Lcom/narvii/chat/ChatMessageItemDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1440
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "chatMessage"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "seeAll"

    .line 1441
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "showDisabled"

    .line 1442
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1443
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v5

    .line 1446
    :cond_10
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    invoke-virtual {p1, v0, p4, v5}, Lcom/narvii/chat/audio/AudioHelper;->handleChatBubbleClick(Lcom/narvii/model/ChatMessage;Landroid/view/View;Z)V

    return v5

    .line 1448
    :cond_11
    invoke-virtual {v0, v4}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1449
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1, v0}, Lcom/narvii/chat/ChatListFragment;->access$1900(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatMessage;)V

    return v5

    .line 1451
    :cond_12
    instance-of v1, p4, Lcom/narvii/chat/ChatMessageItem;

    if-eqz v1, :cond_13

    move-object v1, p4

    check-cast v1, Lcom/narvii/chat/ChatMessageItem;

    invoke-virtual {v1}, Lcom/narvii/chat/ChatMessageItem;->isExpandable()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1452
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1, v0}, Lcom/narvii/chat/ChatListFragment;->access$1900(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatMessage;)V

    return v5

    .line 1524
    :cond_13
    :goto_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 1570
    instance-of v0, p3, Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_17

    .line 1571
    check-cast p3, Lcom/narvii/model/ChatMessage;

    .line 1572
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$700(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p5, :cond_1

    .line 1573
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p4

    const p5, 0x7f0900e4

    if-ne p4, p5, :cond_1

    .line 1574
    iget-object p4, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p4}, Lcom/narvii/chat/ChatListFragment;->access$1300(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p4}, Lcom/narvii/chat/ChatListFragment;->access$1300(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object p4

    iget p4, p4, Lcom/narvii/model/ChatThread;->type:I

    if-eqz p4, :cond_0

    iget-object p4, p3, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz p4, :cond_0

    .line 1575
    invoke-virtual {p4}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1576
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p4, "chatInput"

    invoke-virtual {p1, p4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1578
    iget-object p4, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p4, p2}, Lcom/narvii/chat/ChatListFragment;->access$102(Lcom/narvii/chat/ChatListFragment;Z)Z

    .line 1579
    check-cast p1, Lcom/narvii/chat/input/ChatInputFragment;

    iget-object p3, p3, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    invoke-virtual {p1, p3}, Lcom/narvii/chat/input/ChatInputFragment;->onUserMentionedByLongClick(Lcom/narvii/model/User;)V

    .line 1580
    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputFragment;->scrollChatListToBottom()V

    :cond_0
    return p2

    .line 1586
    :cond_1
    iget p4, p3, Lcom/narvii/model/ChatMessage;->type:I

    .line 1587
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
    const/4 p4, 0x1

    goto :goto_0

    :cond_4
    const/4 p4, 0x0

    .line 1593
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

    const/4 p5, 0x1

    goto :goto_1

    :cond_5
    const/4 p5, 0x0

    .line 1595
    :goto_1
    iget-object v2, p3, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p3}, Lcom/narvii/model/ChatMessage;->hasMedia()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 1596
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

    .line 1597
    iget-object v5, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v5}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 1599
    invoke-virtual {v5, p1}, Lcom/narvii/model/ChatThread;->isHostOrCoHost(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget v5, v5, Lcom/narvii/model/ChatThread;->type:I

    if-ne v5, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-nez v3, :cond_a

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v0, 0x1

    .line 1602
    :goto_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1603
    new-instance v5, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_b

    const-string v2, "copy"

    .line 1605
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0f02f4

    .line 1606
    invoke-virtual {v5, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    :cond_b
    if-eqz p4, :cond_c

    const-string p4, "reply"

    .line 1610
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p4, 0x7f0f0ede

    .line 1611
    invoke-virtual {v5, p4, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 1614
    :cond_c
    invoke-virtual {p3}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    move-result p4

    if-eqz p4, :cond_f

    .line 1615
    invoke-virtual {p3}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    move-result-object p4

    if-nez p4, :cond_d

    :goto_7
    const/4 p4, 0x1

    goto :goto_8

    .line 1620
    :cond_d
    invoke-virtual {p4}, Lcom/narvii/model/Sticker;->isLocalMood()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p4, v4}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p4

    if-eqz p4, :cond_e

    .line 1621
    new-instance p4, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p4, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 1622
    invoke-virtual {p4, p3}, Lcom/narvii/chat/util/ChatHelper;->getStickerCollectionSummary(Lcom/narvii/model/ChatMessage;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object p4

    if-eqz p4, :cond_e

    .line 1623
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object v2, v2, Lcom/narvii/chat/ChatListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {v2, p4}, Lcom/narvii/monetization/sticker/StickerHelper;->isStickerCollectionValid(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p4, v4}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p4

    if-eqz p4, :cond_e

    goto :goto_7

    :cond_e
    const/4 p4, 0x0

    :goto_8
    if-eqz p4, :cond_f

    const-string p4, "saveAsFavorite"

    .line 1629
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p4, 0x7f0f0080

    .line 1630
    invoke-virtual {v5, p4, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    :cond_f
    const-string p4, "detail"

    .line 1634
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p4, 0x7f0f024d

    .line 1635
    invoke-virtual {v5, p4, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    if-eqz p5, :cond_10

    const-string p4, "saveImage"

    .line 1638
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p4, 0x7f0f0f2a

    .line 1639
    invoke-virtual {v5, p4, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    :cond_10
    if-eqz v0, :cond_11

    const-string p4, "delete"

    .line 1644
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p4, 0x7f0f0348

    .line 1645
    invoke-virtual {v5, p4, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 1648
    :cond_11
    iget-object p4, p3, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-nez p4, :cond_12

    goto :goto_9

    :cond_12
    iget-object v4, p4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    :goto_9
    invoke-static {v4, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 1650
    invoke-virtual {p3}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1651
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$600(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatHelper;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/narvii/chat/util/ChatHelper;->getStickerCollectionSummary(Lcom/narvii/model/ChatMessage;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 1652
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->canBeFlagged()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_a

    :cond_13
    const/4 p1, 0x0

    goto :goto_b

    :cond_14
    :goto_a
    const/4 p1, 0x1

    :goto_b
    if-eqz p1, :cond_15

    const-string p1, "flag"

    .line 1660
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0f06d5

    .line 1661
    invoke-virtual {v5, p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 1666
    :cond_15
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$700(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$700(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "advanced"

    .line 1667
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0f0094

    .line 1668
    invoke-virtual {v5, p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 1671
    :cond_16
    new-instance p1, Lcom/narvii/chat/ChatListFragment$Adapter$4;

    invoke-direct {p1, p0, v3, p3}, Lcom/narvii/chat/ChatListFragment$Adapter$4;-><init>(Lcom/narvii/chat/ChatListFragment$Adapter;Ljava/util/ArrayList;Lcom/narvii/model/ChatMessage;)V

    invoke-virtual {v5, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1734
    invoke-virtual {v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return p2

    .line 1737
    :cond_17
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 6

    .line 860
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/ChatCoHostNotificationWrapper;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/narvii/model/ChatCoHostNotificationWrapper;

    iget-object v1, v1, Lcom/narvii/model/ChatCoHostNotificationWrapper;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    check-cast v0, Lcom/narvii/model/ChatCoHostNotificationWrapper;

    iget-object v0, v0, Lcom/narvii/model/ChatCoHostNotificationWrapper;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-static {v1, v0}, Lcom/narvii/chat/ChatListFragment;->access$1302(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatThread;)Lcom/narvii/model/ChatThread;

    .line 862
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    .line 864
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/ChatMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 865
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v2, "update"

    if-ne v0, v2, :cond_5

    .line 866
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 867
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->list()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 870
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 871
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/ChatMessage;

    .line 872
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/ChatMessage;

    iget v4, v4, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v0, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 874
    iput-object v4, v3, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 878
    :cond_3
    :goto_1
    iget v2, v0, Lcom/narvii/model/ChatMessage;->_status:I

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 879
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->existedMessageId:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 881
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_5
    const-string v2, "delete"

    if-ne v0, v2, :cond_6

    .line 883
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object v0, v0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 884
    invoke-virtual {p0, p1, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    goto :goto_2

    .line 886
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    .line 889
    :cond_7
    :goto_2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    .line 890
    check-cast v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 891
    iget-object p1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->threadId:Ljava/lang/String;

    .line 892
    invoke-virtual {v0}, Lcom/narvii/model/ChatBubbleNotificationWrapper;->id()Ljava/lang/String;

    move-result-object v2

    .line 893
    iget v4, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->action:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    const/4 v1, 0x1

    .line 894
    :cond_8
    iget-object v4, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v4}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-boolean p1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->applyForAll:Z

    if-eqz p1, :cond_9

    goto :goto_4

    .line 896
    :cond_9
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$1400(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatBubble;

    move-result-object p1

    if-nez p1, :cond_a

    move-object p1, v3

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatListFragment;->access$1400(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatBubble;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 897
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    invoke-static {p1, v1}, Lcom/narvii/chat/ChatListFragment;->access$1402(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatBubble;)Lcom/narvii/model/ChatBubble;

    .line 898
    iget p1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->action:I

    if-ne p1, v5, :cond_b

    iget-object p1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    iget-boolean p1, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    if-nez p1, :cond_b

    .line 899
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {p1, v3}, Lcom/narvii/chat/ChatListFragment;->access$1402(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatBubble;)Lcom/narvii/model/ChatBubble;

    .line 901
    :cond_b
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object p1, p1, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    if-eqz p1, :cond_11

    .line 902
    invoke-virtual {p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_7

    .line 895
    :cond_c
    :goto_4
    iget-object p1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    invoke-direct {p0, p1, v1}, Lcom/narvii/chat/ChatListFragment$Adapter;->updateThreadBubble(Lcom/narvii/model/ChatBubble;Z)V

    goto/16 :goto_7

    .line 905
    :cond_d
    instance-of v2, v0, Lcom/narvii/model/ChatBubble;

    if-eqz v2, :cond_f

    .line 906
    iget-object v0, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v1}, Lcom/narvii/chat/ChatListFragment;->access$1400(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatBubble;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_5

    :cond_e
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v1}, Lcom/narvii/chat/ChatListFragment;->access$1400(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatBubble;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 907
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/ChatBubble;

    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->updateThreadBubble(Lcom/narvii/model/ChatBubble;)V

    goto :goto_7

    .line 909
    :cond_f
    instance-of v2, v0, Lcom/narvii/influencer/FanClub;

    if-eqz v2, :cond_11

    .line 910
    check-cast v0, Lcom/narvii/influencer/FanClub;

    iget-object v0, v0, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v2}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    if-nez v2, :cond_10

    move-object v2, v3

    goto :goto_6

    :cond_10
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v2}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 911
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->isMeAccessibleToThisChat()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "account"

    .line 912
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 913
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/influencer/FanClub;

    iget-object p1, p1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 914
    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 915
    invoke-virtual {p0, v1, v3}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_11
    :goto_7
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageListResponse;I)V
    .locals 9

    .line 785
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "start0"

    if-ne v2, v0, :cond_1

    iget-object v0, p2, Lcom/narvii/chat/MessageListResponse;->messageList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatListFragment;->access$700(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p2, Lcom/narvii/chat/MessageListResponse;->messageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 787
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-object v3, v2, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-static {v2}, Lcom/narvii/chat/ChatListFragment;->access$1100(Lcom/narvii/chat/ChatListFragment;)I

    move-result v2

    iget-object v4, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v4}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/narvii/chat/core/ChatService;->isCurThreadUnread(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v2}, Lcom/narvii/chat/ChatListFragment;->access$600(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v3}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/chat/util/ChatHelper;->isThreadUnread(Lcom/narvii/model/ChatThread;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 788
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v2}, Lcom/narvii/chat/ChatListFragment;->access$1200(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatRequestHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v3}, Lcom/narvii/chat/ChatListFragment;->access$1100(Lcom/narvii/chat/ChatListFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v4}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsReadRequest(ILjava/lang/String;Lcom/narvii/model/ChatMessage;)V

    .line 792
    :cond_1
    iget-object v0, p2, Lcom/narvii/chat/MessageListResponse;->messageList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 793
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

    .line 794
    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 797
    :cond_3
    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->getBubbleId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 798
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v3}, Lcom/narvii/chat/ChatListFragment;->access$800(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 799
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v3}, Lcom/narvii/chat/ChatListFragment;->access$800(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->getBubbleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v3}, Lcom/narvii/chat/ChatListFragment;->access$900(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->getBubbleVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 803
    :cond_4
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v3}, Lcom/narvii/chat/ChatListFragment;->access$800(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-static {v3}, Lcom/narvii/chat/ChatListFragment;->access$900(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 810
    iget-object v2, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v2}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 811
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, -0x1

    .line 817
    :try_start_0
    iget-object v5, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v5}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    move v6, v5

    :goto_1
    if-ltz v5, :cond_7

    if-ge v6, v3, :cond_7

    .line 819
    invoke-interface {v2, v6}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 820
    instance-of v8, v7, Lcom/narvii/model/ChatMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_6

    .line 822
    :try_start_1
    check-cast v7, Lcom/narvii/model/ChatMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-int v0, v6, v5

    if-ltz v0, :cond_8

    if-ge v0, v3, :cond_8

    .line 825
    :try_start_2
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v3}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    move-object v7, v0

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    move-object v7, v0

    const/4 v0, 0x0

    const/4 v6, -0x1

    goto :goto_3

    :catch_1
    move-object v7, v0

    const/4 v6, -0x1

    :catch_2
    :cond_8
    :goto_2
    const/4 v0, 0x0

    .line 834
    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    if-eqz v7, :cond_b

    .line 838
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_4
    if-ge p2, p1, :cond_a

    .line 841
    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v7, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_a
    const/4 p2, -0x1

    :goto_5
    if-eq p2, v4, :cond_b

    if-eq p2, v6, :cond_b

    .line 848
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 852
    :cond_b
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->this$0:Lcom/narvii/chat/ChatListFragment;

    iget-boolean p2, p1, Lcom/narvii/chat/ChatListFragment;->scrollToBottomFlag:Z

    if-eqz p2, :cond_c

    .line 853
    iput-boolean v1, p1, Lcom/narvii/chat/ChatListFragment;->scrollToBottomFlag:Z

    .line 854
    invoke-virtual {p1}, Lcom/narvii/chat/ChatListFragment;->scrollToBottom()V

    :cond_c
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 639
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

    .line 661
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected removeIdEqualsObject(Lcom/narvii/model/ChatMessage;)I
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->removeIdEqualsObject(Ljava/util/Collection;Lcom/narvii/model/NVObject;)I

    move-result p1

    return p1
.end method

.method protected bridge synthetic removeIdEqualsObject(Lcom/narvii/model/NVObject;)I
    .locals 0

    .line 639
    check-cast p1, Lcom/narvii/model/ChatMessage;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->removeIdEqualsObject(Lcom/narvii/model/ChatMessage;)I

    move-result p1

    return p1
.end method

.method resetChatList()V
    .locals 1

    .line 778
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->abortRequests()V

    .line 779
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 780
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment$Adapter;->resetList()V

    return-void
.end method

.method public resetList()V
    .locals 1

    .line 655
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 656
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$Adapter;->existedMessageId:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

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

    .line 1154
    const-class v0, Lcom/narvii/chat/MessageListResponse;

    return-object v0
.end method
