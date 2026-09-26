.class public final synthetic Lcom/narvii/wallet/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/list/ObjectItemClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/MembershipSubscribeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/f0;->a:Lcom/narvii/wallet/MembershipSubscribeFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/narvii/model/NVObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/f0;->a:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-static {v0, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->v(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/model/NVObject;)V

    return-void
.end method
