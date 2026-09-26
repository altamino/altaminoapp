.class Lcom/narvii/post/BasePostActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/BasePostActivity;->startPost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/BasePostActivity;

.field final synthetic val$post:Lcom/narvii/post/PostObject;


# direct methods
.method constructor <init>(Lcom/narvii/post/BasePostActivity;Lcom/narvii/post/PostObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/BasePostActivity$1;->this$0:Lcom/narvii/post/BasePostActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/post/BasePostActivity$1;->val$post:Lcom/narvii/post/PostObject;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity$1;->this$0:Lcom/narvii/post/BasePostActivity;

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/post/BasePostActivity$1;->val$post:Lcom/narvii/post/PostObject;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/narvii/post/BasePostActivity;->doPost(Lcom/narvii/post/PostObject;)V

    .line 8
    return-void
.end method
