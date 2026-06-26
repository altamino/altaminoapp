.class final Lcom/narvii/user/follow/UserFollowView$init$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UserFollowView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/follow/UserFollowView;


# direct methods
.method constructor <init>(Lcom/narvii/user/follow/UserFollowView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView$init$1;->this$0:Lcom/narvii/user/follow/UserFollowView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/narvii/user/follow/UserFollowView$init$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView$init$1;->this$0:Lcom/narvii/user/follow/UserFollowView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/narvii/user/follow/UserFollowView;->access$setStatus(Lcom/narvii/user/follow/UserFollowView;I)V

    return-void
.end method
