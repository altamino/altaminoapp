.class public final synthetic Lcom/narvii/monetization/sticker/picker/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

.field public final synthetic b:Lcom/narvii/video/model/StickerInfoPack;

.field public final synthetic c:Lcom/narvii/model/Sticker;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/model/Sticker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/h;->a:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/picker/h;->b:Lcom/narvii/video/model/StickerInfoPack;

    iput-object p3, p0, Lcom/narvii/monetization/sticker/picker/h;->c:Lcom/narvii/model/Sticker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/h;->a:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/h;->b:Lcom/narvii/video/model/StickerInfoPack;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/h;->c:Lcom/narvii/model/Sticker;

    invoke-static {v0, v1, v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->p(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/model/Sticker;)V

    return-void
.end method
