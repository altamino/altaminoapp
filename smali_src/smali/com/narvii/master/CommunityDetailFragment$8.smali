.class Lcom/narvii/master/CommunityDetailFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment;->updateAccountRelatedViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$8;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/master/CommunityDetailFragment$8;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment$8;->lambda$onClick$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$onClick$0(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$8;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-class v1, Lcom/narvii/account/LoginActivity;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$8;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$8;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p1}, Lcom/narvii/master/CommunityDetailFragment$8;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/account/LogoutHelper;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$8;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Lcom/narvii/account/LogoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/master/a;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/narvii/master/a;-><init>(Lcom/narvii/master/CommunityDetailFragment$8;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/account/LogoutHelper;->logout(Lcom/narvii/util/Callback;)V

    .line 16
    return-void
.end method
