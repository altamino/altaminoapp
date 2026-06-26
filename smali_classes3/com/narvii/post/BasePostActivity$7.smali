.class Lcom/narvii/post/BasePostActivity$7;
.super Ljava/lang/Object;
.source "BasePostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/BasePostActivity;->checkActivation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/BasePostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/post/BasePostActivity;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/narvii/post/BasePostActivity$7;->this$0:Lcom/narvii/post/BasePostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 417
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity$7;->this$0:Lcom/narvii/post/BasePostActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/narvii/post/BasePostActivity;->discardDraft:Z

    .line 418
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method
