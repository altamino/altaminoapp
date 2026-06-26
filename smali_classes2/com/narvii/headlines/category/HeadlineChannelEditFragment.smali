.class public Lcom/narvii/headlines/category/HeadlineChannelEditFragment;
.super Lcom/narvii/list/DragSortListFragment;
.source "HeadlineChannelEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;,
        Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelManager;,
        Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;
    }
.end annotation


# static fields
.field private static CHANEL_STATUS_ACTIVE:I = 0x1

.field private static CHANEL_STATUS_INACTIVE:I = 0x2

.field private static CHANEL_STATUS_NONE:I = 0x0

.field private static final REQUEST_CODE_INTEREST:I = 0x66


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field private activeChannel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/headlines/category/HeadLineChannel;",
            ">;"
        }
    .end annotation
.end field

.field private activeSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

.field private allowForceSave:Z

.field private channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

.field private containInactiveOrg:Z

.field private curLanguage:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private errorView:Landroid/view/View;

.field headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

.field private inactiveChannel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/headlines/category/HeadLineChannel;",
            ">;"
        }
    .end annotation
.end field

.field private inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private languageService:Lcom/narvii/language/ContentLanguageService;

.field private progressView:Lcom/narvii/widget/SpinningView;

.field private retryView:Landroid/view/View;

.field sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/narvii/list/DragSortListFragment;-><init>()V

    .line 75
    new-instance v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    const v1, 0x7f0f0759

    invoke-direct {v0, p0, v1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;I)V

    iput-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 76
    new-instance v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    const v1, 0x7f0f0758

    invoke-direct {v0, p0, v1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;I)V

    iput-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->activeSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->allowForceSave:Z

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->saveChange()V

    return-void
.end method

