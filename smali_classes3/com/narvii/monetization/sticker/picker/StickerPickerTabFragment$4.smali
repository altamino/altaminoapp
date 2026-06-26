.class Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;
.super Ljava/lang/Object;
.source "StickerPickerTabFragment.java"

# interfaces
.implements Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showSharedStickerPackPicker(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onListChanged$0$StickerPickerTabFragment$4()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$1000(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$1000(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$1200(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Z)V

    return-void
.end method

.method public synthetic lambda$onRequestFailed$1$StickerPickerTabFragment$4()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$1000(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$1000(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$600(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/StickerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/StickerService;->getSharedError()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onListChanged()V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    new-instance v1, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$4$N4B2iBu2IOnEfWVJUx6XM4pr-X0;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$4$N4B2iBu2IOnEfWVJUx6XM4pr-X0;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;)V

    invoke-static {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$902(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 330
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$900(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$1000(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$1000(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$1000(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->getShowDelay()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onRequestFailed()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    new-instance v1, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$4$_xeaDL6xTE0KlHAkGaq1HceoWnk;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$4$_xeaDL6xTE0KlHAkGaq1HceoWnk;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;)V

    invoke-static {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$1102(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 341
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$1100(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$1000(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$1000(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$1000(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->getShowDelay()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
