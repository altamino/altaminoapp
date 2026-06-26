.class Lcom/narvii/livelayer/LiveLayerActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LiveLayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerActivity;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerActivity$1;->this$0:Lcom/narvii/livelayer/LiveLayerActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerActivity$1;->this$0:Lcom/narvii/livelayer/LiveLayerActivity;

    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerActivity;->access$000(Lcom/narvii/livelayer/LiveLayerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/livelayer/LiveLayerActivity;->access$100(Lcom/narvii/livelayer/LiveLayerActivity;Landroid/view/View;)V

    return-void
.end method
