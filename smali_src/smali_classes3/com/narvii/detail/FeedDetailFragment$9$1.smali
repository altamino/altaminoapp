.class Lcom/narvii/detail/FeedDetailFragment$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$9$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$9;

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
    new-instance p1, Lcom/narvii/amino/CommunityPreferenceHelper;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$9$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$9;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/narvii/amino/CommunityPreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/narvii/amino/CommunityPreferenceHelper;->setJoinAminoShowBefore(Z)V

    .line 18
    return-void
.end method
