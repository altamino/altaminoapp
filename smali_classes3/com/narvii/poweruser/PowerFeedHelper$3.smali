.class Lcom/narvii/poweruser/PowerFeedHelper$3;
.super Ljava/lang/Object;
.source "PowerFeedHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/PowerFeedHelper;->changeBestQuizStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/PowerFeedHelper;

.field final synthetic val$addToBestQuiz:Z


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/PowerFeedHelper;Z)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper$3;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    iput-boolean p2, p0, Lcom/narvii/poweruser/PowerFeedHelper$3;->val$addToBestQuiz:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 142
    iget-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper$3;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object p1, p1, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    iget-object p1, p1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "quizInBestQuizzes"

    if-eqz p1, :cond_0

    .line 143
    iget-boolean v1, p0, Lcom/narvii/poweruser/PowerFeedHelper$3;->val$addToBestQuiz:Z

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    .line 146
    iget-object v1, p0, Lcom/narvii/poweruser/PowerFeedHelper$3;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v1, v1, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    iput-object p1, v1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 147
    iget-object p1, v1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-boolean v1, p0, Lcom/narvii/poweruser/PowerFeedHelper$3;->val$addToBestQuiz:Z

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 149
    :goto_0
    new-instance p1, Lcom/narvii/util/dialog/CheckDialog;

    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$3;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v0, v0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;->setText(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/narvii/util/dialog/CheckDialog;->show()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 139
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/PowerFeedHelper$3;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
