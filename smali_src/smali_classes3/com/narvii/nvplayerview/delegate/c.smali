.class public final synthetic Lcom/narvii/nvplayerview/delegate/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/c;->a:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/c;->a:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-virtual {v0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->refreshPlayerPosition()V

    return-void
.end method
