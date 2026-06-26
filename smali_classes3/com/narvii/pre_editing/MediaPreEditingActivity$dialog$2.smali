.class final Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaPreEditingActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/MediaPreEditingActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/util/dialog/ProgressDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 2

    .line 58
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v1, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2$1;

    invoke-direct {v1, p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2$1;-><init>(Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;->invoke()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    return-object v0
.end method
