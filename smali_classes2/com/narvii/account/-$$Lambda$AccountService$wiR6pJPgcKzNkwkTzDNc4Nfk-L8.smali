.class public final synthetic Lcom/narvii/account/-$$Lambda$AccountService$wiR6pJPgcKzNkwkTzDNc4Nfk-L8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/model/User;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/model/User;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/-$$Lambda$AccountService$wiR6pJPgcKzNkwkTzDNc4Nfk-L8;->f$0:Lcom/narvii/model/User;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/account/-$$Lambda$AccountService$wiR6pJPgcKzNkwkTzDNc4Nfk-L8;->f$0:Lcom/narvii/model/User;

    check-cast p1, Lcom/narvii/account/AccountService$FanClubListListener;

    invoke-static {v0, p1}, Lcom/narvii/account/AccountService;->lambda$updateProfile$1(Lcom/narvii/model/User;Lcom/narvii/account/AccountService$FanClubListListener;)V

    return-void
.end method
