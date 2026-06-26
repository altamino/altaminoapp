.class Lcom/narvii/notice/NoticeDetailFragment$1;
.super Lcom/narvii/util/text/DefaultTagClickListener;
.source "NoticeDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/notice/NoticeDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/notice/NoticeDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/notice/NoticeDetailFragment;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$1;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-direct {p0}, Lcom/narvii/util/text/DefaultTagClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected startActivity(Landroid/view/View;Landroid/content/Intent;)V
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$1;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
