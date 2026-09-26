.class public final synthetic Lcom/narvii/media/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;


# instance fields
.field public final synthetic a:Lcom/narvii/media/MediaPickerFragment$5$1;

.field public final synthetic b:Lcom/narvii/app/NVDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/media/MediaPickerFragment$5$1;Lcom/narvii/app/NVDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/c;->a:Lcom/narvii/media/MediaPickerFragment$5$1;

    iput-object p2, p0, Lcom/narvii/media/c;->b:Lcom/narvii/app/NVDialog;

    return-void
.end method


# virtual methods
.method public final onFinishPick(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/media/c;->a:Lcom/narvii/media/MediaPickerFragment$5$1;

    iget-object v1, p0, Lcom/narvii/media/c;->b:Lcom/narvii/app/NVDialog;

    invoke-static {v0, v1, p1}, Lcom/narvii/media/MediaPickerFragment$5$1;->a(Lcom/narvii/media/MediaPickerFragment$5$1;Lcom/narvii/app/NVDialog;Ljava/util/List;)V

    return-void
.end method