.method static synthetic access$1000(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveChannel:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveChannel:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->containInactiveOrg:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->updateHeadlineChannelView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->itemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->itemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->getItemList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->retry()V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .line 56
    sget v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->CHANEL_STATUS_INACTIVE:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 56
    sget v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->CHANEL_STATUS_NONE:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 56
    sget v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->CHANEL_STATUS_ACTIVE:I

    return v0
.end method

.method static synthetic access$600(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->error:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->error:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->activeChannel:Ljava/util/List;

    return-object p1
.end method

.method private getItemList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->activeSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, v1, Lcom/narvii/headlines/category/HeadLineChannelListResponse;->activeChannelList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->getLocalHeadlineCategory()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 364
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    iget-object v1, v1, Lcom/narvii/headlines/category/HeadLineChannelListResponse;->activeChannelList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    iget-object v1, v1, Lcom/narvii/headlines/category/HeadLineChannelListResponse;->inactiveChannelList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 367
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    iget-object v1, v1, Lcom/narvii/headlines/category/HeadLineChannelListResponse;->inactiveChannelList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 372
    :cond_1
    new-instance v1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelManager;

    const v2, 0x7f0f0b24

    invoke-direct {v1, p0, v2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelManager;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getLocalHeadlineCategory()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/headlines/category/HeadLineChannel;",
            ">;"
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    sget-object v1, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_HOT:Lcom/narvii/headlines/category/HeadLineChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    sget-object v1, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_MY_AMINOS:Lcom/narvii/headlines/category/HeadLineChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private isChanged()Z
    .locals 8

    .line 478
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->activeChannel:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveChannel:Ljava/util/List;

    if-nez v0, :cond_0

    return v1

    .line 482
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 483
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 486
    iget-object v3, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    invoke-virtual {v3}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 487
    iget-object v7, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    if-ne v5, v7, :cond_2

    const/4 v4, 0x1

    .line 490
    :cond_2
    instance-of v6, v5, Lcom/narvii/headlines/category/HeadLineChannel;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/narvii/headlines/category/HeadLineChannel;

    invoke-virtual {v5}, Lcom/narvii/headlines/category/HeadLineChannel;->isLocalChannel()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v4, :cond_3

    .line 492
    iget-object v5, v5, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 494
    :cond_3
    iget-object v5, v5, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 499
    :cond_4
    iget-boolean v3, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->containInactiveOrg:Z

    iget-object v4, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    invoke-virtual {v4}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v3, v4

    if-eqz v3, :cond_5

    return v6

    .line 502
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 503
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 504
    iget-object v5, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->activeChannel:Ljava/util/List;

    if-eqz v5, :cond_6

    .line 505
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/headlines/category/HeadLineChannel;

    .line 506
    iget-object v7, v7, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 509
    :cond_6
    iget-object v5, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveChannel:Ljava/util/List;

    if-eqz v5, :cond_7

    .line 510
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/headlines/category/HeadLineChannel;

    .line 511
    iget-object v7, v7, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 514
    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 v1, 0x1

    :cond_9
    return v1
.end method

.method private retry()V
    .locals 1

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->error:Ljava/lang/String;

    .line 194
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->updateHeadlineChannelView()V

    .line 195
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->sendHeadlineChannelRequest()V

    return-void
.end method

.method private saveChange()V
    .locals 8

    .line 534
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 538
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 539
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 541
    iget-object v2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    invoke-virtual {v2}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v2

    .line 542
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 543
    iget-object v4, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    .line 544
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 545
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 546
    instance-of v7, v6, Lcom/narvii/headlines/category/HeadLineChannel;

    if-eqz v7, :cond_2

    check-cast v6, Lcom/narvii/headlines/category/HeadLineChannel;

    invoke-virtual {v6}, Lcom/narvii/headlines/category/HeadLineChannel;->isLocalChannel()Z

    move-result v7

    if-nez v7, :cond_2

    if-ltz v4, :cond_1

    if-le v5, v4, :cond_1

    .line 548
    iget-object v6, v6, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_1

    .line 550
    :cond_1
    iget-object v7, v6, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 551
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 555
    :cond_3
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 556
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 557
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    const-string v5, "/headline/channel"

    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    const-string v5, "deviceid"

    .line 558
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/util/deviceid/DeviceIDService;

    .line 559
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v6

    const-string v7, "activeChannelIdList"

    .line 560
    invoke-virtual {v6, v7, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v0, "inactiveChannelIdList"

    .line 561
    invoke-virtual {v6, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 562
    invoke-virtual {v5}, Lcom/narvii/util/deviceid/DeviceIDService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceID"

    invoke-virtual {v6, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 563
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->curLanguage:Ljava/lang/String;

    const-string v1, "language"

    invoke-virtual {v6, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 564
    invoke-virtual {v4, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "api"

    .line 565
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 567
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v3

    new-instance v4, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$4;

    const-class v5, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v4, p0, v5, v1, v2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$4;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/lang/Class;Ljava/util/List;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v0, v3, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private sendHeadlineChannelRequest()V
    .locals 4

    const-string v0, "deviceid"

    .line 387
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/deviceid/DeviceIDService;

    const-string v1, "content_language"

    .line 388
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/language/ContentLanguageService;

    iput-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 389
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "headline/channel"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 390
    invoke-virtual {v0}, Lcom/narvii/util/deviceid/DeviceIDService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "deviceID"

    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 391
    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 393
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 394
    new-instance v2, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;

    const-class v3, Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private updateHeadlineChannelView()V
    .locals 5

    .line 420
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 421
    :goto_0
    iget-object v3, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->error:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v1, v3

    .line 422
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 423
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 425
    :cond_2
    iget-object v3, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->progressView:Lcom/narvii/widget/SpinningView;

    const/16 v4, 0x8

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->errorView:Landroid/view/View;

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;
    .locals 2

    .line 209
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->itemList:Ljava/util/ArrayList;

    .line 210
    new-instance p1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    const-class v0, Ljava/lang/Object;

    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->itemList:Ljava/util/ArrayList;

    invoke-direct {p1, p0, p0, v0, v1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 211
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    return-object p1
.end method

.method public drop(II)V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    if-eqz v0, :cond_1

    .line 458
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->getLocalHeadlineCategory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_1

    return-void

    .line 468
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/DragSortListFragment;->drop(II)V

    .line 469
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 470
    iget-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    invoke-virtual {p2}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    add-int/lit8 p1, p1, -0x2

    if-lt p2, p1, :cond_2

    .line 472
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    iget-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 474
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->allowForceSave:Z

    .line 380
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->sendHeadlineChannelRequest()V

    .line 381
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 383
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    .line 91
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->sendHeadlineChannelRequest()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 96
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string v1, "channelResponse"

    .line 98
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    iput-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    .line 100
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    iget-object v2, v1, Lcom/narvii/headlines/category/HeadLineChannelListResponse;->activeChannelList:Ljava/util/List;

    iput-object v2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->activeChannel:Ljava/util/List;

    .line 101
    iget-object v1, v1, Lcom/narvii/headlines/category/HeadLineChannelListResponse;->inactiveChannelList:Ljava/util/List;

    iput-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveChannel:Ljava/util/List;

    .line 102
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveChannel:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->containInactiveOrg:Z

    const-string v1, "curLanguage"

    .line 103
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->curLanguage:Ljava/lang/String;

    :cond_1
    const-string p1, "account"

    .line 105
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 106
    new-instance p1, Lcom/narvii/util/PreferencesHelper;

    invoke-direct {p1, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    const p1, 0x7f0f0b1f

    .line 107
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 108
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 109
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f090048

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 110
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080264

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    new-instance v1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$1;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const-string p1, "content_language"

    .line 122
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 123
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 158
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f03aa

    const/4 v0, 0x0

    .line 159
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080384

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0331

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 187
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 188
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 p2, 0x0

    .line 189
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f03aa

    if-ne v0, v1, :cond_2

    .line 171
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->isChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->allowForceSave:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 172
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->saveChange()V

    .line 177
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 164
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f0f03aa

    .line 165
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->isChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->allowForceSave:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f080385

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x7f080384

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->isChanged()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->allowForceSave:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 153
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 200
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 201
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    if-eqz v0, :cond_0

    .line 202
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "channelResponse"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->curLanguage:Ljava/lang/String;

    const-string v1, "curLanguage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 133
    invoke-super {p0, p1, p2}, Lcom/narvii/list/DragSortListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x102000d

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/SpinningView;

    iput-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->progressView:Lcom/narvii/widget/SpinningView;

    .line 135
    iget-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->progressView:Lcom/narvii/widget/SpinningView;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    const p2, 0x7f0903fc

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->errorView:Landroid/view/View;

    const p2, 0x7f09097a

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->retryView:Landroid/view/View;

    .line 138
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->retryView:Landroid/view/View;

    new-instance p2, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$2;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->updateHeadlineChannelView()V

    .line 145
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    invoke-static {p1}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroid/support/v4/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 4

    .line 441
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 442
    invoke-super {p0, p1}, Lcom/narvii/list/DragSortListFragment;->remove(I)V

    .line 444
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object p1

    .line 445
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    iget-object v2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/narvii/list/NVArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 448
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, v0, p1}, Lcom/narvii/list/NVArrayAdapter;->insert(Ljava/lang/Object;I)V

    goto :goto_0

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, v0, p1}, Lcom/narvii/list/NVArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 452
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    return-void
.end method
