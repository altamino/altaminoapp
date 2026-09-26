.class Lcom/narvii/detail/FeedDetailFragment$9$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailFragment$9;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/detail/FeedDetailFragment$9;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment$9;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$9$2;->this$1:Lcom/narvii/detail/FeedDetailFragment$9;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$9$2;->this$1:Lcom/narvii/detail/FeedDetailFragment$9;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/detail/FeedDetailFragment;->D(Lcom/narvii/detail/FeedDetailFragment;)Lcom/narvii/amino/CommunityPreferenceHelper;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/amino/CommunityPreferenceHelper;->getPREFS_JOIN_AMINO_SHOWED()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$9$2;->this$1:Lcom/narvii/detail/FeedDetailFragment$9;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/util/ToolTipHelper;->hideToolTip()V

    .line 39
    :cond_0
    return-void
.end method
