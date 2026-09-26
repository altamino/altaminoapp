.class Lcom/narvii/livelayer/LiveLayerActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerActivity$1;->this$0:Lcom/narvii/livelayer/LiveLayerActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerActivity$1;->this$0:Lcom/narvii/livelayer/LiveLayerActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerActivity;->w(Lcom/narvii/livelayer/LiveLayerActivity;)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/livelayer/LiveLayerActivity;->x(Lcom/narvii/livelayer/LiveLayerActivity;Landroid/view/View;)V

    .line 10
    return-void
.end method
