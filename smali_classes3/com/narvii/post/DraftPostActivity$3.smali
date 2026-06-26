.class Lcom/narvii/post/DraftPostActivity$3;
.super Ljava/lang/Object;
.source "DraftPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/narvii/post/DraftPostActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity$3;->this$0:Lcom/narvii/post/DraftPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity$3;->this$0:Lcom/narvii/post/DraftPostActivity;

    invoke-virtual {p1}, Lcom/narvii/post/DraftPostActivity;->finish()V

    return-void
.end method
