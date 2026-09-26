.class Lcom/narvii/post/DraftPostActivity$2;
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

.field final synthetic val$bparams:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field final synthetic val$savedPost:Lcom/narvii/post/PostObject;


# direct methods
.method constructor <init>(Lcom/narvii/post/DraftPostActivity;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/narvii/post/PostObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity$2;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/post/DraftPostActivity$2;->val$bparams:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/post/DraftPostActivity$2;->val$savedPost:Lcom/narvii/post/PostObject;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity$2;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity$2;->val$bparams:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/narvii/post/DraftPostActivity;->x(Lcom/narvii/post/DraftPostActivity;Lcom/fasterxml/jackson/databind/node/ObjectNode;)I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity$2;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity$2;->val$savedPost:Lcom/narvii/post/PostObject;

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity$2;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p2, ".savePost() before post loaded"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 58
    .line 59
    :cond_0
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity$2;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 60
    .line 61
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity$2;->val$bparams:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 62
    .line 63
    iput-object p2, p1, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 64
    .line 65
    iget-object p2, p0, Lcom/narvii/post/DraftPostActivity$2;->val$savedPost:Lcom/narvii/post/PostObject;

    .line 66
    .line 67
    iput-object p2, p1, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 68
    .line 69
    iget-object p2, p1, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/post/DraftPostActivity;->draftType()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity$2;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 76
    .line 77
    iget-object v2, v1, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v0, v2, v1}, Lcom/narvii/post/DraftManager;->createDraft(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/narvii/post/PostObject;)Ljava/lang/String;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    iput-object p2, p1, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 86
    .line 87
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity$2;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 88
    .line 89
    iget-object p2, p1, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Lcom/narvii/post/DraftPostActivity;->updateView(Lcom/narvii/post/PostObject;)V

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity$2;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 95
    .line 96
    iget-object p2, p1, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 100
    return-void
.end method
