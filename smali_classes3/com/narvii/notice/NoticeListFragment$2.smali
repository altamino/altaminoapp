.class Lcom/narvii/notice/NoticeListFragment$2;
.super Ljava/lang/Object;
.source "NoticeListFragment.java"

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

.field final synthetic val$c:Lcom/narvii/model/Community;


# direct methods
.method constructor <init>(Lcom/narvii/notice/NoticeListFragment;Lcom/narvii/model/Community;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$2;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iput-object p2, p0, Lcom/narvii/notice/NoticeListFragment$2;->val$c:Lcom/narvii/model/Community;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 234
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$2;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$2;->val$c:Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/notice/NoticeListFragment;->access$000(Lcom/narvii/notice/NoticeListFragment;Lcom/narvii/model/Community;)V

    return-void
.end method
