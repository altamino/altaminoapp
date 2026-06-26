.class Lcom/narvii/item/ItemHelper$3$1;
.super Ljava/lang/Object;
.source "ItemHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/ItemHelper$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/item/ItemHelper$3;


# direct methods
.method constructor <init>(Lcom/narvii/item/ItemHelper$3;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/narvii/item/ItemHelper$3$1;->this$1:Lcom/narvii/item/ItemHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 147
    iget-object p1, p0, Lcom/narvii/item/ItemHelper$3$1;->this$1:Lcom/narvii/item/ItemHelper$3;

    iget-object p1, p1, Lcom/narvii/item/ItemHelper$3;->this$0:Lcom/narvii/item/ItemHelper;

    iget-object p1, p1, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/narvii/item/ItemHelper$3$1;->this$1:Lcom/narvii/item/ItemHelper$3;

    iget-object p1, p1, Lcom/narvii/item/ItemHelper$3;->this$0:Lcom/narvii/item/ItemHelper;

    iget-object p1, p1, Lcom/narvii/item/ItemHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f107c

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 150
    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 144
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/item/ItemHelper$3$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
