.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$2;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$2;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->f(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$2;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->hide()V

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method
