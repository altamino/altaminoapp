.class Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter$1;
.super Ljava/lang/Object;
.source "UnlockLastMoodsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter$1;->this$1:Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter$1;->this$1:Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter;

    iget-object p1, p1, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter;->this$0:Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
