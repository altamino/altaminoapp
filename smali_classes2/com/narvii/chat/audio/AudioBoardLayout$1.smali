.class Lcom/narvii/chat/audio/AudioBoardLayout$1;
.super Ljava/lang/Object;
.source "AudioBoardLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/audio/AudioBoardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/audio/AudioBoardLayout;


# direct methods
.method constructor <init>(Lcom/narvii/chat/audio/AudioBoardLayout;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout$1;->this$0:Lcom/narvii/chat/audio/AudioBoardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout$1;->this$0:Lcom/narvii/chat/audio/AudioBoardLayout;

    iget-object v1, v0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/narvii/chat/audio/AudioBoardLayout;->access$000(Lcom/narvii/chat/audio/AudioBoardLayout;Landroid/view/View;)V

    return-void
.end method
