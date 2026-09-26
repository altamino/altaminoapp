.class Lcom/narvii/notice/NoticeListFragment$3;
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
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$3;->this$0:Lcom/narvii/notice/NoticeListFragment;

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
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$3;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/narvii/notice/NoticeListFragment;->clearAll(Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$3;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/notice/NoticeListFragment;->x(Lcom/narvii/notice/NoticeListFragment;)Landroid/widget/PopupWindow;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$3;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/narvii/notice/NoticeListFragment;->z(Lcom/narvii/notice/NoticeListFragment;Landroid/widget/PopupWindow;)V

    .line 22
    return-void
.end method
