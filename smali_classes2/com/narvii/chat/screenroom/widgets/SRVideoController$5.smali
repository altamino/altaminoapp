.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$5;
.super Ljava/lang/Object;
.source "SRVideoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/widgets/SRVideoController;->initControllerView()V
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

    .line 327
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$5;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 330
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$5;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->playActionListener:Lcom/narvii/chat/screenroom/PlayActionListener;

    if-eqz p1, :cond_0

    .line 331
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/PlayActionListener;->playPrev()V

    :cond_0
    return-void
.end method
