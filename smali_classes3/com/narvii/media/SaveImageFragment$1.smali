.class Lcom/narvii/media/SaveImageFragment$1;
.super Ljava/lang/Object;
.source "SaveImageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/SaveImageFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/SaveImageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/SaveImageFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    invoke-static {p1}, Lcom/narvii/media/SaveImageFragment;->access$000(Lcom/narvii/media/SaveImageFragment;)Lcom/android/volley/Request;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    invoke-static {p1}, Lcom/narvii/media/SaveImageFragment;->access$000(Lcom/narvii/media/SaveImageFragment;)Lcom/android/volley/Request;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/volley/Request;->cancel()V

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/media/SaveImageFragment;->access$002(Lcom/narvii/media/SaveImageFragment;Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 122
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    invoke-static {p1, v0}, Lcom/narvii/media/SaveImageFragment;->access$102(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
