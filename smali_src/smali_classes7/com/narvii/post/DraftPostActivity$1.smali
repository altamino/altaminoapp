.class Lcom/narvii/post/DraftPostActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity$1;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/post/DraftPostActivity$1;->val$reuse:Lcom/narvii/post/DraftInfo;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/post/DraftPostActivity$1;->val$restorePost:Lcom/narvii/post/PostObject;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity$1;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity$1;->val$reuse:Lcom/narvii/post/DraftInfo;

    .line 5
    .line 6
    iget-object p2, p2, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p1, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/post/DraftManager;->getInfo(Ljava/lang/String;)Lcom/narvii/post/DraftInfo;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity$1;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Lcom/narvii/post/DraftInfo;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    :cond_1
    iput-object p1, p2, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity$1;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity$1;->val$restorePost:Lcom/narvii/post/PostObject;

    .line 33
    .line 34
    iput-object p2, p1, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/narvii/post/DraftPostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity$1;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 40
    .line 41
    iget-object p2, p1, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 45
    return-void
.end method
