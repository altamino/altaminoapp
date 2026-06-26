.class final Lcom/narvii/master/home/profile/EditAminoIdFragment$comfirmDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EditAminoIdFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/EditAminoIdFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/widget/ACMAlertDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$comfirmDialog$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/widget/ACMAlertDialog;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$comfirmDialog$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$createComfirmDialog(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/widget/ACMAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/narvii/master/home/profile/EditAminoIdFragment$comfirmDialog$2;->invoke()Lcom/narvii/widget/ACMAlertDialog;

    move-result-object v0

    return-object v0
.end method
