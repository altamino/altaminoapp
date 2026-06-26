.class Lcom/narvii/media/YoutubeVideoPicker$3;
.super Ljava/lang/Object;
.source "YoutubeVideoPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/YoutubeVideoPicker;->verifyAndReturn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/YoutubeVideoPicker;

.field final synthetic val$api:Lcom/narvii/util/http/ApiService;

.field final synthetic val$req:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method constructor <init>(Lcom/narvii/media/YoutubeVideoPicker;Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    iput-object p2, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->val$api:Lcom/narvii/util/http/ApiService;

    iput-object p3, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->val$req:Lcom/narvii/util/http/ApiRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 246
    iget-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->val$api:Lcom/narvii/util/http/ApiService;

    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$3;->val$req:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    return-void
.end method
