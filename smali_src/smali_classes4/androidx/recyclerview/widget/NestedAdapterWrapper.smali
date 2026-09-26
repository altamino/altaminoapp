.class Landroidx/recyclerview/widget/NestedAdapterWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;
    }
.end annotation


# instance fields
.field public final adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field mCachedItemCount:I

.field final mCallback:Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;

.field private final mStableIdLookup:Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mViewTypeLookup:Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;Landroidx/recyclerview/widget/ViewTypeStorage;Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;",
            "Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;",
            "Landroidx/recyclerview/widget/ViewTypeStorage;",
            "Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/NestedAdapterWrapper$1;-><init>(Landroidx/recyclerview/widget/NestedAdapterWrapper;)V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 13
    .line 14
    iput-object p2, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    .line 15
    .line 16
    .line 17
    invoke-interface {p3, p0}, Landroidx/recyclerview/widget/ViewTypeStorage;->b(Landroidx/recyclerview/widget/NestedAdapterWrapper;)Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    iput-object p2, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mViewTypeLookup:Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    .line 21
    .line 22
    iput-object p4, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mStableIdLookup:Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 26
    move-result p2

    .line 27
    .line 28
    iput p2, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 29
    .line 30
    iget-object p2, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 34
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    return v0
.end method

.method public b(I)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mStableIdLookup:Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0, v1}, Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;->a(J)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method c(I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mViewTypeLookup:Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 8
    move-result p1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;->a(I)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 6
    return-void
.end method

.method e(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mViewTypeLookup:Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;->b(I)I

    .line 6
    move-result p2

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
