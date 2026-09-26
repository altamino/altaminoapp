.class public final synthetic Lcom/narvii/account/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/account/LoginActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/LoginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/t;->a:Lcom/narvii/account/LoginActivity;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/t;->a:Lcom/narvii/account/LoginActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/narvii/account/LoginActivity;->s(Lcom/narvii/account/LoginActivity;Ljava/lang/Boolean;)V

    return-void
.end method
