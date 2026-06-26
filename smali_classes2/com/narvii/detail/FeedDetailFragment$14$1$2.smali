.class Lcom/narvii/detail/FeedDetailFragment$14$1$2;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailFragment$14$1;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/detail/FeedDetailFragment$14$1;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment$14$1;)V
    .locals 0

    .line 857
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14$1$2;->this$2:Lcom/narvii/detail/FeedDetailFragment$14$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$14$1$2;->this$2:Lcom/narvii/detail/FeedDetailFragment$14$1;

    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment$14$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$14;

    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {v0}, Lcom/narvii/detail/FeedDetailFragment;->access$200(Lcom/narvii/detail/FeedDetailFragment;)Lcom/narvii/amino/CommunityPreferenceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/amino/CommunityPreferenceHelper;->getPREFS_JOIN_AMINO_SHOWED()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 861
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14$1$2;->this$2:Lcom/narvii/detail/FeedDetailFragment$14$1;

    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment$14$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$14;

    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    if-eqz p1, :cond_0

    .line 862
    invoke-virtual {p1}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    :cond_0
    return-void
.end method
