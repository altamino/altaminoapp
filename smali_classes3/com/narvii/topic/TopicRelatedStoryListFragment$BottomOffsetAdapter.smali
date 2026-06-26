.class public final Lcom/narvii/topic/TopicRelatedStoryListFragment$BottomOffsetAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "TopicRelatedStoryListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/TopicRelatedStoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BottomOffsetAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/TopicRelatedStoryListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/TopicRelatedStoryListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment$BottomOffsetAdapter;->this$0:Lcom/narvii/topic/TopicRelatedStoryListFragment;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance p2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance p1, Lcom/narvii/widget/recycleview/StaticViewHolder;

    invoke-direct {p1, p2}, Lcom/narvii/widget/recycleview/StaticViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
