.class Lcom/narvii/notice/NoticeListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/notice/NoticeListFragment;->updateCommunityLayout(Landroid/view/View;)V
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$2;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$2;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 3
    .line 4
    const-string v0, "Settings"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$2;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/notice/NoticeListFragment;->B(Lcom/narvii/notice/NoticeListFragment;)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$2;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/notice/NoticeListFragment;->x(Lcom/narvii/notice/NoticeListFragment;)Landroid/widget/PopupWindow;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$2;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/narvii/notice/NoticeListFragment;->z(Lcom/narvii/notice/NoticeListFragment;Landroid/widget/PopupWindow;)V

    .line 32
    return-void
.end method
