.class public final synthetic Lcom/narvii/user/follow/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/user/follow/UserFollowView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/user/follow/UserFollowView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/user/follow/d;->a:Lcom/narvii/user/follow/UserFollowView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/user/follow/d;->a:Lcom/narvii/user/follow/UserFollowView;

    invoke-static {v0}, Lcom/narvii/user/follow/UserFollowView$init$2;->a(Lcom/narvii/user/follow/UserFollowView;)V

    return-void
.end method
