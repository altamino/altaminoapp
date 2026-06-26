.class Lcom/narvii/notice/NoticeListFragment$5;
.super Ljava/lang/Object;
.source "NoticeListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/notice/NoticeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/notice/NoticeListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/notice/NoticeListFragment;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$5;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 344
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$5;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/notice/NoticeListFragment;->clearAll(Z)V

    return-void
.end method
