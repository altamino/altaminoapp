.class final Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder$2;
.super Ljava/lang/Object;
.source "AdsModuleHorizontalAdapter.kt"

# interfaces
.implements Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder$2;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCurrPositionChanged(I)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder$2;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;

    invoke-static {v0, p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->access$setCurrentSnapPos$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;I)V

    .line 147
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder$2;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;

    iget-object p1, p1, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getAdsModuleIndicator$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/widgets/AdsModuleIndicator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder$2;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->access$getCurrentSnapPos$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder$2;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;

    iget-object v1, v1, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-static {v1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$getInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->setSelectedIndex(I)V

    :cond_0
    return-void
.end method
