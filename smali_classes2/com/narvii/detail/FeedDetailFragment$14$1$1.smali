.class Lcom/narvii/detail/FeedDetailFragment$14$1$1;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 848
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14$1$1;->this$2:Lcom/narvii/detail/FeedDetailFragment$14$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 851
    new-instance p1, Lcom/narvii/amino/CommunityPreferenceHelper;

    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$14$1$1;->this$2:Lcom/narvii/detail/FeedDetailFragment$14$1;

    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment$14$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$14;

    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/amino/CommunityPreferenceHelper;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 852
    invoke-virtual {p1, v0}, Lcom/narvii/amino/CommunityPreferenceHelper;->setJoinAminoShowBefore(Z)V

    return-void
.end method
