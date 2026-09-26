.class Lcom/narvii/media/SaveImageHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper$1;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper$1;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/media/SaveImageHelper;->c(Lcom/narvii/media/SaveImageHelper;)Lcom/android/volley/Request;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper$1;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/media/SaveImageHelper;->c(Lcom/narvii/media/SaveImageHelper;)Lcom/android/volley/Request;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/volley/Request;->cancel()V

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper$1;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/narvii/media/SaveImageHelper;->e(Lcom/narvii/media/SaveImageHelper;Lcom/android/volley/Request;)V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper$1;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/narvii/media/SaveImageHelper;->f(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;)V

    .line 29
    return-void
.end method
