.class public final synthetic Lcom/narvii/account/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/account/LoginActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/LoginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/v;->a:Lcom/narvii/account/LoginActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/v;->a:Lcom/narvii/account/LoginActivity;

    invoke-virtual {v0}, Lcom/narvii/account/LoginActivity;->updateViews()V

    return-void
.end method
