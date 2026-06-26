.class public abstract Lcom/narvii/item/list/ItemGridExAdapter;
.super Lcom/narvii/item/list/ItemGridAdapter;
.source "ItemGridExAdapter.java"


# instance fields
.field private apiRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private apiRequestTimeStamp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public detailOpenSource:Ljava/lang/String;

.field feedHelper:Lcom/narvii/feed/FeedHelper;

.field final inMyFavoritesMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public itemHelper:Lcom/narvii/item/ItemHelper;

.field private pageTokenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public showPin:Z

.field voteIconView:Landroid/view/View;

.field private voting:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1}, Lcom/narvii/item/list/ItemGridAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->pageTokenList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->apiRequestList:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->apiRequestTimeStamp:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->responseSizeList:Ljava/util/List;

    .line 91
    new-instance v0, Lcom/narvii/item/list/ItemGridExAdapter$1;

    invoke-direct {v0, p0}, Lcom/narvii/item/list/ItemGridExAdapter$1;-><init>(Lcom/narvii/item/list/ItemGridExAdapter;)V

    iput-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->callback:Lcom/narvii/util/Callback;

    .line 59
    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/narvii/item/ItemHelper;

    move-object v1, p1

    check-cast v1, Lcom/narvii/app/NVFragment;

    invoke-direct {v0, v1}, Lcom/narvii/item/ItemHelper;-><init>(Lcom/narvii/app/NVFragment;)V

    iput-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->itemHelper:Lcom/narvii/item/ItemHelper;

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not fragment in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 64
    :goto_0
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v0, p1}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->feedHelper:Lcom/narvii/feed/FeedHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/item/list/ItemGridExAdapter;)Ljava/util/HashSet;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->voting:Ljava/util/HashSet;

    return-object p0
.end method


