.class Lcom/narvii/livelayer/detailview/AutoBubbleView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView$1;->this$0:Lcom/narvii/livelayer/detailview/AutoBubbleView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView$1;->this$0:Lcom/narvii/livelayer/detailview/AutoBubbleView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/livelayer/detailview/AutoBubbleView;->b(Lcom/narvii/livelayer/detailview/AutoBubbleView;)Landroid/graphics/Bitmap;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/livelayer/detailview/AutoBubbleView;->c(Lcom/narvii/livelayer/detailview/AutoBubbleView;Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView$1;->this$0:Lcom/narvii/livelayer/detailview/AutoBubbleView;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/livelayer/detailview/AutoBubbleView;->a(Lcom/narvii/livelayer/detailview/AutoBubbleView;)Landroid/os/Handler;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-wide/16 v1, 0xbb8

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    return-void
.end method
