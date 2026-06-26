.class Lcom/narvii/master/CommunityDetailFragment$MainAdapter$3;
.super Ljava/lang/Object;
.source "CommunityDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->createMoreView(Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment$MainAdapter;)V
    .locals 0

    .line 1348
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$3;->this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1351
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$3;->this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    iget-object v0, p1, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/narvii/master/CommunityDetailFragment;->showMoreTopics:Z

    .line 1352
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void
.end method