# virtual methods
.method public addToCategory(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/ItemCategory;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->itemHelper:Lcom/narvii/item/ItemHelper;

    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->callback:Lcom/narvii/util/Callback;

    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/item/ItemHelper;->addToCategory(Ljava/util/List;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/item/list/ItemGridAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 125
    check-cast p1, Lcom/narvii/model/Item;

    .line 127
    iget-boolean p3, p0, Lcom/narvii/item/list/ItemGridExAdapter;->showPin:Z

    const/16 v0, 0x8

    const v1, 0x7f0904e4

    const/4 v2, 0x0

    if-eqz p3, :cond_4

    .line 128
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p3, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p3, 0x7f09083b

    .line 130
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const v3, 0x7f09083c

    .line 131
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 132
    iget-object v4, p0, Lcom/narvii/item/list/ItemGridExAdapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 134
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v4, :cond_1

    const v1, 0x7f0800fc

    goto :goto_1

    :cond_1
    const v1, 0x7f0800fa

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 135
    :goto_2
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_3

    const p1, 0x7f0f0d5f

    goto :goto_3

    :cond_3
    const p1, 0x7f0f0d5d

    .line 136
    :goto_3
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    return-object p2

    .line 139
    :cond_4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p3, 0x7f0904e6

    .line 141
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/VoteIcon;

    .line 142
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    const v1, 0x7f0904e5

    .line 144
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 145
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0ae0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 146
    :cond_5
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0904e7

    .line 147
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 149
    iget-object v4, p0, Lcom/narvii/item/list/ItemGridExAdapter;->voting:Ljava/util/HashSet;

    if-nez v4, :cond_6

    const/4 p1, 0x0

    goto :goto_5

    :cond_6
    iget-object p1, p1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_5
    if-eqz p1, :cond_7

    const/16 v4, 0x8

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    .line 150
    :goto_6
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_8

    const/16 p3, 0x8

    goto :goto_7

    :cond_8
    const/4 p3, 0x0

    .line 151
    :goto_7
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    .line 152
    :cond_9
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method protected layoutId()I
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->showPin:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b0328

    return v0

    :cond_0
    const v0, 0x7f0b0329

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 160
    instance-of v0, p3, Lcom/narvii/model/Item;

    if-eqz v0, :cond_5

    const/4 p1, 0x1

    if-eqz p5, :cond_4

    .line 161
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p4

    const v0, 0x7f0904e4

    if-ne p4, v0, :cond_4

    .line 162
    iget-boolean p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->showPin:Z

    if-eqz p2, :cond_3

    .line 163
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result p2

    if-eqz p2, :cond_0

    return p1

    .line 166
    :cond_0
    iget-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    check-cast p3, Lcom/narvii/model/Item;

    invoke-virtual {p3}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 167
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    .line 169
    iget-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->itemHelper:Lcom/narvii/item/ItemHelper;

    invoke-virtual {p3}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/narvii/item/list/ItemGridExAdapter;->callback:Lcom/narvii/util/Callback;

    invoke-virtual {p2, p3, p4}, Lcom/narvii/item/ItemHelper;->addToMyFavorites(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    goto :goto_1

    .line 171
    :cond_2
    iget-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->feedHelper:Lcom/narvii/feed/FeedHelper;

    invoke-virtual {p2, p3, p1}, Lcom/narvii/feed/FeedHelper;->delete(Lcom/narvii/model/Feed;Z)V

    goto :goto_1

    :cond_3
    const p2, 0x7f0904e6

    .line 174
    invoke-virtual {p5, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->voteIconView:Landroid/view/View;

    .line 175
    new-instance p2, Landroid/content/Intent;

    const-string/jumbo p4, "vote"

    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "item"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    goto :goto_1

    .line 180
    :cond_4
    check-cast p3, Lcom/narvii/model/Item;

    invoke-virtual {p0, p3, p2}, Lcom/narvii/item/list/ItemGridExAdapter;->openItemDetail(Lcom/narvii/model/Item;I)V

    :goto_1
    return p1

    .line 184
    :cond_5
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string/jumbo v1, "voteValue"

    .line 232
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    .line 233
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    const-string v1, "item"

    .line 235
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/model/Item;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Item;

    .line 236
    invoke-virtual {p0, v1, v0}, Lcom/narvii/item/list/ItemGridExAdapter;->vote(Lcom/narvii/model/Item;Ljava/lang/Integer;)V

    .line 239
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 202
    instance-of v0, p3, Lcom/narvii/model/Item;

    if-eqz v0, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904e4

    if-ne v0, v1, :cond_1

    .line 203
    iget-boolean p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->showPin:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const p1, 0x7f0904e6

    .line 206
    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 207
    new-instance p4, Lcom/narvii/feed/vote/VotePopupDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Lcom/narvii/feed/vote/VotePopupDialog;-><init>(Landroid/content/Context;)V

    .line 208
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/Item;

    invoke-virtual {p4, v0}, Lcom/narvii/feed/vote/VotePopupDialog;->setFeed(Lcom/narvii/model/NVObject;)V

    .line 209
    invoke-virtual {p4, p5}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setPosition(Landroid/view/View;)V

    .line 210
    new-instance p5, Lcom/narvii/item/list/ItemGridExAdapter$2;

    invoke-direct {p5, p0, p1, p3}, Lcom/narvii/item/list/ItemGridExAdapter$2;-><init>(Lcom/narvii/item/list/ItemGridExAdapter;Landroid/view/View;Ljava/lang/Object;)V

    invoke-virtual {p4, p5}, Lcom/narvii/feed/vote/VotePopupDialog;->setVoteListener(Lcom/narvii/util/Callback;)V

    .line 220
    invoke-virtual {p4}, Lcom/narvii/app/NVDialog;->show()V

    return p2

    .line 224
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 104
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/Item;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "delete"

    if-ne v1, v2, :cond_0

    .line 106
    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    check-cast v0, Lcom/narvii/model/Item;

    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    .line 112
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/item/ItemPinObject;

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    check-cast v0, Lcom/narvii/item/ItemPinObject;

    invoke-virtual {v0}, Lcom/narvii/item/ItemPinObject;->id()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/item/ItemPinObject;

    iget p1, p1, Lcom/narvii/item/ItemPinObject;->inMyFavorites:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    .line 117
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/item/list/ItemGridAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V
    .locals 4

    .line 281
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 282
    invoke-virtual {p2}, Lcom/narvii/model/api/ItemListResponse;->list()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 283
    invoke-virtual {p2}, Lcom/narvii/model/api/ItemListResponse;->list()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    .line 284
    iget-object v1, p2, Lcom/narvii/model/api/ItemListResponse;->inMyFavoritesMapping:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->inMyFavoritesMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/narvii/model/api/ItemListResponse;->inMyFavoritesMapping:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 296
    :cond_2
    iget-object p3, p0, Lcom/narvii/item/list/ItemGridExAdapter;->apiRequestTimeStamp:Ljava/util/List;

    iget-object v0, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object p3, p0, Lcom/narvii/item/list/ItemGridExAdapter;->apiRequestList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {p2}, Lcom/narvii/model/api/ItemListResponse;->list()Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    .line 301
    invoke-virtual {p2}, Lcom/narvii/model/api/ItemListResponse;->list()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 302
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    .line 304
    :cond_3
    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->responseSizeList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_4

    .line 306
    iget-object p1, p2, Lcom/narvii/model/api/ListResponse;->paging:Lcom/narvii/model/api/Pagination;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 307
    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->pageTokenList:Ljava/util/List;

    iget-object p2, p2, Lcom/narvii/model/api/ListResponse;->paging:Lcom/narvii/model/api/Pagination;

    iget-object p2, p2, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 41
    check-cast p2, Lcom/narvii/model/api/ItemListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/item/list/ItemGridExAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V

    return-void
.end method

.method protected openItemDetail(Lcom/narvii/model/Item;I)V
    .locals 0

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/narvii/item/list/ItemGridExAdapter;->openItemDetailIntent(Lcom/narvii/model/Item;I)Landroid/content/Intent;

    move-result-object p1

    .line 189
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected openItemDetailIntent(Lcom/narvii/model/Item;I)Landroid/content/Intent;
    .locals 8

    .line 193
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 194
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    move-result v3

    iget-object v4, p0, Lcom/narvii/item/list/ItemGridExAdapter;->apiRequestList:Ljava/util/List;

    iget-object v5, p0, Lcom/narvii/item/list/ItemGridExAdapter;->responseSizeList:Ljava/util/List;

    iget-object v6, p0, Lcom/narvii/item/list/ItemGridExAdapter;->pageTokenList:Ljava/util/List;

    iget-object v7, p0, Lcom/narvii/item/list/ItemGridExAdapter;->apiRequestTimeStamp:Ljava/util/List;

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/narvii/feed/FeedHelper;->getFeedContinuousIntent(Lcom/narvii/model/Feed;Ljava/util/List;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    .line 196
    iget-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->detailOpenSource:Ljava/lang/String;

    const-string v0, "Source"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 70
    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->pageTokenList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 71
    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->apiRequestTimeStamp:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 72
    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->responseSizeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 73
    iget-object p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->apiRequestList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public vote(Lcom/narvii/model/Item;Ljava/lang/Integer;)V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->voting:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/narvii/story/detail/VoteHelper;->getTargetVotedValue(Ljava/lang/Integer;Lcom/narvii/model/Feed;Z)I

    move-result p2

    .line 249
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/narvii/util/LiveLayerUtils;->reportVoting(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)V

    const-string v0, "api"

    .line 251
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 254
    new-instance v1, Lcom/narvii/story/detail/VoteHelper;

    invoke-direct {v1, p0}, Lcom/narvii/story/detail/VoteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 257
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/narvii/item/list/ItemGridExAdapter$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/narvii/item/list/ItemGridExAdapter$3;-><init>(Lcom/narvii/item/list/ItemGridExAdapter;Lcom/narvii/model/Item;I)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    .line 272
    iget-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->voting:Ljava/util/HashSet;

    if-nez p2, :cond_1

    .line 273
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->voting:Ljava/util/HashSet;

    .line 275
    :cond_1
    iget-object p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->voting:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
