.class Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->lambda$onListChanged$0()V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->lambda$onRequestFailed$1()V

    return-void
.end method

.method private synthetic lambda$onListChanged$0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->A(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->A(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->I(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Z)V

    .line 24
    return-void
.end method

.method private synthetic lambda$onRequestFailed$1()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->A(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->A(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->E(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/StickerService;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/StickerService;->getSharedError()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 42
    return-void
.end method


# virtual methods
.method public onListChanged()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/monetization/sticker/picker/l;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/picker/l;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->H(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Ljava/lang/Runnable;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->C(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Ljava/lang/Runnable;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->A(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->A(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->A(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->getShowDelay()J

    .line 46
    move-result-wide v1

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_0
    const-wide/16 v1, 0x0

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 53
    return-void
.end method

.method public onRequestFailed()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/monetization/sticker/picker/k;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/picker/k;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->G(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Ljava/lang/Runnable;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->B(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Ljava/lang/Runnable;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->A(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->A(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->A(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->getShowDelay()J

    .line 46
    move-result-wide v1

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_0
    const-wide/16 v1, 0x0

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 53
    return-void
.end method
