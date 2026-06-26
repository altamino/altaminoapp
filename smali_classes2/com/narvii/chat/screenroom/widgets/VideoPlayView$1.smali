.class Lcom/narvii/chat/screenroom/widgets/VideoPlayView$1;
.super Ljava/lang/Object;
.source "VideoPlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/VideoPlayView;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView$1;->this$0:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView$1;->this$0:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->videoButtonClickListener:Lcom/narvii/chat/screenroom/VideoButtonClickListener;

    if-eqz p1, :cond_0

    .line 79
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/VideoButtonClickListener;->openPlaylist()V

    :cond_0
    return-void
.end method
