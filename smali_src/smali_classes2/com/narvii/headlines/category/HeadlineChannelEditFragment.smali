.class public Lcom/narvii/headlines/category/HeadlineChannelEditFragment;
.super Lcom/narvii/list/DragSortListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;,
        Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;,
        Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelManager;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/DragSortListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 6
    .line 7
    .line 8
    const v1, 0x7f120807

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;I)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 16
    .line 17
    .line 18
    const v1, 0x7f120806

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;I)V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->activeSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 24
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->activeChannel:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->containInactiveOrg:Z

    return-void
.end method

.method static bridge synthetic C(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->error:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic D(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveChannel:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic E(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->itemList:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->getItemList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic G(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->retry()V

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->saveChange()V

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->updateHeadlineChannelView()V

    return-void
.end method

.method static bridge synthetic J()I
    .locals 1

    .line 1
    sget v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->CHANEL_STATUS_ACTIVE:I

    return v0
.end method

.method static bridge synthetic K()I
    .locals 1

    .line 1
    sget v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->CHANEL_STATUS_INACTIVE:I

    return v0
.end method

.method static bridge synthetic L()I
    .locals 1

    .line 1
    sget v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->CHANEL_STATUS_NONE:I

    return v0
.end method

.method private getItemList()Ljava/util/ArrayList;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->activeSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v1, Lcom/narvii/headlines/category/HeadLineChannelListResponse;->activeChannelList:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->getLocalHeadlineCategory()Ljava/util/List;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/narvii/headlines/category/HeadLineChannelListResponse;->activeChannelList:Ljava/util/List;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    :cond_0
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/narvii/headlines/category/HeadLineChannelListResponse;->inactiveChannelList:Ljava/util/List;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 42
    move-result v1

    .line 43
    .line 44
    if-lez v1, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/narvii/headlines/category/HeadLineChannelListResponse;->inactiveChannelList:Ljava/util/List;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    .line 58
    :cond_1
    new-instance v1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelManager;

    .line 59
    .line 60
    .line 61
    const v2, 0x7f120be8

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, p0, v2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelManager;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    sget-object v1, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_HOT:Lcom/narvii/headlines/category/HeadLineChannel;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    sget-object v1, Lcom/narvii/headlines/category/HeadLineChannel;->CATEGORY_MY_AMINOS:Lcom/narvii/headlines/category/HeadLineChannel;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    return-object v0
.end method

.method private isChanged()Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->activeChannel:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveChannel:Ljava/util/List;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v3

    .line 31
    move v4, v1

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x1

    .line 37
    .line 38
    if-eqz v5, :cond_4

    .line 39
    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    iget-object v7, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 45
    .line 46
    if-ne v5, v7, :cond_2

    .line 47
    move v4, v6

    .line 48
    .line 49
    :cond_2
    instance-of v6, v5, Lcom/narvii/headlines/category/HeadLineChannel;

    .line 50
    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    check-cast v5, Lcom/narvii/headlines/category/HeadLineChannel;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Lcom/narvii/headlines/category/HeadLineChannel;->isLocalChannel()Z

    .line 57
    move-result v6

    .line 58
    .line 59
    if-nez v6, :cond_1

    .line 60
    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    iget-object v5, v5, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_3
    iget-object v5, v5, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_4
    iget-boolean v3, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->containInactiveOrg:Z

    .line 76
    .line 77
    iget-object v4, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 81
    move-result-object v4

    .line 82
    .line 83
    iget-object v5, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 84
    .line 85
    .line 86
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 87
    move-result v4

    .line 88
    xor-int/2addr v3, v4

    .line 89
    .line 90
    if-eqz v3, :cond_5

    .line 91
    return v6

    .line 92
    .line 93
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    new-instance v4, Ljava/util/ArrayList;

    .line 99
    .line 100
    .line 101
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    iget-object v5, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->activeChannel:Ljava/util/List;

    .line 104
    .line 105
    if-eqz v5, :cond_6

    .line 106
    .line 107
    .line 108
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 109
    move-result-object v5

    .line 110
    .line 111
    .line 112
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    move-result v7

    .line 114
    .line 115
    if-eqz v7, :cond_6

    .line 116
    .line 117
    .line 118
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    move-result-object v7

    .line 120
    .line 121
    check-cast v7, Lcom/narvii/headlines/category/HeadLineChannel;

    .line 122
    .line 123
    iget-object v7, v7, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    goto :goto_1

    .line 128
    .line 129
    :cond_6
    iget-object v5, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveChannel:Ljava/util/List;

    .line 130
    .line 131
    if-eqz v5, :cond_7

    .line 132
    .line 133
    .line 134
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 135
    move-result-object v5

    .line 136
    .line 137
    .line 138
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    move-result v7

    .line 140
    .line 141
    if-eqz v7, :cond_7

    .line 142
    .line 143
    .line 144
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v7

    .line 146
    .line 147
    check-cast v7, Lcom/narvii/headlines/category/HeadLineChannel;

    .line 148
    .line 149
    iget-object v7, v7, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    goto :goto_2

    .line 154
    .line 155
    .line 156
    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v0

    .line 158
    .line 159
    if-eqz v0, :cond_8

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 163
    move-result v0

    .line 164
    .line 165
    if-nez v0, :cond_9

    .line 166
    :cond_8
    move v1, v6

    .line 167
    :cond_9
    return v1
.end method

.method private retry()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->error:Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->updateHeadlineChannelView()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->sendHeadlineChannelRequest()V

    .line 10
    return-void
.end method

.method private saveChange()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    new-instance v3, Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    iget-object v4, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 34
    .line 35
    .line 36
    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x0

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 42
    move-result v6

    .line 43
    .line 44
    if-ge v5, v6, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v6

    .line 49
    .line 50
    instance-of v7, v6, Lcom/narvii/headlines/category/HeadLineChannel;

    .line 51
    .line 52
    if-eqz v7, :cond_2

    .line 53
    .line 54
    check-cast v6, Lcom/narvii/headlines/category/HeadLineChannel;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Lcom/narvii/headlines/category/HeadLineChannel;->isLocalChannel()Z

    .line 58
    move-result v7

    .line 59
    .line 60
    if-nez v7, :cond_2

    .line 61
    .line 62
    if-ltz v4, :cond_1

    .line 63
    .line 64
    if-le v5, v4, :cond_1

    .line 65
    .line 66
    iget-object v6, v6, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v6}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_1
    iget-object v7, v6, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 76
    .line 77
    .line 78
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_3
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 87
    move-result-object v4

    .line 88
    .line 89
    .line 90
    invoke-direct {v2, v4}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 97
    move-result-object v4

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 101
    move-result-object v4

    .line 102
    .line 103
    const-string v5, "/headline/channel"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 107
    move-result-object v4

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 111
    move-result-object v5

    .line 112
    .line 113
    const-string v6, "activeChannelIdList"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v6, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 117
    .line 118
    const-string v0, "inactiveChannelIdList"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 122
    .line 123
    sget-object v0, La0/a;->o:Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    invoke-static {}, La0/b;->k()Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 131
    .line 132
    const-string v0, "language"

    .line 133
    .line 134
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->curLanguage:Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 141
    .line 142
    const-string v0, "api"

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 149
    .line 150
    new-instance v1, Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 157
    move-result-object v3

    .line 158
    .line 159
    new-instance v4, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$4;

    .line 160
    .line 161
    const-class v5, Lcom/narvii/model/api/ApiResponse;

    .line 162
    .line 163
    .line 164
    invoke-direct {v4, p0, v5, v1, v2}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$4;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/lang/Class;Ljava/util/List;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v3, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 168
    :cond_4
    :goto_2
    return-void
.end method

.method private sendHeadlineChannelRequest()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "content_language"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "headline/channel"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    sget-object v1, La0/a;->o:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-static {}, La0/b;->k()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    const-string v2, "language"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    const-string v1, "api"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 60
    .line 61
    new-instance v2, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;

    .line 62
    .line 63
    const-class v3, Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, p0, v3}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$3;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Ljava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 70
    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->allowForceSave:Z

    return p0
.end method

.method private updateHeadlineChannelView()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    .line 11
    :goto_0
    iget-object v3, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->error:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v3

    .line 16
    xor-int/2addr v1, v3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    move v4, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v4, 0x4

    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    :cond_2
    iget-object v3, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->progressView:Lcom/narvii/widget/SpinningView;

    .line 37
    .line 38
    const/16 v4, 0x8

    .line 39
    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    move v0, v2

    .line 45
    goto :goto_3

    .line 46
    :cond_4
    :goto_2
    move v0, v4

    .line 47
    .line 48
    .line 49
    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->errorView:Landroid/view/View;

    .line 52
    .line 53
    if-eqz v1, :cond_5

    .line 54
    goto :goto_4

    .line 55
    :cond_5
    move v2, v4

    .line 56
    .line 57
    .line 58
    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->error:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveChannel:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->itemList:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->itemList:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    const-class v0, Ljava/lang/Object;

    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->itemList:Ljava/util/ArrayList;

    invoke-direct {p1, p0, p0, v0, v1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    return-object p1
.end method

.method public drop(II)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->getLocalHeadlineCategory()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-gt p2, v0, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    move-result v0

    .line 34
    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    if-lt p2, v0, :cond_1

    .line 38
    return-void

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/DragSortListFragment;->drop(II)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 51
    move-result p1

    .line 52
    .line 53
    iget-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 60
    .line 61
    .line 62
    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 63
    move-result p2

    .line 64
    .line 65
    add-int/lit8 p1, p1, -0x2

    .line 66
    .line 67
    if-lt p2, p1, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 70
    .line 71
    iget-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lcom/narvii/list/NVArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 78
    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x66

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->allowForceSave:Z

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->sendHeadlineChannelRequest()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 20
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->sendHeadlineChannelRequest()V

    .line 7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    const-string v1, "channelResponse"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-class v2, Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/narvii/headlines/category/HeadLineChannelListResponse;->activeChannelList:Ljava/util/List;

    .line 25
    .line 26
    iput-object v2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->activeChannel:Ljava/util/List;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/narvii/headlines/category/HeadLineChannelListResponse;->inactiveChannelList:Ljava/util/List;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveChannel:Ljava/util/List;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 36
    move-result v1

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    move v1, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    .line 43
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->containInactiveOrg:Z

    .line 44
    .line 45
    const-string v1, "curLanguage"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->curLanguage:Ljava/lang/String;

    .line 52
    .line 53
    :cond_1
    const-string p1, "account"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 62
    .line 63
    new-instance p1, Lcom/narvii/util/PreferencesHelper;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 67
    .line 68
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 69
    .line 70
    .line 71
    const p1, 0x7f120be3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    const v1, 0x7f0a0079

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    check-cast p1, Landroid/widget/ImageView;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    .line 116
    const v2, 0x7f080369

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    .line 125
    new-instance v1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$1;

    .line 126
    .line 127
    .line 128
    invoke-direct {v1, p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$1;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    :cond_2
    const-string p1, "content_language"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    .line 140
    .line 141
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 145
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f120402

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    const p2, 0x7f08049d

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 18
    move-result-object p1

    .line 19
    const/4 p2, 0x2

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 23
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0363

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f120402

    .line 8
    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->isChanged()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->allowForceSave:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->saveChange()V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f120402

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->isChanged()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->allowForceSave:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    const v0, 0x7f08049e

    .line 25
    goto :goto_1

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    const v0, 0x7f08049d

    .line 29
    .line 30
    .line 31
    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->isChanged()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->allowForceSave:Z

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 47
    .line 48
    .line 49
    :goto_3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 50
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->headLineCategoryListResponse:Lcom/narvii/headlines/category/HeadLineChannelListResponse;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "channelResponse"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    :cond_0
    const-string v0, "curLanguage"

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->curLanguage:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/DragSortListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x102000d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/widget/SpinningView;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->progressView:Lcom/narvii/widget/SpinningView;

    .line 15
    const/4 v0, -0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 19
    .line 20
    .line 21
    const p2, 0x7f0a04fe

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    iput-object p2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->errorView:Landroid/view/View;

    .line 28
    .line 29
    .line 30
    const p2, 0x7f0a0c38

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->retryView:Landroid/view/View;

    .line 37
    .line 38
    new-instance p2, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$2;

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$2;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->updateHeadlineChannelView()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroidx/fragment/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    .line 57
    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/narvii/list/DragSortListFragment;->remove(I)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->inactiveSection:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 31
    move-result v3

    .line 32
    .line 33
    add-int/lit8 v3, v3, -0x1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Lcom/narvii/list/NVArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 39
    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 42
    move-result p1

    .line 43
    .line 44
    add-int/lit8 p1, p1, -0x1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0, p1}, Lcom/narvii/list/NVArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->channelAdapter:Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 54
    move-result p1

    .line 55
    .line 56
    add-int/lit8 p1, p1, -0x1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0, p1}, Lcom/narvii/list/NVArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 63
    return-void
.end method
