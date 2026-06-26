.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$2;
.super Ljava/lang/Object;
.source "SRVideoController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/SRVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$2;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 251
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$2;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$100(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$2;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->hide()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
