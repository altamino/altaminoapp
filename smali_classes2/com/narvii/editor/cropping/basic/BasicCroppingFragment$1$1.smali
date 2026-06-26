.class Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1$1;
.super Ljava/lang/Object;
.source "BasicCroppingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1$1;->this$1:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1$1;->this$1:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1;

    iget-object v0, v0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1;->this$0:Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->access$102(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;Z)Z

    return-void
.end method
