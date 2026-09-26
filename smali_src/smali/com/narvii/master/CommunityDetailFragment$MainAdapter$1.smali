.class Lcom/narvii/master/CommunityDetailFragment$MainAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$1;->val$intent:Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$1;->val$intent:Landroid/content/Intent;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/content/Intent;

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-static {p1, v0}, Lcom/narvii/master/CommunityDetailFragment;->N(Lcom/narvii/master/CommunityDetailFragment;Landroid/content/Intent;)V

    .line 20
    return-void
.end method
