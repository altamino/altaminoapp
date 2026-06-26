.class final Lcom/narvii/chat/thread/SearchMyChatsFragment$onCreate$1;
.super Ljava/lang/Object;
.source "SearchMyChatsFragment.kt"

# interfaces
.implements Lcom/narvii/search/InstantSearchListener$RefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/thread/SearchMyChatsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/thread/SearchMyChatsFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/thread/SearchMyChatsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment$onCreate$1;->this$0:Lcom/narvii/chat/thread/SearchMyChatsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh(Ljava/lang/String;Z)V
    .locals 1

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 39
    iget-object p2, p0, Lcom/narvii/chat/thread/SearchMyChatsFragment$onCreate$1;->this$0:Lcom/narvii/chat/thread/SearchMyChatsFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->search:Lcom/narvii/logging/ActSemantic;

    invoke-static {p2, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    const-string v0, "inputText"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ObjectType;->query:Lcom/narvii/logging/ObjectType;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "InputArea"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_0
    return-void
.end method
