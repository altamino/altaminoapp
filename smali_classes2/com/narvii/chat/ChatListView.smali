.class public Lcom/narvii/chat/ChatListView;
.super Lcom/narvii/widget/NVListView;
.source "ChatListView.java"


# instance fields
.field fInited:Z

.field fLayoutMode:Ljava/lang/reflect/Field;

.field fNextSelectedPosition:Ljava/lang/reflect/Field;

.field fSpecificTop:Ljava/lang/reflect/Field;

.field fSyncPosition:Ljava/lang/reflect/Field;

.field isRevertedSwipeRefreshEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 26
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "mLayoutMode"

    invoke-static {p2, v0}, Lcom/narvii/chat/ChatListView;->searchField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/ChatListView;->fLayoutMode:Ljava/lang/reflect/Field;

    .line 27
    iget-object p2, p0, Lcom/narvii/chat/ChatListView;->fLayoutMode:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "mSyncPosition"

    invoke-static {p2, v0}, Lcom/narvii/chat/ChatListView;->searchField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/ChatListView;->fSyncPosition:Ljava/lang/reflect/Field;

    .line 29
    iget-object p2, p0, Lcom/narvii/chat/ChatListView;->fSyncPosition:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "mSpecificTop"

    invoke-static {p2, v0}, Lcom/narvii/chat/ChatListView;->searchField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/ChatListView;->fSpecificTop:Ljava/lang/reflect/Field;

    .line 31
    iget-object p2, p0, Lcom/narvii/chat/ChatListView;->fSpecificTop:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "mNextSelectedPosition"

    invoke-static {p2, v0}, Lcom/narvii/chat/ChatListView;->searchField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/ChatListView;->fNextSelectedPosition:Ljava/lang/reflect/Field;

    .line 33
    iget-object p2, p0, Lcom/narvii/chat/ChatListView;->fNextSelectedPosition:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 34
    iput-boolean p1, p0, Lcom/narvii/chat/ChatListView;->fInited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "fail to hack ChatListView"

    .line 36
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static searchField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 107
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 109
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 113
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatListView;->searchField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0

    .line 111
    :cond_0
    new-instance p0, Ljava/lang/NoSuchFieldException;

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 1

    .line 53
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    :goto_0
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 56
    invoke-super {p0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemIdAtPosition(I)J
    .locals 2

    .line 64
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    :goto_0
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 67
    invoke-super {p0, p1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method protected layoutChildren()V
    .locals 5

    .line 75
    iget-boolean v0, p0, Lcom/narvii/chat/ChatListView;->fInited:Z

    if-eqz v0, :cond_2

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/ChatListView;->fLayoutMode:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 83
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 90
    :cond_0
    iget-object v3, p0, Lcom/narvii/chat/ChatListView;->fLayoutMode:Ljava/lang/reflect/Field;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    iget-object v3, p0, Lcom/narvii/chat/ChatListView;->fSyncPosition:Ljava/lang/reflect/Field;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/narvii/chat/ChatListView;->fSpecificTop:Ljava/lang/reflect/Field;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/ChatListView;->fLayoutMode:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 95
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 96
    iget-object v0, p0, Lcom/narvii/chat/ChatListView;->fNextSelectedPosition:Ljava/lang/reflect/Field;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :catch_0
    :cond_2
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    return-void
.end method

.method public setRevertedSwipeRefreshEnabled(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/narvii/chat/ChatListView;->isRevertedSwipeRefreshEnabled:Z

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/narvii/chat/ChatListView;->isRevertedSwipeRefreshEnabled:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/narvii/widget/NVListView;->startNestedScroll(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
