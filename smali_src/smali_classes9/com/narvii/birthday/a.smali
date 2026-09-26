.class public final synthetic Lcom/narvii/birthday/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/birthday/AccountDeletedFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/birthday/AccountDeletedFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/birthday/a;->a:Lcom/narvii/birthday/AccountDeletedFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/birthday/a;->a:Lcom/narvii/birthday/AccountDeletedFragment;

    invoke-static {v0}, Lcom/narvii/birthday/AccountDeletedFragment;->p(Lcom/narvii/birthday/AccountDeletedFragment;)V

    return-void
.end method
