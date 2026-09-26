.class final Lcom/narvii/user/follow/UserFollowView$init$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/follow/UserFollowView;->init(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/String;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/follow/UserFollowView;


# direct methods
.method constructor <init>(Lcom/narvii/user/follow/UserFollowView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView$init$3;->this$0:Lcom/narvii/user/follow/UserFollowView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/user/follow/UserFollowView$init$3;->invoke(Ljava/lang/String;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$init$3;->this$0:Lcom/narvii/user/follow/UserFollowView;

    .line 2
    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowView;->access$getUser$p(Lcom/narvii/user/follow/UserFollowView;)Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView$init$3;->this$0:Lcom/narvii/user/follow/UserFollowView;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/narvii/user/follow/UserFollowView;->bindUser(Lcom/narvii/model/User;Z)V

    :cond_0
    return-void
.end method
