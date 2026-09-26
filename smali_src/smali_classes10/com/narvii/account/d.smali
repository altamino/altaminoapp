.class public final synthetic Lcom/narvii/account/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/narvii/model/User;


# direct methods
.method public synthetic constructor <init>(ILcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/account/d;->a:I

    iput-object p2, p0, Lcom/narvii/account/d;->b:Lcom/narvii/model/User;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/narvii/account/d;->a:I

    iget-object v1, p0, Lcom/narvii/account/d;->b:Lcom/narvii/model/User;

    check-cast p1, Lcom/narvii/account/AccountService$ProfileListener;

    invoke-static {v0, v1, p1}, Lcom/narvii/account/AccountService;->c(ILcom/narvii/model/User;Lcom/narvii/account/AccountService$ProfileListener;)V

    return-void
.end method
