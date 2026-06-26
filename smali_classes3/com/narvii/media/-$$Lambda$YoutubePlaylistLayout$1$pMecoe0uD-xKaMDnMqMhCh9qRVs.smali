.class public final synthetic Lcom/narvii/media/-$$Lambda$YoutubePlaylistLayout$1$pMecoe0uD-xKaMDnMqMhCh9qRVs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/media/YoutubePlaylistLayout$1;

.field private final synthetic f$1:Lcom/narvii/util/dialog/ProgressDialog;

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/media/YoutubePlaylistLayout$1;Lcom/narvii/util/dialog/ProgressDialog;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/-$$Lambda$YoutubePlaylistLayout$1$pMecoe0uD-xKaMDnMqMhCh9qRVs;->f$0:Lcom/narvii/media/YoutubePlaylistLayout$1;

    iput-object p2, p0, Lcom/narvii/media/-$$Lambda$YoutubePlaylistLayout$1$pMecoe0uD-xKaMDnMqMhCh9qRVs;->f$1:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p3, p0, Lcom/narvii/media/-$$Lambda$YoutubePlaylistLayout$1$pMecoe0uD-xKaMDnMqMhCh9qRVs;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/narvii/media/-$$Lambda$YoutubePlaylistLayout$1$pMecoe0uD-xKaMDnMqMhCh9qRVs;->f$0:Lcom/narvii/media/YoutubePlaylistLayout$1;

    iget-object v1, p0, Lcom/narvii/media/-$$Lambda$YoutubePlaylistLayout$1$pMecoe0uD-xKaMDnMqMhCh9qRVs;->f$1:Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v2, p0, Lcom/narvii/media/-$$Lambda$YoutubePlaylistLayout$1$pMecoe0uD-xKaMDnMqMhCh9qRVs;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/media/YoutubePlaylistLayout$1;->lambda$run$0$YoutubePlaylistLayout$1(Lcom/narvii/util/dialog/ProgressDialog;Ljava/util/List;)V

    return-void
.end method
