.class Lcom/narvii/notice/NoticeListFragment$3;
.super Ljava/lang/Object;
.source "NoticeListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/narvii/notice/NoticeListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/notice/NoticeListFragment;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$3;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 251
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$3;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const-string v0, "Settings"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 252
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$3;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-static {p1}, Lcom/narvii/notice/NoticeListFragment;->access$300(Lcom/narvii/notice/NoticeListFragment;)V

    .line 253
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$3;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-static {p1}, Lcom/narvii/notice/NoticeListFragment;->access$400(Lcom/narvii/notice/NoticeListFragment;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 254
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$3;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/notice/NoticeListFragment;->access$402(Lcom/narvii/notice/NoticeListFragment;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    return-void
.end method
