.class public Lcom/narvii/catalog/CatalogHelper;
.super Ljava/lang/Object;
.source "CatalogHelper.java"


# static fields
.field public static final PICK_ITEM_REQUEST:I = 0xb


# instance fields
.field private nvFragment:Lcom/narvii/app/NVFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVFragment;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/narvii/catalog/CatalogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    return-void
.end method


# virtual methods
.method public openSubmitFavoritePicker()V
    .locals 3

    .line 25
    const-class v0, Lcom/narvii/catalog/picker/AllItemPickerFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "mine"

    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "mode"

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "canSelectOfficial"

    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 29
    iget-object v1, p0, Lcom/narvii/catalog/CatalogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    const v2, 0x7f0f0d58

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    iget-object v1, p0, Lcom/narvii/catalog/CatalogHelper;->nvFragment:Lcom/narvii/app/NVFragment;

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
