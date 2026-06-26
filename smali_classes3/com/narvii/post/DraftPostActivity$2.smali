.class Lcom/narvii/post/DraftPostActivity$2;
.super Ljava/lang/Object;
.source "DraftPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/DraftPostActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/DraftPostActivity;

.field final synthetic val$bparams:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field final synthetic val$savedPost:Lcom/narvii/post/PostObject;


# direct methods
.method constructor <init>(Lcom/narvii/post/DraftPostActivity;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity$2;->this$0:Lcom/narvii/post/DraftPostActivity;

    iput-object p2, p0, Lcom/narvii/post/DraftPostActivity$2;->val$bparams:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object p3, p0, Lcom/narvii/post/DraftPostActivity$2;->val$savedPost:Lcom/narvii/post/PostObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 130
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity$2;->this$0:Lcom/narvii/post/DraftPostActivity;

    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity$2;->val$bparams:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {p1, p2}, Lcom/narvii/post/DraftPostActivity;->access$000(Lcom/narvii/post/DraftPostActivity;Lcom/fasterxml/jackson/databind/node/ObjectNode;)I

    .line 131
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity$2;->this$0:Lcom/narvii/post/DraftPostActivity;

    iget-object p1, p1, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity$2;->val$savedPost:Lcom/narvii/post/PostObject;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity$2;->this$0:Lcom/narvii/post/DraftPostActivity;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".savePost() before post loaded"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity$2;->this$0:Lcom/narvii/post/DraftPostActivity;

    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity$2;->val$bparams:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object p2, p1, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 135
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity$2;->val$savedPost:Lcom/narvii/post/PostObject;

    iput-object p2, p1, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 136
    iget-object p2, p1, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    invoke-virtual {p1}, Lcom/narvii/post/DraftPostActivity;->draftType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity$2;->this$0:Lcom/narvii/post/DraftPostActivity;

    iget-object v2, v1, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object v1, v1, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    invoke-virtual {p2, v0, v2, v1}, Lcom/narvii/post/DraftManager;->createDraft(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/narvii/post/PostObject;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 137
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity$2;->this$0:Lcom/narvii/post/DraftPostActivity;

    iget-object p2, p1, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    invoke-virtual {p1, p2}, Lcom/narvii/post/DraftPostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    .line 138
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity$2;->this$0:Lcom/narvii/post/DraftPostActivity;

    iget-object p2, p1, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    invoke-virtual {p1, p2}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    return-void
.end method
