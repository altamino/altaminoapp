.class final Lcom/narvii/user/follow/UserFollowView$init$3;
.super Lkotlin/jvm/internal/Lambda;
.source "UserFollowView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserFollowView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserFollowView.kt\ncom/narvii/user/follow/UserFollowView$init$3\n*L\n1#1,303:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/follow/UserFollowView;


# direct methods
.method constructor <init>(Lcom/narvii/user/follow/UserFollowView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView$init$3;->this$0:Lcom/narvii/user/follow/UserFollowView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/user/follow/UserFollowView$init$3;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2

    .line 78
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$init$3;->this$0:Lcom/narvii/user/follow/UserFollowView;

    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowView;->access$getUser$p(Lcom/narvii/user/follow/UserFollowView;)Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView$init$3;->this$0:Lcom/narvii/user/follow/UserFollowView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/user/follow/UserFollowView;->bindUser(Lcom/narvii/model/User;Z)V

    :cond_0
    return-void
.end method
