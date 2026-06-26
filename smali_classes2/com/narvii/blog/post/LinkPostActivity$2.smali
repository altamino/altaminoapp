.class Lcom/narvii/blog/post/LinkPostActivity$2;
.super Ljava/lang/Object;
.source "LinkPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/LinkPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/LinkPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/LinkPostActivity;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$2;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$2;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-boolean v0, p1, Lcom/narvii/blog/post/LinkPostActivity;->isHandingUrl:Z

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/narvii/post/DraftPostActivity;->finish()V

    :cond_0
    return-void
.end method
