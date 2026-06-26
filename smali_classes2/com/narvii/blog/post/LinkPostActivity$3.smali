.class Lcom/narvii/blog/post/LinkPostActivity$3;
.super Ljava/lang/Object;
.source "LinkPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/LinkPostActivity;->showLinkPasteDialog()V
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

    .line 217
    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$3;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 220
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$3;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$3;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-virtual {p1}, Lcom/narvii/post/DraftPostActivity;->finish()V

    :cond_0
    return-void
.end method
