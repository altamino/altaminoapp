.class public final synthetic Lcom/narvii/wallet/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/MembershipSubscribeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/y;->a:Lcom/narvii/wallet/MembershipSubscribeFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/y;->a:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-static {v0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->s(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    return-void
.end method
