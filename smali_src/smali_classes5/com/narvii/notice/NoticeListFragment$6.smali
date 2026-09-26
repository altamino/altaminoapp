.class Lcom/narvii/notice/NoticeListFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$6;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/notice/NoticeListFragment$6;->val$notice:Lcom/narvii/notice/Notice;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$6;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 5
    .line 6
    sget-object p2, Lcom/narvii/logging/ActSemantic;->delete:Lcom/narvii/logging/ActSemantic;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string p2, "AlertList"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment$6;->val$notice:Lcom/narvii/notice/Notice;

    .line 19
    .line 20
    iget p2, p2, Lcom/narvii/notice/Notice;->type:I

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    const-string v0, "alertType"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$6;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment$6;->val$notice:Lcom/narvii/notice/Notice;

    .line 38
    const/4 v0, 0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2, v0}, Lcom/narvii/notice/NoticeListFragment;->delete(Lcom/narvii/notice/Notice;Z)V

    .line 42
    :cond_0
    return-void
.end method
