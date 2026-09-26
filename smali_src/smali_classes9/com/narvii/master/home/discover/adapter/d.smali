.class public final synthetic Lcom/narvii/master/home/discover/adapter/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$IPositionChangeListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;

.field public final synthetic b:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/d;->a:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/d;->b:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    return-void
.end method


# virtual methods
.method public final onCurrPositionChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/d;->a:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/d;->b:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-static {v0, v1, p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;->a(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;I)V

    return-void
.end method
