.class Lcom/narvii/media/SaveImageHelper$1;
.super Ljava/lang/Object;
.source "SaveImageHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/SaveImageHelper;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/SaveImageHelper;


# direct methods
.method constructor <init>(Lcom/narvii/media/SaveImageHelper;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper$1;->this$0:Lcom/narvii/media/SaveImageHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper$1;->this$0:Lcom/narvii/media/SaveImageHelper;

    invoke-static {p1}, Lcom/narvii/media/SaveImageHelper;->access$000(Lcom/narvii/media/SaveImageHelper;)Lcom/android/volley/Request;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper$1;->this$0:Lcom/narvii/media/SaveImageHelper;

    invoke-static {p1}, Lcom/narvii/media/SaveImageHelper;->access$000(Lcom/narvii/media/SaveImageHelper;)Lcom/android/volley/Request;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/volley/Request;->cancel()V

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper$1;->this$0:Lcom/narvii/media/SaveImageHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/media/SaveImageHelper;->access$002(Lcom/narvii/media/SaveImageHelper;Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 91
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper$1;->this$0:Lcom/narvii/media/SaveImageHelper;

    invoke-static {p1, v0}, Lcom/narvii/media/SaveImageHelper;->access$102(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
