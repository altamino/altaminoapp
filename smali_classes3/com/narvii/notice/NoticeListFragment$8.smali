.class Lcom/narvii/notice/NoticeListFragment$8;
.super Ljava/lang/Object;
.source "NoticeListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/notice/NoticeListFragment;->delete(Lcom/narvii/notice/Notice;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/notice/NoticeListFragment;

.field final synthetic val$notice:Lcom/narvii/notice/Notice;


# direct methods
.method constructor <init>(Lcom/narvii/notice/NoticeListFragment;Lcom/narvii/notice/Notice;)V
    .locals 0

    .line 1236
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$8;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iput-object p2, p0, Lcom/narvii/notice/NoticeListFragment$8;->val$notice:Lcom/narvii/notice/Notice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 1240
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$8;->this$0:Lcom/narvii/notice/NoticeListFragment;

    sget-object p2, Lcom/narvii/logging/ActSemantic;->delete:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "AlertList"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment$8;->val$notice:Lcom/narvii/notice/Notice;

    iget p2, p2, Lcom/narvii/notice/Notice;->type:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "alertType"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1241
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$8;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment$8;->val$notice:Lcom/narvii/notice/Notice;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/narvii/notice/NoticeListFragment;->delete(Lcom/narvii/notice/Notice;Z)V

    :cond_0
    return-void
.end method
