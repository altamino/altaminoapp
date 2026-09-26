.class Lcom/narvii/chat/video/layout/LiveCallingLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/layout/LiveCallingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/layout/LiveCallingLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$4;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

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
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$4;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->c(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Landroid/widget/TextView;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$4;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->c(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Landroid/widget/TextView;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$4;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->c(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Landroid/widget/TextView;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :cond_0
    return-void
.end method
