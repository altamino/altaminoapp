.class Lcom/narvii/notice/NoticeListFragment$4;
.super Ljava/lang/Object;
.source "NoticeListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/narvii/notice/NoticeListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/notice/NoticeListFragment;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$4;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 260
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$4;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/notice/NoticeListFragment;->clearAll(Z)V

    .line 261
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$4;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-static {p1}, Lcom/narvii/notice/NoticeListFragment;->access$400(Lcom/narvii/notice/NoticeListFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 262
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$4;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/notice/NoticeListFragment;->access$402(Lcom/narvii/notice/NoticeListFragment;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    return-void
.end method
