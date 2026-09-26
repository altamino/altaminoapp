.class public Lcom/narvii/widget/recycleview/ItemClickSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;,
        Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;
    }
.end annotation


# instance fields
.field private mAttachListener:Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnItemClickListener:Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;

.field private mOnItemLongClickListener:Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/widget/recycleview/ItemClickSupport$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/widget/recycleview/ItemClickSupport$1;-><init>(Lcom/narvii/widget/recycleview/ItemClickSupport;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/widget/recycleview/ItemClickSupport$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/widget/recycleview/ItemClickSupport$2;-><init>(Lcom/narvii/widget/recycleview/ItemClickSupport;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/widget/recycleview/ItemClickSupport$3;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/widget/recycleview/ItemClickSupport$3;-><init>(Lcom/narvii/widget/recycleview/ItemClickSupport;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mAttachListener:Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    sget v0, Lcom/narvii/lib/R$id;->item_click_support:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mAttachListener:Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 37
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/recycleview/ItemClickSupport;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static addTo(Landroidx/recyclerview/widget/RecyclerView;)Lcom/narvii/widget/recycleview/ItemClickSupport;
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->item_click_support:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/recycleview/ItemClickSupport;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/widget/recycleview/ItemClickSupport;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/widget/recycleview/ItemClickSupport;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 16
    :cond_0
    return-object v0
.end method

.method static bridge synthetic b(Lcom/narvii/widget/recycleview/ItemClickSupport;)Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mOnItemClickListener:Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/recycleview/ItemClickSupport;)Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mOnItemLongClickListener:Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/widget/recycleview/ItemClickSupport;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method private detach(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mAttachListener:Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 6
    .line 7
    sget v0, Lcom/narvii/lib/R$id;->item_click_support:I

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 12
    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/widget/recycleview/ItemClickSupport;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static removeFrom(Landroidx/recyclerview/widget/RecyclerView;)Lcom/narvii/widget/recycleview/ItemClickSupport;
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->item_click_support:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/recycleview/ItemClickSupport;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/narvii/widget/recycleview/ItemClickSupport;->detach(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 14
    :cond_0
    return-object v0
.end method


# virtual methods
.method public setOnItemClickListener(Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;)Lcom/narvii/widget/recycleview/ItemClickSupport;
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mOnItemClickListener:Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;

    return-object p0
.end method

.method public setOnItemLongClickListener(Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;)Lcom/narvii/widget/recycleview/ItemClickSupport;
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mOnItemLongClickListener:Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;

    return-object p0
.end method
