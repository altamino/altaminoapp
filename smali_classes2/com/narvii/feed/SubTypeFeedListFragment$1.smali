.class Lcom/narvii/feed/SubTypeFeedListFragment$1;
.super Ljava/lang/Object;
.source "SubTypeFeedListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/SubTypeFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/SubTypeFeedListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/feed/SubTypeFeedListFragment;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment$1;->this$0:Lcom/narvii/feed/SubTypeFeedListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment$1;->this$0:Lcom/narvii/feed/SubTypeFeedListFragment;

    invoke-static {p1}, Lcom/narvii/feed/SubTypeFeedListFragment;->access$000(Lcom/narvii/feed/SubTypeFeedListFragment;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment$1;->this$0:Lcom/narvii/feed/SubTypeFeedListFragment;

    invoke-static {p1}, Lcom/narvii/feed/SubTypeFeedListFragment;->access$100(Lcom/narvii/feed/SubTypeFeedListFragment;)V

    return-void
.end method
