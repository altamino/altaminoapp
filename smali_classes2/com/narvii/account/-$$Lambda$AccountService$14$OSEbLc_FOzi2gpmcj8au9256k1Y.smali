.class public final synthetic Lcom/narvii/account/-$$Lambda$AccountService$14$OSEbLc_FOzi2gpmcj8au9256k1Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/account/RecentVisitorCountResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/RecentVisitorCountResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/-$$Lambda$AccountService$14$OSEbLc_FOzi2gpmcj8au9256k1Y;->f$0:Lcom/narvii/account/RecentVisitorCountResponse;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/account/-$$Lambda$AccountService$14$OSEbLc_FOzi2gpmcj8au9256k1Y;->f$0:Lcom/narvii/account/RecentVisitorCountResponse;

    check-cast p1, Lcom/narvii/account/AccountService$RecentVisitorListener;

    invoke-static {v0, p1}, Lcom/narvii/account/AccountService$14;->lambda$onFinish$0(Lcom/narvii/account/RecentVisitorCountResponse;Lcom/narvii/account/AccountService$RecentVisitorListener;)V

    return-void
.end method
