.class Lcom/narvii/chat/thread/ThreadHelper$1;
.super Ljava/lang/Object;
.source "ThreadHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/thread/ThreadHelper;->showCreateChatDialog(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;ZLcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/thread/ThreadHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/thread/ThreadHelper;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper$1;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 76
    iget-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper$1;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    invoke-static {p1}, Lcom/narvii/chat/thread/ThreadHelper;->access$000(Lcom/narvii/chat/thread/ThreadHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "CancelCreateChat"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
