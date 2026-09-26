.class public final synthetic Lcom/narvii/wallet/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/l;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

.field public final synthetic b:Lcom/narvii/account/AccountService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/r;->a:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    iput-object p2, p0, Lcom/narvii/wallet/r;->b:Lcom/narvii/account/AccountService;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/r;->a:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    iget-object v1, p0, Lcom/narvii/wallet/r;->b:Lcom/narvii/account/AccountService;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->v(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Lcom/narvii/account/AccountService;Ljava/util/List;)Lw7/l0;

    move-result-object p1

    return-object p1
.end method
