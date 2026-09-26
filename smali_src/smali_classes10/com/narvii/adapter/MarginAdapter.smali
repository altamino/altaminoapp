.class public Lcom/narvii/adapter/MarginAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# instance fields
.field height:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput p2, p0, Lcom/narvii/adapter/MarginAdapter;->height:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    sget p1, Lcom/narvii/lib/R$layout;->adapter_margin_item:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iget p3, p0, Lcom/narvii/adapter/MarginAdapter;->height:I

    .line 13
    .line 14
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 15
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
