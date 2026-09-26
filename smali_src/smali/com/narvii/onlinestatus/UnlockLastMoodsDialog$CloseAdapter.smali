.class Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter;
.super Lcom/narvii/list/StaticViewAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter;->this$0:Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/StaticViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const p2, 0x7f0a0321

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    new-instance p3, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {p3, p0}, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter$1;-><init>(Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    return-object p1
.end method
