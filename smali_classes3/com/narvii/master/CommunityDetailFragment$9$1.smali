.class Lcom/narvii/master/CommunityDetailFragment$9$1;
.super Ljava/lang/Object;
.source "CommunityDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/CommunityDetailFragment$9;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment$9;)V
    .locals 0

    .line 962
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$9$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 965
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$9$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$9;

    iget-object v0, v0, Lcom/narvii/master/CommunityDetailFragment$9;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/account/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 966
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$9$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$9;

    iget-object v0, v0, Lcom/narvii/master/CommunityDetailFragment$9;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 967
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$9$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$9;

    iget-object v0, v0, Lcom/narvii/master/CommunityDetailFragment$9;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 962
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/master/CommunityDetailFragment$9$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
