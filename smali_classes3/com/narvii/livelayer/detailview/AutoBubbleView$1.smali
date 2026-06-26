.class Lcom/narvii/livelayer/detailview/AutoBubbleView$1;
.super Ljava/lang/Object;
.source "AutoBubbleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/AutoBubbleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/detailview/AutoBubbleView;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/detailview/AutoBubbleView;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView$1;->this$0:Lcom/narvii/livelayer/detailview/AutoBubbleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView$1;->this$0:Lcom/narvii/livelayer/detailview/AutoBubbleView;

    invoke-static {v0}, Lcom/narvii/livelayer/detailview/AutoBubbleView;->access$000(Lcom/narvii/livelayer/detailview/AutoBubbleView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/livelayer/detailview/AutoBubbleView;->access$100(Lcom/narvii/livelayer/detailview/AutoBubbleView;Landroid/graphics/Bitmap;)V

    .line 40
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView$1;->this$0:Lcom/narvii/livelayer/detailview/AutoBubbleView;

    invoke-static {v0}, Lcom/narvii/livelayer/detailview/AutoBubbleView;->access$200(Lcom/narvii/livelayer/detailview/AutoBubbleView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
