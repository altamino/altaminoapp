.class Lcom/narvii/notice/NoticeDetailFragment$AttachInfoAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/notice/NoticeDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AttachInfoAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/notice/NoticeDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/notice/NoticeDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachInfoAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0437

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/notice/NoticeDetailFragment$AttachInfoAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {p2, p1}, Lcom/narvii/notice/NoticeDetailFragment;->w(Lcom/narvii/notice/NoticeDetailFragment;Landroid/view/View;)V

    .line 13
    return-object p1
.end method
