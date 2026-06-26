.class Lcom/narvii/post/BasePostActivity$2;
.super Ljava/lang/Object;
.source "BasePostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/BasePostActivity;->onPostStart(Lcom/narvii/post/PostHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/BasePostActivity;

.field final synthetic val$post:Lcom/narvii/post/PostHelper;


# direct methods
.method constructor <init>(Lcom/narvii/post/BasePostActivity;Lcom/narvii/post/PostHelper;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/narvii/post/BasePostActivity$2;->this$0:Lcom/narvii/post/BasePostActivity;

    iput-object p2, p0, Lcom/narvii/post/BasePostActivity$2;->val$post:Lcom/narvii/post/PostHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 235
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity$2;->val$post:Lcom/narvii/post/PostHelper;

    invoke-virtual {p1}, Lcom/narvii/post/PostHelper;->cancel()V

    return-void
.end method
