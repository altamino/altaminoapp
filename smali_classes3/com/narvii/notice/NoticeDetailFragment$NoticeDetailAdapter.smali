.class Lcom/narvii/notice/NoticeDetailFragment$NoticeDetailAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "NoticeDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/notice/NoticeDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoticeDetailAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/notice/NoticeDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/notice/NoticeDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$NoticeDetailAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 127
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b0407

    .line 132
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 133
    iget-object p2, p0, Lcom/narvii/notice/NoticeDetailFragment$NoticeDetailAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-static {p2, p1}, Lcom/narvii/notice/NoticeDetailFragment;->access$000(Lcom/narvii/notice/NoticeDetailFragment;Landroid/view/View;)V

    return-object p1
.end method
