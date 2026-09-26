.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateViews()V
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
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$8;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$8;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoName:Landroid/widget/TextView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    return-void
.end method
