.class Lcom/narvii/services/incubator/PasteBoardServiceProvider$1;
.super Ljava/lang/Object;
.source "PasteBoardServiceProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/services/incubator/PasteBoardServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/incubator/PasteBoardServiceProvider;


# direct methods
.method constructor <init>(Lcom/narvii/services/incubator/PasteBoardServiceProvider;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider$1;->this$0:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider$1;->this$0:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    iget-object v1, v0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->service:Lcom/narvii/master/invitation/PasteBoardService;

    if-eqz v1, :cond_1

    .line 23
    iget-object v0, v0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->ignoreSessionUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v1}, Lcom/narvii/master/invitation/PasteBoardService;->getPasteBoardLink()Ljava/lang/String;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider$1;->this$0:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    iget-object v1, v1, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->ignoreSessionUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore paste board url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider$1;->this$0:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    iget-object v0, v0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->service:Lcom/narvii/master/invitation/PasteBoardService;

    invoke-virtual {v0}, Lcom/narvii/master/invitation/PasteBoardService;->checkClipboard()V

    :cond_1
    return-void
.end method
