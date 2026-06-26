.class public final synthetic Lcom/narvii/media/-$$Lambda$MediaPickerFragment$5$1$gNQFGeZYnv725IPW1YD3bplg018;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/media/MediaPickerFragment$5$1;

.field private final synthetic f$1:Lcom/narvii/app/NVDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/media/MediaPickerFragment$5$1;Lcom/narvii/app/NVDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/-$$Lambda$MediaPickerFragment$5$1$gNQFGeZYnv725IPW1YD3bplg018;->f$0:Lcom/narvii/media/MediaPickerFragment$5$1;

    iput-object p2, p0, Lcom/narvii/media/-$$Lambda$MediaPickerFragment$5$1$gNQFGeZYnv725IPW1YD3bplg018;->f$1:Lcom/narvii/app/NVDialog;

    return-void
.end method


# virtual methods
.method public final onFinishPick(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/media/-$$Lambda$MediaPickerFragment$5$1$gNQFGeZYnv725IPW1YD3bplg018;->f$0:Lcom/narvii/media/MediaPickerFragment$5$1;

    iget-object v1, p0, Lcom/narvii/media/-$$Lambda$MediaPickerFragment$5$1$gNQFGeZYnv725IPW1YD3bplg018;->f$1:Lcom/narvii/app/NVDialog;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/media/MediaPickerFragment$5$1;->lambda$onClick$0$MediaPickerFragment$5$1(Lcom/narvii/app/NVDialog;Ljava/util/List;)V

    return-void
.end method
