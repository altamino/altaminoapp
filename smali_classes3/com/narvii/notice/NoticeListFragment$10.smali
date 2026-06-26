.class Lcom/narvii/notice/NoticeListFragment$10;
.super Ljava/lang/Object;
.source "NoticeListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/notice/NoticeListFragment;->clearAll(Z)V
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

    .line 1269
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$10;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 1273
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$10;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/notice/NoticeListFragment;->clearAll(Z)V

    :cond_0
    return-void
.end method
