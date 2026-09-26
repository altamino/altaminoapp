.class public final synthetic Lcom/narvii/media/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/narvii/util/http/ApiService;

.field public final synthetic b:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/l;->a:Lcom/narvii/util/http/ApiService;

    iput-object p2, p0, Lcom/narvii/media/l;->b:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/media/l;->a:Lcom/narvii/util/http/ApiService;

    iget-object v1, p0, Lcom/narvii/media/l;->b:Lcom/narvii/util/http/ApiRequest;

    invoke-static {v0, v1, p1}, Lcom/narvii/media/YoutubeVideoPicker;->v(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;Landroid/content/DialogInterface;)V

    return-void
.end method
