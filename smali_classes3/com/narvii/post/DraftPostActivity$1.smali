.class Lcom/narvii/post/DraftPostActivity$1;
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

.field final synthetic val$restorePost:Lcom/narvii/post/PostObject;

.field final synthetic val$reuse:Lcom/narvii/post/DraftInfo;


# direct methods
.method constructor <init>(Lcom/narvii/post/DraftPostActivity;Lcom/narvii/post/DraftInfo;Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity$1;->this$0:Lcom/narvii/post/DraftPostActivity;

    iput-object p2, p0, Lcom/narvii/post/DraftPostActivity$1;->val$reuse:Lcom/narvii/post/DraftInfo;

    iput-object p3, p0, Lcom/narvii/post/DraftPostActivity$1;->val$restorePost:Lcom/narvii/post/PostObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity$1;->this$0:Lcom/narvii/post/DraftPostActivity;

    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity$1;->val$reuse:Lcom/narvii/post/DraftInfo;

    iget-object p2, p2, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 120
    iget-object p1, p1, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    invoke-virtual {p1, p2}, Lcom/narvii/post/DraftManager;->getInfo(Ljava/lang/String;)Lcom/narvii/post/DraftInfo;

    move-result-object p1

    .line 121
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity$1;->this$0:Lcom/narvii/post/DraftPostActivity;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/narvii/post/DraftInfo;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez p1, :cond_1

    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    :cond_1
    iput-object p1, p2, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 122
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity$1;->this$0:Lcom/narvii/post/DraftPostActivity;

    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity$1;->val$restorePost:Lcom/narvii/post/PostObject;

    iput-object p2, p1, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 123
    iget-object p2, p1, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    invoke-virtual {p1, p2}, Lcom/narvii/post/DraftPostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    .line 124
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity$1;->this$0:Lcom/narvii/post/DraftPostActivity;

    iget-object p2, p1, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    invoke-virtual {p1, p2}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    return-void
.end method
