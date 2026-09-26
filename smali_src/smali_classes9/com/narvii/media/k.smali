.class public final synthetic Lcom/narvii/media/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/media/YoutubePlaylistLayout$1;

.field public final synthetic b:Lcom/narvii/util/dialog/ProgressDialog;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/media/YoutubePlaylistLayout$1;Lcom/narvii/util/dialog/ProgressDialog;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/k;->a:Lcom/narvii/media/YoutubePlaylistLayout$1;

    iput-object p2, p0, Lcom/narvii/media/k;->b:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p3, p0, Lcom/narvii/media/k;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/media/k;->a:Lcom/narvii/media/YoutubePlaylistLayout$1;

    iget-object v1, p0, Lcom/narvii/media/k;->b:Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v2, p0, Lcom/narvii/media/k;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/narvii/media/YoutubePlaylistLayout$1;->a(Lcom/narvii/media/YoutubePlaylistLayout$1;Lcom/narvii/util/dialog/ProgressDialog;Ljava/util/List;)V

    return-void
.end method
