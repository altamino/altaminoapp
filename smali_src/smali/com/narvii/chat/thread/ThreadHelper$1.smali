.class Lcom/narvii/chat/thread/ThreadHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper$1;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/thread/ThreadHelper$1;->this$0:Lcom/narvii/chat/thread/ThreadHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/thread/ThreadHelper;->a(Lcom/narvii/chat/thread/ThreadHelper;)Lcom/narvii/app/NVContext;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "CancelCreateChat"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    return-void
.end method
