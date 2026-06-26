.class Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter;
.super Lcom/narvii/list/StaticViewAdapter;
.source "UnlockLastMoodsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CloseAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;


# direct methods
.method constructor <init>(Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter;->this$0:Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;

    invoke-direct {p0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/StaticViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09025e

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter$1;

    invoke-direct {p3, p0}, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter$1;-><init>(Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
