.class final Lcom/narvii/logging/LogUtils$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lcom/narvii/logging/Area;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nvAdapter:Lcom/narvii/logging/Area;


# direct methods
.method constructor <init>(Lcom/narvii/logging/Area;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/narvii/logging/LogUtils$1;->val$nvAdapter:Lcom/narvii/logging/Area;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 320
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 321
    iget-object p1, p0, Lcom/narvii/logging/LogUtils$1;->val$nvAdapter:Lcom/narvii/logging/Area;

    invoke-static {p1, p2}, Lcom/narvii/logging/Impression/ImpressionUtils;->logRecyclerImpression(Lcom/narvii/logging/Area;I)V

    return-void
.end method
