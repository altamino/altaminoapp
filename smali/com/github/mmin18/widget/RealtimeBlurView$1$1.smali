.class Lcom/github/mmin18/widget/RealtimeBlurView$1$1;
.super Ljava/lang/Object;
.source "RealtimeBlurView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/RealtimeBlurView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/mmin18/widget/RealtimeBlurView$1;


# direct methods
.method constructor <init>(Lcom/github/mmin18/widget/RealtimeBlurView$1;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1$1;->this$1:Lcom/github/mmin18/widget/RealtimeBlurView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$1$1;->this$1:Lcom/github/mmin18/widget/RealtimeBlurView$1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->invalidateScheduled:Z

    .line 335
    iget-object v0, v0, Lcom/github/mmin18/widget/RealtimeBlurView$1;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
