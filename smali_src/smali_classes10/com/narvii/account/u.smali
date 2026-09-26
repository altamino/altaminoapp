.class public final synthetic Lcom/narvii/account/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/account/LoginActivity;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/LoginActivity;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/u;->a:Lcom/narvii/account/LoginActivity;

    iput-boolean p2, p0, Lcom/narvii/account/u;->b:Z

    iput-boolean p3, p0, Lcom/narvii/account/u;->c:Z

    iput-boolean p4, p0, Lcom/narvii/account/u;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/narvii/account/u;->a:Lcom/narvii/account/LoginActivity;

    iget-boolean v1, p0, Lcom/narvii/account/u;->b:Z

    iget-boolean v2, p0, Lcom/narvii/account/u;->c:Z

    iget-boolean v3, p0, Lcom/narvii/account/u;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/account/LoginActivity;->t(Lcom/narvii/account/LoginActivity;ZZZ)V

    return-void
.end method
