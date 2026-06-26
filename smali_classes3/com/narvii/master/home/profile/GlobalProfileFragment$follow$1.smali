.class final Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;->follow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
        "Lcom/narvii/model/User;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lcom/narvii/model/User;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;->invoke(ZLcom/narvii/model/User;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ZLcom/narvii/model/User;)V
    .locals 1

    const-string v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {v0, p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$setSendingFollow$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;Z)V

    .line 882
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setSendingFollow(Z)V

    .line 883
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->updateViews(Lcom/narvii/model/User;)V

    return-void
.end method
