.class public final synthetic Lcom/narvii/nvplayerview/delegate/-$$Lambda$NVVideoListDelegate$FLT2ZKgCveORF1sDy-bo1Go976M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

.field private final synthetic f$1:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/-$$Lambda$NVVideoListDelegate$FLT2ZKgCveORF1sDy-bo1Go976M;->f$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iput-object p2, p0, Lcom/narvii/nvplayerview/delegate/-$$Lambda$NVVideoListDelegate$FLT2ZKgCveORF1sDy-bo1Go976M;->f$1:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/-$$Lambda$NVVideoListDelegate$FLT2ZKgCveORF1sDy-bo1Go976M;->f$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/-$$Lambda$NVVideoListDelegate$FLT2ZKgCveORF1sDy-bo1Go976M;->f$1:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->lambda$onLayoutChange$1$NVVideoListDelegate(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
