.class public Lcom/narvii/chat/ChatListView;
.super Lcom/narvii/widget/NVListView;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    const-string v0, "mLayoutMode"

    .line 17
    .line 18
    .line 19
    invoke-static {p2, v0}, Lcom/narvii/chat/ChatListView;->searchField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    iput-object p2, p0, Lcom/narvii/chat/ChatListView;->fLayoutMode:Ljava/lang/reflect/Field;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    const-string v0, "mSyncPosition"

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v0}, Lcom/narvii/chat/ChatListView;->searchField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    iput-object p2, p0, Lcom/narvii/chat/ChatListView;->fSyncPosition:Ljava/lang/reflect/Field;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    const-string v0, "mSpecificTop"

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v0}, Lcom/narvii/chat/ChatListView;->searchField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    iput-object p2, p0, Lcom/narvii/chat/ChatListView;->fSpecificTop:Ljava/lang/reflect/Field;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    const-string v0, "mNextSelectedPosition"

    .line 62
    .line 63
    .line 64
    invoke-static {p2, v0}, Lcom/narvii/chat/ChatListView;->searchField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    iput-object p2, p0, Lcom/narvii/chat/ChatListView;->fNextSelectedPosition:Ljava/lang/reflect/Field;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 71
    .line 72
    iput-boolean p1, p0, Lcom/narvii/chat/ChatListView;->fInited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p1

    .line 75
    .line 76
    const-string p2, "fail to hack ChatListView"

    .line 77
    .line 78
    .line 79
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
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

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    .line 7
    .line 8
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatListView;->searchField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    .line 18
    :cond_0
    new-instance p0, Ljava/lang/NoSuchFieldException;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0
.end method


# virtual methods
.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 12
    move-result v0

    .line 13
    .line 14
    :goto_0
    if-ltz p1, :cond_1

    .line 15
    .line 16
    if-ge p1, v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-super {p0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method

.method public getItemIdAtPosition(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 12
    move-result v0

    .line 13
    .line 14
    :goto_0
    if-ltz p1, :cond_1

    .line 15
    .line 16
    if-ge p1, v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-super {p0, p1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    .line 23
    :cond_1
    const-wide/high16 v0, -0x8000000000000000L

    .line 24
    return-wide v0
.end method

.method protected layoutChildren()V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/ChatListView;->fInited:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/ChatListView;->fLayoutMode:Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x5

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    move-result v2

    .line 28
    .line 29
    if-lez v2, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 33
    move-result v2

    .line 34
    .line 35
    add-int/lit8 v2, v2, -0x1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 43
    move-result v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v2, 0x0

    .line 46
    .line 47
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/ChatListView;->fLayoutMode:Ljava/lang/reflect/Field;

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    iget-object v3, p0, Lcom/narvii/chat/ChatListView;->fSyncPosition:Ljava/lang/reflect/Field;

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/chat/ChatListView;->fSpecificTop:Ljava/lang/reflect/Field;

    .line 66
    .line 67
    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/ChatListView;->fLayoutMode:Ljava/lang/reflect/Field;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    check-cast v0, Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 84
    move-result v0

    .line 85
    .line 86
    if-ne v0, v1, :cond_2

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/chat/ChatListView;->fNextSelectedPosition:Ljava/lang/reflect/Field;

    .line 89
    const/4 v1, -0x1

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    :catch_0
    :cond_2
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 100
    return-void
.end method

.method public setRevertedSwipeRefreshEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/ChatListView;->isRevertedSwipeRefreshEnabled:Z

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/ChatListView;->isRevertedSwipeRefreshEnabled:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/narvii/widget/NVListView;->startNestedScroll(I)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method
