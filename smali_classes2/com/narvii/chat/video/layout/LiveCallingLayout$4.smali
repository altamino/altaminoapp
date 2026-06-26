.class Lcom/narvii/chat/video/layout/LiveCallingLayout$4;
.super Ljava/lang/Object;
.source "LiveCallingLayout.java"

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

    .line 326
    iput-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$4;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$4;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-static {v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->access$400(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$4;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-static {v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->access$400(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$4;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    invoke-static {v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->access$400(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
