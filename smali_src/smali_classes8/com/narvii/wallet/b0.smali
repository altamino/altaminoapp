.class public final synthetic Lcom/narvii/wallet/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/MembershipMainRecyclerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/b0;->a:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/b0;->a:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->smoothScrollToHeaderMax()V

    return-void
.end method
