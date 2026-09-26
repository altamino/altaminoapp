.class public final synthetic Lcom/narvii/nvplayerview/delegate/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

.field public final synthetic b:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/b;->a:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iput-object p2, p0, Lcom/narvii/nvplayerview/delegate/b;->b:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/b;->a:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/b;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v0, v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->b(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
