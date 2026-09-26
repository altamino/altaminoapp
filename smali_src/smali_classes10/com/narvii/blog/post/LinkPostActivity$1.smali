.class Lcom/narvii/blog/post/LinkPostActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$1;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$1;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$1;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/post/DraftPostActivity;->finish()V

    .line 14
    :cond_0
    return-void
.end method
