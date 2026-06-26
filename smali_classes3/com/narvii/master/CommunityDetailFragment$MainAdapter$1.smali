.class Lcom/narvii/master/CommunityDetailFragment$MainAdapter$1;
.super Ljava/lang/Object;
.source "CommunityDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->onInfluencerClicked(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment$MainAdapter;Landroid/content/Intent;)V
    .locals 0

    .line 1217
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    iput-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1220
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$1;->val$intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/narvii/master/CommunityDetailFragment;->access$1800(Lcom/narvii/master/CommunityDetailFragment;Landroid/content/Intent;)V

    return-void
.end method
