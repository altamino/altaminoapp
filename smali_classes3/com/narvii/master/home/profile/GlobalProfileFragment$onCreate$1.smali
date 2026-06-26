.class final Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setSendingFollowNotification(Z)V

    .line 208
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUser()Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->updateViews(Lcom/narvii/model/User;)V

    return-void
.end method
