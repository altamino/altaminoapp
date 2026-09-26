.class Lcom/narvii/comment/list/CommentListFragment$2;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/list/CommentListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/comment/list/CommentListFragment;

.field type:I


# direct methods
.method constructor <init>(Lcom/narvii/comment/list/CommentListFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$2;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 6
    .line 7
    const-string v0, "parent-id"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$2;->id:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "parent-type"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 19
    move-result p1

    .line 20
    .line 21
    iput p1, p0, Lcom/narvii/comment/list/CommentListFragment$2;->type:I

    .line 22
    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$2;->id:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    iget v0, p0, Lcom/narvii/comment/list/CommentListFragment$2;->type:I

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
