.class public final synthetic Lcom/narvii/master/home/profile/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/master/home/profile/ProfileListFragment;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/home/profile/ProfileListFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/profile/g0;->a:Lcom/narvii/master/home/profile/ProfileListFragment;

    iput-boolean p2, p0, Lcom/narvii/master/home/profile/g0;->b:Z

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/profile/g0;->a:Lcom/narvii/master/home/profile/ProfileListFragment;

    iget-boolean v1, p0, Lcom/narvii/master/home/profile/g0;->b:Z

    check-cast p1, Lcom/narvii/util/RequestResult;

    invoke-static {v0, v1, p1}, Lcom/narvii/master/home/profile/ProfileListFragment;->n(Lcom/narvii/master/home/profile/ProfileListFragment;ZLcom/narvii/util/RequestResult;)V

    return-void
.end method
