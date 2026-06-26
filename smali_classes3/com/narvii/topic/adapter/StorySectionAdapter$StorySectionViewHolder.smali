.class public final Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "StorySectionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/StorySectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StorySectionViewHolder"
.end annotation


# instance fields
.field private sectionItemView:Lcom/narvii/topic/widgets/StorySectionItemView;

.field private storySections:Lcom/narvii/topic/model/StorySections;

.field final synthetic this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/StorySectionAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 109
    new-instance p1, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder$listener$1;

    invoke-direct {p1, p0}, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder$listener$1;-><init>(Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;)V

    const v0, 0x7f090aec

    .line 121
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/topic/widgets/StorySectionItemView;

    iput-object p2, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;->sectionItemView:Lcom/narvii/topic/widgets/StorySectionItemView;

    .line 122
    iget-object p2, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;->sectionItemView:Lcom/narvii/topic/widgets/StorySectionItemView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->setListener(Lcom/narvii/topic/widgets/StorySectionItemView$OptionClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bindSection(Lcom/narvii/topic/model/StorySections;)V
    .locals 3

    .line 126
    iput-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;->storySections:Lcom/narvii/topic/model/StorySections;

    .line 127
    iget-object v0, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;->sectionItemView:Lcom/narvii/topic/widgets/StorySectionItemView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;

    invoke-static {v1}, Lcom/narvii/topic/adapter/StorySectionAdapter;->access$getContext$p(Lcom/narvii/topic/adapter/StorySectionAdapter;)Lcom/narvii/app/NVContext;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;

    invoke-virtual {v2}, Lcom/narvii/topic/adapter/StorySectionAdapter;->getTopicId()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->setSection(Lcom/narvii/app/NVContext;ILcom/narvii/topic/model/StorySections;)V

    :cond_0
    return-void
.end method

.method public final getSectionItemView()Lcom/narvii/topic/widgets/StorySectionItemView;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;->sectionItemView:Lcom/narvii/topic/widgets/StorySectionItemView;

    return-object v0
.end method

.method public final getStorySections()Lcom/narvii/topic/model/StorySections;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;->storySections:Lcom/narvii/topic/model/StorySections;

    return-object v0
.end method

.method public final setSectionItemView(Lcom/narvii/topic/widgets/StorySectionItemView;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;->sectionItemView:Lcom/narvii/topic/widgets/StorySectionItemView;

    return-void
.end method

.method public final setStorySections(Lcom/narvii/topic/model/StorySections;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;->storySections:Lcom/narvii/topic/model/StorySections;

    return-void
.end method
