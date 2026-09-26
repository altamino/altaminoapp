.class public final synthetic Lcom/narvii/media/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/media/YoutubeVideoPicker$3;

.field public final synthetic b:Lcom/narvii/model/Media;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/media/YoutubeVideoPicker$3;Lcom/narvii/model/Media;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/m;->a:Lcom/narvii/media/YoutubeVideoPicker$3;

    iput-object p2, p0, Lcom/narvii/media/m;->b:Lcom/narvii/model/Media;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/media/m;->a:Lcom/narvii/media/YoutubeVideoPicker$3;

    iget-object v1, p0, Lcom/narvii/media/m;->b:Lcom/narvii/model/Media;

    invoke-static {v0, v1}, Lcom/narvii/media/YoutubeVideoPicker$3;->a(Lcom/narvii/media/YoutubeVideoPicker$3;Lcom/narvii/model/Media;)V

    return-void
.end method
