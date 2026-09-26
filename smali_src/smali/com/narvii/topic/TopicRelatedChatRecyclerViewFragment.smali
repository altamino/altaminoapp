.class public Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment$ChatListAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const/high16 v1, 0x41700000    # 15.0f

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 10
    move-result v4

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    move-object v2, v0

    .line 17
    move-object v3, p0

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v2 .. v7}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 21
    .line 22
    new-instance v1, Lcom/narvii/topic/model/discover/ContentModule;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Lcom/narvii/topic/model/discover/ContentModule;-><init>()V

    .line 26
    .line 27
    const-string v2, "key_topic_id"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 31
    move-result v2

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v4, "topic/"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "/feed/chat"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    iput-object v2, v1, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v2, Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment$ChatListAdapter;

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, p0, p0, v1}, Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment$ChatListAdapter;-><init>(Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment;Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 62
    const/4 v1, 0x2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V

    .line 66
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo v0, "topic_chats"

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    const p1, 0x7f0d04c8

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->setGlobalEmptyView(I)Landroid/view/View;

    .line 16
    return-void
.end method
