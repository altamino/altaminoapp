.class public final synthetic Lcom/narvii/wallet/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/o;


# instance fields
.field public final synthetic a:Le8/l;


# direct methods
.method public synthetic constructor <init>(Le8/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/i;->a:Le8/l;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/i;->a:Le8/l;

    invoke-static {v0, p1, p2}, Lcom/narvii/wallet/MembershipBillingManager;->b(Le8/l;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    return-void
.end method
