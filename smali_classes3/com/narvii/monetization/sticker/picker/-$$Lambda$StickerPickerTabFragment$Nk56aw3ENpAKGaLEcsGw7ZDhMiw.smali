.class public final synthetic Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$Nk56aw3ENpAKGaLEcsGw7ZDhMiw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

.field private final synthetic f$1:Lcom/narvii/video/model/StickerInfoPack;

.field private final synthetic f$2:Lcom/narvii/model/Sticker;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/model/Sticker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$Nk56aw3ENpAKGaLEcsGw7ZDhMiw;->f$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$Nk56aw3ENpAKGaLEcsGw7ZDhMiw;->f$1:Lcom/narvii/video/model/StickerInfoPack;

    iput-object p3, p0, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$Nk56aw3ENpAKGaLEcsGw7ZDhMiw;->f$2:Lcom/narvii/model/Sticker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$Nk56aw3ENpAKGaLEcsGw7ZDhMiw;->f$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$Nk56aw3ENpAKGaLEcsGw7ZDhMiw;->f$1:Lcom/narvii/video/model/StickerInfoPack;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$Nk56aw3ENpAKGaLEcsGw7ZDhMiw;->f$2:Lcom/narvii/model/Sticker;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->lambda$onViewCreated$9$StickerPickerTabFragment(Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/model/Sticker;)V

    return-void
.end method
