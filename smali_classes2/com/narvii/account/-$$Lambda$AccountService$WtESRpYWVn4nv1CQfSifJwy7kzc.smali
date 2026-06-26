.class public final synthetic Lcom/narvii/account/-$$Lambda$AccountService$WtESRpYWVn4nv1CQfSifJwy7kzc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Lcom/narvii/model/User;


# direct methods
.method public synthetic constructor <init>(ILcom/narvii/model/User;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/account/-$$Lambda$AccountService$WtESRpYWVn4nv1CQfSifJwy7kzc;->f$0:I

    iput-object p2, p0, Lcom/narvii/account/-$$Lambda$AccountService$WtESRpYWVn4nv1CQfSifJwy7kzc;->f$1:Lcom/narvii/model/User;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/narvii/account/-$$Lambda$AccountService$WtESRpYWVn4nv1CQfSifJwy7kzc;->f$0:I

    iget-object v1, p0, Lcom/narvii/account/-$$Lambda$AccountService$WtESRpYWVn4nv1CQfSifJwy7kzc;->f$1:Lcom/narvii/model/User;

    check-cast p1, Lcom/narvii/account/AccountService$ProfileListener;

    invoke-static {v0, v1, p1}, Lcom/narvii/account/AccountService;->lambda$updateProfile$0(ILcom/narvii/model/User;Lcom/narvii/account/AccountService$ProfileListener;)V

    return-void
.end method
