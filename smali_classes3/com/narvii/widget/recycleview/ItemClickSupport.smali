.class public Lcom/narvii/widget/recycleview/ItemClickSupport;
.super Ljava/lang/Object;
.source "ItemClickSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;,
        Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;
    }
.end annotation


# instance fields
.field private mAttachListener:Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnItemClickListener:Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;

.field private mOnItemLongClickListener:Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/narvii/widget/recycleview/ItemClickSupport$1;

    invoke-direct {v0, p0}, Lcom/narvii/widget/recycleview/ItemClickSupport$1;-><init>(Lcom/narvii/widget/recycleview/ItemClickSupport;)V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 28
    new-instance v0, Lcom/narvii/widget/recycleview/ItemClickSupport$2;

    invoke-direct {v0, p0}, Lcom/narvii/widget/recycleview/ItemClickSupport$2;-><init>(Lcom/narvii/widget/recycleview/ItemClickSupport;)V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 41
    new-instance v0, Lcom/narvii/widget/recycleview/ItemClickSupport$3;

    invoke-direct {v0, p0}, Lcom/narvii/widget/recycleview/ItemClickSupport$3;-><init>(Lcom/narvii/widget/recycleview/ItemClickSupport;)V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mAttachListener:Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 60
    iput-object p1, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 61
    iget-object p1, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    sget v0, Lcom/narvii/lib/R$id;->item_click_support:I

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 62
    iget-object p1, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mAttachListener:Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/recycleview/ItemClickSupport;)Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mOnItemClickListener:Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/widget/recycleview/ItemClickSupport;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/widget/recycleview/ItemClickSupport;)Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mOnItemLongClickListener:Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/widget/recycleview/ItemClickSupport;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/widget/recycleview/ItemClickSupport;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method public static addTo(Landroid/support/v7/widget/RecyclerView;)Lcom/narvii/widget/recycleview/ItemClickSupport;
    .locals 1

    .line 66
    sget v0, Lcom/narvii/lib/R$id;->item_click_support:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/recycleview/ItemClickSupport;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/narvii/widget/recycleview/ItemClickSupport;

    invoke-direct {v0, p0}, Lcom/narvii/widget/recycleview/ItemClickSupport;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    return-object v0
.end method

.method private detach(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mAttachListener:Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 93
    sget v0, Lcom/narvii/lib/R$id;->item_click_support:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static removeFrom(Landroid/support/v7/widget/RecyclerView;)Lcom/narvii/widget/recycleview/ItemClickSupport;
    .locals 1

    .line 74
    sget v0, Lcom/narvii/lib/R$id;->item_click_support:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/recycleview/ItemClickSupport;

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {v0, p0}, Lcom/narvii/widget/recycleview/ItemClickSupport;->detach(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public setOnItemClickListener(Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;)Lcom/narvii/widget/recycleview/ItemClickSupport;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mOnItemClickListener:Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;

    return-object p0
.end method

.method public setOnItemLongClickListener(Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;)Lcom/narvii/widget/recycleview/ItemClickSupport;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/narvii/widget/recycleview/ItemClickSupport;->mOnItemLongClickListener:Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;

    return-object p0
.end method
