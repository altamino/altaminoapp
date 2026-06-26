.class final Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$3;
.super Lkotlin/jvm/internal/Lambda;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$3;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$3;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 1

    .line 214
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$3;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setSendingFollowNotification(Z)V

    .line 215
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$3;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onCreate$3;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUser()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->updateViews(Lcom/narvii/model/User;)V

    return-void
.end method
