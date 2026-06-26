.class Lcom/narvii/util/debug/LarkUserPicker$1;
.super Lcom/narvii/list/NVAdapter;
.source "LarkUserPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/debug/LarkUserPicker;->createAdapter()Lcom/narvii/list/NVAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/debug/LarkUserPicker;


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/LarkUserPicker;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/narvii/util/debug/LarkUserPicker$1;->this$0:Lcom/narvii/util/debug/LarkUserPicker;

    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/util/debug/LarkUserPicker$1;->this$0:Lcom/narvii/util/debug/LarkUserPicker;

    iget-object v0, v0, Lcom/narvii/util/debug/LarkUserPicker;->names:[Ljava/lang/String;

    array-length v0, v0

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
    .locals 1

    const v0, 0x1090003

    .line 53
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 55
    sget-boolean p3, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p3, :cond_0

    const p3, 0x1020014

    .line 56
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/util/debug/LarkUserPicker$1;->this$0:Lcom/narvii/util/debug/LarkUserPicker;

    iget-object v0, v0, Lcom/narvii/util/debug/LarkUserPicker;->names:[Ljava/lang/String;

    aget-object p1, v0, p1

    .line 57
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/narvii/util/debug/LarkUserPicker$1;->this$0:Lcom/narvii/util/debug/LarkUserPicker;

    iget-object v1, v0, Lcom/narvii/util/debug/LarkUserPicker;->names:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/narvii/util/debug/LarkUserPicker;->onUserClicked(Ljava/lang/String;)V

    .line 48
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
