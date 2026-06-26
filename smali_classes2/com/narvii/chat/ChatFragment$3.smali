.class Lcom/narvii/chat/ChatFragment$3;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment$3;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090704

    if-ne v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$3;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-static {v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "CloseButton"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 333
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$3;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-static {v0, p1}, Lcom/narvii/chat/ChatFragment;->access$300(Lcom/narvii/chat/ChatFragment;Landroid/view/View;)V

    :cond_0
    return-void
.end method
