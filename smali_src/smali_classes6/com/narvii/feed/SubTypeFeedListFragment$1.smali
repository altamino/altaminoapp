.class Lcom/narvii/feed/SubTypeFeedListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment$1;->this$0:Lcom/narvii/feed/SubTypeFeedListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment$1;->this$0:Lcom/narvii/feed/SubTypeFeedListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/feed/SubTypeFeedListFragment;->t(Lcom/narvii/feed/SubTypeFeedListFragment;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment$1;->this$0:Lcom/narvii/feed/SubTypeFeedListFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/feed/SubTypeFeedListFragment;->x(Lcom/narvii/feed/SubTypeFeedListFragment;)V

    .line 15
    return-void
.end method
