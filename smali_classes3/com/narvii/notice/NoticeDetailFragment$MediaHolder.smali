.class Lcom/narvii/notice/NoticeDetailFragment$MediaHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NoticeDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/notice/NoticeDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaHolder"
.end annotation


# instance fields
.field imageView:Lcom/narvii/widget/NVImageView;

.field final synthetic this$0:Lcom/narvii/notice/NoticeDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/notice/NoticeDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaHolder;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 478
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090571

    .line 479
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaHolder;->imageView:Lcom/narvii/widget/NVImageView;

    return-void
.end method
