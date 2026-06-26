.class public final synthetic Lcom/narvii/nvplayerview/delegate/-$$Lambda$NVVideoListDelegate$SuWGOG-_MEHKGkUsJuAL5VERqCU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/-$$Lambda$NVVideoListDelegate$SuWGOG-_MEHKGkUsJuAL5VERqCU;->f$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iput-object p2, p0, Lcom/narvii/nvplayerview/delegate/-$$Lambda$NVVideoListDelegate$SuWGOG-_MEHKGkUsJuAL5VERqCU;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/-$$Lambda$NVVideoListDelegate$SuWGOG-_MEHKGkUsJuAL5VERqCU;->f$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object v1, p0, Lcom/narvii/nvplayerview/delegate/-$$Lambda$NVVideoListDelegate$SuWGOG-_MEHKGkUsJuAL5VERqCU;->f$1:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->lambda$refreshPlayerPosition$0$NVVideoListDelegate(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
