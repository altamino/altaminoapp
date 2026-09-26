.class public Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field mAttachCountForClearing:I

.field mAttachedAdaptersForPoolingContainer:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;>;"
        }
    .end annotation
.end field

.field mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    .line 14
    .line 15
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachedAdaptersForPoolingContainer:Ljava/util/Set;

    .line 25
    return-void
.end method

.method private i(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;-><init>()V

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    :cond_0
    return-object v0
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachedAdaptersForPoolingContainer:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v3

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 36
    .line 37
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Landroidx/customview/poolingcontainer/PoolingContainer;->b(Landroid/view/View;)V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_0
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method

.method d()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    return-void
.end method

.method e(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachedAdaptersForPoolingContainer:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachedAdaptersForPoolingContainer:Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 11
    move-result p1

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    const/4 p1, 0x0

    .line 17
    move p2, p1

    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 23
    move-result v0

    .line 24
    .line 25
    if-ge p2, v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 31
    move-result v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 40
    move v1, p1

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 44
    move-result v2

    .line 45
    .line 46
    if-ge v1, v2, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 53
    .line 54
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Landroidx/customview/poolingcontainer/PoolingContainer;->b(Landroid/view/View;)V

    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method f(IJ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->i(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->l(JJ)J

    .line 10
    move-result-wide p2

    .line 11
    .line 12
    iput-wide p2, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 13
    return-void
.end method

.method g(IJ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->i(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->l(JJ)J

    .line 10
    move-result-wide p2

    .line 11
    .line 12
    iput-wide p2, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 13
    return-void
.end method

.method public h(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v0

    .line 25
    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    :goto_0
    if-ltz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 47
    return-object p1

    .line 48
    .line 49
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method

.method j(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->d()V

    .line 6
    .line 7
    :cond_0
    if-nez p3, :cond_1

    .line 8
    .line 9
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->c()V

    .line 15
    .line 16
    :cond_1
    if-eqz p2, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->a()V

    .line 20
    :cond_2
    return-void
.end method

.method public k(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->i(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 19
    .line 20
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v2

    .line 25
    .line 26
    if-gt v0, v2, :cond_0

    .line 27
    .line 28
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Landroidx/customview/poolingcontainer/PoolingContainer;->b(Landroid/view/View;)V

    .line 32
    return-void

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method l(JJ)J
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-wide p3

    .line 8
    .line 9
    :cond_0
    const-wide/16 v0, 0x4

    .line 10
    div-long/2addr p1, v0

    .line 11
    .line 12
    const-wide/16 v2, 0x3

    .line 13
    mul-long/2addr p1, v2

    .line 14
    div-long/2addr p3, v0

    .line 15
    add-long/2addr p1, p3

    .line 16
    return-wide p1
.end method

.method m(IJJ)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->i(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long p1, v0, v2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    add-long/2addr p2, v0

    .line 14
    .line 15
    cmp-long p1, p2, p4

    .line 16
    .line 17
    if-gez p1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 22
    :goto_1
    return p1
.end method

.method n(IJJ)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->i(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long p1, v0, v2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    add-long/2addr p2, v0

    .line 14
    .line 15
    cmp-long p1, p2, p4

    .line 16
    .line 17
    if-gez p1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 22
    :goto_1
    return p1
.end method
