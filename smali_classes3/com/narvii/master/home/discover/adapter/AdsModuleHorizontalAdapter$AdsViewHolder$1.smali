.class public final Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "AdsModuleHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder$1;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 139
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder$1;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;

    invoke-static {p2, p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->access$maybeNotifySnapPositionChange(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method
