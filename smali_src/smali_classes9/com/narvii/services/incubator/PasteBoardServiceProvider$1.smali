.class Lcom/narvii/services/incubator/PasteBoardServiceProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider$1;->this$0:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider$1;->this$0:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->service:Lcom/narvii/master/invitation/PasteBoardService;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->ignoreSessionUrl:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/master/invitation/PasteBoardService;->getPasteBoardLink()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider$1;->this$0:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->ignoreSessionUrl:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    const-string v2, "ignore paste board url "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 45
    return-void

    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider$1;->this$0:Lcom/narvii/services/incubator/PasteBoardServiceProvider;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->service:Lcom/narvii/master/invitation/PasteBoardService;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/master/invitation/PasteBoardService;->checkClipboard()V

    .line 53
    :cond_1
    return-void
.end method
