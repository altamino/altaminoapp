.class public final synthetic Lcom/narvii/account/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/account/AccountService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/f;->a:Lcom/narvii/account/AccountService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/f;->a:Lcom/narvii/account/AccountService;

    invoke-static {v0}, Lcom/narvii/account/AccountService;->a(Lcom/narvii/account/AccountService;)V

    return-void
.end method
