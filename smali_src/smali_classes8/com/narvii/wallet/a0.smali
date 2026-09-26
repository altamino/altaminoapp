.class public final synthetic Lcom/narvii/wallet/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/MembershipSubscribeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/a0;->a:Lcom/narvii/wallet/MembershipSubscribeFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/a0;->a:Lcom/narvii/wallet/MembershipSubscribeFragment;

    check-cast p1, Lcom/android/billingclient/api/h;

    invoke-static {v0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->y(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/android/billingclient/api/h;)V

    return-void
.end method
