.class public final synthetic Lcom/narvii/wallet/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/m;


# instance fields
.field public final synthetic a:Le8/a;


# direct methods
.method public synthetic constructor <init>(Le8/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/j;->a:Le8/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/j;->a:Le8/a;

    invoke-static {v0, p1, p2}, Lcom/narvii/wallet/MembershipBillingManager;->c(Le8/a;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    return-void
.end method
